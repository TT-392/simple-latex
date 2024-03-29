% TODO: 
% justified text 
% get rid of page breaks

%\LoadClass[12pt,DIV14,BCOR10mm,a4paper,headsepline,headinclude,english,bibliography=totocnumbered]{scrreprt}

%\LoadClass[12pt,DIV14]{scrreport}
\LoadClass[11pt,a4paper,dutch]{report}


\usepackage{csquotes}

\usepackage[margin=1in]{geometry}
%\geometry{textwidth=16cm}

\usepackage{caption}
\usepackage{float}
\usepackage{wrapfig}
\usepackage{tabularx}
\usepackage{graphicx}
\usepackage{multicol}
\usepackage{array}
\usepackage{enumitem}

\graphicspath{ {./images/} }
\usepackage[table]{xcolor}

\usepackage{titlesec}
\titleformat{\chapter}[display]
  {\vspace{-50pt}\Huge\bfseries}
  {}
  {0pt}
  {\thechapter.\ }

\titleformat{name=\chapter,numberless}[display]
  {\vspace{-50pt}\Huge\bfseries}
  {}
  {0pt}
  {}


\setcounter{secnumdepth}{3}
\input{simple_latex/lib/codeBlocks.tex}
%\input{simple_latex/lib/text.tex}

\usepackage[style=apa,backend=biber]{biblatex}

\newcommand\SetJustify[1]{
    \ifthenelse{\equal{#1}{False}}
    {\usepackage[document]{ragged2e}}
    {}
}

% Init functions
\newcommand\SetBibFile[1] {
    \addbibresource{#1}
}

\newcommand\SetLanguage[1] {
    \usepackage[#1]{babel}
}

\newcommand\SetFont[1] {
    \usepackage{fontspec}
    \setmainfont{#1}
}

% Hyperlinks and clickable TOC setup
\usepackage{xparse}
\usepackage{hyperref}

\hypersetup{
    colorlinks,
    citecolor=black,
    filecolor=black,
    linkcolor=black,
    urlcolor=black
}

% General purpose functions
\NewDocumentCommand\Chapter{sm}{\IfBooleanTF#1
  {
      %\vspace{-3cm}
      \chapter*{#2\markboth{#2}{}}
      \addcontentsline{toc}{chapter}{#2}
  }%
  {
      %\vspace{-3cm}
      \chapter{#2}
  }% 
}

\NewDocumentCommand\Section{sm}{\IfBooleanTF#1
  {
      \section*{#2\markboth{#2}{}}
      \addcontentsline{toc}{section}{#2}
  }%
  {
      \section{#2}
  }% 
}

\NewDocumentCommand\Subsection{sm}{\IfBooleanTF#1
  {
      \subsection*{#2\markboth{#2}{}}
      \addcontentsline{toc}{subsection}{#2}
  }%
  {
      \subsection{#2}
  }% 
}

\NewDocumentCommand\Subsubsection{sm}{\IfBooleanTF#1
  {
      \subsubsection*{#2\markboth{#2}{}}
      \addcontentsline{toc}{subsubsection}{#2}
  }%
  {
      \subsubsection{#2}
  }% 
}
