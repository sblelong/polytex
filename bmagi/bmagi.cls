% ----------------------------
% Gabarit créé par Sacha Benarroch-Lelong (MAGI)
% ----------------------------

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{bmagi}[2024-02-19, v1.0]
\PassOptionsToPackage{svgnames}{xcolor}
\LoadClass[compress,8pt]{beamer}

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

% Couleurs de Poly
\definecolor{BPoly}{RGB}{84,159,201}
\definecolor{VPoly}{RGB}{145,188,85}
\definecolor{OPoly}{RGB}{222,143,68}
\definecolor{RPoly}{RGB}{159,52,58}
\definecolor{GPoly}{RGB}{35,31,32}

% Thème
\usecolortheme[named=GPoly]{structure}

% Texte
%% Polices
\setbeamerfont{normal text}{family=\sffamily, series=\mdseries}
\setbeamerfont{alerted text}{family=\sffamily, series=\bfseries}
\setbeamerfont{title}{family=\sffamily, series=\upshape\bfseries, size=\huge}
\setbeamerfont{subtitle}{family=\sffamily, series=\mdseries, size=\small}
\setbeamerfont{part title}{family=\sffamily, series=\bfseries}
\setbeamerfont{section title}{family=\sffamily, series=\bfseries}
\setbeamerfont{subsection title}{family=\sffamily, series=\bfseries}

\setbeamerfont{author}{series=\mdseries}
\setbeamerfont{itemize item}{series=\bfseries}
\setbeamerfont{enumerate item}{series=\bfseries}

\setbeamerfont{frametitle}{family=\sffamily, series=\bfseries, size=\Large}
\setbeamerfont{framesubtitle}{family=\sffamily, series=\mdseries}

\setbeamerfont{block title}{family=\sffamily, series=\bfseries}

\setbeamerfont{verse}{family=\rmfamily, series=\itshape}

\setbeamerfont{foot}{family=\sffamily}

\usefonttheme[onlymath]{serif}

%% Couleurs
\setbeamercolor{normal text}{fg=GPoly}
\setbeamercolor{title}{fg=GPoly}
\setbeamercolor{alerted text}{fg=RPoly}
\setbeamercolor{block title}{bg=BPoly, fg=white}
\setbeamercolor{block body}{bg=BPoly!10, fg=BPoly!110}
\setbeamercolor{block title alerted}{bg=RPoly, fg=white}
\setbeamercolor{block body alerted}{bg=RPoly!10, fg=RPoly!110}
\setbeamercolor{block title example}{bg=VPoly, fg=white}
\setbeamercolor{block body example}{bg=VPoly!10, fg=VPoly!110}

\setbeamercolor{foot blue}{bg=BPoly, fg=white}
\setbeamercolor{foot green}{bg=VPoly, fg=white}
\setbeamercolor{foot orange}{bg=OPoly, fg=white}
\setbeamercolor{foot red}{bg=RPoly, fg=white}

% Thèmes généraux
\useinnertheme{rectangles}
\useoutertheme{default}
\setbeamertemplate{navigation symbols}{}
\setbeamertemplate{blocks}[rectangle]

\newcommand{\thecourse}{}
\newcommand{\course}[1]{\renewcommand{\thecourse}{#1}}

% Pied de page
\setbeamertemplate{footline}{
	\leavevmode%
	\begin{beamercolorbox}[wd=0.25\paperwidth, ht=2.25ex, dp=1ex,center]{foot blue}
		\usebeamerfont{foot}\thecourse
	\end{beamercolorbox}
	\hspace{-0.63em}
	\begin{beamercolorbox}[wd=0.25\paperwidth, ht=2.25ex, dp=1ex,center]{foot green}
	\end{beamercolorbox}
	\hspace{-0.63em}
	\begin{beamercolorbox}[wd=0.25\paperwidth, ht=2.25ex, dp=1ex,center]{foot orange}
	\end{beamercolorbox}
	\hspace{-0.63em}
	\begin{beamercolorbox}[wd=0.25\paperwidth, ht=2.25ex, dp=1ex,center]{foot red}
		\usebeamerfont{foot}\insertframenumber\,/\,\inserttotalframenumber
	\end{beamercolorbox}
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
    \thecourse~--- \usebeamerfont{author}\insertauthor
  \end{beamercolorbox}
}

\setbeamertemplate{institute}{%
  \begin{beamercolorbox}[sep=8pt,center]{institute}
    \usebeamerfont{institute}\insertinstitute~--- \thecourse
  \end{beamercolorbox}
}

\setbeamertemplate{date}{%
    \begin{beamercolorbox}[sep=8pt,center]{date}
      \usebeamerfont{date}\insertdate
    \end{beamercolorbox}
}

\setbeamertemplate{title page}{
%	\begin{minipage}[b][\paperheight]{\textwidth}
%	    \vfill
%	    \ifx\inserttitle\@empty\else\usebeamertemplate*{title}\fi
%	    \ifx\insertsubtitle\@empty\else\usebeamertemplate*{subtitle}\fi
%	    \usebeamertemplate*{title separator}
%	    \ifx\beamer@shortauthor\@empty\else\usebeamertemplate*{author}\fi
%	    \ifx\insertinstitute\@empty\else\usebeamertemplate*{institute}\fi
%	    \ifx\insertdate\@empty\else\usebeamertemplate*{date}\fi
%	    \vfill
%    \end{minipage}
	\begin{minipage}[c][0.9\paperheight]{\textwidth}
		\ifx\inserttitle\@empty\else\usebeamertemplate*{title}\fi
		\textcolor{BPoly}{\rule{\textwidth}{1pt}}
		\begin{figure}
			\centering
			\includegraphics[width=0.3\textwidth]{./figs/Polytechnique.pdf}
		\end{figure}
		\ifx\beamer@shortauthor\@empty\else\usebeamertemplate*{author}\fi
		\ifx\insertdate\@empty\else\usebeamertemplate*{date}\fi
	\end{minipage}		
}