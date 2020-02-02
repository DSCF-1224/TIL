# --- reset gnuplot --- #
reset session

# --- border --- #
unset border

# --- format --- #
set format x ""
set format y ""

# --- range --- #
set xrange [0.0:1.0]
set yrange [0.0:1.0]

# --- tics --- #
unset xtics
unset ytics

# --- plot --- #
cd 'D:\GitHub\gnuplot\fonts'

str_font      = "Arial"
str_fontname  = 'Arial_'
filename_save = 'test_Greek\greek_epscairo_' # 'test_Greek\greek_emf_'
load 'test_greek_plots.plt'

str_font      = "Courier"
str_fontname  = 'Courier_'
filename_save = 'test_Greek\greek_epscairo_' # 'test_Greek\greek_emf_'
load 'test_greek_plots.plt'

str_font      = "Times-New-Roman" # for epscairo, pdfcairo, pngcairo
str_font      = "Times"           # for emf
str_fontname  = 'Times_'
filename_save = 'test_Greek\greek_epscairo_' # 'test_Greek\greek_emf_'
load 'test_greek_plots.plt'

# --- end of the plot --- #
set output