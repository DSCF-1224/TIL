# --- terminal --- #
str_extension = '.emf'
str_extension = '.eps'

# set term emf monochrome    # {color|monochrome}
# set term emf enhanced      # {enhanced|noproportional}
# set term emf font str_font . ",35" # {font "<fontname>{,<fontsize>}"}
# set term emf size 700,1400  # {size <XX>{unit},<YY>{unit}}

set term epscairo noenhanced           # {{no}enhanced} {mono|color}
set term epscairo font str_font        # {font <font>}
set term epscairo fontscale 1.0        # {fontscale <scale>}
set term epscairo                      # {linewidth <lw>} {rounded|butt|square} {dashlength <dl>}
set term epscairo                      # {background <rgbcolor>}
set term epscairo size 3.5inch,7.0inch # {size <XX>{unit},<YY>{unit}}

# set term pdfcairo noenhanced           # {{no}enhanced} {mono|color}
# set term pdfcairo font str_font        # {font <font>}
# set term pdfcairo fontscale 1.0        # {fontscale <scale>}
# set term pdfcairo                      # {linewidth <lw>} {rounded|butt|square} {dashlength <dl>}
# set term pdfcairo                      # {background <rgbcolor>}
# set term pdfcairo size 3.5inch,7.0inch # {size <XX>{unit},<YY>{unit}}

# set term pngcairo noenhanced     # {noenhanced|enhanced} {mono|color}
# set term pngcairo                # {notransparent|transparent} {nocrop|crop} {background <rgbcolor>
# set term pngcairo font str_font  # {font <font>}
# set term pngcairo fontscale 2.0  # {fontscale <scale>}
# set term pngcairo                # {linewidth <lw>} {rounded|butt|square} {dashlength <dl>}
# set term pngcairo size 600,1400  # {size <XX>{unit},<YY>{unit}}

# --- plot --- #
str_fontstyle       = str_font
str_filename_labels = 'test_greek_labels_emf.plt' # for emf
str_filename_labels = 'test_greek_labels.plt'     # for epscairo, pdfcairo, pngcairo

set output filename_save . str_fontname . str_extension
load str_filename_labels
plot 1/0 notitle

str_fontstyle = str_font . ':Normal'
set output filename_save . str_fontname . 'Normal' . str_extension
load str_filename_labels
plot 1/0 notitle

str_fontstyle = str_font . ':Italic'
set output filename_save . str_fontname . 'Italic' . str_extension
load str_filename_labels
plot 1/0 notitle

str_fontstyle = str_font . ':Bold'
set output filename_save . str_fontname . 'Bold' . str_extension
load str_filename_labels
plot 1/0 notitle

str_fontstyle = str_font . ':Bold:Normal'
set output filename_save . str_fontname . 'Bold_Normal' . str_extension
load str_filename_labels
plot 1/0 notitle

str_fontstyle = str_font . ':Bold:Italic'
set output filename_save . str_fontname . 'Bold_Italic' . str_extension
load str_filename_labels
plot 1/0 notitle