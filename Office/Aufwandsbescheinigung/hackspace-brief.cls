%%
%% This is file \hackspace-brief.cls',
%%
\def\filedate{2007/05/14}
\def\fileversion{1.0.0}
\def\filename{hackspace-brief.cls}
\NeedsTeXFormat{LaTeX2e}[2001/06/01]

\ProvidesClass{hackspace-brief}[\filedate\space v\fileversion\space hackspace-brief class]

\IfFileExists{ifthen.sty}
  {\RequirePackage{ifthen}}
  {\ClassError{hackspace-brief}
    {LaTeX2e not complete installed or out of date !!!}
    {Get current LaTeX2e !!!}}

\newdimen\VorschubH
\newdimen\VorschubV
\VorschubH = 0.0mm
\VorschubV = 0.0mm

\def\sprache{ngerman}
\def\vorstandstext{Vorstandsmitglied\/:}
\def\adresstext{Vereinsadresse\/:}
\def\telefontext{Telefon\/:}
\def\internettext{Internet\/:}
\def\banktext{Bankverbindung\/:}
\def\ihrzeichentext{\footnotesize\textsc{Ihr Zeichen}}
\def\ihrschreibentext{\footnotesize\textsc{Ihr Schreiben vom}}
\def\meinzeichentext{\footnotesize\textsc{Mein Zeichen}}
\def\unserzeichentext{\footnotesize\textsc{Unser Zeichen}}
\def\datumtext{\footnotesize\textsc{}}
\def\anlagetext{\footnotesize\textbf{Anlagen}}
\def\datum{\number\day.~\ifcase\month\or Januar\or Februar\or
  M\"arz\or April\or Mai\or Juni\or Juli\or August\or September\or
  Oktober\or November\or Dezember\fi \space\number\year}

\DeclareOption{10pt}{\def\@schrift{0}}
\DeclareOption{11pt}{\def\@schrift{1}}
\DeclareOption{12pt}{\def\@schrift{2}}

\let\@docencoding\@empty
\DeclareOption{ansinew}{\def\@docencoding{ansinew}}
\DeclareOption{applemac}{\def\@docencoding{applemac}}
\DeclareOption{ascii}{\def\@docencoding{ascii}}
\DeclareOption{cp1250}{\def\@docencoding{cp1250}}
\DeclareOption{cp1252}{\def\@docencoding{cp1252}}
\DeclareOption{cp437de}{\def\@docencoding{cp437de}}
\DeclareOption{cp437}{\def\@docencoding{cp437}}
\DeclareOption{cp850}{\def\@docencoding{cp850}}
\DeclareOption{cp852}{\def\@docencoding{cp852}}
\DeclareOption{cp865}{\def\@docencoding{cp865}}
\DeclareOption{decmulti}{\def\@docencoding{decmulti}}
\DeclareOption{latin1}{\def\@docencoding{latin1}}
\DeclareOption{latin2}{\def\@docencoding{latin2}}
\DeclareOption{latin3}{\def\@docencoding{latin3}}
\DeclareOption{latin4}{\def\@docencoding{latin4}}
\DeclareOption{latin5}{\def\@docencoding{latin5}}
\DeclareOption{latin9}{\def\@docencoding{latin9}}
\DeclareOption{next}{\def\@docencoding{next}}

\DeclareOption{german}{
  \def\sprache{german}
  \def\vorstandstext{Vorstandsmitglied\/:}
  \def\adresstext{Adresse\/:}
  \def\telefontext{Telefon\/:}
  \def\internettext{Internet\/:}
  \def\banktext{Bankverbindung\/:}
  \def\ihrzeichentext{\footnotesize\textsc{Ihr Zeichen}}
  \def\ihrschreibentext{\footnotesize\textsc{Ihr Schreiben vom}}
  \def\meinzeichentext{\footnotesize\textsc{Mein Zeichen}}
  \def\unserzeichentext{\footnotesize\textsc{Unser Zeichen}}
  \def\datumtext{\footnotesize\textsc{Datum}}
  \def\anlagetext{\footnotesize\textbf{Anlagen}}
  \def\datum{\number\day.~\ifcase\month\or Januar\or Februar\or
    M\"arz\or April\or Mai\or Juni\or Juli\or August\or September\or
    Oktober\or November\or Dezember\fi \space\number\year}}

