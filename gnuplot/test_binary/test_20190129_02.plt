# --- reset the setting of gnuplot ---#
reset session

# --- path --- #
str_path_file_data = "D:/gfortran/test.bin"
str_format         = "%3double"

plot \
    str_path_file_data binary format=str_format using 1:2 with lines, \
    str_path_file_data binary format=str_format using 2:3 with lines