\LoadClass[a4paper,12pt]{report} % Classe du document
%--------------------- Packages ------------------------

\RequirePackage[french]{babel} %Langue du document
\RequirePackage[utf8]{inputenc} %Caractères spéciaux
\RequirePackage{fix-cm}
\RequirePackage[section]{placeins}%Pour placement de section
\RequirePackage[T1]{fontenc} %Quelques lettres qui sont pas inclus dans UTF-8
\RequirePackage{mathtools} %Paquet pour des équations et symboles mathématiques
\RequirePackage[style = apa]{biblatex}
%\RequirePackage{biblatex}
\RequirePackage{siunitx} %Pour écrire avec la notation scientifique (Ex.: \num{2e+9})
\RequirePackage{float} %Pour placement d'images
\RequirePackage{graphicx} %Paquet pour insérer des images
\RequirePackage[justification=centering]{caption} %Pour les légendes centralisées
\RequirePackage{subcaption}
\RequirePackage{wallpaper}
\RequirePackage{tocloft}
\RequirePackage{nomencl}
\RequirePackage{titlesec}
%\makenomenclature
\RequirePackage{fancyhdr}
%\pagestyle{fancy}
%\fancyheadoffset{1cm}
%\setlength{\headheight}{2cm}
\RequirePackage{url}
\RequirePackage[hidelinks]{hyperref}%Paquet pour insérer légendes dans des sous-figures comme Figure 1a, 1b
\RequirePackage[left=2.5cm,right=2.5cm,top=2cm,bottom=3.5cm]{geometry} 

%-------------------- Informations sur le rapport ----------------------

\newcommand{\UE}[1]{\renewcommand{\UE}{#1}}
\newcommand{\sujet}[1]{\renewcommand{\sujet}{#1}}
\newcommand{\titre}[1]{\renewcommand{\titre}{#1}}
\newcommand{\enseignant}[1]{\renewcommand{\enseignant}{#1}}
\newcommand{\eleves}[1]{\renewcommand{\eleves}{#1}}

\newcommand{\fairemarges}{
\makenomenclature
\pagestyle{fancy}
\fancyheadoffset{1cm}
\setlength{\headheight}{2cm}
\lhead{\includegraphics[scale=0.06]{images/logo_henallux.png}} %Affichage de l'image au top de la page
\rhead{\textbf{\titre}}
\rfoot{\thepage}
\cfoot{}
\lfoot{\UE}
}

\newcommand{\fairepagedegarde}{
\begin{titlepage}
	\centering %Centraliser le contenu
	\includegraphics[width=0.2\textwidth]{images/logo_henallux.png}\par\vspace{1cm} %Insertion du logo
	{\scshape\LARGE Henallux - IESN \par} %Nom de l'université
	\vspace{1.5cm}%Espace de 1,5cm
	{\scshape\Large \UE \\ \sujet \\ \par} %sous-titre
	\vspace{1cm}%Espace de 1cm
    \rule{\linewidth}{0.2 mm} \\[0.4 cm]
	{\huge\bfseries \titre \par} \
    \rule{\linewidth}{0.2 mm} \\[1.5 cm]
	\vspace{1cm}%Espace de 3cm
    
	\begin{minipage}{0.5\textwidth} %Minipage pour faire deux colonnes
		\begin{flushleft} \large %Envoyer à gauche
		\emph{\textbf{Étudiants :}}\\ %Pour le titre au dessus des noms à gauche
        \eleves\\ %Remplacer pour chacun
		\end{flushleft}
	\end{minipage}
	~
	\begin{minipage}{0.4\textwidth}
		\begin{flushright} \large
		\emph{\textbf{Enseignant :}} \\
		 \enseignant \\
		\end{flushright}
	\end{minipage}\\[4cm]
    
	\vfill
	{\large \today\par} %Affichage de la date

\end{titlepage}
}

\newcommand{\tabledematieres}{
\thispagestyle{empty}
\pagenumbering{gobble}
\setlength{\cftsubsubsecindent}{2em} % Indentation for subsubsections
\setlength{\cftsubsecindent}{1.5em} % Indentation for subsections
\setlength{\cftsecindent}{1em} % Indentation for sections
\setlength{\cftchapindent}{0em} % Indentation for chapters
\setcounter{tocdepth}{3} % Include subsubsections in the table of contents
\tableofcontents
\newpage
}

\newcommand{\insererfigure}[4]{
\begin{figure}[ht]
\centering
\includegraphics[height=#2]{#1}
\caption{#3}
\label{fig: #4}
\end{figure}
}

\newcommand{\fairebibliographie}{
\newpage 
\section{Bibliographie}{
\printbibliography[keyword={physics}, title=Lié à la physique] \nocite{*}

\printbibliography[keyword={programming}, title=Lié à la programmation] \nocite{*}

\printbibliography[title=Toute la bibliographie] \nocite{*}
}
}