\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{practice}[2013/10/13 v0.1  Class for writing classroom practice guides]

\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}%
}
\ProcessOptions\relax

\LoadClass[brazil,a4paper]{article}

\RequirePackage{ifluatex}
\RequirePackage{ifxetex}

% Running with xetex or luatex?
% See http://tex.stackexchange.com/questions/47576/combining-ifxetex-and-ifluatex-with-the-logical-or-operation
\ifnum 0\ifxetex 1\fi\ifluatex 1\fi>0
  \RequirePackage{fontspec}
  \defaultfontfeatures{Ligatures=TeX}

  \RequirePackage{newtxtext}
  \RequirePackage[varg]{newtxmath}
  % See http://tex.stackexchange.com/questions/138966/footnote-in-minipage-wit-newtxtext-misses-mark
  \let\@makefnmark\orig@makefnmark


  % \setmainfont{Minion Pro}
  % \setsansfont[Scale=MatchLowercase]{Myriad Pro}
  % \setmonofont[Scale=MatchLowercase]{Consolas}

  % \setmainfont{Cambria}
  % \setsansfont[Scale=MatchLowercase]{Calibri}
  % \setmathrm[Scale=MatchLowercase]{Cambria Math}
  % \setmonofont[Scale=MatchLowercase]{Consolas}

  % \setmainfont{Times New Roman}
  % \setsansfont[Scale=MatchLowercase]{Helvetica LT Std}
  % \setmonofont[Scale=MatchLowercase]{Courier Std}

  % \setmainfont{Liberation Serif}
  % \setsansfont[Scale=MatchLowercase]{Liberation Sans}
  % \setmonofont[Scale=MatchLowercase]{Liberation Mono}

  % \setmainfont{DejaVu Serif}
  % \setsansfont[Scale=MatchLowercase]{DejaVu Sans}
  % \setmonofont[Scale=MatchLowercase]{DejaVu Sans Mono}

  % \setmainfont{Lucida Std}
  % \setsansfont[Scale=MatchLowercase]{Lucida Sans Std}
  % \setmonofont[Scale=MatchLowercase]{Lucida Sans Typewriter Std}
  % \setmonofont[Scale=MatchLowercase]{Lucida Typewriter Std}

  % \setmainfont{Luxi Serif}
  % \setsansfont[Scale=MatchLowercase]{Luxi Sans}
  % \setmonofont[Scale=MatchLowercase]{Luxi Mono}

  % \setmainfont{Nimbus Roman No9 L}
  % \setsansfont[Scale=MatchLowercase]{Nimbus Sans L}
  % \setmonofont[Scale=MatchLowercase]{Nimbus Mono L}

  % \setmainfont{Droid Serif}
  % \setsansfont[Scale=MatchLowercase]{Droid Sans}
  % \setmonofont[Scale=MatchLowercase]{Droid Sans Mono}

  % \setmonofont[Scale=MatchLowercase]{Letter Gothic Std}
  % \setmonofont[Scale=MatchLowercase]{Courier New}
  % \setmonofont[Scale=MatchLowercase]{Lucida Sans Typewriter Std}
  % \setmonofont[Scale=MatchLowercase]{Luxi Mono}
  % \setmonofont[Scale=MatchLowercase]{Consolas}
  % \setmonofont[Scale=MatchLowercase]{Ubuntu Mono}
\else
  \RequirePackage[utf8]{inputenc}
  \RequirePackage[T1]{fontenc}

  \RequirePackage{newtxtext}
  \RequirePackage[varg]{newtxmath}
  % See http://tex.stackexchange.com/questions/138966/footnote-in-minipage-wit-newtxtext-misses-mark
  \let\@makefnmark\orig@makefnmark

  % \RequirePackage{lmodern}
  % \RequirePackage{kpfonts}
  % \RequirePackage{iwona}
  % \RequirePackage{pslatex}
  % \RequirePackage{dejavu}
  % \RequirePackage[scaled=0.82]{DejaVuSansMono}

  % \DeclareFontFamily{T1}{lmttc}{\hyphenchar \font-1 }
  % \DeclareFontShape{T1}{lmttc}{m}{n}
  %    {<-> ec-lmtlc10}{}
  % \DeclareFontShape{T1}{lmttc}{m}{it}
  %    {<->sub*lmttc/m/sl}{}
  % \DeclareFontShape{T1}{lmttc}{m}{sl}
  %    {<-> ec-lmtlco10}{}
  % \renewcommand{\ttdefault}{lmttc}
\fi

\ifxetex
  \RequirePackage{polyglossia}
  \setdefaultlanguage[]{brazilian}
\else
  \ifluatex
    \RequirePackage[portuguese,brazilian]{babel}
  \else
    \RequirePackage[brazilian]{babel}
  \fi
\fi

\RequirePackage[hmargin=24mm,top=18mm,bottom=15mm]{geometry}
\RequirePackage{indentfirst}
\RequirePackage{hyperref}
\RequirePackage{tabularx}
\RequirePackage{enumitem}
\RequirePackage{xcolor}
\RequirePackage{titlesec}
\RequirePackage{tikz}
\RequirePackage[breakable,skins,minted]{tcolorbox}

