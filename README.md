# CUHK Slides Template

A Beamer-based presentation template designed for The Chinese University of Hong Kong, modified from the [beamer template of CUHK-SZ](https://www.overleaf.com/latex/templates/cuhksz-beamer-theme/kmgwybtgxznt).

## Quick Start

1. Ensure you have a complete LaTeX environment installed (recommended: [TeX Live](https://www.tug.org/texlive/) or [MiKTeX](https://miktex.org/))
2. Compilation:

   ```bash
   # for non-Chinese
   pdflatex main.tex
   bibtex main    # if you need bibliography
   pdflatex main.tex
   pdflatex main.tex

   # for Chinese supporting
   bash compile.sh
   ```

## Key Features

### 1. Speaker Notes

Enable in `main.tex` by uncommenting one of

```latex
% \setbeamertemplate{note page}[plain]
% \setbeameroption{show notes}
% \setbeameroption{show notes on second screen}
% \setbeameroption{show only notes}
% \setbeameroption{show only slides with notes}

```

Usage example:

```latex
\begin{frame}{Frame Title}
    Your content here
\end{frame}

\note[enumerate]{
    \item Your notes here
}
```

### 2. Mathematical Symbols and Environments

Rich support for mathematical notation:

```latex
\begin{align}
    \bm{P}^*=\argmin_{\bm{P}\in\mathbb{R}_+^{m\times n}} & ~ \langle\bm{P},\bm{C}\rangle_\mathsf{F}
\end{align}
```

### 3. Bilingual Support

Support for both Chinese and English:

```latex
\begin{frame}{中英文标题}
    \begin{itemize}
        \item 中文内容
        \item English content
    \end{itemize}
\end{frame}
```

### 4. CUHK Color Scheme

University color scheme:

```latex
\textcolor{cuhk1}{Primary Color}
\textcolor{cuhk2}{Secondary Color}
\textcolor{cuhk3}{Tertiary Color}
```

### 5. Common Environments

- Boxed text:

```latex
\boxed{\makecell{Your boxed content}}
```

- Image insertion:

```latex
\begin{figure}
    \centering
    \includegraphics[width=0.9\textwidth]{pic/your-figure.pdf}
    \caption{Your caption}
\end{figure}
```

## File Structure

- `main.tex`: Main file
- `preamble.tex`: Predefined settings and packages
- `CUHK.sty`: Custom style file
- `pic/`: Image directory
- `ref.bib`: Bibliography database

## Usage Tips

1. Modify presenter information in `main.tex`
2. Place your images in the `pic/` directory
3. Enable speaker notes by uncommenting relevant lines in `main.tex`
4. Add bibliography entries in `ref.bib` if needed
5. It is highly recommended to use the compile.sh to generate pdf
6. To stop chinese support, command the `\usepackage{ctex}`
