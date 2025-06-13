%%%%%%%%%%%%
%
% ueathesis
% A document class to work with ueathesis.sty
%
% Version 1.0.1
% 
% Based on standard book class, with customisations for chapter headings and a synopsis environment.
% 
% Compiled by Tom Coleman and Dane Grundy, with thanks to Robert Whittaker for LaTeX knowledge and the UEA PGR office for command suggestions
%
% Questions, comments, bugs? Email either d.grundy@uea.ac.uk, danegrundy@googlemail.com or tdhc@st-andrews.ac.uk
%
% The source for our typographical decisions is practicaltypography.com
%
% CC Attribution 4.0 International (https://creativecommons.org/licenses/by/4.0/)
%
%%%%%%%%%%%%

\ProvidesClass{ueathesis}

\usepackage{graphicx}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}

\ProcessOptions\relax

\LoadClass[11pt,a4paper]{book}


% Code to discourage float-only pages

\renewcommand\topfraction{.9}
\renewcommand\bottomfraction{.5}
\renewcommand\dbltopfraction{.9}

\renewcommand\textfraction{.1}

\renewcommand\floatpagefraction{0.8}
\renewcommand\dblfloatpagefraction{0.8}


% Chapter headings:

% The source for these is http://zoonek.free.fr/LaTeX/LaTeX_samples_chapter/0.html. We have only provided a fraction of those available; go to this webpage for more.
%
% Options are in the form:
% Alignment of contents (display line 1 \\ display line 2 \\ display line 3 \\ ... )
%
% Comment your choice in, and all others out.

%% Right aligned (Chapter chapternumber \\ chaptertitle)

%\makeatletter
%\def\@makechapterhead#1{%
%  \vspace*{50\p@}%
%  {\parindent \z@ \raggedleft
%    \normalfont
%    \ifnum \c@secnumdepth >\m@ne
%      \if@mainmatter
%        \huge\bfseries \@chapapp\space \thechapter
%        \par\nobreak
%        \vskip 20\p@
%      \fi
%    \fi
%    \interlinepenalty\@M
%    \Huge \bfseries #1\par\nobreak
%    \vskip 40\p@
%  }}
%\def\@schapter#1{\if@twocolumn
%                   \@topnewpage[\@makeschapterhead{#1}]%
%                 \else
%                   \@makeschapterhead{#1}%
%                   \@afterheading
%                 \fi}
%\def\@makeschapterhead#1{%
%  \vspace*{50\p@}%
%  {\parindent \z@ \raggedleft
%    \normalfont
%    \interlinepenalty\@M
%    \Huge \bfseries  #1\par\nobreak
%    \vskip 40\p@
%  }}
%
%
%% Center aligned (Chapter chapternumber \\ chaptertitle)


\makeatletter
\def\@makechapterhead#1{%
 \vspace*{50\p@}%
 {\parindent \z@ \centering
    \normalfont
    \ifnum \c@secnumdepth >\m@ne
     \if@mainmatter
        \huge\bfseries \@chapapp\space \thechapter
        \par\nobreak
        \vskip 20\p@
     \fi
    \fi
    \interlinepenalty\@M
    \Huge \bfseries #1\par\nobreak
    \vskip 40\p@
 }}
