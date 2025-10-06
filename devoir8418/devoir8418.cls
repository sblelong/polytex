\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{devoir8418}[2025-01-20, h2025]
\LoadClass[12pt,professionalfont]{article}

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
    pdfsubject   = {MTH8418},	% subject of the document
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

% Ça c'est perso hehehe
% \usepackage{euler}
\usepackage{macros}
\usepackage{graphicx}

% Macros de Charles
\makeatletter
\def\xwhilenum #1\do{\@whilesw{\ifnum #1}\fi }
\makeatother

\def\nom{Sacha Benarroch-Lelong}
\def\matricule{2352025}
\def\courriel{sacha.benarroch-lelong@polymtl.ca}
\newcounter{nombrequestions}

% Mise en forme
\AtBeginDocument{
% En-tête avec les macros
\noindent Nom:	\href{mailto:\courriel?subject=Remise devoir MTH8418}{\textbf{\nom}}
\hfill \textbf{Devoir \numerodevoir} (\daterendu)\\
\noindent Matricule: 	{\matricule}
\hfill \textbf{MTH 8418 - Optimisation sans dérivées} \\
{ \rule{\textwidth}{1mm}}

% Tableau de notation
\hfill{\renewcommand{\arraystretch}{1.5}
    \newcounter{it}\setcounter{it}{0}%
    \begin{tabular}{|l||r|} \hline
        \xwhilenum{\value{nombrequestions}>\value{it}}\do {%
        \stepcounter{it} 	\the\value{it} & \\ \hline
        }\hline \hline
        Total                            & \\ & \phantom{XXXXXXX} \\ \hline
    \end{tabular}}\\
}

\AtEndDocument{
    \vfill{ \noindent\rule{\textwidth}{1mm}}
}