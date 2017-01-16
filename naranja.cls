% KOMA script book
\LoadClass[11pt]{scrbook}

\usepackage[usenames,dvipsnames]{xcolor}

\definecolor{mycolour}{HTML}{FF5814}
\definecolor{back}{HTML}{1F1F1F}
\definecolor{fore}{HTML}{FC4508}
\definecolor{dyellow}{rgb}{0.9976163,0.9990772,0.753402}

% For custom chapters (the black rectangle on top; see at the bottom)
\usepackage{scrlayer}

% Handwritten Font for the chapter numbering
\usepackage{aurical}

% Math
\usepackage{amsmath}

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FONTS
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% We use here URW Garamond: https://www.ctan.org/pkg/urw-garamond?lang=en
% To install this font, we need
% this script: https://www.tug.org/fonts/getnonfreefonts/
% Download and run it with: texlua install-getnonfreefonts
% Now we can set the roman, serif and math fonts:
% \renewcommand{\rmdefault}{ugm}
% % Set the seriff (I shot the Seriff)
% \renewcommand{\sfdefault}{ugm}
% % Enconding according to the doc: <texmf>/doc/fonts/urw
% \usepackage[T1]{fontenc}
% \usepackage{textcomp}
% % Set the math fonts using mathdesign
% \usepackage[urw-garamond]{mathdesign}
% \usepackage[T1]{fontenc}
% \usepackage{kpfonts}

\usepackage{cmbright}
\usepackage[default]{lato}
\renewcommand{\mddefault}{l}% switch default weight to light
\usepackage[italic]{mathastext}

% \usepackage{lato}
% \usepackage{fontspec}
% \usepackage{unicode-math}
% \setmainfont{Lato Light}

% \setmathfont{Lato Light}
% % \setmathfont[range=\mathup]  {Lato Light}
% % \setmathfont[range=\mathbfup]{Lato Bold}
% % \setmathfont[range=\mathbfit]{Lato Bold Italic}
% \setmathfont[range=\mathit]  {Lato Light Italic}

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Table of Contents for KOMA

\usepackage{tocstyle}
\usetocstyle{classic}
\setcounter{secnumdepth}{3}
\setcounter{tocdepth}{3}

%Distances between number and entry
\settocfeature[toc][0]{spaceafternumber}{15pt}
\settocfeature[toc][0]{entryvskip}{25pt}
\settocfeature[toc][1]{spaceafternumber}{15pt}
\settocfeature[toc][1]{entryvskip}{5pt}
\settocfeature[toc][2]{spaceafternumber}{12pt}

%Formatting entries
\usepackage{microtype}
\settocfeature[toc][0]{entryhook}{\large\flafamily\fontseries{bx}\selectfont}
\settocfeature[toc][0]{pagenumberhook}{\large\flafamily\fontseries{bx}\selectfont}
\settocfeature[toc][1]{entryhook}{}
\settocfeature[toc][2]{entryhook}{\itshape}

% Add bibliography to TOC
\usepackage[nottoc,notlot,notlof]{tocbibind}

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Mini TOC for Chapters

\usepackage[nohints]{minitoc}

%% partial TOCs after chapter title
% \setcounter{secnumdepth}{4} % number subsections
% \setcounter{tocdepth}{4} % list subsections
\mtcsetdepth{minitoc}{1}% ~ \setcounter{minitocdepth}{2}
%\renewcommand{\mtcfont}{\small\color{white}}
\mtcsetfont{minitoc}{*}{\flafamily\footnotesize\color{white}}
\mtcsetfont{minitoc}{section}{\hypersetup{linkcolor=white}\flafamily\footnotesize\color{white}}
% \mtcsetfont{minitoc}{subsection}{\usekomafont{chapterentry}}
\mtcsettitle{minitoc}{\relax}% remove “Contents”
\mtcsetfeature{minitoc}{before}{\vspace{0cm}}
\mtcsetfeature{minitoc}{after}{\vspace{0cm}}
\mtcsetrules{*}{off}

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Math
\usepackage{amsmath}

% Better bold symbols:
\usepackage{bm}

% Better tables
% For make cell, look at:
% http://tex.stackexchange.com/questions/2441/
% how-to-add-a-forced-line-break-inside-a-table-cell/176780#176780
\usepackage{colortbl}
\usepackage{makecell}
\renewcommand\theadalign{c}
\renewcommand\theadgape{\Gape[4pt]}
\renewcommand\cellgape{\Gape[4pt]}
\renewcommand\theadfont{\small}

% Larger padding for table cells (default is 1)
\def\arraystretch{1.2}%

% Hyperlinks
\usepackage[%
        pdfauthor={David Ignacio Cortes},
        bookmarks,%
        linkbordercolor=white,%
	    urlbordercolor=white,%
	    colorlinks=true,%
	    linkcolor=black,%
        linktoc=all,
	    urlcolor=fore,%
	    citecolor=fore]{hyperref}

