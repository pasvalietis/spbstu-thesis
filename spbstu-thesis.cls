\def\filename{spbstu-thesis}
\def\fileversion{1.0}
\def\filedate{2019/12/08}
\def\docdate{2018/12/08}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{spbstu-thesis}[\filedate\space\fileversion\space%
\filename Thesis template class for SPBSTU PHTF.]

\DeclareOption*{
	\ClassWarning{myclass}{Unknown option '\CurrentOption'}
}
\ProcessOptions\relax

\LoadClass[a4paper,14pt]{extreport}

% abstract environment:
\def\enabstractname{Abstract}
\def\ruabstractname{Аннотация}

\def\speciality#1{\gdef\@speciality{#1}}
\def\acrank#1{\gdef\@acrank{#1}}
\def\referee#1{\gdef\@referee{#1}}
\def\supervisor#1{\gdef\@supervisor{#1}}
\def\groupnum#1{\gdef\@groupnum{#1}}
\def\director#1{\gdef\@director{#1}}
\def\defyear#1{\gdef\@defyear{#1}}

\def\enkwords#1{\gdef\@enkwords{#1}}
\def\rukwords#1{\gdef\@rukwords{#1}}

\def\alwayssingle{\@restonecolfalse\if@twocolumn\@restonecoltrue\onecolumn
	\else \newpage \fi}

\def\endalwayssingle{\if@restonecol\twocolumn \else \newpage \fi}

\RequirePackage{amsmath,amsthm,amssymb,bm} % the last one is for bold math
\RequirePackage{mathtext}
\RequirePackage{mathrsfs}

\RequirePackage[T1,TS1,T2A]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage[english,russian]{babel}

\RequirePackage{geometry,changepage}
\RequirePackage{titlesec}
%\RequirePackage{literat}
\RequirePackage{setspace}
\RequirePackage{indentfirst}
\RequirePackage{fancyhdr}
\RequirePackage{lastpage}
\RequirePackage[figure,table]{totalcount}
\RequirePackage{nopageno}
\RequirePackage{subcaption} % Cyrillic appendix counter
\RequirePackage[nottoc]{tocbibind}
\RequirePackage{totcount} %To count the number of appendices

\RequirePackage{graphicx}
\RequirePackage[font=small,singlelinecheck=false,tableposition=top]{caption}
\captionsetup[table]{font=normalsize,justification=raggedleft,singlelinecheck=off}

% Use russian style for integrals
\DeclareMathOperator*{\rint}{\ThisStyle{\rotatebox{10}{$\SavedStyle\!\int\!$}}}
%\DeclareMathOperator*{\rint}{\scalerel*{\rotatebox{15}{$\!\scriptstyle\int\!$}}{\int}}
\DeclareMathOperator*{\roint}{\ThisStyle{\rotatebox{10}{$\SavedStyle\!\oint\!$}}}


\geometry{left=3cm} 
\geometry{right=1cm} 
\geometry{top=2cm} 
\geometry{bottom=2cm} 
\onehalfspace % 1.5 linespread

