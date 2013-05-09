#!/usr/bin/env python
# -*- coding: utf-8 -*-

import string
import sys
import os

def tsubst(template, **keys):
    """
    Helper function for template substitution.

    @type template: string.Template
    @param keys: substitution parameters
    """
    return string.Template(template.safe_substitute(keys))

template_document = r"""\documentclass[10pt]{hackspace-brief}

\RequirePackage[ngerman]{babel}
\usepackage[utf8]{inputenc}
\usepackage{relsize}
\RequirePackage[T1]{fontenc}
\RequirePackage{ngerman}
\RequirePackage{pdfpages}
\RequirePackage{eurosym}
\RequirePackage{textcomp}
\RequirePackage{booktabs}
\RequirePackage{fixltx2e}
\RequirePackage{mparhack}
\renewcommand{\familydefault}{\sfdefault}
\RequirePackage{ae}
\RequirePackage{microtype}

\fenstermarken
\trennlinien
\unserzeichen

% Eigene Daten
\NameZeileZ     {Antwortadresse:}
\NameZeileA     {???}
\NameZeileB     {???}
\NameZeileC     {???}
\NameZeileD     {???}
\NameZeileE     {???}
\Unterschrift   {}

% Adresse, Betreff, Anrede, ...
\Adresse        {${vorname} ${nachname}\\
		 ${anschrift1}\\
		 ${anschrift2}\\
		 [2ex]${anschrift3}\\
		 ${anschrift4}}
\Betreff        {Zuwendungsbestätigung Hackspace Jena e.\,V.}
\Anlagen        {}
\IhrSchreiben   {}
\IhrZeichen     {}
\MeinZeichen    {}
\Datum          {Jena, den ${datum}}
\Anrede         {Liebe/Lieber ${vorname},}
\Gruss          {}{0.5cm}

\begin{document}
\begin{hackspace-brief}

für Deine Unterstützung der gemeinnützigen Arbeit des Hackspace CdE möchten wir uns herzlich bedanken.\\
Viele Grüße\\\\\\\\\\
??? \\ Vorstand Hackspace Jena e.\,V.
\newpage

\textbf{Aussteller: }Hackspace Jena e.\,V.\\
\phantom{\textbf{Aussteller:} } ADRESSE ??? ADRESSE

\bfseries Bestätigung über Geldzuwendungen/Mitgliedsbeitrag\\ 
\mdseries im Sinne des \S \ 10b des Einkommensteuergesetzes an eine der in \S \ 5 Abs. 1, Nr. 9 des Körperschaftssteuergesetzes bezeichneten Körperschaften, Personenvereinigungen oder Vermögensmassen\\

\textbf{Name und Anschrift des Zuwendenden: }${vorname} ${nachname}\\
\phantom{\textbf{Name und Anschrift des Zuwendenden: }}${anschrift1}\\
\phantom{\textbf{Name und Anschrift des Zuwendenden: }}${anschrift2}\\
\phantom{\textbf{Name und Anschrift des Zuwendenden: }}${anschrift3}\\
\phantom{\textbf{Name und Anschrift des Zuwendenden: }}${anschrift4}\\

\bfseries Betrag der Zuwendung in Ziffern: \mdseries ${betrag}~Euro\\\\
\bfseries Betrag der Zuwendung in Buchstaben: \mdseries ${wortbetrag}~Euro\\\\
\bfseries Tag der Zuwendung: \mdseries ${zuwendungsdatum}\\\\
Es handelt sich um den Verzicht auf Erstattung von Aufwendungen: Ja [\phantom{X}]
\quad Nein [X]\\\\
Wir sind wegen Förderung der ??? nach dem letzten uns zugegangenen Freistellungsbescheid des
Finanzamts ???, Steuernummer ???, vom ??? nach \S \ 5
Abs. 1 Nr. 9 des Körperschaftssteuergesetzes von der Körperschaftssteuer und
nach \S \ 3 Nr. 6 des Gewerbesteuergesetzes von der Gewerbesteuer befreit.

Es wird bestätigt, dass die Zuwendung nur zur ??? verwendet wird.

Jena, den ${datum}\\\\\\\\\\
???, Vorstand\\
\\
\vbox{}\vfill\vbox{}
\bfseries Hinweis:\\
\mdseries Wer vorsätzlich oder grob fahrlässig eine unrichtige Zuwendungsbestätigung erstellt oder wer
veranlasst, dass Zuwendungen nicht zu den in der Zuwendungsbestätigung angegebenen steuerbegünstigten
Zwecken verwendet werden, haftet für die Steuer, die dem Fiskus durch einen etwaigen Abzug der
Zuwendungen beim Zuwendenden entgeht (\S \ 10 b Abs. 4 EStG, \S \ 9 Abs. 3 KStG, \S \ 9 Nr. 5 GewStG).\\
Diese Bestätigung wird nicht als Nachweis für die steuerliche Berücksichtigung der Zuwendung anerkannt, wenn
das Datum des Freistellungsbescheides länger als 5 Jahre bzw. das Datum der vorläufigen Bescheinigung
länger als 3 Jahre seit Ausstellung der Bestätigung zurückliegt (BMF vom 15.12.1994~-- BStBl I S. 884).
\end{hackspace-brief}%
\end{document}
"""

if __name__ == "__main__":
    if len(sys.argv) == 1 or sys.argv[1] in ["-h", "--help"]:
        print("Usage: bescheinigung.py input.csv")
        exit(0)
    with open(sys.argv[1]) as inf:
        i = 0
        for line in inf:
            rawdata = line.split(',')
            doc = string.Template(template_document)
            data = { 'vorname' : rawdata[0],
                     'nachname' : rawdata[1],
                     'anschrift1' : rawdata[2],
                     'anschrift2' : rawdata[3],
                     'anschrift3' : rawdata[4],
                     'anschrift4' : rawdata[5],
                     'betrag' : rawdata[6],
                     'wortbetrag' : rawdata[7],
                     'zuwendungsdatum' : rawdata[8],
                     'datum' : rawdata[9] }
            doc = tsubst(doc, **data)
            doc = doc.safe_substitute()
            with open('./bescheinigung{0}.tex'.format(i), 'w') as outf:
                outf.write(doc)
            os.system('pdflatex ./bescheinigung{0}'.format(i))
            i += 1