% Plots
\usepackage{cite}
\usepackage{caption}
\usepackage{array}
% \captionsetup[figure]{box=colorbox, boxcolor=black!7, slc=off}
\usepackage{pgf}

% Short Command for some plots
\newcommand{\Insertfig}[4][1]{%
    % The first argument #1 is optional, with
    % default value '1'
    \begin{figure}[t!]
        \centering
        \includegraphics[scale=#1]{#2}
        \caption{#4}
        \label{#3}
    \end{figure}%
}

% To import pgf with embedded png pictures in a separate file
% \usepackage{import}
% \usepackage{subcaption}

% Margins
\usepackage[top=3cm, bottom=3cm, left=4cm, right=3cm]{geometry}

% For TexLive 2014 - Remove warnings
%\pdfsuppresswarningpagegroup=1

\usepackage{epstopdf}

% Code snippets
% \usepackage{minted}


% To make the custom chapters and captions
\usepackage{tikz}
\usetikzlibrary{positioning, backgrounds}
\usepackage{tikzpagenodes}


% To import the PDF for the extra cover page
\usepackage{pdfpages}


% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% CAPTIONS
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% To use tikz regions as south, west, etc
% calc is for summing coordinates
\usetikzlibrary{positioning,calc}

% We define a new caption format (see doc)
\DeclareCaptionFormat{sidewise}{%
    % A small negative space to have the caption behind the left margin
    % This approach produces a lot of hbox warnings!
    \hspace{-1.3cm}
    \begin{tikzpicture}
        % The space for the caption text (figure description)
        % with the width of the main text
        \node (caption text) [align=left] {%
        \begin{tabular}{p{\textwidth}}
            \small #3
        \end{tabular}};
        % The label, for example: Figure 2
        % in a rotated rectangle, next to the caption text
        % (north west of the caption box)
        \node (caption label) [rotate=90, inner xsep=0pt,%
            left=5mm of caption text.north west] {#1};
        % A vertical black line (back color) whose height adapts
        % to the caption text height
        \draw [line width=1pt, back] (caption text.north west) -- ($(caption text.south west)+(0, 0.55)$);
        % An orange (fore) vertical line next to the black one
        % (we use xshift for this)
        % we also use calc to get the line upper (yshift does not seem to work)
        \draw [line width=1pt, fore]%
            ([xshift=.35em]caption text.north west) -- ($(caption text.south west) + (.35em, 0.55)$);
    \end{tikzpicture}}

% Set the caption style:

% Update the caption labels manually (I cannot update it directly in Tikz)
\makeatletter
\renewcommand{\fnum@figure}{\flafamily Figure\hspace{1em}\thefigure}
\renewcommand{\fnum@table}{\flafamily Table\hspace{1em}\thetable}
\makeatother

\captionsetup{format=sidewise}


% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% CHAPTERS
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand*\chapterimageheight{.235\paperheight}% height of the chapter images

% Black background at the top of the page using scrlayer
% (works for chapter and chapter*)
\DeclareNewLayer[
  background,
  contents={%
      \begin{tikzpicture}[remember picture, overlay]
        \fill[back]
        ([yshift=-\chapterimageheight] current page.north west)
        rectangle (current page.north east);%
      \end{tikzpicture}%
  }
  ]{chapterbackground}
\DeclareNewPageStyleByLayers{chapterpage}{chapterbackground}
\renewcommand\chapterpagestyle{chapterpage}

% The chapter formatting
\renewcommand\chapterformat{%
  \begin{tikzpicture}[remember picture, overlay]
        % Chapter name: chapter, appendix, etc; at the top right
        \node[anchor=center] at ([yshift=-1.15cm, xshift=-1.8cm] current page.north east) %
        {\flafamily\fontsize{18}{20}\selectfont\chapapp};
%
        % The chapter number with handwritten font
        \node[anchor=center] at ([yshift=-3.9cm, xshift=-1.8cm] current page.north east) %
            {\color{fore} {\Fontauri \fontsize{100}{100}%
             \selectfont\thechapter}};
%
    % Minitoc shifted from the top centre part of the page
    \node[anchor=north west] at ([yshift=-0.6cm, xshift=-7cm] current page.north) {%
        \begin{minipage}{13cm}%
            \minitoc
        \end{minipage}
        };
  \end{tikzpicture}
}

\usepackage{etoolbox}

% This will make the chapter title go upwards
\appto\chapterheadstartvskip{\vspace*{-4.3cm}}
% This will make enough space after the chapter, where the content starts
\appto\chapterheadendvskip{\vspace*{5.5cm}}
% color of chapter title
\addtokomafont{chapter}{\flafamily\color{white}}
