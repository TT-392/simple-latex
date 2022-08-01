% TODO: 
% citations

%\LoadClass[12pt,DIV14,BCOR10mm,a4paper,headsepline,headinclude,english,bibliography=totocnumbered]{scrreprt}

\LoadClass[12pt,DIV14]{scrreport}

\input{lib/codeBlocks.tex}

% Init functions
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
      \chapter*{#2\markboth{#2}{}}
      \addcontentsline{toc}{chapter}{#2}
  }%
  {
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