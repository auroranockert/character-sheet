\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{rpgcharsheet}[2013/04/17]

\LoadClass{article}

\RequirePackage[margin=1cm,footskip=0.25in,a4paper]{geometry}
\RequirePackage{mathptmx}
\RequirePackage{anyfontsize}
\RequirePackage{tabularx}
\RequirePackage{amssymb}
\RequirePackage{booktabs}
\RequirePackage{dashrule}
\RequirePackage{etex}
\RequirePackage{cancel}
\RequirePackage{xcolor}
\RequirePackage{color}
\RequirePackage{calc}
\RequirePackage{ifthen}
\RequirePackage{graphicx}
\RequirePackage{tabularx}

\ProcessOptions\relax
\DeclareOption* {\PassOptionsToClass{\CurrentOption}{article}}

\newcolumntype{A}[1]{@{}>{\centering\footnotesize}m{#1\unitlength}@{}}
\newcolumntype{B}[1]{@{}>{\footnotesize\scshape}m{#1\unitlength}@{}}
\newcolumntype{D}[1]{>{\itshape}p{#1\unitlength}}
\newcolumntype{E}[1]{@{}>{\lfont\raggedleft}b{#1\unitlength}@{}}
\newcolumntype{F}[1]{@{\hspace{-0.5ex}}>{\small\raggedleft}m{#1\unitlength}@{\hspace{0.5ex}}}

\newcommand\attributerow[1]{
  \nfont #1 && && && && \tabularnewline\cmidrule(){3-3}\cmidrule(){5-5}\cmidrule(){7-7}\cmidrule(){9-9}\cmidrule(){11-11}\cmidrule(){13-13}
}

\newcommand\attackrow[2]{
  \nfont #1 && & $+$ & {\color{gray} \lfont (#2)} & $+$ && $+$ && $+$ && $=$ & \tabularnewline\cmidrule(){3-3}\cmidrule(){5-5}\cmidrule(){7-7}\cmidrule(){9-9}\cmidrule(){11-11}\cmidrule(){13-13}
}

\newcommand\defenserow[4]{
  \nfont #1 && 10 & $+$ & #2 & $+$ & #3 & $+$ && $+$ & #4 & $+$ && $=$ \tabularnewline\cmidrule(){5-5}\cmidrule(){7-7}\cmidrule(){9-9}\cmidrule(){11-11}\cmidrule(){13-13}\cmidrule(){15-15}
}

\newcommand\weapon{
  &&& $\not$ && $\not$ && $\not$ && && && \tabularnewline\cmidrule(l){1-1}\cmidrule(l){3-3}\cmidrule(l){5-5}\cmidrule(l){7-7}\cmidrule(l){9-9}\cmidrule(){11-11}\cmidrule(){13-13}\cmidrule(){15-15}
}

\newcommand\armor{
  && && && && \tabularnewline\cmidrule(l){1-1}\cmidrule(){3-3}\cmidrule(){5-5}\cmidrule(){7-7}\cmidrule(){9-9}
}

\newcommand\skillcalculate[2]{
  \nfont #1 & \classskillbox && $+$ & {\color{gray} \lfont (#2)} & $+$ && $=$ & \tabularnewline\cline{4-4}\cline{6-6}\cline{8-8}\cline{10-10}
}

\newcommand\classskillbox{
  $\square$
}

\newcommand\saverow[2]{
  \nfont #1 && $+$ & {\color{gray} \lfont (#2)} & $+$ && $+$ && $=$ & \tabularnewline\cline{2-2}\cline{4-4}\cline{6-6}\cline{8-8}\cline{10-10}
}

\newcommand\skill[2]{
  $\bullet$ & \skillcalculate{#1}{#2}
}

\newcommand\trainskill[2]{
  $\circ$ & \skillcalculate{#1}{#2}
}

\newcommand\abilityline{
  \tabularnewline\cmidrule(lr){1-1}
}

\newcommand\itemslot[1]{
  \nfont #1 &&& \tabularnewline\cline{2-2}\cline{4-4}
}

\newcommand\itemgeneric{
  &&& \tabularnewline\cline{2-2}\cline{4-4}
}

\newcommand\tfont{\small\scshape}
\newcommand\nfont{\fontsize{8}{8}\selectfont\scshape}
\newcommand\lfont{\fontsize{6}{6}\selectfont\scshape}
