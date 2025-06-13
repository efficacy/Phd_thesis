/\\begin{lstlisting}/ { inside = 1; next}
/\\end{lstlisting}/ { inside = 0; next}
/\\begin{table}/ { inside = 1; next}
/\\end{table}/ { inside = 0; next}
/\\begin{tabular}/ { inside = 1; next}
/\\end{tabular}/ { inside = 0; next}
/\\begin{figure}/ { inside = 1; next}
/\\end{figure}/ { inside = 0; next}
{
    if (!inside) print $0
}