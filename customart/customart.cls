\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{customart}
\LoadClass[11pt,letterpaper]{article}

% Packages nécessaires
\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}
\usepackage{enumitem}
\setlist[itemize]{label=$\rhd$}

% Mise en page
\usepackage{geometry}
\geometry{letterpaper, tmargin=2cm, bmargin=2.5cm, lmargin=2.5cm, rmargin=2.5cm}

% Maths
\usepackage{amsmath, amsfonts, amssymb, amsthm, mathrsfs}

% Polices
\usepackage{pxfonts}
\usepackage{euler}

% Macros personnelles
\usepackage{macros, linalg}