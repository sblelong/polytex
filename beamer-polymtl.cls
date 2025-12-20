% ----------------------------
% Gabarit créé  et entretenu par Sacha Benarroch-Lelong (MAGI)
% Dernière MàJ: hiver 2026
% ----------------------------

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{beamer-polymtl}[2026-01-01, v0.1]
\PassOptionsToPackage{svgnames}{xcolor}
\LoadClass[compress,10pt,aspectratio=169,serif,professionalfont]{beamer}

% Packages nécessaires
\usepackage[french]{babel}
\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}
\usepackage[footnotesize,hang]{caption}
\usepackage{hyperref}
\usepackage{tikz}
\usetikzlibrary{positioning}
\usepackage{amsmath,amsfonts,amssymb,amsthm,bbm}
\usepackage{textcase,regexpatch}

% \usepackage{enumitem}
% \setlist[itemize]{label=$\rhd$}

% Couleurs de l'identité visuelle de PolyMtl
% Mises à jour suite à la nouvelle identité (automne 2025): voir https://www.polymtl.ca/salle-de-presse/logos-et-normes-graphiques
\definecolor{RPoly}{RGB}{237,28,36}
\definecolor{OPoly}{RGB}{241,90,34}
\definecolor{VPoly}{RGB}{37,179,75}
\definecolor{BPoly}{RGB}{0,189,242}

% Ces deux couleurs ne font pas partie de l'identité, mais contrastent bien.
\definecolor{GPoly}{RGB}{166,168,171}
\definecolor{primary}{RGB}{7,37,54}

% Thème
\usecolortheme[named=black]{structure}

% Texte
%% Polices

\usepackage{pxfonts}
\usepackage{eulervm}

\setbeamerfont{normal text}{series=\mdseries}
\setbeamerfont{alerted text}{series=\bfseries}
\setbeamerfont{title}{series=\upshape\bfseries, size=\huge}
\setbeamerfont{subtitle}{series=\mdseries, size=\small}
\setbeamerfont{part title}{series=\bfseries}
\setbeamerfont{section title}{series=\bfseries}
\setbeamerfont{subsection title}{series=\bfseries}

\setbeamerfont{author}{series=\mdseries}
\setbeamerfont{itemize item}{series=\bfseries}
\setbeamerfont{enumerate item}{series=\bfseries}

\setbeamerfont{frametitle}{series=\mdseries, size=\large}
\setbeamerfont{framesubtitle}{series=\mdseries}

\setbeamerfont{block title}{series=\bfseries,size=\normalsize}

\setbeamerfont{verse}{series=\itshape}

\setbeamerfont{section in head/foot}{size=\footnotesize}

%% Couleurs
\setbeamercolor{normal text}{fg=black}
\setbeamercolor{title}{fg=black}
\setbeamercolor{alerted text}{fg=RPoly}
\setbeamercolor{block title}{bg=BPoly, fg=white}
\setbeamercolor{block body}{bg=primary!10, fg=black}
\setbeamercolor{block title alerted}{bg=RPoly, fg=white}
\setbeamercolor{block body alerted}{bg=primary!10, fg=black}
\setbeamercolor{block title example}{bg=VPoly, fg=white}
\setbeamercolor{block body example}{bg=primary!10, fg=black}

\setbeamercolor{header}{bg=primary, fg=white}
\setbeamercolor{section title}{bg=primary, fg=white}
\setbeamercolor{part title}{bg=primary, fg=white}

\setbeamercolor{section in head/foot}{bg=primary,fg=white}
\setbeamercolor{frametitle}{bg=primary!10,fg=primary}

% Thèmes généraux
\useinnertheme{rectangles}
\useoutertheme[subsection=false]{miniframes}
\setbeamertemplate{navigation symbols}{}
\setbeamertemplate{blocks}[rectangle]

