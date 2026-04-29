% ----------------------------
% Gabarit créé  et entretenu par Sacha Benarroch-Lelong (MAGI)
% Dernière MàJ: avril 2026
% ----------------------------

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{beamer-polymtl-talk}[2026-04-23, v0.1]
\PassOptionsToPackage{svgnames}{xcolor}
\DeclareOption*{%
    \PassOptionsToClass{\CurrentOption}{beamer}%
}
\ProcessOptions\relax
\LoadClass[compress,aspectratio=169]{beamer}

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

% Couleurs de l'identité visuelle de PolyMtl
% Mises à jour suite à la nouvelle identité (automne 2025): voir https://www.polymtl.ca/salle-de-presse/logos-et-normes-graphiques
\definecolor{RPoly}{RGB}{192,23,29}
\definecolor{OPoly}{RGB}{192,71,27}
\definecolor{VPoly}{RGB}{32,154,65}
\definecolor{BPoly}{RGB}{0,147,192}

% Ces deux couleurs ne font pas partie de l'identité, mais contrastent bien.
\definecolor{GPoly}{RGB}{166,168,171}
\definecolor{primary}{RGB}{7,37,54}

% Thème
\usecolortheme[named=black]{structure}

% Texte
%% Polices

% \usepackage{pxfonts}
% \usepackage{eulervm}
\usefonttheme[onlymath]{serif}

\setbeamerfont{normal text}{series=\mdseries}
\setbeamerfont{alerted text}{series=\bfseries}
\setbeamerfont{title}{series=\upshape\bfseries, size=\large}
\setbeamerfont{extra}{size=\footnotesize}
\setbeamerfont{part title}{series=\bfseries}
\setbeamerfont{section title}{series=\bfseries}
\setbeamerfont{subsection title}{series=\bfseries}

\setbeamerfont{author}{series=\bfseries, size=\normalsize}
\setbeamerfont{itemize item}{series=\bfseries}
\setbeamerfont{enumerate item}{series=\bfseries}

\setbeamerfont{frametitle}{series=\mdseries, size=\large}
\setbeamerfont{framesubtitle}{series=\mdseries}

\setbeamerfont{block title}{series=\bfseries, size=\normalsize}

\setbeamerfont{verse}{series=\itshape}

\setbeamerfont{section in head/foot}{size=\footnotesize}

% \setbeamerfont{page number in head/foot}{series=\mdseries, size=\tiny}

%% Couleurs
\setbeamercolor{normal text}{fg=black}
\setbeamercolor{title}{bg=primary, fg=white}
\setbeamercolor{author}{fg=primary}

\setbeamercolor{alerted text}{fg=RPoly}
\setbeamercolor{block title}{bg=primary, fg=white}
\setbeamercolor{block body}{bg=primary!10, fg=black}
\setbeamercolor{block title alerted}{bg=RPoly, fg=white}
\setbeamercolor{block body alerted}{bg=primary!10, fg=black}

\setbeamercolor{header}{bg=primary, fg=white}
\setbeamercolor{section title}{bg=primary, fg=white}
\setbeamercolor{part title}{bg=primary, fg=white}

\setbeamercolor{section in head/foot}{bg=primary!10,fg=primary}
\setbeamercolor{frametitle}{bg=primary,fg=white}

% Thèmes généraux
\useinnertheme{rectangles}
\useoutertheme[subsection=false]{miniframes}
\setbeamertemplate{navigation symbols}{}
\setbeamertemplate{blocks}[rectangle]

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

% \defbeamertemplate*{headline}{}
% {%
%     \begin{beamercolorbox}[wd=\paperwidth,center]{section in head/foot}
%         \vskip2.5ex
%         \vskip-\baselineskip
%         \insertnavigation{\paperwidth}%
%         \vskip1.125ex
%     \end{beamercolorbox}%
%     \ifbeamer@theme@subsection%
%         \begin{beamercolorbox}[colsep=1.5pt]{middle separation line head}
%         \end{beamercolorbox}
%         \begin{beamercolorbox}[ht=2.5ex,dp=1.125ex,%
%                 leftskip=.3cm,rightskip=.3cm plus1fil]{subsection in head/foot}
%             \usebeamerfont{subsection in head/foot}\usebeamertemplate{subsection in head/foot}
%         \end{beamercolorbox}%
%     \fi%
% }

\defbeamertemplate*{headline}{}
{

}

\setbeamertemplate{frametitle}{
    \vskip-0.035cm
    \begin{beamercolorbox}[wd=\paperwidth,ht=0.5cm,dp=0.2cm,left]{frametitle}
        \hspace{0.2cm}%
        \insertframetitle%
        \ifx\insertframesubtitle\@empty
            % no subtitle → do nothing
        \else
            ~|~{\usebeamerfont{framesubtitle}\insertframesubtitle}%
        \fi
        \hspace{0.15cm}%
    \end{beamercolorbox}
}