\DeclareOption{ngerman}{
  \def\sprache{ngerman}
  \def\vorstandstext{Vorstandsmitglied\/:}
  \def\adresstext{Adresse\/:}
  \def\telefontext{Telefon\/:}
  \def\internettext{Internet\/:}
  \def\banktext{Bankverbindung\/:}
  \def\ihrzeichentext{\footnotesize\textsc{Ihr Zeichen}}
  \def\ihrschreibentext{\footnotesize\textsc{Ihr Schreiben vom}}
  \def\meinzeichentext{\footnotesize\textsc{Mein Zeichen}}
  \def\unserzeichentext{\footnotesize\textsc{Unser Zeichen}}
  \def\datumtext{\footnotesize\textsc{Datum}}
  \def\anlagetext{\footnotesize\textbf{Anlagen}}
  \def\datum{\number\day.~\ifcase\month\or Januar\or Februar\or
    M\"arz\or April\or Mai\or Juni\or Juli\or August\or September\or
    Oktober\or November\or Dezember\fi \space\number\year}}

\DeclareOption{english}{
  \def\sprache{english}
  \def\vorstandstext{Board member\/:}
  \def\adresstext{Address\/:}
  \def\telefontext{Phone\/:}
  \def\internettext{Internet\/:}
  \def\banktext{Bank\/:}
  \def\ihrzeichentext{\footnotesize\textsc{Your Ref.}}
  \def\ihrschreibentext{\footnotesize\textsc{Your Mail}}
  \def\meinzeichentext{\footnotesize\textsc{My Ref.}}
  \def\unserzeichentext{\footnotesize\textsc{Our Ref.}}
  \def\datumtext{\footnotesize\textsc{Date}}}

\DeclareOption{american}{
  \def\sprache{american}
  \def\vorstandstext{Board member\/:}
  \def\adresstext{Address\/:}
  \def\telefontext{Phone\/:}
  \def\internettext{Internet\/:}
  \def\banktext{Bank\/:}
  \def\ihrzeichentext{\footnotesize\textsc{Your Ref.}}
  \def\ihrschreibentext{\footnotesize\textsc{Your Mail}}
  \def\meinzeichentext{\footnotesize\textsc{My Ref.}}
  \def\unserzeichentext{\footnotesize\textsc{Our Ref.}}
  \def\datumtext{\footnotesize\textsc{Date}}}

\ExecuteOptions{11pt,@sprache} \ProcessOptions
\LoadClass[1\@schrift pt, a4paper, oneside, final]{letter}[1999/04/29]
\normalsize

\setlength\oddsidemargin{0\p@}
\setlength\evensidemargin{\oddsidemargin}
\setlength\marginparwidth{90\p@}
\setlength\marginparsep{11\p@}
\setlength\marginparpush{5\p@}
\setlength\topmargin{-12.69mm}
\setlength\headheight{4.23mm}
\setlength\headsep{6.35mm}
\setlength\topskip{3.38mm}
\addtolength\footskip{10mm}
\setlength\textheight{160.00mm}
\setlength\textwidth{165mm}

\setlength\lineskip{1\p@}
\setlength\normallineskip{1\p@}

\renewcommand\baselinestretch{1}

\advance\topmargin by \VorschubV
\advance\oddsidemargin by \VorschubH
\setlength\evensidemargin{\oddsidemargin}

\AtEndOfClass{\pagestyle{regularpage}}

\def\Postvermerk#1{\def\postvermerk{#1}} \def\postvermerk{}
\def\Adresse#1{\def\adresse{#1}} \def\adresse{}

\def\IhrZeichen#1{\def\ihrzeichen{#1}} \def\ihrzeichen{}
\def\IhrSchreiben#1{\def\ihrschreiben{#1}} \def\ihrschreiben{}
\def\MeinZeichen#1{\def\meinzeichen{#1}} \def\meinzeichen{}
\def\Datum#1{\def\datum{#1}} \def\datum{\today}

