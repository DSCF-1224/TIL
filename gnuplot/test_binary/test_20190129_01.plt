# --- reset the setting of gnuplot ---#
reset session

# --- path --- #
str_path_file_data = "D:/gfortran/test.bin"

plot \
    str_path_file_data \
    binary format="%2double" \
    using 1:2 \
    with lines