% % Pied de page
% \setbeamertemplate{footline}{
%     \hbox{
%         \begin{beamercolorbox}[wd=0.9\paperwidth, ht=2.25ex, dp=1ex, left]{white}
%             \hspace{0.3cm}\insertframenumber\,/\,\inserttotalframenumber
%             % \vspace{0.2cm}
%         \end{beamercolorbox}
%         \begin{beamercolorbox}[wd=0.1\paperwidth, ht=2.25ex, dp=1ex, left]{white}
%             \vspace{-0.1cm}
%             \begin{tikzpicture}
%                 \fill[RPoly] (0,0) rectangle (0.25,0.25);
%                 \fill[OPoly] (0.25,0) rectangle (0.5,0.25);
%                 \fill[VPoly] (0.5,0) rectangle (0.75,0.25);
%                 \fill[BPoly] (0.75,0) rectangle (1.0,0.25);
%             \end{tikzpicture}
%         \end{beamercolorbox}
%     }
% }

\newif\ifshownav
\shownavtrue

\setbeamertemplate{footline}{
    \begin{beamercolorbox}[wd=\paperwidth, ht=2.25ex, dp=1ex, right]{white}
        % \usebeamerfont{page number in head/foot}
        {\bfseries\tiny \insertframenumber\,/\,\inserttotalframenumber}
        \hspace{0.2cm}
    \end{beamercolorbox}
    \ifshownav
    \begin{beamercolorbox}[wd=\paperwidth,center]{section in head/foot}
        \vskip2.5ex
        \vskip-\baselineskip
        \insertnavigation{\paperwidth}%
        \vskip1.125ex
    \end{beamercolorbox}%
    \fi
}

% Page de titre
\newcommand{\theadvisors}{}
\newcommand{\advisors}[1]{\renewcommand{\theadvisors}{#1}}

\newcommand{\thejury}{}
\newcommand{\jury}[1]{\renewcommand{\thejury}{#1}}

\setbeamertemplate{title}{%
    \begin{beamercolorbox}[sep=8pt,center]{title}
        \usebeamerfont{title}\inserttitle\par%
    \end{beamercolorbox}%
}

\setbeamertemplate{author}{%
    \begin{beamercolorbox}[sep=8pt,center]{author}
        \usebeamerfont{author}\insertauthor\\
        \hspace{0.5cm}
        \begin{figure}
            \centering
            \includegraphics[height=0.12\paperheight]{assets/Polytechnique.png}
            \hspace{1cm}
            \includegraphics[height=0.12\paperheight]{assets/GERAD_Logo_CMYK_original.jpg}
            \hspace{1cm}
            \includegraphics[height=0.12\paperheight]{assets/frq-nt.png}
        \end{figure}
    \end{beamercolorbox}
}

\setbeamertemplate{extra}{%
    \hbox{%
        \begin{beamercolorbox}[wd=0.45\paperwidth, left]{extra}
            \usebeamerfont{extra}\theadvisors
        \end{beamercolorbox}%
        \hfill
        \begin{beamercolorbox}[wd=0.45\paperwidth, right]{extra}
            \usebeamerfont{extra}\thejury
        \end{beamercolorbox}%
    }%
}

\setbeamertemplate{date}{%
    \begin{beamercolorbox}[sep=8pt,center]{date}
        \usebeamerfont{date}\insertdate
    \end{beamercolorbox}
}

\setbeamertemplate{title page}{
    \begin{minipage}[c][0.8\paperheight]{\textwidth}
        \ifx\inserttitle\@empty\else\usebeamertemplate*{title}\fi
        \vfill
        \ifx\beamer@shortauthor\@empty\else\usebeamertemplate*{author}\fi
        \vfill
        \ifx\insertextra\@empty\else\usebeamertemplate*{extra}\fi
        \vfill
        \ifx\insertdate\@empty\else\usebeamertemplate*{date}\fi
    \end{minipage}
}

\AtBeginSection{
    \begin{frame}
        \frametitle{Structure de la présentation}
        \sectionpage
    \end{frame}
}

\setbeamertemplate{section page}{
  \begin{centering}
    \tableofcontents[currentsection]
  \end{centering}
}

% % Section frames
% \setbeamertemplate{section page}{
%     \hfill
%     \tableofcontents[
%         sectionstyle=show/shaded
%     ]
%     \hfill
% }

\setbeamertemplate{page number in head/foot}[appendixframenumber]