\renewcommand{\vec}[1]{\text{\bf{#1}\normalfont}}
\newcommand{\vecg}[1]{\boldmath{#1}}

\frenchspacing

\addto\captionsrussian{\renewcommand{\contentsname}{Содержание}}
\addto\captionsrussian{\renewcommand{\listfigurename}{Список иллюстраций}}
\addto\captionsrussian{\renewcommand{\listtablename}{Список таблиц}}
\addto\captionsrussian{\renewcommand{\bibname}{Литература}}
\addto\captionsrussian{\renewcommand{\indexname}{Index}}
\addto\captionsrussian{\renewcommand{\figurename}{Рис.{}}}
\addto\captionsrussian{\renewcommand{\tablename}{Таблица}}
\addto\captionsrussian{\renewcommand{\partname}{Часть}}
\addto\captionsrussian{\renewcommand{\chaptername}{Глава}}
\addto\captionsrussian{\renewcommand{\appendixname}{Приложение}}
\addto\captionsrussian{\renewcommand{\bibname}{Список литературы}}
\addto\captionsrussian{\renewcommand{\ruabstractname}{Аннотация}}

\renewcommand\@dotsep{1.5} %полуторный интервал
\renewcommand{\bfdefault}{b} %жирный

\renewcommand*\l@chapter[2]{%
	\ifnum \c@tocdepth >\m@ne
	\addpenalty{-\@highpenalty}%
	\vskip 1.0em \@plus\p@
	\setlength\@tempdima{1.5em}%
	\begingroup
	\parindent \z@ \rightskip \@pnumwidth
	\parfillskip -\@pnumwidth
	\leavevmode \bfseries
	\advance\leftskip\@tempdima
	\hskip -\leftskip
	#1\nobreak{\normalfont \dotfill} \nobreak\hb@xt@\@pnumwidth{\hss #2}\par
	\penalty\@highpenalty
	\endgroup
	\fi}

\renewcommand\chaptername{Глава}
\renewcommand \thechapter {\@arabic\c@chapter}

\def\@makechapterhead#1{%
	{\parindent \z@ \centering \normalfont
		\ifnum \c@secnumdepth >\m@ne
		\bfseries \MakeUppercase{\@chapapp\space \thechapter.}
		\fi
		\interlinepenalty\@M
		\normalfont \bfseries\MakeUppercase{#1}\par\nobreak
		\vskip 10\p@
}}

\def\@makeschapterhead#1{%
	{\parindent \z@ \centering \normalfont
		\interlinepenalty\@M
		\normalfont \bfseries\MakeUppercase{#1}\par\nobreak
		\vskip 10\p@
}}

\renewcommand \thechapter {\@arabic\c@chapter}
\renewcommand \thesection {\thechapter.\@arabic\c@section.}
\renewcommand\thesubsection {\thesection\@arabic\c@subsection.}

\renewcommand\section{\@startsection {section}{1}{\z@}%
	{-3.5ex \@plus -1ex \@minus -.2ex}%
	{2.3ex \@plus.2ex}%
	{\normalfont\bfseries}}
\renewcommand\subsection{\@startsection{subsection}{2}{\z@}%
	{-3.25ex\@plus -1ex \@minus -.2ex}%
	{1.5ex \@plus .2ex}%
	{\normalfont}}

\fancypagestyle{spbstu-thesis}{%
	\fancyhf{}
	\fancyhead[R]{\thepage}
	\fancyheadoffset{0mm}
	\fancyfootoffset{0mm}
	\setlength{\headheight}{17pt}
	\renewcommand{\headrulewidth}{0pt}
	\renewcommand{\footrulewidth}{0pt}
	\fancypagestyle{plain}{ 
		\fancyhf{}
		\rhead{\thepage}}
}
\pagestyle{spbstu-thesis}
\renewcommand{\chaptermark}[1]{\markboth{\hfill\normalfont #1\hfill}{}}
\renewcommand{\sectionmark}[1]{\markright{\hfill\large\itshape \S\thesection\quad #1\hfill}}
\let\partmark=\chaptermark

\renewcommand{\@biblabel}[1]{#1.}
\newcommand{\reqref}[1]{(\ref{#1})}
\newcommand{\picref}[1]{рис.~\ref{#1}}

\newcommand{\addemptypage}{%
	\clearpage \mbox{} \clearpage
}

%ABSTRACT PAGE

\def\ruabstract{
	\begin{center}
		{\filcenter\bfseries\MakeUppercase{\ruabstractname}}
	\end{center}
	
	\noindent На \pageref{LastPage} с., \totalfigures{} рисунков, \totaltables{} таблицы, {\total{appnumber}} приложений\par
	
	\noindent Ключевые слова:~\@rukwords\par\par
	\noindent 
	\thispagestyle{empty}
	\hspace*{\fill}
}

\def\enabstract{
	\begin{center}
		{\filcenter\bfseries\MakeUppercase{\enabstractname}}
	\end{center}	
	
	\noindent \pageref{LastPage} pages, \totalfigures{} figures, \totaltables{} tables, {\total{appnumber}} appendices\par
	
	\noindent Keywords:~\@enkwords\par\par
	\noindent 
	\thispagestyle{empty}
}{\newpage}

\newenvironment{dedication}
{\begin{alwayssingle}}
	{\end{alwayssingle}}

\def\@chapter[#1]#2{\ifnum \c@secnumdepth >\m@ne
	\refstepcounter{chapter}%
	\typeout{\@chapapp\space\thechapter.}%
	\addcontentsline{toc}{chapter}%
	{\protect\numberline{\thechapter.}#1}%
	\else
	\addcontentsline{toc}{chapter}{#1}%
	\fi
	\chaptermark{#1}%
	\addtocontents{lof}{\protect\addvspace{10\p@}}%
	\addtocontents{lot}{\protect\addvspace{10\p@}}%
	\if@twocolumn
	\@topnewpage[\@makechapterhead{#2}]%
	\else
	\@makechapterhead{#2}%
	\@afterheading
	\fi}

%\newcounter{appnumber}
\newtotcounter{appnumber}
\setcounter{appnumber}{0}

\renewenvironment{appendix}[1][\unskip]
{  	\clearpage
	\addtocounter{appnumber}{1}
	\begin{center}
		{\filcenter\bfseries\MakeUppercase{\appendixname~\theappnumber:~#1}}
	\end{center}
	\addcontentsline{toc}{chapter}%
	{\protect{\appendixname~\theappnumber:~#1}}
}

\renewcommand{\titlepage}{%
	\thispagestyle{empty}
	\begin{center}
			{Министерство образования и науки Российской Федерации\\
				Санкт-Петербургский политехнический университет Петра Великого\\
				Институт физики, нанотехнологий и телекоммуникаций}\\
			Высшая школа прикладной физики и космических технологий\\
			\vspace{1em}			
		\end{center}
		\hfill		
		\begin{adjustwidth}{8cm}{}		
			\flushleft
			Работа допущена к защите\\
			Руководитель ОП\\
			\underline{\hspace{22ex}}~\@director\\
			«\underline{\hspace{4ex}}» \underline{{\hspace{15ex}}}~\@defyear~г.
		\end{adjustwidth}		
		\vspace{6em}
		\begin{center}
			{\textsc{\textbf{ВЫПУСКНАЯ КВАЛИФИКАЦИОННАЯ РАБОТА МАГИСТРА}}}
		\end{center}
		\begin{center}
			{\sf\large Тема: <<\@title{}>>}
		\end{center}
		\vspace{2em}
		Направление: 03.03.02 -- <<Физика>>\\
		Профиль: <<\@speciality>>

		\vspace{\fill}	
		\begin{flushleft}
			\begin{table}[ht]
				%	\centering
				\begin{tabular}{p{8cm} p{3cm} rp{4cm}}
					Выполнил:\\ студент~гр.~ \@groupnum{} \normalfont & \hfill & \@author{}\\\\
					Научный Руководитель: \\ \@acrank{} \normalfont& \hfill & \@supervisor{} \\\\
				\end{tabular}
			\end{table}
		\end{flushleft}		
		\begin{center}
			Санкт-Петербург\\
			\@defyear
		\end{center}
	}

\endinput