\newcommand{\institution}[1]{\gdef\@institution{#1}}
\newcommand{\@institution}{}
\newcommand{\course}[1]{\gdef\@course{#1}}
\newcommand{\@course}{}
\newcommand{\subtitle}[1]{\gdef\@subtitle{#1}}
\newcommand{\@subtitle}{}

\renewcommand{\@maketitle}{%
  \newpage
  \begin{center}
    {\normalsize\textcolor{blue}{\@course}}\hfill
    {\small \@institution \quad \@date}\\
    \begin{tcolorbox}[center title,fonttitle=\sffamily\bfseries\large,title=\@subtitle]
      \begin{center}
        {\Large\textbf{\@title}}
      \end{center}
    \end{tcolorbox}
    {\small\begin{tabular}[t]{c}\@author\end{tabular}}
  \end{center}
}


\usetikzlibrary{shapes.misc}

\newcommand\titlebar{%
  \tikz[baseline,trim left=3.1cm,trim right=3cm] {
    \fill [cyan!25] (2.5cm,-1ex) rectangle (\textwidth+3.1cm,2.5ex);
    \node [
        fill=cyan!60!white,
        anchor= base east,
        rounded rectangle,
        minimum height=3.5ex] at (3cm,0) {
        % \textbf{\arabic{chapter}.\thesection.}
        \textbf{\thesection}
    };
  }%
}

\titleformat{\section}{\large\bfseries}{\titlebar}{0.1cm}{}
\renewcommand*{\thesection}{\arabic{section}}




\tcbset{%
  taskstyle/.style={%
    % breakable,
    parbox=false,
    enhanced,
    size=small,
    colback=blue!3!white,
    colframe=blue!40!white,
    coltitle=black,
    % top=4mm,
    %% left=2mm,
    %% right=2mm,
    % enlarge top by=\baselineskip/2+1mm,
    % enlarge top at break by=0mm,
    % pad at break=2mm,
    % fontupper=\normalsize,
    % overlay unbroken and first={%
    %   \node[
    %     line width=0.3mm, % boxrule for size=small in tcolorbox (see the manual)
    %     rectangle,
    %     rounded corners,
    %     draw=blue!80!black,
    %     fill=blue!20!white,
    %     inner sep=1.2mm,
    %     anchor=west,
    %     font=\small,
    %   ] at ([xshift=2.5mm]frame.north west)
    %        % {\strut\textbf{Tarefa \thetcbcounter\ifstrempty{#2}{}{: #2}}};%
    %        {\strut\textbf{Tarefa}};%
    %      },%
  }%
}

\newcounter{task}

\newtcolorbox[use counter=task]{task}[3][]{%
  % breakable,
  parbox=false,
  enhanced,
  size=small,
  colback=blue!5!white,
  colframe=blue!80!black,
  top=4mm,
  % left=2mm,
  % right=2mm,
  enlarge top by=\baselineskip/2+1mm,
  enlarge top at break by=0mm,
  pad at break=2mm,
  fontupper=\normalsize,
  label={#3},
  overlay unbroken and first={%
    \node[
      line width=0.3mm, % boxrule for size=small in tcolorbox (see the manual)
      rectangle,
      rounded corners,
      draw=blue!80!black,
      fill=blue!20!white,
      inner sep=1.2mm,
      anchor=west,
      font=\small,
    ] at ([xshift=2.5mm]frame.north west)
         {\strut\textbf{Tarefa \thetcbcounter\ifstrempty{#2}{}{: #2}}};},
  #1}%

% \newtcbtheorem[number within=section]{Task}{Tarefa}{%
%   colback=green!5,
%   colframe=green!35!black,
%   fonttitle=\bfseries,
%   }{tk}


\tcbset{%
  lststyle/.style={%
    % breakable,
    colback=red!5!white,
    colframe=red!75!black,
    listing only,
    bottom=0mm,
    listing engine=minted,
    % minted style=default,
    % minted options={fontsize=\normalsize},
  }%
}%

\newtcblisting{lst}[2][]{%
  lststyle,
  minted language=#2,
  #1
}%

\newcommand{\lstinput}[3][]{%
  \tcbinputlisting{%
    lststyle,
    minted language=#2,
    #1,
    listing file={#3},
  }%
}%


\tcbset{%
  runstyle/.style={%
    % breakable,
    colback=yellow!5!white,
    colframe=gray,
    bottom=0mm,
    fonttitle=\bfseries,
    title=Exemplo de execução da aplicação,
  }%
}%

\newtcblisting{runexample}[1][]{%
  % breakable,
  listing engine=minted,
  % minted style=default,
  minted language=text,
  minted options={fontsize=\small},
  colback=yellow!5!white,
  colframe=gray,
  listing only,
  bottom=0mm,
  fonttitle=\bfseries,
  title=Exemplo de execução da aplicação,
  #1
}

\newcommand{\solution}{\textbf{Solução:}\vspace{2pt}}

\newcommand{\numex}[1]{\textcolor{blue}{(exercício #1)}}

\endinput