\def\@schapter#1{\if@twocolumn
                  \@topnewpage[\@makeschapterhead{#1}]%
                \else
                  \@makeschapterhead{#1}%
                  \@afterheading
                \fi}
\def\@makeschapterhead#1{%
 \vspace*{50\p@}%
 {\parindent \z@ \centering
    \normalfont
    \interlinepenalty\@M
    \Huge \bfseries  #1\par\nobreak
    \vskip 40\p@
 }}

%%% Center aligned (chapter number \\ bold hline \\ chaptername \\ bold hline)
%  
%\makeatletter
%\def\thickhrulefill{\leavevmode \leaders \hrule height 1ex \hfill \kern \z@}
%\def\@makechapterhead#1{%
%  \vspace*{10\p@}%
%  {\parindent \z@ \centering \reset@font
%        {\Huge \scshape \thechapter}
%        \par\nobreak
%        \vspace*{10\p@}%
%        \interlinepenalty\@M
%        \thickhrulefill
%        \par\nobreak
%        \vspace*{2\p@}%
%        {\Huge \bfseries #1\par\nobreak}
%        \par\nobreak
%        \vspace*{2\p@}%
%        \thickhrulefill
%    %\vskip 40\p@
%    \vskip 100\p@
%  }}
%\def\@makeschapterhead#1{%
%  \vspace*{10\p@}%
%  {\parindent \z@ \centering \reset@font
%        {\Huge \scshape \vphantom{\thechapter}}
%        \par\nobreak
%        \vspace*{10\p@}%
%        \interlinepenalty\@M
%        \thickhrulefill
%        \par\nobreak
%        \vspace*{2\p@}%
%        {\Huge \bfseries #1\par\nobreak}
%        \par\nobreak
%        \vspace*{2\p@}%
%        \thickhrulefill
%    \vskip 100\p@
%  }}
%  
%%% Center aligned (chapternumber \\ hline \\ chaptername)
%
%\makeatletter
%\def\thickhrulefill{\leavevmode \leaders \hrule height 1ex \hfill \kern \z@}
%\def\@makechapterhead#1{%
%  \vspace*{10\p@}%
%  {\parindent \z@ \centering \reset@font
%        {\Huge\bfseries \thechapter }
%        \par\nobreak
%        \vspace*{10\p@}%
%        \interlinepenalty\@M
%        \hrule
%        \vspace*{10\p@}%
%        \Huge \bfseries #1\par\nobreak
%        \par
%        \vspace*{10\p@}%
%    \vskip 100\p@
%  }}
%\def\@makeschapterhead#1{%
%  \vspace*{10\p@}%
%  {\parindent \z@ \centering \reset@font
%        {\Huge\bfseries \vphantom{\thechapter} }
%        \par\nobreak
%        \vspace*{10\p@}%
%        \interlinepenalty\@M
%        \hrule
%        \vspace*{10\p@}%
%        \Huge \bfseries #1\par\nobreak
%        \par
%        \vspace*{10\p@}%
%    \vskip 100\p@
%  }}
%
%
%%% Left aligned (chapternumber \\ chaptertitle \\ hline)
%%
%\makeatletter
%\def\thickhrulefill{\leavevmode \leaders \hrule height 1ex \hfill \kern \z@}
%\def\@makechapterhead#1{%
%  \vspace*{10\p@}%
%  {\parindent \z@ \reset@font
%        {\huge\bfseries \thechapter }
%        \par\nobreak
%        \vspace*{10\p@}%
%        \huge \bfseries #1\par\nobreak
%        \par
%        \vspace*{20\p@}%
%        \hrule
%    \vskip 50\p@
%  }}
%\def\@makeschapterhead#1{%
%  \vspace*{10\p@}%
%  {\parindent \z@ \reset@font
%        {\huge\bfseries \vphantom{\thechapter} }
%        \par\nobreak
%        \vspace*{10\p@}%
%        \huge \bfseries #1\par\nobreak
%        \par
%        \vspace*{20\p@}
%        \hrule%
%    \vskip 50\p@
%  }}

% %%% Center aligned (chapternumber \\ chaptertitle \\ hline) (adapted by Tom)
% %
% \makeatletter
% \def\thickhrulefill{\leavevmode \leaders \hrule height 1ex \hfill \kern \z@}
% \def\@makechapterhead#1{%
%   \vspace*{10\p@}%
%   {\parindent \z@ \reset@font \centering
%         {\huge\bfseries \thechapter }
%         \par\nobreak
%         \vspace*{10\p@}%
%         \huge \bfseries #1\par\nobreak
%         \par
%         \vspace*{20\p@}%
%         \hrule
%     \vskip 50\p@
%   }}
% \def\@makeschapterhead#1{%
%   \vspace*{10\p@}%
%   {\parindent \z@ \reset@font \centering
%         {\huge\bfseries \vphantom{\thechapter} }
%         \par\nobreak
%         \vspace*{10\p@}%
%         \huge \bfseries #1\par\nobreak
%         \par
%         \vspace*{20\p@}
%         \hrule%
%     \vskip 50\p@
%   }}


% Synopsis environment (like an abstract for each chapter)

\newcommand{\synopsisname}{Synopsis}

\newenvironment{synopsis}{%
%  \small
  \begin{center}%
    {\bfseries \synopsisname\vspace{-0.5em}\vspace{\z@}}%
  \end{center}%
  \quotation
}{%
  \endquotation
}

\newenvironment{publish}{%
  \vfil
  \center\small\ignorespaces
  \rule{10em}{0.4pt}\par\noindent\ignorespaces
}{%
  \par\noindent\rule[1ex]{10em}{0.4pt}
  \endcenter
}


% Redefine Bibliography (courtesy of RJW)

% use unstared chapter heading (if part of backmatter then won't be
% numbered in situ, but can still get toc listing). Also add hook for
% customisable preamble text (eg a quote)

% natbib package already allows these things.
% In document:
%  \renewcommand{\bibsection}{\chapter{\bibname}}
%  \newcommand{\bibpreamble}{FOO}

\AtBeginDocument{%
  \ifx\bibsection\@undefined%
  \else\renewcommand{\bibsection}{%
    \if@mainmatter\chapter*{\bibname}%
  \else\chapter{\bibname}\fi}%
  \fi%
}