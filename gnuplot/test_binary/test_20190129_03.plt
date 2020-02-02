# --- reset the setting of gnuplot ---#
reset session

# --- range --- #
set xrange [0:65]
set yrange [0:65]
set zrange [0:1]

# --- plot --- #
set style data dots
splot "D:/gfortran/test.bin" binary dx=64 dy=64