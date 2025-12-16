% ----------------------------
% Gabarit créé par Sacha Benarroch-Lelong (MAGI)
% ----------------------------

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{bmagi}[2024-08-06, v1.0]
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

\usepackage{enumitem}
\setlist[itemize]{label=$\rhd$}

% Couleurs de Poly
\definecolor{BPoly}{RGB}{80,187,230}
\definecolor{VPoly}{RGB}{1,234,83}
\definecolor{OPoly}{RGB}{255,96,5}
\definecolor{RPoly}{RGB}{211,1,47}
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

\setbeamerfont{frametitle}{series=\bfseries, size=\Large}
\setbeamerfont{framesubtitle}{series=\mdseries}

\setbeamerfont{block title}{series=\bfseries,size=\normalsize}

\setbeamerfont{verse}{series=\itshape}

% \setbeamerfont{foot}{family=\rmfamily}

%% Couleurs
\setbeamercolor{normal text}{fg=black}
\setbeamercolor{title}{fg=black}
\setbeamercolor{alerted text}{fg=RPoly}
\setbeamercolor{block title}{bg=primary, fg=white}
\setbeamercolor{block body}{bg=primary!10, fg=primary}
\setbeamercolor{block title alerted}{bg=RPoly, fg=white}
\setbeamercolor{block body alerted}{bg=RPoly!10, fg=RPoly!110}
\setbeamercolor{block title example}{bg=VPoly, fg=white}
\setbeamercolor{block body example}{bg=VPoly!10, fg=VPoly!110}

\setbeamercolor{foot blue}{bg=BPoly, fg=white}
\setbeamercolor{foot green}{bg=VPoly, fg=white}
\setbeamercolor{foot orange}{bg=OPoly, fg=white}
\setbeamercolor{foot red}{bg=RPoly, fg=white}

\setbeamercolor{header}{bg=primary, fg=white}
\setbeamercolor{section title}{bg=primary, fg=white}
\setbeamercolor{part title}{bg=primary, fg=white}

% Thèmes généraux
\useinnertheme{rectangles}
\useoutertheme{default}
\setbeamertemplate{navigation symbols}{}
\setbeamertemplate{blocks}[rectangle]

\newcommand{\thecourse}{}
\newcommand{\course}[1]{\renewcommand{\thecourse}{#1}}

% En-tête
\setbeamertemplate{headline}{
	\begin{beamercolorbox}[wd=\paperwidth, ht=6.1ex, dp=0ex, center]{header}
		\hspace{-15.8cm}
		\begin{tikzpicture}
			\fill[BPoly] (-10,0) rectangle (-9.7,-0.13);
			\fill[VPoly] (-10,-0.13) rectangle (-9.7,-0.26);
			\fill[OPoly] (-10,-0.26) rectangle (-9.7,-0.39);
			\fill[RPoly] (-10,-0.39) rectangle (-9.7,-0.52);
		\end{tikzpicture}
	\end{beamercolorbox}
}

% Pied de page
\setbeamertemplate{footline}{
	% \leavevmode%
	% \begin{beamercolorbox}[wd=0.25\paperwidth, ht=2.25ex, dp=1ex,center]{foot blue}
	% 	\usebeamerfont{foot}\thecourse
	% \end{beamercolorbox}
	% \hspace{-0.63em}
	% \begin{beamercolorbox}[wd=0.25\paperwidth, ht=2.25ex, dp=1ex,center]{foot green}
	% \end{beamercolorbox}
	% \hspace{-0.63em}
	% \begin{beamercolorbox}[wd=0.25\paperwidth, ht=2.25ex, dp=1ex,center]{foot orange}
	% \end{beamercolorbox}
	% \hspace{-0.63em}
	% \begin{beamercolorbox}[wd=0.25\paperwidth, ht=2.25ex, dp=1ex,center]{foot red}
	% 	\usebeamerfont{foot}\insertframenumber\,/\,\inserttotalframenumber
	% \end{beamercolorbox}
	\begin{beamercolorbox}[wd=0.5\paperwidth, ht=2.25ex, dp=1ex, left]{white}
		\hspace{0.3cm}\insertframenumber\,/\,\inserttotalframenumber
		\vspace{0.1cm}
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
		\textcolor{primary}{\rule{\textwidth}{1pt}}
		\begin{figure}
			\centering
			\includegraphics[width=0.3\textwidth]{~/texmf/tex/latex/polytex/bmagi/figs/Polytechnique.png}
		\end{figure}
		\ifx\insertdate\@empty\else\usebeamertemplate*{date}\fi
		\ifx\beamer@shortauthor\@empty\else\usebeamertemplate*{author}\fi
	\end{minipage}
}

\AtBeginSection{\frame{\sectionpage}}
\defbeamertemplate{section page}{secmine}[1][]{%
	\begin{centering}
		\begin{beamercolorbox}[sep=12pt,center]{part title}
			\usebeamerfont{section title}\thesection. \hspace{0.1cm} \insertsection\par
		\end{beamercolorbox}
	\end{centering}
}

% Section frames
\setbeamertemplate{section page}{
	\begin{centering}
		\begin{beamercolorbox}[sep=12pt,center]{part title}
			\usebeamerfont{section title}\thesection. \hspace{0.1cm} \insertsection\par
		\end{beamercolorbox}
	\end{centering}
}