\def\Betreff#1{\def\betreff{#1}} \def\betreff{}

\def\Anrede#1{\def\anrede{#1}} \def\anrede{}
\def\Gruss#1#2{\def\gruss{#1} \def\grussskip{#2}}
    \def\gruss{} \def\grussskip{}
\def\Unterschrift#1{\def\unterschrift{#1}} \def\unterschrift{}

\def\Anlagen#1{\def\anlagen{#1}} \def\anlagen{}
\def\Verteiler#1{\def\verteiler{#1}} \def\verteiler{}

\def\name{Hackspace Jena e.\,V.}
\def\retouradresse{???}
\def\bankzeilehackspacea{Hackspace Jena e.\,V.}
\def\bankzeilehackspaceb{???}
\def\bankzeilehackspacec{???}
\def\bankzeilehackspaced{???}

\def\adresszeilehackspacea{Hackspace Jena e.\,V.}
\def\adresszeilehackspaceb{???}
\def\adresszeilehackspacec{???}
\def\adresszeilehackspaced{}
\def\adresszeilehackspacee{}
\def\adresszeilehackspacef{}
\def\internetzeilehackspacea{http://www.krautspace.de/}
\def\internetzeilehackspaceb{???}

\def\NameZeileA#1{\def\namezeilea{#1}} \def\namezeilea{}
\def\NameZeileB#1{\def\namezeileb{#1}} \def\namezeileb{}
\def\NameZeileC#1{\def\namezeilec{#1}} \def\namezeilec{}
\def\NameZeileD#1{\def\namezeiled{#1}} \def\namezeiled{}
\def\NameZeileE#1{\def\namezeilee{#1}} \def\namezeilee{}
\def\NameZeileF#1{\def\namezeilef{#1}} \def\namezeilef{}
\def\NameZeileG#1{\def\namezeileg{#1}} \def\namezeileg{}
\def\NameZeileZ#1{\def\namezeilez{#1}} \def\namezeilez{\vorstandstext{}}

\def\AdressZeileA#1{\def\adresszeilea{#1}} \def\adresszeilea{}
\def\AdressZeileB#1{\def\adresszeileb{#1}} \def\adresszeileb{}
\def\AdressZeileC#1{\def\adresszeilec{#1}} \def\adresszeilec{}
\def\AdressZeileD#1{\def\adresszeiled{#1}} \def\adresszeiled{}
\def\AdressZeileE#1{\def\adresszeilee{#1}} \def\adresszeilee{}
\def\AdressZeileF#1{\def\adresszeilef{#1}} \def\adresszeilef{}

\def\TelefonZeileA#1{\def\telefonzeilea{#1}} \def\telefonzeilea{}
\def\TelefonZeileB#1{\def\telefonzeileb{#1}} \def\telefonzeileb{}
\def\TelefonZeileC#1{\def\telefonzeilec{#1}} \def\telefonzeilec{}
\def\TelefonZeileD#1{\def\telefonzeiled{#1}} \def\telefonzeiled{}
\def\TelefonZeileE#1{\def\telefonzeilee{#1}} \def\telefonzeilee{}
\def\TelefonZeileF#1{\def\telefonzeilef{#1}} \def\telefonzeilef{}

\def\InternetZeileA#1{\def\internetzeilea{#1}} \def\internetzeilea{}
\def\InternetZeileB#1{\def\internetzeileb{#1}} \def\internetzeileb{}
\def\InternetZeileC#1{\def\internetzeilec{#1}} \def\internetzeilec{}
\def\InternetZeileD#1{\def\internetzeiled{#1}} \def\internetzeiled{}
\def\InternetZeileE#1{\def\internetzeilee{#1}} \def\internetzeilee{}

\def\bankzeilea#1{\def\bankzeilea{#1}} \def\bankzeilea{}
\def\bankzeileb#1{\def\bankzeileb{#1}} \def\bankzeileb{}
\def\bankzeilec#1{\def\bankzeilec{#1}} \def\bankzeilec{}
\def\bankzeiled#1{\def\bankzeiled{#1}} \def\bankzeiled{}
\def\bankzeilee#1{\def\bankzeilee{#1}} \def\bankzeilee{}
\def\bankzeilef#1{\def\bankzeilef{#1}} \def\bankzeilef{}

\long\def\Einrueckung#1{\par\begin{tabular}{@{\hspace{1in}}p{5in}@{}}
    #1\end{tabular}\par}

\newif\iftrennlinien\trennlinienfalse
\def\trennlinien{\trennlinientrue}

\newif\iflochermarke\lochermarkefalse
\def\lochermarke{\lochermarketrue}

\newif\iffaltmarken\faltmarkenfalse
\def\faltmarken{\faltmarkentrue}

\newif\iffenstermarken\fenstermarkenfalse
\def\fenstermarken{\fenstermarkentrue}

\newif\ifunserzeichen\unserzeichenfalse
\def\unserzeichen{\unserzeichentrue}


\newenvironment{hackspace-brief}{
  \thispagestyle{firstpage}
  \setlength\unitlength{1mm}

  \c@page\@ne
  \interlinepenalty=200
  \clearpage

  \ifx \ihrzeichen\empty \ifx \ihrschreiben\empty \ifx
  \meinzeichen\empty \makebox[45.5mm][l]{} \makebox[55.0mm][l]{}
  \makebox[20.0mm][l]{} \else \makebox[45.5mm][l]{\ihrzeichentext}
  \makebox[55.0mm][l]{\ihrschreibentext} \ifunserzeichen
  \makebox[20.0mm][l]{\unserzeichentext} \else
  \makebox[20.0mm][l]{\meinzeichentext} \fi \fi \else
  \makebox[45.5mm][l]{\ihrzeichentext}
  \makebox[55.0mm][l]{\ihrschreibentext} \ifunserzeichen
  \makebox[20.0mm][l]{\unserzeichentext} \else
  \makebox[20.0mm][l]{\meinzeichentext} \fi \fi \else
  \makebox[45.5mm][l]{\ihrzeichentext}
  \makebox[55.0mm][l]{\ihrschreibentext} \ifunserzeichen
  \makebox[20.0mm][l]{\unserzeichentext} \else
  \makebox[20.0mm][l]{\meinzeichentext} \fi \fi
  \makebox[41.0mm][r]{\datumtext} \\
  \makebox[45.5mm][l]{\ihrzeichen}
  \makebox[55.0mm][l]{\ihrschreiben}
  \makebox[20.0mm][l]{\meinzeichen}
  \makebox[41.0mm][r]{\datum} \par

  \vspace{8mm}

  \ifcase\@ptsize\vspace{0.045pt}\or \vspace{-1.555pt}\or
  \vspace{-2.955pt} \fi

  \ifx \betreff\empty \else \textbf{\betreff} \mbox{} \par \vspace{-1\parskip}
    \vspace{8mm} \fi

  \ifcase\@ptsize\vspace{0.045pt}\or \vspace{-1.555pt}\or
  \vspace{-2.955pt} \fi

  \ifx \anrede\empty \else \anrede \par \fi\nobreak
  \addtolength\textheight{63mm}}
  { \renewcommand{\baselinestretch}{1.0}
  \ifcase \@ptsize\relax \normalsize \or \small \or \footnotesize \fi

  \vspace{\grussskip} \par \nobreak \stopbreaks \noindent
  \parbox[t]{3.5in}{\raggedright \ignorespaces {\normalsize \ifx
      \gruss\empty \else \gruss \mbox{} \\[16.92mm] \fi \ifx
      \unterschrift\empty \relax \else \unterschrift
  \fi} \strut} 
  \ifx \anlagen\empty \else \vspace{20mm} \par 
                            {\bf \anlagetext}\\ 
                            \anlagen
  \par \fi \ifx \verteiler\empty \else \ifx \anlagen\empty
  \vspace{4mm}\par \fi \verteiler \fi}

\def\ps@firstpage{
  \renewcommand{\baselinestretch}{1.0}
  \ifcase \@ptsize\relax
    \normalsize \or \small \or \footnotesize
  \fi
  \headheight60pt\headsep63mm
  \def\@oddhead{
    \unitlength1mm
    \begin{picture}(0,0)
        \put(0, 0){\parbox{100mm}{\Large \textsc{\name} }}
%        \put(115,-10){\includegraphics[width=0.3\linewidth]{logo.png}}
      %\iftrennlinien \put(-1,-12){\rule{165mm}{0.5pt}} \fi
      \iflochermarke \put(-20,- 130.50){\line(1,0){4}} \fi
      \iffaltmarken \put(-15,- 75.16){\line(1,0){3}}
        \put(-15,-182.16){\line(1,0){3}} \fi
      \put( -1, -18.00){\parbox[t]{3in}
      {\hfill \par \scriptsize \textrm{\retouradresse}}}
      \iftrennlinien \ifthenelse{\equal{\retouradresse}{\empty}} {}{\put( -1, -22.10){\line(1,0){76}}} \fi
      \put(0,-28.15){\parbox[t]{3in}{\ifx \postvermerk\empty \hfill \par
        \else \textbf{\postvermerk} \par \vspace{2mm} \fi \adresse}}
      \iffenstermarken
        \put(-9,-18.15){\line( 1, 0){1}} \put(-9,-18.15){\line( 0,-1){1}}
        \put(76,-18.15){\line(-1, 0){1}} \put(76,-18.15){\line( 0,-1){1}}
        \put(-9,-61.00){\line( 1, 0){1}} \put(-9,-61.00){\line( 0, 1){1}}
        \put(76,-61.00){\line(-1, 0){1}} \put(76,-61.00){\line( 0, 1){1}}
        \fi
    \end{picture}
    \hfill
  }
  \def\@oddfoot{
    \unitlength1mm
    \begin{picture}(-1.2,0)
      \put(-1.2,0){\parbox{165mm}{
        \tiny \newcounter{blockzahl} \def\@blockbreite{155mm}
        \iftrennlinien \rule{165mm}{0.5pt} \fi
        \ifthenelse{
          \equal{\namezeilea}{\empty} \and \equal{\namezeileb}{\empty} \and
          \equal{\namezeilec}{\empty} \and \equal{\namezeiled}{\empty} \and
          \equal{\namezeilee}{\empty} \and \equal{\namezeilef}{\empty} \and
          \equal{\namezeileg}{\empty}}
          {}{\stepcounter{blockzahl}}
        \ifthenelse{
          \equal{\adresszeilehackspacea}{\empty} \and \equal{\adresszeilehackspaceb}{\empty} \and
          \equal{\adresszeilehackspacec}{\empty} \and \equal{\adresszeilehackspaced}{\empty} \and
          \equal{\adresszeilehackspacee}{\empty} \and \equal{\adresszeilehackspacef}{\empty} \and
          \equal{\adresszeilea}{\empty} \and \equal{\adresszeileb}{\empty} \and
          \equal{\adresszeilec}{\empty} \and \equal{\adresszeiled}{\empty} \and
          \equal{\adresszeilee}{\empty} \and \equal{\adresszeilef}{\empty}}
          {}{\stepcounter{blockzahl}}
        \ifthenelse{
          \equal{\telefonzeilea}{\empty} \and \equal{\telefonzeileb}{\empty}
          \and \equal{\telefonzeilec}{\empty} \and \equal{\telefonzeiled}
          {\empty} \and \equal{\telefonzeilee}{\empty} \and
          \equal{\telefonzeilef}{\empty}}
          {}{\stepcounter{blockzahl}}
        \ifthenelse{
          \equal{\internetzeilehackspacea}{\empty} \and \equal{\internetzeilehackspaceb}{\empty} \and
          \equal{\internetzeilea}{\empty} \and \equal{\internetzeileb}{\empty} \and
          \equal{\internetzeilec}{\empty} \and \equal{\internetzeiled} {\empty} \and
          \equal{\internetzeilee}{\empty}}
          {}{\stepcounter{blockzahl}}
        \ifthenelse{
          \equal{\bankzeilehackspacea}{\empty} \and \equal{\bankzeilehackspaceb}{\empty} \and
          \equal{\bankzeilehackspacec}{\empty} \and \equal{\bankzeilehackspaced}{\empty} \and
          \equal{\bankzeilea}{\empty} \and \equal{\bankzeileb}{\empty} \and
          \equal{\bankzeilec}{\empty} \and \equal{\bankzeiled}{\empty} \and
          \equal{\bankzeilee}{\empty} \and \equal{\bankzeilef}{\empty}}
          {}{\stepcounter{blockzahl}}
        \ifthenelse{\value{blockzahl} = 1}
          {\scriptsize \def\@blockbreite{163mm}}{}
        \ifthenelse{\value{blockzahl} = 2}
          {\scriptsize \def\@blockbreite{80mm}}{}
        \ifthenelse{\value{blockzahl} = 3}
          {\scriptsize \def\@blockbreite{53mm}}{}
        \ifthenelse{\value{blockzahl} = 4}
          {\scriptsize \def\@blockbreite{40mm}}{}
        \ifthenelse{\value{blockzahl} = 5}
          {\tiny \def\@blockbreite{32mm}}{}
        \ifthenelse{
          \equal{\adresszeilehackspacea}{\empty} \and \equal{\adresszeilehackspaceb}{\empty} \and
          \equal{\adresszeilehackspacec}{\empty} \and \equal{\adresszeilehackspaced}{\empty} \and
          \equal{\adresszeilehackspacee}{\empty} \and \equal{\adresszeilehackspacef}{\empty} \and
          \equal{\adresszeilea}{\empty} \and \equal{\adresszeileb}{\empty} \and
          \equal{\adresszeilec}{\empty} \and \equal{\adresszeiled}{\empty} \and
          \equal{\adresszeilee}{\empty} \and \equal{\adresszeilef}{\empty}}
          {}{\begin{minipage}[t]{\@blockbreite} {\bf  \namezeilez} \\
            \namezeilea \hspace*{0mm} \\ \namezeileb \hspace*{0mm} \\
            \namezeilec \hspace*{0mm} \\ \namezeiled \hspace*{0mm} \\
            \namezeilee \hspace*{0mm} \\ \namezeilef \hspace*{0mm} \\
            \namezeileg \hspace*{0mm}
          \end{minipage}}
        \ifthenelse{
          \equal{\telefonzeilea}{\empty} \and \equal{\telefonzeileb}{\empty}
          \and \equal{\telefonzeilec}{\empty} \and \equal{\telefonzeiled}
          {\empty} \and \equal{\telefonzeilee}{\empty} \and
          \equal{\telefonzeilef}{\empty}}
          {}{\begin{minipage}[t]{\@blockbreite} {\bf \telefontext} \\
            \telefonzeilea\hspace*{0mm} \\ \telefonzeileb\hspace*{0mm} \\
            \telefonzeilec\hspace*{0mm} \\ \telefonzeiled\hspace*{0mm} \\
            \telefonzeilee\hspace*{0mm} \\ \telefonzeilef\hspace*{0mm}
          \end{minipage}}
        \ifthenelse{
          \equal{\internetzeilehackspacea}{\empty} \and \equal{\internetzeilehackspaceb}{\empty} \and
          \equal{\internetzeilea}{\empty} \and \equal{\internetzeileb}{\empty} \and
          \equal{\internetzeilec}{\empty} \and \equal{\internetzeiled} {\empty} \and
          \equal{\internetzeilee}{\empty}}
          {}{\begin{minipage}[t]{\@blockbreite} {\bf \internettext} \\ 
            \internetzeilehackspacea\hspace*{0mm} \\ \internetzeilehackspaceb\hspace*{0mm} \\
            \internetzeilea\hspace*{0mm} \\ \internetzeileb\hspace*{0mm} \\
            \internetzeilec\hspace*{0mm} \\ \internetzeiled\hspace*{0mm} \\
            \internetzeilee\hspace*{0mm}
          \end{minipage}}
        \ifthenelse{
          \equal{\bankzeilehackspacea}{\empty} \and \equal{\bankzeilehackspaceb}{\empty} \and
          \equal{\bankzeilehackspacec}{\empty} \and \equal{\bankzeilehackspaced}{\empty} \and
          \equal{\bankzeilea}{\empty} \and \equal{\bankzeileb}{\empty} \and
          \equal{\bankzeilec}{\empty} \and \equal{\bankzeiled}{\empty} \and
          \equal{\bankzeilee}{\empty} \and \equal{\bankzeilef}{\empty}}
          {}{\begin{minipage}[t]{\@blockbreite} {\bf \banktext} \\
            \bankzeilehackspacea\hspace*{0mm} \\ \bankzeilehackspaceb\hspace*{0mm} \\
            \bankzeilehackspacec\hspace*{0mm} \\ \bankzeilehackspaced\hspace*{0mm} \\
            \bankzeilea\hspace*{0mm} \\ \bankzeileb\hspace*{0mm} \\
            \bankzeilec\hspace*{0mm} \\ \bankzeiled\hspace*{0mm} \\
            \bankzeilee\hspace*{0mm} \\ \bankzeilef\hspace*{0mm}
          \end{minipage}}
        \ifthenelse{
          \equal{\namezeilea}{\empty} \and \equal{\namezeileb}{\empty} \and
          \equal{\namezeilec}{\empty} \and \equal{\namezeiled}{\empty} \and
          \equal{\namezeilee}{\empty} \and \equal{\namezeilef}{\empty} \and
          \equal{\namezeileg}{\empty}}
          {}{\begin{minipage}[t]{\@blockbreite} {\bf \adresstext} \\
            \adresszeilehackspacea \hspace*{0mm} \\ \adresszeilehackspaceb \hspace*{0mm} \\
            \adresszeilehackspacec \hspace*{0mm} \\ \adresszeilehackspaced \hspace*{0mm} \\
            \adresszeilehackspacee \hspace*{0mm} \\ \adresszeilehackspacef \hspace*{0mm} \\
            \adresszeilea \hspace*{0mm} \\ \adresszeileb \hspace*{0mm} \\
            \adresszeilec \hspace*{0mm} \\ \adresszeiled \hspace*{0mm} \\
            \adresszeilee \hspace*{0mm} \\ \adresszeilef \hspace*{0mm}
          \end{minipage}}}}
    \end{picture} \hfill}
  \def\@evenhead{\@oddhead} \def\@evenfoot{\@oddfoot}}

\def\ps@regularpage{ \headheight36pt\def\@oddhead{\unitlength1mm
    \begin{picture}(0,0)
      \put(-6,3){\makebox(171,15){\normalsize
        \textsc{{\Large\quad}\name\hfill\ \ \ \quad\hfill
        \datum}}}
      \iftrennlinien \put(0,0){\rule{165mm}{0.5pt}} \fi
    \end{picture}\hfill}
  \def\@oddfoot{\empty} \def\@evenhead{\@oddhead}
  \def\@evenfoot{\@oddfoot}}


\IfFileExists{babel.sty}
  {\RequirePackage[\sprache]{babel}[2001/03/01]}
  {\ClassError{hackspace-brief}
    {Babel not installed !!!}
    {Get babel package !!!}}

\ifx \@docencoding\empty \else
\IfFileExists{inputenc.sty}
  {\RequirePackage[\@docencoding]{inputenc}}
  {\ClassError{hackspace-brief}
    {LaTeX2e not complete installed or out of date !!!}
    {Get current LaTeX2e !!!}}
\fi

\IfFileExists{marvosym.sty}
  {\RequirePackage{marvosym}}
  {}{}
\IfFileExists{europs.sty}
  {\RequirePackage{europs}}
  {}{}
\IfFileExists{eurosym.sty}
  {\RequirePackage{eurosym}}
  {}{}


\endinput
%%
%% End of file `hackspace-brief.cls'.
