#!/usr/bin/env python
# -*- coding: utf-8 -*-

import string
import sys
import os

if __name__ == "__main__":
    if len(sys.argv) == 1 or sys.argv[1] in ["-h", "--help"]:
        print("Usage: %s input.csv" % sys.argv[0])
        exit(0)
    template_document = open('template.tex').read()
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
            doc = string.Template(doc.safe_substitute(data))
            doc = doc.safe_substitute()
            with open('./bescheinigung{0}.tex'.format(i), 'w') as outf:
                outf.write(doc)
            os.system('pdflatex ./bescheinigung{0}'.format(i))
            i += 1

