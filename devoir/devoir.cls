\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{devoir}[2024-10-03, a2024]
\LoadClass[12pt]{article}

% Packages nécessaires
\usepackage{geometry}
\geometry{letterpaper, tmargin=1.5cm, bmargin=2cm, lmargin=1.5cm, rmargin=1.5cm}
\usepackage{amsmath, amssymb, amsthm, amsfonts}
\usepackage{epic}
\usepackage{hyperref}
\usepackage[french]{babel}
\hypersetup{
    unicode      = false,			% non-Latin characters in Acrobat's
    pdftoolbar   = true,			% show Acrobat's toolbar?
    pdfmenubar   = true,		% show Acrobat's menu?
    pdffitwindow = true,			% page fit to window when opened
    pdftitle     = {Devoir},		% title
    pdfauthor    = {Sacha Benarroch-Lelong},	% author
    pdfsubject   = {},	% subject of the document
    pdfnewwindow = true,		% links in new window
    pdfkeywords  = {Devoir},	% list of keywords
    colorlinks   = true,			% true: colored links
    linkcolor    = blue,			% color of internal links
    citecolor    = blue,			% color of links to bibliography
    filecolor    = blue,			% color of file links
    urlcolor     = blue,			% color of external links
    breaklinks   = true
}

\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}
\usepackage[french]{babel}
\usepackage{enumitem}
\usepackage{xcolor}

\usepackage{pxfonts, eulerpx}
\usepackage{macros, linalg}

% Mise en forme
\AtBeginDocument{
% En-tête avec les macros
\noindent Nom: \textbf{\nom}
\hfill \textbf{Devoir \numerodevoir} (\daterendu)\\
\noindent Matricule: {\matricule}
\hfill \textbf{\cours} \\
{ \rule{\textwidth}{0.5mm}}
}