\newenvironment{noticeblock}[1]{%
    \setbeamercolor{block title}{bg=OPoly, fg=white}%
    \setbeamercolor{block body}{bg=primary!10, fg=black}%
    \begin{block}{#1}%
        }{%
    \end{block}%
}


\newcommand{\thecourse}{}
\newcommand{\course}[1]{\renewcommand{\thecourse}{#1}}

% \begin{beamercolorbox}[wd=\paperwidth, ht=6.1ex, dp=0ex, center]{header}
%         \hspace{-15.8cm}
%         \begin{tikzpicture}
%             \fill[BPoly] (-10,0) rectangle (-9.7,-0.13);
%             \fill[VPoly] (-10,-0.13) rectangle (-9.7,-0.26);
%             \fill[OPoly] (-10,-0.26) rectangle (-9.7,-0.39);
%             \fill[RPoly] (-10,-0.39) rectangle (-9.7,-0.52);
%         \end{tikzpicture}
%     \end{beamercolorbox}

% First box, left-aligned
% \begin{beamercolorbox}[wd=0.062\paperwidth,ht=0.5cm,dp=0.1cm,left]{frametitle}%
%     \vspace{0.25cm}
%     \hspace{-0.1cm}
%     \begin{tikzpicture}
%         \fill[RPoly] (0,0) rectangle (0.25,0.25);
%         \fill[OPoly] (0.25,0) rectangle (0.5,0.25);
%         \fill[VPoly] (0.5,0) rectangle (0.75,0.25);
%         \fill[BPoly] (0.75,0) rectangle (1.0,0.25);
%     \end{tikzpicture}
% \end{beamercolorbox}%
% Second box, right-aligned

\defbeamertemplate*{headline}{}
{%
    \begin{beamercolorbox}[wd=\paperwidth,center]{section in head/foot}
        \vskip2.5ex
        \vskip-\baselineskip
        \insertnavigation{\paperwidth}%
        \vskip1.125ex
    \end{beamercolorbox}%
    \ifbeamer@theme@subsection%
        \begin{beamercolorbox}[colsep=1.5pt]{middle separation line head}
        \end{beamercolorbox}
        \begin{beamercolorbox}[ht=2.5ex,dp=1.125ex,%
                leftskip=.3cm,rightskip=.3cm plus1fil]{subsection in head/foot}
            \usebeamerfont{subsection in head/foot}\usebeamertemplate{subsection in head/foot}
        \end{beamercolorbox}%
    \fi%
}

\setbeamertemplate{frametitle}{
    \vskip-0.035cm
    \begin{beamercolorbox}[wd=\paperwidth,ht=0.5cm,dp=0.2cm,left]{frametitle}
        \hspace{0.15cm}
        \insertframetitle~|~{\usebeamerfont{framesubtitle}\insertframesubtitle}
        \hspace{0.15cm}
    \end{beamercolorbox}
}


% Pied de page
\setbeamertemplate{footline}{
    \hbox{
        \begin{beamercolorbox}[wd=0.9\paperwidth, ht=2.25ex, dp=1ex, left]{white}
            \hspace{0.3cm}\insertframenumber\,/\,\inserttotalframenumber
            % \vspace{0.2cm}
        \end{beamercolorbox}
        \begin{beamercolorbox}[wd=0.1\paperwidth, ht=2.25ex, dp=1ex, left]{white}
            \vspace{-0.1cm}
            \begin{tikzpicture}
                \fill[RPoly] (0,0) rectangle (0.25,0.25);
                \fill[OPoly] (0.25,0) rectangle (0.5,0.25);
                \fill[VPoly] (0.5,0) rectangle (0.75,0.25);
                \fill[BPoly] (0.75,0) rectangle (1.0,0.25);
            \end{tikzpicture}
        \end{beamercolorbox}
    }
}

% Page de titre
\setbeamertemplate{title}{%
    \begin{beamercolorbox}[sep=8pt,left]{title}
        \usebeamerfont{title}\inserttitle\par%
        \ifx\insertsubtitle\@empty%
        \else%
            \vskip0.25em%
            {\usebeamerfont{subtitle}\usebeamercolor[fg]{subtitle}\insertsubtitle\par}%
        \fi%
    \end{beamercolorbox}%
}

\setbeamertemplate{author}{%
    \begin{beamercolorbox}[sep=8pt,center]{author}
        \usebeamerfont{author}\insertauthor
    \end{beamercolorbox}
}

\setbeamertemplate{institute}{%
    \begin{beamercolorbox}[sep=8pt,center]{institute}
        \usebeamerfont{institute}\insertinstitute~--- \thecourse
    \end{beamercolorbox}
}

\setbeamertemplate{date}{%
    \begin{beamercolorbox}[sep=8pt,center]{date}
        \usebeamerfont{date}\thecourse~--~\insertdate
    \end{beamercolorbox}
}

\setbeamertemplate{title page}{
    \begin{minipage}[c][0.9\paperheight]{\textwidth}
        \ifx\inserttitle\@empty\else\usebeamertemplate*{title}\fi
        \textcolor{primary}{\rule{\textwidth}{1pt}}
        \begin{figure}
            \centering
            \includegraphics[width=0.3\textwidth]{assets/Polytechnique.png}
        \end{figure}
        \ifx\insertdate\@empty\else\usebeamertemplate*{date}\fi
        \ifx\beamer@shortauthor\@empty\else\usebeamertemplate*{author}\fi
    \end{minipage}
}

\AtBeginSection{
    \begin{frame}
        \sectionpage
    \end{frame}
}

% Section frames
\setbeamertemplate{section page}{
    \hfill
    \tableofcontents[
        sectionstyle=show/shaded
    ]
    \hfill
}