# [reference]
# https://www.utf8-chartable.de/unicode-utf8-table.pl?utf8=oct
# http://blog.fujioizumi.verse.jp/?eid=311
# http://ash.jp/code/unitbl21.htm
# https://hogehoge.tk/tool/number.html

# --- reset gnuplot --- #
reset session

# --- terminal --- #
str_font      = "Times-New-Roman:Bold:Italic"
str_font      = "Arial:Normal"
str_font      = "Arial:Bold:Normal"
str_font      = "Arial:Bold:Italic"
str_font      = "Times-New-Roman:Bold:Normal"
str_font      = "Times-New-Roman:Normal"
str_font      = "Times-New-Roman:Italic"
str_font      = "Arial:Italic"
str_font      = "Arial"
str_font      = "Courier"
str_font      = "Times-New-Roman"
str_fontstyle = ""

set terminal wxt 1               # {<n>}
set terminal wxt size 640, 640   # {size <width>,<height>} {position <x>,<y>}
set terminal wxt                 # {{no}enhanced}
set terminal wxt font str_font   # {font <font>}
set terminal wxt fontscale 1.0   # {fontscale <scale>}

# --- border --- #
unset border
# --- format --- #
set format x ""
set format y ""

# --- range --- #
set xrange [0.0:1.0]
set yrange [0.0:1.0]

# --- tics --- #
unset tics

# --- title --- #
set title "{/:Normal " . str_font . " " . str_fontstyle . "}"

val_position_x = 0.0
set label 1040 left at graph val_position_x, 3.2/3.2 '{' . str_fontstyle . ' \\040 \040}' # | |\040|U+0020|040|SPACE|✓|✓|
set label 1041 left at graph val_position_x, 3.1/3.2 '{' . str_fontstyle . ' \\041 \041}' # |!|\041|U+0021|041|EXCLAMATION MARK|✓|✓|
set label 1042 left at graph val_position_x, 3.0/3.2 '{' . str_fontstyle . ' \\042 \042}' # |"|\042|U+0022|042|QUOTATION MARK|✓|✓|
set label 1043 left at graph val_position_x, 2.9/3.2 '{' . str_fontstyle . ' \\043 \043}' # |#|\043|U+0023|043|NUMBER SIGN|✓|✓|
set label 1044 left at graph val_position_x, 2.8/3.2 '{' . str_fontstyle . ' \\044 \044}' # |$|\044|U+0024|044|DOLLAR SIGN|✓|✓|
set label 1045 left at graph val_position_x, 2.7/3.2 '{' . str_fontstyle . ' \\045 \045}' # |%|\045|U+0025|045|PERCENT SIGN|✓|✓|
set label 1046 left at graph val_position_x, 2.6/3.2 '{' . str_fontstyle . ' \\046 \046}' # |&|\046|U+0026|046|AMPERSAND|✓|✓|
set label 1047 left at graph val_position_x, 2.5/3.2 '{' . str_fontstyle . ' \\047 \047}' # |'|\047|U+0027|047|APOSTROPHE|✓|✓|
set label 1050 left at graph val_position_x, 2.4/3.2 '{' . str_fontstyle . ' \\050 \050}' # |(|\050|U+0028|050|LEFT PARENTHESIS|✓|✓|
set label 1051 left at graph val_position_x, 2.3/3.2 '{' . str_fontstyle . ' \\051 \051}' # |)|\051|U+0029|051|RIGHT PARENTHESIS|✓|✓|
set label 1052 left at graph val_position_x, 2.2/3.2 '{' . str_fontstyle . ' \\052 \052}' # |*|\052|U+002A|052|ASTERISK|✓|✓|
set label 1053 left at graph val_position_x, 2.1/3.2 '{' . str_fontstyle . ' \\053 \053}' # |+|\053|U+002B|053|PLUS SIGN|✓|✓|
set label 1054 left at graph val_position_x, 2.0/3.2 '{' . str_fontstyle . ' \\054 \054}' # |,|\054|U+002C|054|COMMA|✓|✓|
set label 1055 left at graph val_position_x, 1.9/3.2 '{' . str_fontstyle . ' \\055 \055}' # |-|\055|U+002D|055|HYPHEN-MINUS|✓|✓|
set label 1056 left at graph val_position_x, 1.8/3.2 '{' . str_fontstyle . ' \\056 \056}' # |.|\056|U+002E|056|FULL STOP|✓|✓|
set label 1057 left at graph val_position_x, 1.7/3.2 '{' . str_fontstyle . ' \\057 \057}' # |/|\057|U+002F|057|SOLIDUS|✓|✓|
set label 1060 left at graph val_position_x, 1.6/3.2 '{' . str_fontstyle . ' \\060 \060}' # |0|\060|U+0030|060|DIGIT ZERO|✓|✓|
set label 1061 left at graph val_position_x, 1.5/3.2 '{' . str_fontstyle . ' \\061 \061}' # |1|\061|U+0031|061|DIGIT ONE|✓|✓|
set label 1062 left at graph val_position_x, 1.4/3.2 '{' . str_fontstyle . ' \\062 \062}' # |2|\062|U+0032|062|DIGIT TWO|✓|✓|
set label 1063 left at graph val_position_x, 1.3/3.2 '{' . str_fontstyle . ' \\063 \063}' # |3|\063|U+0033|063|DIGIT THREE|✓|✓|
set label 1064 left at graph val_position_x, 1.2/3.2 '{' . str_fontstyle . ' \\064 \064}' # |4|\064|U+0034|064|DIGIT FOUR|✓|✓|
set label 1065 left at graph val_position_x, 1.1/3.2 '{' . str_fontstyle . ' \\065 \065}' # |5|\065|U+0035|065|DIGIT FIVE|✓|✓|
set label 1066 left at graph val_position_x, 1.0/3.2 '{' . str_fontstyle . ' \\066 \066}' # |6|\066|U+0036|066|DIGIT SIX|✓|✓|
set label 1067 left at graph val_position_x, 0.9/3.2 '{' . str_fontstyle . ' \\067 \067}' # |7|\067|U+0037|067|DIGIT SEVEN|✓|✓|
set label 1070 left at graph val_position_x, 0.8/3.2 '{' . str_fontstyle . ' \\070 \070}' # |8|\070|U+0038|070|DIGIT EIGHT|✓|✓|
set label 1071 left at graph val_position_x, 0.7/3.2 '{' . str_fontstyle . ' \\071 \071}' # |9|\071|U+0039|071|DIGIT NINE|✓|✓|
set label 1072 left at graph val_position_x, 0.6/3.2 '{' . str_fontstyle . ' \\072 \072}' # |:|\072|U+003A|072|COLON|✓|✓|
set label 1073 left at graph val_position_x, 0.5/3.2 '{' . str_fontstyle . ' \\073 \073}' # |;|\073|U+003B|073|SEMICOLON|✓|✓|
set label 1074 left at graph val_position_x, 0.4/3.2 '{' . str_fontstyle . ' \\074 \074}' # |<|\074|U+003C|074|LESS-THAN SIGN|✓|✓|
set label 1075 left at graph val_position_x, 0.3/3.2 '{' . str_fontstyle . ' \\075 \075}' # |=|\075|U+003D|075|EQUALS SIGN|✓|✓|
set label 1076 left at graph val_position_x, 0.2/3.2 '{' . str_fontstyle . ' \\076 \076}' # |>|\076|U+003E|076|GREATER-THAN SIGN|✓|✓|
set label 1077 left at graph val_position_x, 0.1/3.2 '{' . str_fontstyle . ' \\077 \077}' # |?|\077|U+003F|077|QUESTION MARK|✓|✓|

val_position_x = 0.2
set label 1100 center at graph val_position_x, 3.2/3.2 '{' . str_fontstyle . ' \\100 \100}' # |@|\100|U+0040|0100|COMMERCIAL AT
set label 1101 center at graph val_position_x, 3.1/3.2 '{' . str_fontstyle . ' \\101 \101}' # |A|\101|U+0041|0101|LATIN CAPITAL LETTER A
set label 1102 center at graph val_position_x, 3.0/3.2 '{' . str_fontstyle . ' \\102 \102}' # |B|\102|U+0042|0102|LATIN CAPITAL LETTER B
set label 1103 center at graph val_position_x, 2.9/3.2 '{' . str_fontstyle . ' \\103 \103}' # |C|\103|U+0043|0103|LATIN CAPITAL LETTER C
set label 1104 center at graph val_position_x, 2.8/3.2 '{' . str_fontstyle . ' \\104 \104}' # |D|\104|U+0044|0104|LATIN CAPITAL LETTER D
set label 1105 center at graph val_position_x, 2.7/3.2 '{' . str_fontstyle . ' \\105 \105}' # |E|\105|U+0045|0105|LATIN CAPITAL LETTER E
set label 1106 center at graph val_position_x, 2.6/3.2 '{' . str_fontstyle . ' \\106 \106}' # |F|\106|U+0046|0106|LATIN CAPITAL LETTER F
set label 1107 center at graph val_position_x, 2.5/3.2 '{' . str_fontstyle . ' \\107 \107}' # |G|\107|U+0047|0107|LATIN CAPITAL LETTER G
set label 1110 center at graph val_position_x, 2.4/3.2 '{' . str_fontstyle . ' \\110 \110}' # |H|\110|U+0048|0110|LATIN CAPITAL LETTER H
set label 1111 center at graph val_position_x, 2.3/3.2 '{' . str_fontstyle . ' \\111 \111}' # |I|\111|U+0049|0111|LATIN CAPITAL LETTER I
set label 1112 center at graph val_position_x, 2.2/3.2 '{' . str_fontstyle . ' \\112 \112}' # |J|\112|U+004A|0112|LATIN CAPITAL LETTER J
set label 1113 center at graph val_position_x, 2.1/3.2 '{' . str_fontstyle . ' \\113 \113}' # |K|\113|U+004B|0113|LATIN CAPITAL LETTER K
set label 1114 center at graph val_position_x, 2.0/3.2 '{' . str_fontstyle . ' \\114 \114}' # |L|\114|U+004C|0114|LATIN CAPITAL LETTER L
set label 1115 center at graph val_position_x, 1.9/3.2 '{' . str_fontstyle . ' \\115 \115}' # |M|\115|U+004D|0115|LATIN CAPITAL LETTER M
set label 1116 center at graph val_position_x, 1.8/3.2 '{' . str_fontstyle . ' \\116 \116}' # |N|\116|U+004E|0116|LATIN CAPITAL LETTER N
set label 1117 center at graph val_position_x, 1.7/3.2 '{' . str_fontstyle . ' \\117 \117}' # |O|\117|U+004F|0117|LATIN CAPITAL LETTER O
set label 1120 center at graph val_position_x, 1.6/3.2 '{' . str_fontstyle . ' \\120 \120}' # |P|\120|U+0050|0120|LATIN CAPITAL LETTER P
set label 1121 center at graph val_position_x, 1.5/3.2 '{' . str_fontstyle . ' \\121 \121}' # |Q|\121|U+0051|0121|LATIN CAPITAL LETTER Q
set label 1122 center at graph val_position_x, 1.4/3.2 '{' . str_fontstyle . ' \\122 \122}' # |R|\122|U+0052|0122|LATIN CAPITAL LETTER R
set label 1123 center at graph val_position_x, 1.3/3.2 '{' . str_fontstyle . ' \\123 \123}' # |S|\123|U+0053|0123|LATIN CAPITAL LETTER S
set label 1124 center at graph val_position_x, 1.2/3.2 '{' . str_fontstyle . ' \\124 \124}' # |T|\124|U+0054|0124|LATIN CAPITAL LETTER T
set label 1125 center at graph val_position_x, 1.1/3.2 '{' . str_fontstyle . ' \\125 \125}' # |U|\125|U+0055|0125|LATIN CAPITAL LETTER U
set label 1126 center at graph val_position_x, 1.0/3.2 '{' . str_fontstyle . ' \\126 \126}' # |V|\126|U+0056|0126|LATIN CAPITAL LETTER V
set label 1127 center at graph val_position_x, 0.9/3.2 '{' . str_fontstyle . ' \\127 \127}' # |W|\127|U+0057|0127|LATIN CAPITAL LETTER W
set label 1130 center at graph val_position_x, 0.8/3.2 '{' . str_fontstyle . ' \\130 \130}' # |X|\130|U+0058|0130|LATIN CAPITAL LETTER X
set label 1131 center at graph val_position_x, 0.7/3.2 '{' . str_fontstyle . ' \\131 \131}' # |Y|\131|U+0059|0131|LATIN CAPITAL LETTER Y
set label 1132 center at graph val_position_x, 0.6/3.2 '{' . str_fontstyle . ' \\132 \132}' # |Z|\132|U+005A|0132|LATIN CAPITAL LETTER Z
set label 1133 center at graph val_position_x, 0.5/3.2 '{' . str_fontstyle . ' \\133 \133}' # |[|\133|U+005B|0133|LEFT SQUARE BRACKET
set label 1134 center at graph val_position_x, 0.4/3.2 '{' . str_fontstyle . ' \\134 \134}' # |\|\134|U+005C|0134|REVERSE SOLIDUS
set label 1135 center at graph val_position_x, 0.3/3.2 '{' . str_fontstyle . ' \\135 \135}' # |]|\135|U+005D|0135|RIGHT SQUARE BRACKET
set label 1136 center at graph val_position_x, 0.2/3.2 '{' . str_fontstyle . ' \\136 \136}' # |^|\136|U+005E|0136|CIRCUMFLEX ACCENT
set label 1137 center at graph val_position_x, 0.1/3.2 '{' . str_fontstyle . ' \\137 \137}' # |_|\137|U+005F|0137|LOW LINE

val_position_x = 0.4
set label 1140 center at graph val_position_x, 3.2/3.2 '{' . str_fontstyle . ' \\140 \140}' # |`|U+0060|0140|GRAVE ACCENT|
set label 1141 center at graph val_position_x, 3.1/3.2 '{' . str_fontstyle . ' \\141 \141}' # |a|U+0061|0141|LATIN SMALL LETTER A|
set label 1142 center at graph val_position_x, 3.0/3.2 '{' . str_fontstyle . ' \\142 \142}' # |b|U+0062|0142|LATIN SMALL LETTER B|
set label 1143 center at graph val_position_x, 2.9/3.2 '{' . str_fontstyle . ' \\143 \143}' # |c|U+0063|0143|LATIN SMALL LETTER C|
set label 1144 center at graph val_position_x, 2.8/3.2 '{' . str_fontstyle . ' \\144 \144}' # |d|U+0064|0144|LATIN SMALL LETTER D|
set label 1145 center at graph val_position_x, 2.7/3.2 '{' . str_fontstyle . ' \\145 \145}' # |e|U+0065|0145|LATIN SMALL LETTER E|
set label 1146 center at graph val_position_x, 2.6/3.2 '{' . str_fontstyle . ' \\146 \146}' # |f|U+0066|0146|LATIN SMALL LETTER F|
set label 1147 center at graph val_position_x, 2.5/3.2 '{' . str_fontstyle . ' \\147 \147}' # |g|U+0067|0147|LATIN SMALL LETTER G|
set label 1150 center at graph val_position_x, 2.4/3.2 '{' . str_fontstyle . ' \\150 \150}' # |h|U+0068|0150|LATIN SMALL LETTER H|
set label 1151 center at graph val_position_x, 2.3/3.2 '{' . str_fontstyle . ' \\151 \151}' # |i|U+0069|0151|LATIN SMALL LETTER I|
set label 1152 center at graph val_position_x, 2.2/3.2 '{' . str_fontstyle . ' \\152 \152}' # |j|U+006A|0152|LATIN SMALL LETTER J|
set label 1153 center at graph val_position_x, 2.1/3.2 '{' . str_fontstyle . ' \\153 \153}' # |k|U+006B|0153|LATIN SMALL LETTER K|
set label 1154 center at graph val_position_x, 2.0/3.2 '{' . str_fontstyle . ' \\154 \154}' # |l|U+006C|0154|LATIN SMALL LETTER L|
set label 1155 center at graph val_position_x, 1.9/3.2 '{' . str_fontstyle . ' \\155 \155}' # |m|U+006D|0155|LATIN SMALL LETTER M|
set label 1156 center at graph val_position_x, 1.8/3.2 '{' . str_fontstyle . ' \\156 \156}' # |n|U+006E|0156|LATIN SMALL LETTER N|
set label 1157 center at graph val_position_x, 1.7/3.2 '{' . str_fontstyle . ' \\157 \157}' # |o|U+006F|0157|LATIN SMALL LETTER O|
set label 1160 center at graph val_position_x, 1.6/3.2 '{' . str_fontstyle . ' \\160 \160}' # |p|U+0070|0160|LATIN SMALL LETTER P|
set label 1161 center at graph val_position_x, 1.5/3.2 '{' . str_fontstyle . ' \\161 \161}' # |q|U+0071|0161|LATIN SMALL LETTER Q|
set label 1162 center at graph val_position_x, 1.4/3.2 '{' . str_fontstyle . ' \\162 \162}' # |r|U+0072|0162|LATIN SMALL LETTER R|
set label 1163 center at graph val_position_x, 1.3/3.2 '{' . str_fontstyle . ' \\163 \163}' # |s|U+0073|0163|LATIN SMALL LETTER S|
set label 1164 center at graph val_position_x, 1.2/3.2 '{' . str_fontstyle . ' \\164 \164}' # |t|U+0074|0164|LATIN SMALL LETTER T|
set label 1165 center at graph val_position_x, 1.1/3.2 '{' . str_fontstyle . ' \\165 \165}' # |u|U+0075|0165|LATIN SMALL LETTER U|
set label 1166 center at graph val_position_x, 1.0/3.2 '{' . str_fontstyle . ' \\166 \166}' # |v|U+0076|0166|LATIN SMALL LETTER V|
set label 1167 center at graph val_position_x, 0.9/3.2 '{' . str_fontstyle . ' \\167 \167}' # |w|U+0077|0167|LATIN SMALL LETTER W|
set label 1170 center at graph val_position_x, 0.8/3.2 '{' . str_fontstyle . ' \\170 \170}' # |x|U+0078|0170|LATIN SMALL LETTER X|
set label 1171 center at graph val_position_x, 0.7/3.2 '{' . str_fontstyle . ' \\171 \171}' # |y|U+0079|0171|LATIN SMALL LETTER Y|
set label 1172 center at graph val_position_x, 0.6/3.2 '{' . str_fontstyle . ' \\172 \172}' # |z|U+007A|0172|LATIN SMALL LETTER Z|
set label 1173 center at graph val_position_x, 0.5/3.2 '{' . str_fontstyle . ' \\173 \173}' # |{|U+007B|0173|LEFT CURLY BRACKET|
set label 1174 center at graph val_position_x, 0.4/3.2 '{' . str_fontstyle . ' \\174 \174}' # |||U+007C|0174|VERTICAL LINE|
set label 1175 center at graph val_position_x, 0.3/3.2 '{' . str_fontstyle . ' \\175 \175}' # |}|U+007D|0175|RIGHT CURLY BRACKET|
set label 1176 center at graph val_position_x, 0.2/3.2 '{' . str_fontstyle . ' \\176 \176}' # |~|U+007E|0176|TILDE|

val_position_x = 0.6
set label 103020240 center at graph val_position_x, 3.2/3.2 '{' . str_fontstyle . '\\302\\240 \302\240}'  # | |U+00A0|0302 0240|NO-BREAK SPACE
set label 103020241 center at graph val_position_x, 3.1/3.2 '{' . str_fontstyle . '\\302\\241 \302\241}'  # |¡|U+00A1|0302 0241|INVERTED EXCLAMATION MARK
set label 103020242 center at graph val_position_x, 3.0/3.2 '{' . str_fontstyle . '\\302\\242 \302\242}'  # |¢|U+00A2|0302 0242|CENT SIGN
set label 103020243 center at graph val_position_x, 2.9/3.2 '{' . str_fontstyle . '\\302\\243 \302\243}'  # |£|U+00A3|0302 0243|POUND SIGN
set label 103020244 center at graph val_position_x, 2.8/3.2 '{' . str_fontstyle . '\\302\\244 \302\244}'  # |¤|U+00A4|0302 0244|CURRENCY SIGN
set label 103020245 center at graph val_position_x, 2.7/3.2 '{' . str_fontstyle . '\\302\\245 \302\245}'  # |¥|U+00A5|0302 0245|YEN SIGN
set label 103020246 center at graph val_position_x, 2.6/3.2 '{' . str_fontstyle . '\\302\\246 \302\246}'  # |¦|U+00A6|0302 0246|BROKEN BAR
set label 103020247 center at graph val_position_x, 2.5/3.2 '{' . str_fontstyle . '\\302\\247 \302\247}'  # |§|U+00A7|0302 0247|SECTION SIGN
set label 103020250 center at graph val_position_x, 2.4/3.2 '{' . str_fontstyle . '\\302\\250 \302\250}'  # |¨|U+00A8|0302 0250|DIAERESIS
set label 103020251 center at graph val_position_x, 2.3/3.2 '{' . str_fontstyle . '\\302\\251 \302\251}'  # |©|U+00A9|0302 0251|COPYRIGHT SIGN
set label 103020252 center at graph val_position_x, 2.2/3.2 '{' . str_fontstyle . '\\302\\252 \302\252}'  # |ª|U+00AA|0302 0252|FEMININE ORDINAL INDICATOR
set label 103020253 center at graph val_position_x, 2.1/3.2 '{' . str_fontstyle . '\\302\\253 \302\253}'  # |«|U+00AB|0302 0253|LEFT-POINTING DOUBLE ANGLE QUOTATION MARK
set label 103020254 center at graph val_position_x, 2.0/3.2 '{' . str_fontstyle . '\\302\\254 \302\254}'  # |¬|U+00AC|0302 0254|NOT SIGN
set label 103020255 center at graph val_position_x, 1.9/3.2 '{' . str_fontstyle . '\\302\\255 \302\255}'  # | |U+00AD|0302 0255|SOFT HYPHEN
set label 103020256 center at graph val_position_x, 1.8/3.2 '{' . str_fontstyle . '\\302\\256 \302\256}'  # |®|U+00AE|0302 0256|REGISTERED SIGN
set label 103020257 center at graph val_position_x, 1.7/3.2 '{' . str_fontstyle . '\\302\\257 \302\257}'  # |¯|U+00AF|0302 0257|MACRON
set label 103020260 center at graph val_position_x, 1.6/3.2 '{' . str_fontstyle . '\\302\\260 \302\260}'  # |°|U+00B0|0302 0260|DEGREE SIGN
set label 103020261 center at graph val_position_x, 1.5/3.2 '{' . str_fontstyle . '\\302\\261 \302\261}'  # |±|U+00B1|0302 0261|PLUS-MINUS SIGN
set label 103020262 center at graph val_position_x, 1.4/3.2 '{' . str_fontstyle . '\\302\\262 \302\262}'  # |²|U+00B2|0302 0262|SUPERSCRIPT TWO
set label 103020263 center at graph val_position_x, 1.3/3.2 '{' . str_fontstyle . '\\302\\263 \302\263}'  # |³|U+00B3|0302 0263|SUPERSCRIPT THREE
set label 103020264 center at graph val_position_x, 1.2/3.2 '{' . str_fontstyle . '\\302\\264 \302\264}'  # |´|U+00B4|0302 0264|ACUTE ACCENT
set label 103020265 center at graph val_position_x, 1.1/3.2 '{' . str_fontstyle . '\\302\\265 \302\265}'  # |µ|U+00B5|0302 0265|MICRO SIGN
set label 103020266 center at graph val_position_x, 1.0/3.2 '{' . str_fontstyle . '\\302\\266 \302\266}'  # |¶|U+00B6|0302 0266|PILCROW SIGN
set label 103020267 center at graph val_position_x, 0.9/3.2 '{' . str_fontstyle . '\\302\\267 \302\267}'  # |·|U+00B7|0302 0267|MIDDLE DOT
set label 103020270 center at graph val_position_x, 0.8/3.2 '{' . str_fontstyle . '\\302\\270 \302\270}'  # |¸|U+00B8|0302 0270|CEDILLA
set label 103020271 center at graph val_position_x, 0.7/3.2 '{' . str_fontstyle . '\\302\\271 \302\271}'  # |¹|U+00B9|0302 0271|SUPERSCRIPT ONE
set label 103020272 center at graph val_position_x, 0.6/3.2 '{' . str_fontstyle . '\\302\\272 \302\272}'  # |º|U+00BA|0302 0272|MASCULINE ORDINAL INDICATOR
set label 103020273 center at graph val_position_x, 0.5/3.2 '{' . str_fontstyle . '\\302\\273 \302\273}'  # |»|U+00BB|0302 0273|RIGHT-POINTING DOUBLE ANGLE QUOTATION MARK
set label 103020274 center at graph val_position_x, 0.4/3.2 '{' . str_fontstyle . '\\302\\274 \302\274}'  # |¼|U+00BC|0302 0274|VULGAR FRACTION ONE QUARTER
set label 103020275 center at graph val_position_x, 0.3/3.2 '{' . str_fontstyle . '\\302\\275 \302\275}'  # |½|U+00BD|0302 0275|VULGAR FRACTION ONE HALF
set label 103020276 center at graph val_position_x, 0.2/3.2 '{' . str_fontstyle . '\\302\\276 \302\276}'  # |¾|U+00BE|0302 0276|VULGAR FRACTION THREE QUARTERS
set label 103020277 center at graph val_position_x, 0.1/3.2 '{' . str_fontstyle . '\\302\\277 \302\277}'  # |¿|U+00BF|0302 0277|INVERTED QUESTION MARK

val_position_x = 0.8
set label 103030200 center at graph val_position_x, 3.2/3.2 '{' . str_fontstyle . '\\303\\200 \303\200}' # |À|U+00C0|0303 0200|LATIN CAPITAL LETTER A WITH GRAVE
set label 103030201 center at graph val_position_x, 3.1/3.2 '{' . str_fontstyle . '\\303\\201 \303\201}' # |Á|U+00C1|0303 0201|LATIN CAPITAL LETTER A WITH ACUTE
set label 103030202 center at graph val_position_x, 3.0/3.2 '{' . str_fontstyle . '\\303\\202 \303\202}' # |Â|U+00C2|0303 0202|LATIN CAPITAL LETTER A WITH CIRCUMFLEX
set label 103030203 center at graph val_position_x, 2.9/3.2 '{' . str_fontstyle . '\\303\\203 \303\203}' # |Ã|U+00C3|0303 0203|LATIN CAPITAL LETTER A WITH TILDE
set label 103030204 center at graph val_position_x, 2.8/3.2 '{' . str_fontstyle . '\\303\\204 \303\204}' # |Ä|U+00C4|0303 0204|LATIN CAPITAL LETTER A WITH DIAERESIS
set label 103030205 center at graph val_position_x, 2.7/3.2 '{' . str_fontstyle . '\\303\\205 \303\205}' # |Å|U+00C5|0303 0205|LATIN CAPITAL LETTER A WITH RING ABOVE
set label 103030206 center at graph val_position_x, 2.6/3.2 '{' . str_fontstyle . '\\303\\206 \303\206}' # |Æ|U+00C6|0303 0206|LATIN CAPITAL LETTER AE
set label 103030207 center at graph val_position_x, 2.5/3.2 '{' . str_fontstyle . '\\303\\207 \303\207}' # |Ç|U+00C7|0303 0207|LATIN CAPITAL LETTER C WITH CEDILLA
set label 103030210 center at graph val_position_x, 2.4/3.2 '{' . str_fontstyle . '\\303\\210 \303\210}' # |È|U+00C8|0303 0210|LATIN CAPITAL LETTER E WITH GRAVE
set label 103030211 center at graph val_position_x, 2.3/3.2 '{' . str_fontstyle . '\\303\\211 \303\211}' # |É|U+00C9|0303 0211|LATIN CAPITAL LETTER E WITH ACUTE
set label 103030212 center at graph val_position_x, 2.2/3.2 '{' . str_fontstyle . '\\303\\212 \303\212}' # |Ê|U+00CA|0303 0212|LATIN CAPITAL LETTER E WITH CIRCUMFLEX
set label 103030213 center at graph val_position_x, 2.1/3.2 '{' . str_fontstyle . '\\303\\213 \303\213}' # |Ë|U+00CB|0303 0213|LATIN CAPITAL LETTER E WITH DIAERESIS
set label 103030214 center at graph val_position_x, 2.0/3.2 '{' . str_fontstyle . '\\303\\214 \303\214}' # |Ì|U+00CC|0303 0214|LATIN CAPITAL LETTER I WITH GRAVE
set label 103030215 center at graph val_position_x, 1.9/3.2 '{' . str_fontstyle . '\\303\\215 \303\215}' # |Í|U+00CD|0303 0215|LATIN CAPITAL LETTER I WITH ACUTE
set label 103030216 center at graph val_position_x, 1.8/3.2 '{' . str_fontstyle . '\\303\\216 \303\216}' # |Î|U+00CE|0303 0216|LATIN CAPITAL LETTER I WITH CIRCUMFLEX
set label 103030217 center at graph val_position_x, 1.7/3.2 '{' . str_fontstyle . '\\303\\217 \303\217}' # |Ï|U+00CF|0303 0217|LATIN CAPITAL LETTER I WITH DIAERESIS
set label 103030220 center at graph val_position_x, 1.6/3.2 '{' . str_fontstyle . '\\303\\220 \303\220}' # |Ð|U+00D0|0303 0220|LATIN CAPITAL LETTER ETH
set label 103030221 center at graph val_position_x, 1.5/3.2 '{' . str_fontstyle . '\\303\\221 \303\221}' # |Ñ|U+00D1|0303 0221|LATIN CAPITAL LETTER N WITH TILDE
set label 103030222 center at graph val_position_x, 1.4/3.2 '{' . str_fontstyle . '\\303\\222 \303\222}' # |Ò|U+00D2|0303 0222|LATIN CAPITAL LETTER O WITH GRAVE
set label 103030223 center at graph val_position_x, 1.3/3.2 '{' . str_fontstyle . '\\303\\223 \303\223}' # |Ó|U+00D3|0303 0223|LATIN CAPITAL LETTER O WITH ACUTE
set label 103030224 center at graph val_position_x, 1.2/3.2 '{' . str_fontstyle . '\\303\\224 \303\224}' # |Ô|U+00D4|0303 0224|LATIN CAPITAL LETTER O WITH CIRCUMFLEX
set label 103030225 center at graph val_position_x, 1.1/3.2 '{' . str_fontstyle . '\\303\\225 \303\225}' # |Õ|U+00D5|0303 0225|LATIN CAPITAL LETTER O WITH TILDE
set label 103030226 center at graph val_position_x, 1.0/3.2 '{' . str_fontstyle . '\\303\\226 \303\226}' # |Ö|U+00D6|0303 0226|LATIN CAPITAL LETTER O WITH DIAERESIS
set label 103030227 center at graph val_position_x, 0.9/3.2 '{' . str_fontstyle . '\\303\\227 \303\227}' # |×|U+00D7|0303 0227|MULTIPLICATION SIGN
set label 103030230 center at graph val_position_x, 0.8/3.2 '{' . str_fontstyle . '\\303\\230 \303\230}' # |Ø|U+00D8|0303 0230|LATIN CAPITAL LETTER O WITH STROKE
set label 103030231 center at graph val_position_x, 0.7/3.2 '{' . str_fontstyle . '\\303\\231 \303\231}' # |Ù|U+00D9|0303 0231|LATIN CAPITAL LETTER U WITH GRAVE
set label 103030232 center at graph val_position_x, 0.6/3.2 '{' . str_fontstyle . '\\303\\232 \303\232}' # |Ú|U+00DA|0303 0232|LATIN CAPITAL LETTER U WITH ACUTE
set label 103030233 center at graph val_position_x, 0.5/3.2 '{' . str_fontstyle . '\\303\\233 \303\233}' # |Û|U+00DB|0303 0233|LATIN CAPITAL LETTER U WITH CIRCUMFLEX
set label 103030234 center at graph val_position_x, 0.4/3.2 '{' . str_fontstyle . '\\303\\234 \303\234}' # |Ü|U+00DC|0303 0234|LATIN CAPITAL LETTER U WITH DIAERESIS
set label 103030235 center at graph val_position_x, 0.3/3.2 '{' . str_fontstyle . '\\303\\235 \303\235}' # |Ý|U+00DD|0303 0235|LATIN CAPITAL LETTER Y WITH ACUTE
set label 103030236 center at graph val_position_x, 0.2/3.2 '{' . str_fontstyle . '\\303\\236 \303\236}' # |Þ|U+00DE|0303 0236|LATIN CAPITAL LETTER THORN
set label 103030237 center at graph val_position_x, 0.1/3.2 '{' . str_fontstyle . '\\303\\237 \303\237}' # |ß|U+00DF|0303 0237|LATIN SMALL LETTER SHARP S

val_position_x = 1.0
set label 103030240 right at graph val_position_x, 3.2/3.2 '{' . str_fontstyle . '\\303\\240 \303\240}' # |à|U+00E0|0303 0240|LATIN SMALL LETTER A WITH GRAVE
set label 103030241 right at graph val_position_x, 3.1/3.2 '{' . str_fontstyle . '\\303\\241 \303\241}' # |á|U+00E1|0303 0241|LATIN SMALL LETTER A WITH ACUTE
set label 103030242 right at graph val_position_x, 3.0/3.2 '{' . str_fontstyle . '\\303\\242 \303\242}' # |â|U+00E2|0303 0242|LATIN SMALL LETTER A WITH CIRCUMFLEX
set label 103030243 right at graph val_position_x, 2.9/3.2 '{' . str_fontstyle . '\\303\\243 \303\243}' # |ã|U+00E3|0303 0243|LATIN SMALL LETTER A WITH TILDE
set label 103030244 right at graph val_position_x, 2.8/3.2 '{' . str_fontstyle . '\\303\\244 \303\244}' # |ä|U+00E4|0303 0244|LATIN SMALL LETTER A WITH DIAERESIS
set label 103030245 right at graph val_position_x, 2.7/3.2 '{' . str_fontstyle . '\\303\\245 \303\245}' # |å|U+00E5|0303 0245|LATIN SMALL LETTER A WITH RING ABOVE
set label 103030246 right at graph val_position_x, 2.6/3.2 '{' . str_fontstyle . '\\303\\246 \303\246}' # |æ|U+00E6|0303 0246|LATIN SMALL LETTER AE
set label 103030247 right at graph val_position_x, 2.5/3.2 '{' . str_fontstyle . '\\303\\247 \303\247}' # |ç|U+00E7|0303 0247|LATIN SMALL LETTER C WITH CEDILLA
set label 103030250 right at graph val_position_x, 2.4/3.2 '{' . str_fontstyle . '\\303\\250 \303\250}' # |è|U+00E8|0303 0250|LATIN SMALL LETTER E WITH GRAVE
set label 103030251 right at graph val_position_x, 2.3/3.2 '{' . str_fontstyle . '\\303\\251 \303\251}' # |é|U+00E9|0303 0251|LATIN SMALL LETTER E WITH ACUTE
set label 103030252 right at graph val_position_x, 2.2/3.2 '{' . str_fontstyle . '\\303\\252 \303\252}' # |ê|U+00EA|0303 0252|LATIN SMALL LETTER E WITH CIRCUMFLEX
set label 103030253 right at graph val_position_x, 2.1/3.2 '{' . str_fontstyle . '\\303\\253 \303\253}' # |ë|U+00EB|0303 0253|LATIN SMALL LETTER E WITH DIAERESIS
set label 103030254 right at graph val_position_x, 2.0/3.2 '{' . str_fontstyle . '\\303\\254 \303\254}' # |ì|U+00EC|0303 0254|LATIN SMALL LETTER I WITH GRAVE
set label 103030255 right at graph val_position_x, 1.9/3.2 '{' . str_fontstyle . '\\303\\255 \303\255}' # |í|U+00ED|0303 0255|LATIN SMALL LETTER I WITH ACUTE
set label 103030256 right at graph val_position_x, 1.8/3.2 '{' . str_fontstyle . '\\303\\256 \303\256}' # |î|U+00EE|0303 0256|LATIN SMALL LETTER I WITH CIRCUMFLEX
set label 103030257 right at graph val_position_x, 1.7/3.2 '{' . str_fontstyle . '\\303\\257 \303\257}' # |ï|U+00EF|0303 0257|LATIN SMALL LETTER I WITH DIAERESIS
set label 103030260 right at graph val_position_x, 1.6/3.2 '{' . str_fontstyle . '\\303\\260 \303\260}' # |ð|U+00F0|0303 0260|LATIN SMALL LETTER ETH
set label 103030261 right at graph val_position_x, 1.5/3.2 '{' . str_fontstyle . '\\303\\261 \303\261}' # |ñ|U+00F1|0303 0261|LATIN SMALL LETTER N WITH TILDE
set label 103030262 right at graph val_position_x, 1.4/3.2 '{' . str_fontstyle . '\\303\\262 \303\262}' # |ò|U+00F2|0303 0262|LATIN SMALL LETTER O WITH GRAVE
set label 103030263 right at graph val_position_x, 1.3/3.2 '{' . str_fontstyle . '\\303\\263 \303\263}' # |ó|U+00F3|0303 0263|LATIN SMALL LETTER O WITH ACUTE
set label 103030264 right at graph val_position_x, 1.2/3.2 '{' . str_fontstyle . '\\303\\264 \303\264}' # |ô|U+00F4|0303 0264|LATIN SMALL LETTER O WITH CIRCUMFLEX
set label 103030265 right at graph val_position_x, 1.1/3.2 '{' . str_fontstyle . '\\303\\265 \303\265}' # |õ|U+00F5|0303 0265|LATIN SMALL LETTER O WITH TILDE
set label 103030266 right at graph val_position_x, 1.0/3.2 '{' . str_fontstyle . '\\303\\266 \303\266}' # |ö|U+00F6|0303 0266|LATIN SMALL LETTER O WITH DIAERESIS
set label 103030267 right at graph val_position_x, 0.9/3.2 '{' . str_fontstyle . '\\303\\267 \303\267}' # |÷|U+00F7|0303 0267|DIVISION SIGN
set label 103030270 right at graph val_position_x, 0.8/3.2 '{' . str_fontstyle . '\\303\\270 \303\270}' # |ø|U+00F8|0303 0270|LATIN SMALL LETTER O WITH STROKE
set label 103030271 right at graph val_position_x, 0.7/3.2 '{' . str_fontstyle . '\\303\\271 \303\271}' # |ù|U+00F9|0303 0271|LATIN SMALL LETTER U WITH GRAVE
set label 103030272 right at graph val_position_x, 0.6/3.2 '{' . str_fontstyle . '\\303\\272 \303\272}' # |ú|U+00FA|0303 0272|LATIN SMALL LETTER U WITH ACUTE
set label 103030273 right at graph val_position_x, 0.5/3.2 '{' . str_fontstyle . '\\303\\273 \303\273}' # |û|U+00FB|0303 0273|LATIN SMALL LETTER U WITH CIRCUMFLEX
set label 103030274 right at graph val_position_x, 0.4/3.2 '{' . str_fontstyle . '\\303\\274 \303\274}' # |ü|U+00FC|0303 0274|LATIN SMALL LETTER U WITH DIAERESIS
set label 103030275 right at graph val_position_x, 0.3/3.2 '{' . str_fontstyle . '\\303\\275 \303\275}' # |ý|U+00FD|0303 0275|LATIN SMALL LETTER Y WITH ACUTE
set label 103030276 right at graph val_position_x, 0.2/3.2 '{' . str_fontstyle . '\\303\\276 \303\276}' # |þ|U+00FE|0303 0276|LATIN SMALL LETTER THORN
set label 103030277 right at graph val_position_x, 0.1/3.2 '{' . str_fontstyle . '\\303\\277 \303\277}' # |ÿ|U+00FF|0303 0277|LATIN SMALL LETTER Y WITH DIAERESIS

# --- plot --- #
plot 1/0 notitle










set terminal wxt 2               # {<n>}
set terminal wxt size 480, 640   # {size <width>,<height>} {position <x>,<y>}
set terminal wxt                 # {{no}enhanced}
set terminal wxt font str_font   # {font <font>}
set terminal wxt fontscale 1.0   # {fontscale <scale>}
unset label

val_position_x = 0.2
set label 103040200 center at graph val_position_x, 3.2/3.2 '{' . str_fontstyle . '\\304\\200 \304\200}' # |Ā|\304\200|U+0100|0304 0200|LATIN CAPITAL LETTER A WITH MACRON
set label 103040201 center at graph val_position_x, 3.1/3.2 '{' . str_fontstyle . '\\304\\201 \304\201}' # |ā|\304\201|U+0101|0304 0201|LATIN SMALL LETTER A WITH MACRON
set label 103040202 center at graph val_position_x, 3.0/3.2 '{' . str_fontstyle . '\\304\\202 \304\202}' # |Ă|\304\202|U+0102|0304 0202|LATIN CAPITAL LETTER A WITH BREVE
set label 103040203 center at graph val_position_x, 2.9/3.2 '{' . str_fontstyle . '\\304\\203 \304\203}' # |ă|\304\203|U+0103|0304 0203|LATIN SMALL LETTER A WITH BREVE
set label 103040204 center at graph val_position_x, 2.8/3.2 '{' . str_fontstyle . '\\304\\204 \304\204}' # |Ą|\304\204|U+0104|0304 0204|LATIN CAPITAL LETTER A WITH OGONEK
set label 103040205 center at graph val_position_x, 2.7/3.2 '{' . str_fontstyle . '\\304\\205 \304\205}' # |ą|\304\205|U+0105|0304 0205|LATIN SMALL LETTER A WITH OGONEK
set label 103040206 center at graph val_position_x, 2.6/3.2 '{' . str_fontstyle . '\\304\\206 \304\206}' # |Ć|\304\206|U+0106|0304 0206|LATIN CAPITAL LETTER C WITH ACUTE
set label 103040207 center at graph val_position_x, 2.5/3.2 '{' . str_fontstyle . '\\304\\207 \304\207}' # |ć|\304\207|U+0107|0304 0207|LATIN SMALL LETTER C WITH ACUTE
set label 103040210 center at graph val_position_x, 2.4/3.2 '{' . str_fontstyle . '\\304\\210 \304\210}' # |Ĉ|\304\210|U+0108|0304 0210|LATIN CAPITAL LETTER C WITH CIRCUMFLEX
set label 103040211 center at graph val_position_x, 2.3/3.2 '{' . str_fontstyle . '\\304\\211 \304\211}' # |ĉ|\304\211|U+0109|0304 0211|LATIN SMALL LETTER C WITH CIRCUMFLEX
set label 103040212 center at graph val_position_x, 2.2/3.2 '{' . str_fontstyle . '\\304\\212 \304\212}' # |Ċ|\304\212|U+010A|0304 0212|LATIN CAPITAL LETTER C WITH DOT ABOVE
set label 103040213 center at graph val_position_x, 2.1/3.2 '{' . str_fontstyle . '\\304\\213 \304\213}' # |ċ|\304\213|U+010B|0304 0213|LATIN SMALL LETTER C WITH DOT ABOVE
set label 103040214 center at graph val_position_x, 2.0/3.2 '{' . str_fontstyle . '\\304\\214 \304\214}' # |Č|\304\214|U+010C|0304 0214|LATIN CAPITAL LETTER C WITH CARON
set label 103040215 center at graph val_position_x, 1.9/3.2 '{' . str_fontstyle . '\\304\\215 \304\215}' # |č|\304\215|U+010D|0304 0215|LATIN SMALL LETTER C WITH CARON
set label 103040216 center at graph val_position_x, 1.8/3.2 '{' . str_fontstyle . '\\304\\216 \304\216}' # |Ď|\304\216|U+010E|0304 0216|LATIN CAPITAL LETTER D WITH CARON
set label 103040217 center at graph val_position_x, 1.7/3.2 '{' . str_fontstyle . '\\304\\217 \304\217}' # |ď|\304\217|U+010F|0304 0217|LATIN SMALL LETTER D WITH CARON
set label 103040220 center at graph val_position_x, 1.6/3.2 '{' . str_fontstyle . '\\304\\220 \304\220}' # |Đ|\304\220|U+0110|0304 0220|LATIN CAPITAL LETTER D WITH STROKE
set label 103040221 center at graph val_position_x, 1.5/3.2 '{' . str_fontstyle . '\\304\\221 \304\221}' # |đ|\304\221|U+0111|0304 0221|LATIN SMALL LETTER D WITH STROKE
set label 103040222 center at graph val_position_x, 1.4/3.2 '{' . str_fontstyle . '\\304\\222 \304\222}' # |Ē|\304\222|U+0112|0304 0222|LATIN CAPITAL LETTER E WITH MACRON
set label 103040223 center at graph val_position_x, 1.3/3.2 '{' . str_fontstyle . '\\304\\223 \304\223}' # |ē|\304\223|U+0113|0304 0223|LATIN SMALL LETTER E WITH MACRON
set label 103040224 center at graph val_position_x, 1.2/3.2 '{' . str_fontstyle . '\\304\\224 \304\224}' # |Ĕ|\304\224|U+0114|0304 0224|LATIN CAPITAL LETTER E WITH BREVE
set label 103040225 center at graph val_position_x, 1.1/3.2 '{' . str_fontstyle . '\\304\\225 \304\225}' # |ĕ|\304\225|U+0115|0304 0225|LATIN SMALL LETTER E WITH BREVE
set label 103040226 center at graph val_position_x, 1.0/3.2 '{' . str_fontstyle . '\\304\\226 \304\226}' # |Ė|\304\226|U+0116|0304 0226|LATIN CAPITAL LETTER E WITH DOT ABOVE
set label 103040227 center at graph val_position_x, 0.9/3.2 '{' . str_fontstyle . '\\304\\227 \304\227}' # |ė|\304\227|U+0117|0304 0227|LATIN SMALL LETTER E WITH DOT ABOVE
set label 103040230 center at graph val_position_x, 0.8/3.2 '{' . str_fontstyle . '\\304\\230 \304\230}' # |Ę|\304\230|U+0118|0304 0230|LATIN CAPITAL LETTER E WITH OGONEK
set label 103040231 center at graph val_position_x, 0.7/3.2 '{' . str_fontstyle . '\\304\\231 \304\231}' # |ę|\304\231|U+0119|0304 0231|LATIN SMALL LETTER E WITH OGONEK
set label 103040232 center at graph val_position_x, 0.6/3.2 '{' . str_fontstyle . '\\304\\232 \304\232}' # |Ě|\304\232|U+011A|0304 0232|LATIN CAPITAL LETTER E WITH CARON
set label 103040233 center at graph val_position_x, 0.5/3.2 '{' . str_fontstyle . '\\304\\233 \304\233}' # |ě|\304\233|U+011B|0304 0233|LATIN SMALL LETTER E WITH CARON
set label 103040234 center at graph val_position_x, 0.4/3.2 '{' . str_fontstyle . '\\304\\234 \304\234}' # |Ĝ|\304\234|U+011C|0304 0234|LATIN CAPITAL LETTER G WITH CIRCUMFLEX
set label 103040235 center at graph val_position_x, 0.3/3.2 '{' . str_fontstyle . '\\304\\235 \304\235}' # |ĝ|\304\235|U+011D|0304 0235|LATIN SMALL LETTER G WITH CIRCUMFLEX
set label 103040236 center at graph val_position_x, 0.2/3.2 '{' . str_fontstyle . '\\304\\236 \304\236}' # |Ğ|\304\236|U+011E|0304 0236|LATIN CAPITAL LETTER G WITH BREVE
set label 103040237 center at graph val_position_x, 0.1/3.2 '{' . str_fontstyle . '\\304\\237 \304\237}' # |ğ|\304\237|U+011F|0304 0237|LATIN SMALL LETTER G WITH BREVE

val_position_x = 0.4
set label 103040240 center at graph val_position_x, 3.2/3.2 '{' . str_fontstyle . '\\304\\240 \304\240}' # |Ġ|\304\240|U+0120|0304 0240|LATIN CAPITAL LETTER G WITH DOT ABOVE
set label 103040241 center at graph val_position_x, 3.1/3.2 '{' . str_fontstyle . '\\304\\241 \304\241}' # |ġ|\304\241|U+0121|0304 0241|LATIN SMALL LETTER G WITH DOT ABOVE
set label 103040242 center at graph val_position_x, 3.0/3.2 '{' . str_fontstyle . '\\304\\242 \304\242}' # |Ģ|\304\242|U+0122|0304 0242|LATIN CAPITAL LETTER G WITH CEDILLA
set label 103040243 center at graph val_position_x, 2.9/3.2 '{' . str_fontstyle . '\\304\\243 \304\243}' # |ģ|\304\243|U+0123|0304 0243|LATIN SMALL LETTER G WITH CEDILLA
set label 103040244 center at graph val_position_x, 2.8/3.2 '{' . str_fontstyle . '\\304\\244 \304\244}' # |Ĥ|\304\244|U+0124|0304 0244|LATIN CAPITAL LETTER H WITH CIRCUMFLEX
set label 103040245 center at graph val_position_x, 2.7/3.2 '{' . str_fontstyle . '\\304\\245 \304\245}' # |ĥ|\304\245|U+0125|0304 0245|LATIN SMALL LETTER H WITH CIRCUMFLEX
set label 103040246 center at graph val_position_x, 2.6/3.2 '{' . str_fontstyle . '\\304\\246 \304\246}' # |Ħ|\304\246|U+0126|0304 0246|LATIN CAPITAL LETTER H WITH STROKE
set label 103040247 center at graph val_position_x, 2.5/3.2 '{' . str_fontstyle . '\\304\\247 \304\247}' # |ħ|\304\247|U+0127|0304 0247|LATIN SMALL LETTER H WITH STROKE
set label 103040250 center at graph val_position_x, 2.4/3.2 '{' . str_fontstyle . '\\304\\250 \304\250}' # |Ĩ|\304\250|U+0128|0304 0250|LATIN CAPITAL LETTER I WITH TILDE
set label 103040251 center at graph val_position_x, 2.3/3.2 '{' . str_fontstyle . '\\304\\251 \304\251}' # |ĩ|\304\251|U+0129|0304 0251|LATIN SMALL LETTER I WITH TILDE
set label 103040252 center at graph val_position_x, 2.2/3.2 '{' . str_fontstyle . '\\304\\252 \304\252}' # |Ī|\304\252|U+012A|0304 0252|LATIN CAPITAL LETTER I WITH MACRON
set label 103040253 center at graph val_position_x, 2.1/3.2 '{' . str_fontstyle . '\\304\\253 \304\253}' # |ī|\304\253|U+012B|0304 0253|LATIN SMALL LETTER I WITH MACRON
set label 103040254 center at graph val_position_x, 2.0/3.2 '{' . str_fontstyle . '\\304\\254 \304\254}' # |Ĭ|\304\254|U+012C|0304 0254|LATIN CAPITAL LETTER I WITH BREVE
set label 103040255 center at graph val_position_x, 1.9/3.2 '{' . str_fontstyle . '\\304\\255 \304\255}' # |ĭ|\304\255|U+012D|0304 0255|LATIN SMALL LETTER I WITH BREVE
set label 103040256 center at graph val_position_x, 1.8/3.2 '{' . str_fontstyle . '\\304\\256 \304\256}' # |Į|\304\256|U+012E|0304 0256|LATIN CAPITAL LETTER I WITH OGONEK
set label 103040257 center at graph val_position_x, 1.7/3.2 '{' . str_fontstyle . '\\304\\257 \304\257}' # |į|\304\257|U+012F|0304 0257|LATIN SMALL LETTER I WITH OGONEK
set label 103040260 center at graph val_position_x, 1.6/3.2 '{' . str_fontstyle . '\\304\\260 \304\260}' # |İ|\304\260|U+0130|0304 0260|LATIN CAPITAL LETTER I WITH DOT ABOVE
set label 103040261 center at graph val_position_x, 1.5/3.2 '{' . str_fontstyle . '\\304\\261 \304\261}' # |ı|\304\261|U+0131|0304 0261|LATIN SMALL LETTER DOTLESS I
set label 103040262 center at graph val_position_x, 1.4/3.2 '{' . str_fontstyle . '\\304\\262 \304\262}' # |Ĳ|\304\262|U+0132|0304 0262|LATIN CAPITAL LIGATURE IJ
set label 103040263 center at graph val_position_x, 1.3/3.2 '{' . str_fontstyle . '\\304\\263 \304\263}' # |ĳ|\304\263|U+0133|0304 0263|LATIN SMALL LIGATURE IJ
set label 103040264 center at graph val_position_x, 1.2/3.2 '{' . str_fontstyle . '\\304\\264 \304\264}' # |Ĵ|\304\264|U+0134|0304 0264|LATIN CAPITAL LETTER J WITH CIRCUMFLEX
set label 103040265 center at graph val_position_x, 1.1/3.2 '{' . str_fontstyle . '\\304\\265 \304\265}' # |ĵ|\304\265|U+0135|0304 0265|LATIN SMALL LETTER J WITH CIRCUMFLEX
set label 103040266 center at graph val_position_x, 1.0/3.2 '{' . str_fontstyle . '\\304\\266 \304\266}' # |Ķ|\304\266|U+0136|0304 0266|LATIN CAPITAL LETTER K WITH CEDILLA
set label 103040267 center at graph val_position_x, 0.9/3.2 '{' . str_fontstyle . '\\304\\267 \304\267}' # |ķ|\304\267|U+0137|0304 0267|LATIN SMALL LETTER K WITH CEDILLA
set label 103040270 center at graph val_position_x, 0.8/3.2 '{' . str_fontstyle . '\\304\\270 \304\270}' # |ĸ|\304\270|U+0138|0304 0270|LATIN SMALL LETTER KRA
set label 103040271 center at graph val_position_x, 0.7/3.2 '{' . str_fontstyle . '\\304\\271 \304\271}' # |Ĺ|\304\271|U+0139|0304 0271|LATIN CAPITAL LETTER L WITH ACUTE
set label 103040272 center at graph val_position_x, 0.6/3.2 '{' . str_fontstyle . '\\304\\272 \304\272}' # |ĺ|\304\272|U+013A|0304 0272|LATIN SMALL LETTER L WITH ACUTE
set label 103040273 center at graph val_position_x, 0.5/3.2 '{' . str_fontstyle . '\\304\\273 \304\273}' # |Ļ|\304\273|U+013B|0304 0273|LATIN CAPITAL LETTER L WITH CEDILLA
set label 103040274 center at graph val_position_x, 0.4/3.2 '{' . str_fontstyle . '\\304\\274 \304\274}' # |ļ|\304\274|U+013C|0304 0274|LATIN SMALL LETTER L WITH CEDILLA
set label 103040275 center at graph val_position_x, 0.3/3.2 '{' . str_fontstyle . '\\304\\275 \304\275}' # |Ľ|\304\275|U+013D|0304 0275|LATIN CAPITAL LETTER L WITH CARON
set label 103040276 center at graph val_position_x, 0.2/3.2 '{' . str_fontstyle . '\\304\\276 \304\276}' # |ľ|\304\276|U+013E|0304 0276|LATIN SMALL LETTER L WITH CARON
set label 103040277 center at graph val_position_x, 0.1/3.2 '{' . str_fontstyle . '\\304\\277 \304\277}' # |Ŀ|\304\277|U+013F|0304 0277|LATIN CAPITAL LETTER L WITH MIDDLE DOT

val_position_x = 0.6
set label 103050200 center at graph val_position_x, 3.2/3.2 '{' . str_fontstyle . '\\305\\200 \305\200}' # |ŀ|\305\200|U+0140|0305 0200|LATIN SMALL LETTER L WITH MIDDLE DOT
set label 103050201 center at graph val_position_x, 3.1/3.2 '{' . str_fontstyle . '\\305\\201 \305\201}' # |Ł|\305\201|U+0141|0305 0201|LATIN CAPITAL LETTER L WITH STROKE
set label 103050202 center at graph val_position_x, 3.0/3.2 '{' . str_fontstyle . '\\305\\202 \305\202}' # |ł|\305\202|U+0142|0305 0202|LATIN SMALL LETTER L WITH STROKE
set label 103050203 center at graph val_position_x, 2.9/3.2 '{' . str_fontstyle . '\\305\\203 \305\203}' # |Ń|\305\203|U+0143|0305 0203|LATIN CAPITAL LETTER N WITH ACUTE
set label 103050204 center at graph val_position_x, 2.8/3.2 '{' . str_fontstyle . '\\305\\204 \305\204}' # |ń|\305\204|U+0144|0305 0204|LATIN SMALL LETTER N WITH ACUTE
set label 103050205 center at graph val_position_x, 2.7/3.2 '{' . str_fontstyle . '\\305\\205 \305\205}' # |Ņ|\305\205|U+0145|0305 0205|LATIN CAPITAL LETTER N WITH CEDILLA
set label 103050206 center at graph val_position_x, 2.6/3.2 '{' . str_fontstyle . '\\305\\206 \305\206}' # |ņ|\305\206|U+0146|0305 0206|LATIN SMALL LETTER N WITH CEDILLA
set label 103050207 center at graph val_position_x, 2.5/3.2 '{' . str_fontstyle . '\\305\\207 \305\207}' # |Ň|\305\207|U+0147|0305 0207|LATIN CAPITAL LETTER N WITH CARON
set label 103050210 center at graph val_position_x, 2.4/3.2 '{' . str_fontstyle . '\\305\\210 \305\210}' # |ň|\305\210|U+0148|0305 0210|LATIN SMALL LETTER N WITH CARON
set label 103050211 center at graph val_position_x, 2.3/3.2 '{' . str_fontstyle . '\\305\\211 \305\211}' # |ŉ|\305\211|U+0149|0305 0211|LATIN SMALL LETTER N PRECEDED BY APOSTROPHE
set label 103050212 center at graph val_position_x, 2.2/3.2 '{' . str_fontstyle . '\\305\\212 \305\212}' # |Ŋ|\305\212|U+014A|0305 0212|LATIN CAPITAL LETTER ENG
set label 103050213 center at graph val_position_x, 2.1/3.2 '{' . str_fontstyle . '\\305\\213 \305\213}' # |ŋ|\305\213|U+014B|0305 0213|LATIN SMALL LETTER ENG
set label 103050214 center at graph val_position_x, 2.0/3.2 '{' . str_fontstyle . '\\305\\214 \305\214}' # |Ō|\305\214|U+014C|0305 0214|LATIN CAPITAL LETTER O WITH MACRON
set label 103050215 center at graph val_position_x, 1.9/3.2 '{' . str_fontstyle . '\\305\\215 \305\215}' # |ō|\305\215|U+014D|0305 0215|LATIN SMALL LETTER O WITH MACRON
set label 103050216 center at graph val_position_x, 1.8/3.2 '{' . str_fontstyle . '\\305\\216 \305\216}' # |Ŏ|\305\216|U+014E|0305 0216|LATIN CAPITAL LETTER O WITH BREVE
set label 103050217 center at graph val_position_x, 1.7/3.2 '{' . str_fontstyle . '\\305\\217 \305\217}' # |ŏ|\305\217|U+014F|0305 0217|LATIN SMALL LETTER O WITH BREVE
set label 103050220 center at graph val_position_x, 1.6/3.2 '{' . str_fontstyle . '\\305\\220 \305\220}' # |Ő|\305\220|U+0150|0305 0220|LATIN CAPITAL LETTER O WITH DOUBLE ACUTE
set label 103050221 center at graph val_position_x, 1.5/3.2 '{' . str_fontstyle . '\\305\\221 \305\221}' # |ő|\305\221|U+0151|0305 0221|LATIN SMALL LETTER O WITH DOUBLE ACUTE
set label 103050222 center at graph val_position_x, 1.4/3.2 '{' . str_fontstyle . '\\305\\222 \305\222}' # |Œ|\305\222|U+0152|0305 0222|LATIN CAPITAL LIGATURE OE
set label 103050223 center at graph val_position_x, 1.3/3.2 '{' . str_fontstyle . '\\305\\223 \305\223}' # |œ|\305\223|U+0153|0305 0223|LATIN SMALL LIGATURE OE
set label 103050224 center at graph val_position_x, 1.2/3.2 '{' . str_fontstyle . '\\305\\224 \305\224}' # |Ŕ|\305\224|U+0154|0305 0224|LATIN CAPITAL LETTER R WITH ACUTE
set label 103050225 center at graph val_position_x, 1.1/3.2 '{' . str_fontstyle . '\\305\\225 \305\225}' # |ŕ|\305\225|U+0155|0305 0225|LATIN SMALL LETTER R WITH ACUTE
set label 103050226 center at graph val_position_x, 1.0/3.2 '{' . str_fontstyle . '\\305\\226 \305\226}' # |Ŗ|\305\226|U+0156|0305 0226|LATIN CAPITAL LETTER R WITH CEDILLA
set label 103050227 center at graph val_position_x, 0.9/3.2 '{' . str_fontstyle . '\\305\\227 \305\227}' # |ŗ|\305\227|U+0157|0305 0227|LATIN SMALL LETTER R WITH CEDILLA
set label 103050230 center at graph val_position_x, 0.8/3.2 '{' . str_fontstyle . '\\305\\230 \305\230}' # |Ř|\305\230|U+0158|0305 0230|LATIN CAPITAL LETTER R WITH CARON
set label 103050231 center at graph val_position_x, 0.7/3.2 '{' . str_fontstyle . '\\305\\231 \305\231}' # |ř|\305\231|U+0159|0305 0231|LATIN SMALL LETTER R WITH CARON
set label 103050232 center at graph val_position_x, 0.6/3.2 '{' . str_fontstyle . '\\305\\232 \305\232}' # |Ś|\305\232|U+015A|0305 0232|LATIN CAPITAL LETTER S WITH ACUTE
set label 103050233 center at graph val_position_x, 0.5/3.2 '{' . str_fontstyle . '\\305\\233 \305\233}' # |ś|\305\233|U+015B|0305 0233|LATIN SMALL LETTER S WITH ACUTE
set label 103050234 center at graph val_position_x, 0.4/3.2 '{' . str_fontstyle . '\\305\\234 \305\234}' # |Ŝ|\305\234|U+015C|0305 0234|LATIN CAPITAL LETTER S WITH CIRCUMFLEX
set label 103050235 center at graph val_position_x, 0.3/3.2 '{' . str_fontstyle . '\\305\\235 \305\235}' # |ŝ|\305\235|U+015D|0305 0235|LATIN SMALL LETTER S WITH CIRCUMFLEX
set label 103050236 center at graph val_position_x, 0.2/3.2 '{' . str_fontstyle . '\\305\\236 \305\236}' # |Ş|\305\236|U+015E|0305 0236|LATIN CAPITAL LETTER S WITH CEDILLA
set label 103050237 center at graph val_position_x, 0.1/3.2 '{' . str_fontstyle . '\\305\\237 \305\237}' # |ş|\305\237|U+015F|0305 0237|LATIN SMALL LETTER S WITH CEDILLA

val_position_x = 0.8
set label 103050240 center at graph val_position_x, 3.2/3.2 '{' . str_fontstyle . '\\305\\240 \305\240}' # |Š|\305\240|U+0160|0305 0240|LATIN CAPITAL LETTER S WITH CARON
set label 103050241 center at graph val_position_x, 3.1/3.2 '{' . str_fontstyle . '\\305\\241 \305\241}' # |š|\305\241|U+0161|0305 0241|LATIN SMALL LETTER S WITH CARON
set label 103050242 center at graph val_position_x, 3.0/3.2 '{' . str_fontstyle . '\\305\\242 \305\242}' # |Ţ|\305\242|U+0162|0305 0242|LATIN CAPITAL LETTER T WITH CEDILLA
set label 103050243 center at graph val_position_x, 2.9/3.2 '{' . str_fontstyle . '\\305\\243 \305\243}' # |ţ|\305\243|U+0163|0305 0243|LATIN SMALL LETTER T WITH CEDILLA
set label 103050244 center at graph val_position_x, 2.8/3.2 '{' . str_fontstyle . '\\305\\244 \305\244}' # |Ť|\305\244|U+0164|0305 0244|LATIN CAPITAL LETTER T WITH CARON
set label 103050245 center at graph val_position_x, 2.7/3.2 '{' . str_fontstyle . '\\305\\245 \305\245}' # |ť|\305\245|U+0165|0305 0245|LATIN SMALL LETTER T WITH CARON
set label 103050246 center at graph val_position_x, 2.6/3.2 '{' . str_fontstyle . '\\305\\246 \305\246}' # |Ŧ|\305\246|U+0166|0305 0246|LATIN CAPITAL LETTER T WITH STROKE
set label 103050247 center at graph val_position_x, 2.5/3.2 '{' . str_fontstyle . '\\305\\247 \305\247}' # |ŧ|\305\247|U+0167|0305 0247|LATIN SMALL LETTER T WITH STROKE
set label 103050250 center at graph val_position_x, 2.4/3.2 '{' . str_fontstyle . '\\305\\250 \305\250}' # |Ũ|\305\250|U+0168|0305 0250|LATIN CAPITAL LETTER U WITH TILDE
set label 103050251 center at graph val_position_x, 2.3/3.2 '{' . str_fontstyle . '\\305\\251 \305\251}' # |ũ|\305\251|U+0169|0305 0251|LATIN SMALL LETTER U WITH TILDE
set label 103050252 center at graph val_position_x, 2.2/3.2 '{' . str_fontstyle . '\\305\\252 \305\252}' # |Ū|\305\252|U+016A|0305 0252|LATIN CAPITAL LETTER U WITH MACRON
set label 103050253 center at graph val_position_x, 2.1/3.2 '{' . str_fontstyle . '\\305\\253 \305\253}' # |ū|\305\253|U+016B|0305 0253|LATIN SMALL LETTER U WITH MACRON
set label 103050254 center at graph val_position_x, 2.0/3.2 '{' . str_fontstyle . '\\305\\254 \305\254}' # |Ŭ|\305\254|U+016C|0305 0254|LATIN CAPITAL LETTER U WITH BREVE
set label 103050255 center at graph val_position_x, 1.9/3.2 '{' . str_fontstyle . '\\305\\255 \305\255}' # |ŭ|\305\255|U+016D|0305 0255|LATIN SMALL LETTER U WITH BREVE
set label 103050256 center at graph val_position_x, 1.8/3.2 '{' . str_fontstyle . '\\305\\256 \305\256}' # |Ů|\305\256|U+016E|0305 0256|LATIN CAPITAL LETTER U WITH RING ABOVE
set label 103050257 center at graph val_position_x, 1.7/3.2 '{' . str_fontstyle . '\\305\\257 \305\257}' # |ů|\305\257|U+016F|0305 0257|LATIN SMALL LETTER U WITH RING ABOVE
set label 103050260 center at graph val_position_x, 1.6/3.2 '{' . str_fontstyle . '\\305\\260 \305\260}' # |Ű|\305\260|U+0170|0305 0260|LATIN CAPITAL LETTER U WITH DOUBLE ACUTE
set label 103050261 center at graph val_position_x, 1.5/3.2 '{' . str_fontstyle . '\\305\\261 \305\261}' # |ű|\305\261|U+0171|0305 0261|LATIN SMALL LETTER U WITH DOUBLE ACUTE
set label 103050262 center at graph val_position_x, 1.4/3.2 '{' . str_fontstyle . '\\305\\262 \305\262}' # |Ų|\305\262|U+0172|0305 0262|LATIN CAPITAL LETTER U WITH OGONEK
set label 103050263 center at graph val_position_x, 1.3/3.2 '{' . str_fontstyle . '\\305\\263 \305\263}' # |ų|\305\263|U+0173|0305 0263|LATIN SMALL LETTER U WITH OGONEK
set label 103050264 center at graph val_position_x, 1.2/3.2 '{' . str_fontstyle . '\\305\\264 \305\264}' # |Ŵ|\305\264|U+0174|0305 0264|LATIN CAPITAL LETTER W WITH CIRCUMFLEX
set label 103050265 center at graph val_position_x, 1.1/3.2 '{' . str_fontstyle . '\\305\\265 \305\265}' # |ŵ|\305\265|U+0175|0305 0265|LATIN SMALL LETTER W WITH CIRCUMFLEX
set label 103050266 center at graph val_position_x, 1.0/3.2 '{' . str_fontstyle . '\\305\\266 \305\266}' # |Ŷ|\305\266|U+0176|0305 0266|LATIN CAPITAL LETTER Y WITH CIRCUMFLEX
set label 103050267 center at graph val_position_x, 0.9/3.2 '{' . str_fontstyle . '\\305\\267 \305\267}' # |ŷ|\305\267|U+0177|0305 0267|LATIN SMALL LETTER Y WITH CIRCUMFLEX
set label 103050270 center at graph val_position_x, 0.8/3.2 '{' . str_fontstyle . '\\305\\270 \305\270}' # |Ÿ|\305\270|U+0178|0305 0270|LATIN CAPITAL LETTER Y WITH DIAERESIS
set label 103050271 center at graph val_position_x, 0.7/3.2 '{' . str_fontstyle . '\\305\\271 \305\271}' # |Ź|\305\271|U+0179|0305 0271|LATIN CAPITAL LETTER Z WITH ACUTE
set label 103050272 center at graph val_position_x, 0.6/3.2 '{' . str_fontstyle . '\\305\\272 \305\272}' # |ź|\305\272|U+017A|0305 0272|LATIN SMALL LETTER Z WITH ACUTE
set label 103050273 center at graph val_position_x, 0.5/3.2 '{' . str_fontstyle . '\\305\\273 \305\273}' # |Ż|\305\273|U+017B|0305 0273|LATIN CAPITAL LETTER Z WITH DOT ABOVE
set label 103050274 center at graph val_position_x, 0.4/3.2 '{' . str_fontstyle . '\\305\\274 \305\274}' # |ż|\305\274|U+017C|0305 0274|LATIN SMALL LETTER Z WITH DOT ABOVE
set label 103050275 center at graph val_position_x, 0.3/3.2 '{' . str_fontstyle . '\\305\\275 \305\275}' # |Ž|\305\275|U+017D|0305 0275|LATIN CAPITAL LETTER Z WITH CARON
set label 103050276 center at graph val_position_x, 0.2/3.2 '{' . str_fontstyle . '\\305\\276 \305\276}' # |ž|\305\276|U+017E|0305 0276|LATIN SMALL LETTER Z WITH CARON
set label 103050277 center at graph val_position_x, 0.1/3.2 '{' . str_fontstyle . '\\305\\277 \305\277}' # |ſ|\305\277|U+017F|0305 0277|LATIN SMALL LETTER LONG S

# --- plot --- #
plot 1/0 notitle










set terminal wxt 3               # {<n>}
set terminal wxt size 480, 640   # {size <width>,<height>} {position <x>,<y>}
set terminal wxt                 # {{no}enhanced}
set terminal wxt font str_font   # {font <font>}
set terminal wxt fontscale 1.0   # {fontscale <scale>}
unset label

val_position_x = 0.2
set label 103060200 center at graph val_position_x, 3.2/3.2 '{' . str_fontstyle . '\\306\\200 \306\200}' # |ƀ|\306\200|U+0180|0306 0200|LATIN SMALL LETTER B WITH STROKE
set label 103060201 center at graph val_position_x, 3.1/3.2 '{' . str_fontstyle . '\\306\\201 \306\201}' # |Ɓ|\306\201|U+0181|0306 0201|LATIN CAPITAL LETTER B WITH HOOK
set label 103060202 center at graph val_position_x, 3.0/3.2 '{' . str_fontstyle . '\\306\\202 \306\202}' # |Ƃ|\306\202|U+0182|0306 0202|LATIN CAPITAL LETTER B WITH TOPBAR
set label 103060203 center at graph val_position_x, 2.9/3.2 '{' . str_fontstyle . '\\306\\203 \306\203}' # |ƃ|\306\203|U+0183|0306 0203|LATIN SMALL LETTER B WITH TOPBAR
set label 103060204 center at graph val_position_x, 2.8/3.2 '{' . str_fontstyle . '\\306\\204 \306\204}' # |Ƅ|\306\204|U+0184|0306 0204|LATIN CAPITAL LETTER TONE SIX
set label 103060205 center at graph val_position_x, 2.7/3.2 '{' . str_fontstyle . '\\306\\205 \306\205}' # |ƅ|\306\205|U+0185|0306 0205|LATIN SMALL LETTER TONE SIX
set label 103060206 center at graph val_position_x, 2.6/3.2 '{' . str_fontstyle . '\\306\\206 \306\206}' # |Ɔ|\306\206|U+0186|0306 0206|LATIN CAPITAL LETTER OPEN O
set label 103060207 center at graph val_position_x, 2.5/3.2 '{' . str_fontstyle . '\\306\\207 \306\207}' # |Ƈ|\306\207|U+0187|0306 0207|LATIN CAPITAL LETTER C WITH HOOK
set label 103060210 center at graph val_position_x, 2.4/3.2 '{' . str_fontstyle . '\\306\\210 \306\210}' # |ƈ|\306\210|U+0188|0306 0210|LATIN SMALL LETTER C WITH HOOK
set label 103060211 center at graph val_position_x, 2.3/3.2 '{' . str_fontstyle . '\\306\\211 \306\211}' # |Ɖ|\306\211|U+0189|0306 0211|LATIN CAPITAL LETTER AFRICAN D
set label 103060212 center at graph val_position_x, 2.2/3.2 '{' . str_fontstyle . '\\306\\212 \306\212}' # |Ɗ|\306\212|U+018A|0306 0212|LATIN CAPITAL LETTER D WITH HOOK
set label 103060213 center at graph val_position_x, 2.1/3.2 '{' . str_fontstyle . '\\306\\213 \306\213}' # |Ƌ|\306\213|U+018B|0306 0213|LATIN CAPITAL LETTER D WITH TOPBAR
set label 103060214 center at graph val_position_x, 2.0/3.2 '{' . str_fontstyle . '\\306\\214 \306\214}' # |ƌ|\306\214|U+018C|0306 0214|LATIN SMALL LETTER D WITH TOPBAR
set label 103060215 center at graph val_position_x, 1.9/3.2 '{' . str_fontstyle . '\\306\\215 \306\215}' # |ƍ|\306\215|U+018D|0306 0215|LATIN SMALL LETTER TURNED DELTA
set label 103060216 center at graph val_position_x, 1.8/3.2 '{' . str_fontstyle . '\\306\\216 \306\216}' # |Ǝ|\306\216|U+018E|0306 0216|LATIN CAPITAL LETTER REVERSED E
set label 103060217 center at graph val_position_x, 1.7/3.2 '{' . str_fontstyle . '\\306\\217 \306\217}' # |Ə|\306\217|U+018F|0306 0217|LATIN CAPITAL LETTER SCHWA
set label 103060220 center at graph val_position_x, 1.6/3.2 '{' . str_fontstyle . '\\306\\220 \306\220}' # |Ɛ|\306\220|U+0190|0306 0220|LATIN CAPITAL LETTER OPEN E
set label 103060221 center at graph val_position_x, 1.5/3.2 '{' . str_fontstyle . '\\306\\221 \306\221}' # |Ƒ|\306\221|U+0191|0306 0221|LATIN CAPITAL LETTER F WITH HOOK
set label 103060222 center at graph val_position_x, 1.4/3.2 '{' . str_fontstyle . '\\306\\222 \306\222}' # |ƒ|\306\222|U+0192|0306 0222|LATIN SMALL LETTER F WITH HOOK
set label 103060223 center at graph val_position_x, 1.3/3.2 '{' . str_fontstyle . '\\306\\223 \306\223}' # |Ɠ|\306\223|U+0193|0306 0223|LATIN CAPITAL LETTER G WITH HOOK
set label 103060224 center at graph val_position_x, 1.2/3.2 '{' . str_fontstyle . '\\306\\224 \306\224}' # |Ɣ|\306\224|U+0194|0306 0224|LATIN CAPITAL LETTER GAMMA
set label 103060225 center at graph val_position_x, 1.1/3.2 '{' . str_fontstyle . '\\306\\225 \306\225}' # |ƕ|\306\225|U+0195|0306 0225|LATIN SMALL LETTER HV
set label 103060226 center at graph val_position_x, 1.0/3.2 '{' . str_fontstyle . '\\306\\226 \306\226}' # |Ɩ|\306\226|U+0196|0306 0226|LATIN CAPITAL LETTER IOTA
set label 103060227 center at graph val_position_x, 0.9/3.2 '{' . str_fontstyle . '\\306\\227 \306\227}' # |Ɨ|\306\227|U+0197|0306 0227|LATIN CAPITAL LETTER I WITH STROKE
set label 103060230 center at graph val_position_x, 0.8/3.2 '{' . str_fontstyle . '\\306\\230 \306\230}' # |Ƙ|\306\230|U+0198|0306 0230|LATIN CAPITAL LETTER K WITH HOOK
set label 103060231 center at graph val_position_x, 0.7/3.2 '{' . str_fontstyle . '\\306\\231 \306\231}' # |ƙ|\306\231|U+0199|0306 0231|LATIN SMALL LETTER K WITH HOOK
set label 103060232 center at graph val_position_x, 0.6/3.2 '{' . str_fontstyle . '\\306\\232 \306\232}' # |ƚ|\306\232|U+019A|0306 0232|LATIN SMALL LETTER L WITH BAR
set label 103060233 center at graph val_position_x, 0.5/3.2 '{' . str_fontstyle . '\\306\\233 \306\233}' # |ƛ|\306\233|U+019B|0306 0233|LATIN SMALL LETTER LAMBDA WITH STROKE
set label 103060234 center at graph val_position_x, 0.4/3.2 '{' . str_fontstyle . '\\306\\234 \306\234}' # |Ɯ|\306\234|U+019C|0306 0234|LATIN CAPITAL LETTER TURNED M
set label 103060235 center at graph val_position_x, 0.3/3.2 '{' . str_fontstyle . '\\306\\235 \306\235}' # |Ɲ|\306\235|U+019D|0306 0235|LATIN CAPITAL LETTER N WITH LEFT HOOK
set label 103060236 center at graph val_position_x, 0.2/3.2 '{' . str_fontstyle . '\\306\\236 \306\236}' # |ƞ|\306\236|U+019E|0306 0236|LATIN SMALL LETTER N WITH LONG RIGHT LEG
set label 103060237 center at graph val_position_x, 0.1/3.2 '{' . str_fontstyle . '\\306\\237 \306\237}' # |Ɵ|\306\237|U+019F|0306 0237|LATIN CAPITAL LETTER O WITH MIDDLE TILDE

val_position_x = 0.4
set label 103060240 center at graph val_position_x, 3.2/3.2 '{' . str_fontstyle . '\\306\\240 \306\240}' # |Ơ|\306\240|U+01A0|0306 0240|LATIN CAPITAL LETTER O WITH HORN
set label 103060241 center at graph val_position_x, 3.1/3.2 '{' . str_fontstyle . '\\306\\241 \306\241}' # |ơ|\306\241|U+01A1|0306 0241|LATIN SMALL LETTER O WITH HORN
set label 103060242 center at graph val_position_x, 3.0/3.2 '{' . str_fontstyle . '\\306\\242 \306\242}' # |Ƣ|\306\242|U+01A2|0306 0242|LATIN CAPITAL LETTER OI
set label 103060243 center at graph val_position_x, 2.9/3.2 '{' . str_fontstyle . '\\306\\243 \306\243}' # |ƣ|\306\243|U+01A3|0306 0243|LATIN SMALL LETTER OI
set label 103060244 center at graph val_position_x, 2.8/3.2 '{' . str_fontstyle . '\\306\\244 \306\244}' # |Ƥ|\306\244|U+01A4|0306 0244|LATIN CAPITAL LETTER P WITH HOOK
set label 103060245 center at graph val_position_x, 2.7/3.2 '{' . str_fontstyle . '\\306\\245 \306\245}' # |ƥ|\306\245|U+01A5|0306 0245|LATIN SMALL LETTER P WITH HOOK
set label 103060246 center at graph val_position_x, 2.6/3.2 '{' . str_fontstyle . '\\306\\246 \306\246}' # |Ʀ|\306\246|U+01A6|0306 0246|LATIN LETTER YR
set label 103060247 center at graph val_position_x, 2.5/3.2 '{' . str_fontstyle . '\\306\\247 \306\247}' # |Ƨ|\306\247|U+01A7|0306 0247|LATIN CAPITAL LETTER TONE TWO
set label 103060250 center at graph val_position_x, 2.4/3.2 '{' . str_fontstyle . '\\306\\250 \306\250}' # |ƨ|\306\250|U+01A8|0306 0250|LATIN SMALL LETTER TONE TWO
set label 103060251 center at graph val_position_x, 2.3/3.2 '{' . str_fontstyle . '\\306\\251 \306\251}' # |Ʃ|\306\251|U+01A9|0306 0251|LATIN CAPITAL LETTER ESH
set label 103060252 center at graph val_position_x, 2.2/3.2 '{' . str_fontstyle . '\\306\\252 \306\252}' # |ƪ|\306\252|U+01AA|0306 0252|LATIN LETTER REVERSED ESH LOOP
set label 103060253 center at graph val_position_x, 2.1/3.2 '{' . str_fontstyle . '\\306\\253 \306\253}' # |ƫ|\306\253|U+01AB|0306 0253|LATIN SMALL LETTER T WITH PALATAL HOOK
set label 103060254 center at graph val_position_x, 2.0/3.2 '{' . str_fontstyle . '\\306\\254 \306\254}' # |Ƭ|\306\254|U+01AC|0306 0254|LATIN CAPITAL LETTER T WITH HOOK
set label 103060255 center at graph val_position_x, 1.9/3.2 '{' . str_fontstyle . '\\306\\255 \306\255}' # |ƭ|\306\255|U+01AD|0306 0255|LATIN SMALL LETTER T WITH HOOK
set label 103060256 center at graph val_position_x, 1.8/3.2 '{' . str_fontstyle . '\\306\\256 \306\256}' # |Ʈ|\306\256|U+01AE|0306 0256|LATIN CAPITAL LETTER T WITH RETROFLEX HOOK
set label 103060257 center at graph val_position_x, 1.7/3.2 '{' . str_fontstyle . '\\306\\257 \306\257}' # |Ư|\306\257|U+01AF|0306 0257|LATIN CAPITAL LETTER U WITH HORN
set label 103060260 center at graph val_position_x, 1.6/3.2 '{' . str_fontstyle . '\\306\\260 \306\260}' # |ư|\306\260|U+01B0|0306 0260|LATIN SMALL LETTER U WITH HORN
set label 103060261 center at graph val_position_x, 1.5/3.2 '{' . str_fontstyle . '\\306\\261 \306\261}' # |Ʊ|\306\261|U+01B1|0306 0261|LATIN CAPITAL LETTER UPSILON
set label 103060262 center at graph val_position_x, 1.4/3.2 '{' . str_fontstyle . '\\306\\262 \306\262}' # |Ʋ|\306\262|U+01B2|0306 0262|LATIN CAPITAL LETTER V WITH HOOK
set label 103060263 center at graph val_position_x, 1.3/3.2 '{' . str_fontstyle . '\\306\\263 \306\263}' # |Ƴ|\306\263|U+01B3|0306 0263|LATIN CAPITAL LETTER Y WITH HOOK
set label 103060264 center at graph val_position_x, 1.2/3.2 '{' . str_fontstyle . '\\306\\264 \306\264}' # |ƴ|\306\264|U+01B4|0306 0264|LATIN SMALL LETTER Y WITH HOOK
set label 103060265 center at graph val_position_x, 1.1/3.2 '{' . str_fontstyle . '\\306\\265 \306\265}' # |Ƶ|\306\265|U+01B5|0306 0265|LATIN CAPITAL LETTER Z WITH STROKE
set label 103060266 center at graph val_position_x, 1.0/3.2 '{' . str_fontstyle . '\\306\\266 \306\266}' # |ƶ|\306\266|U+01B6|0306 0266|LATIN SMALL LETTER Z WITH STROKE
set label 103060267 center at graph val_position_x, 0.9/3.2 '{' . str_fontstyle . '\\306\\267 \306\267}' # |Ʒ|\306\267|U+01B7|0306 0267|LATIN CAPITAL LETTER EZH
set label 103060270 center at graph val_position_x, 0.8/3.2 '{' . str_fontstyle . '\\306\\270 \306\270}' # |Ƹ|\306\270|U+01B8|0306 0270|LATIN CAPITAL LETTER EZH REVERSED
set label 103060271 center at graph val_position_x, 0.7/3.2 '{' . str_fontstyle . '\\306\\271 \306\271}' # |ƹ|\306\271|U+01B9|0306 0271|LATIN SMALL LETTER EZH REVERSED
set label 103060272 center at graph val_position_x, 0.6/3.2 '{' . str_fontstyle . '\\306\\272 \306\272}' # |ƺ|\306\272|U+01BA|0306 0272|LATIN SMALL LETTER EZH WITH TAIL
set label 103060273 center at graph val_position_x, 0.5/3.2 '{' . str_fontstyle . '\\306\\273 \306\273}' # |ƻ|\306\273|U+01BB|0306 0273|LATIN LETTER TWO WITH STROKE
set label 103060274 center at graph val_position_x, 0.4/3.2 '{' . str_fontstyle . '\\306\\274 \306\274}' # |Ƽ|\306\274|U+01BC|0306 0274|LATIN CAPITAL LETTER TONE FIVE
set label 103060275 center at graph val_position_x, 0.3/3.2 '{' . str_fontstyle . '\\306\\275 \306\275}' # |ƽ|\306\275|U+01BD|0306 0275|LATIN SMALL LETTER TONE FIVE
set label 103060276 center at graph val_position_x, 0.2/3.2 '{' . str_fontstyle . '\\306\\276 \306\276}' # |ƾ|\306\276|U+01BE|0306 0276|LATIN LETTER INVERTED GLOTTAL STOP WITH STROKE
set label 103060277 center at graph val_position_x, 0.1/3.2 '{' . str_fontstyle . '\\306\\277 \306\277}' # |ƿ|\306\277|U+01BF|0306 0277|LATIN LETTER WYNN

val_position_x = 0.6
set label 103070200 center at graph val_position_x, 3.2/3.2 '{' . str_fontstyle . '\\307\\200 \307\200}' # |ǀ|\307\200|U+01C0|0307 0200|LATIN LETTER DENTAL CLICK
set label 103070201 center at graph val_position_x, 3.1/3.2 '{' . str_fontstyle . '\\307\\201 \307\201}' # |ǁ|\307\201|U+01C1|0307 0201|LATIN LETTER LATERAL CLICK
set label 103070202 center at graph val_position_x, 3.0/3.2 '{' . str_fontstyle . '\\307\\202 \307\202}' # |ǂ|\307\202|U+01C2|0307 0202|LATIN LETTER ALVEOLAR CLICK
set label 103070203 center at graph val_position_x, 2.9/3.2 '{' . str_fontstyle . '\\307\\203 \307\203}' # |ǃ|\307\203|U+01C3|0307 0203|LATIN LETTER RETROFLEX CLICK
set label 103070204 center at graph val_position_x, 2.8/3.2 '{' . str_fontstyle . '\\307\\204 \307\204}' # |Ǆ|\307\204|U+01C4|0307 0204|LATIN CAPITAL LETTER DZ WITH CARON
set label 103070205 center at graph val_position_x, 2.7/3.2 '{' . str_fontstyle . '\\307\\205 \307\205}' # |ǅ|\307\205|U+01C5|0307 0205|LATIN CAPITAL LETTER D WITH SMALL LETTER Z WITH CARON
set label 103070206 center at graph val_position_x, 2.6/3.2 '{' . str_fontstyle . '\\307\\206 \307\206}' # |ǆ|\307\206|U+01C6|0307 0206|LATIN SMALL LETTER DZ WITH CARON
set label 103070207 center at graph val_position_x, 2.5/3.2 '{' . str_fontstyle . '\\307\\207 \307\207}' # |Ǉ|\307\207|U+01C7|0307 0207|LATIN CAPITAL LETTER LJ
set label 103070210 center at graph val_position_x, 2.4/3.2 '{' . str_fontstyle . '\\307\\210 \307\210}' # |ǈ|\307\210|U+01C8|0307 0210|LATIN CAPITAL LETTER L WITH SMALL LETTER J
set label 103070211 center at graph val_position_x, 2.3/3.2 '{' . str_fontstyle . '\\307\\211 \307\211}' # |ǉ|\307\211|U+01C9|0307 0211|LATIN SMALL LETTER LJ
set label 103070212 center at graph val_position_x, 2.2/3.2 '{' . str_fontstyle . '\\307\\212 \307\212}' # |Ǌ|\307\212|U+01CA|0307 0212|LATIN CAPITAL LETTER NJ
set label 103070213 center at graph val_position_x, 2.1/3.2 '{' . str_fontstyle . '\\307\\213 \307\213}' # |ǋ|\307\213|U+01CB|0307 0213|LATIN CAPITAL LETTER N WITH SMALL LETTER J
set label 103070214 center at graph val_position_x, 2.0/3.2 '{' . str_fontstyle . '\\307\\214 \307\214}' # |ǌ|\307\214|U+01CC|0307 0214|LATIN SMALL LETTER NJ
set label 103070215 center at graph val_position_x, 1.9/3.2 '{' . str_fontstyle . '\\307\\215 \307\215}' # |Ǎ|\307\215|U+01CD|0307 0215|LATIN CAPITAL LETTER A WITH CARON
set label 103070216 center at graph val_position_x, 1.8/3.2 '{' . str_fontstyle . '\\307\\216 \307\216}' # |ǎ|\307\216|U+01CE|0307 0216|LATIN SMALL LETTER A WITH CARON
set label 103070217 center at graph val_position_x, 1.7/3.2 '{' . str_fontstyle . '\\307\\217 \307\217}' # |Ǐ|\307\217|U+01CF|0307 0217|LATIN CAPITAL LETTER I WITH CARON
set label 103070220 center at graph val_position_x, 1.6/3.2 '{' . str_fontstyle . '\\307\\220 \307\220}' # |ǐ|\307\220|U+01D0|0307 0220|LATIN SMALL LETTER I WITH CARON
set label 103070221 center at graph val_position_x, 1.5/3.2 '{' . str_fontstyle . '\\307\\221 \307\221}' # |Ǒ|\307\221|U+01D1|0307 0221|LATIN CAPITAL LETTER O WITH CARON
set label 103070222 center at graph val_position_x, 1.4/3.2 '{' . str_fontstyle . '\\307\\222 \307\222}' # |ǒ|\307\222|U+01D2|0307 0222|LATIN SMALL LETTER O WITH CARON
set label 103070223 center at graph val_position_x, 1.3/3.2 '{' . str_fontstyle . '\\307\\223 \307\223}' # |Ǔ|\307\223|U+01D3|0307 0223|LATIN CAPITAL LETTER U WITH CARON
set label 103070224 center at graph val_position_x, 1.2/3.2 '{' . str_fontstyle . '\\307\\224 \307\224}' # |ǔ|\307\224|U+01D4|0307 0224|LATIN SMALL LETTER U WITH CARON
set label 103070225 center at graph val_position_x, 1.1/3.2 '{' . str_fontstyle . '\\307\\225 \307\225}' # |Ǖ|\307\225|U+01D5|0307 0225|LATIN CAPITAL LETTER U WITH DIAERESIS AND MACRON
set label 103070226 center at graph val_position_x, 1.0/3.2 '{' . str_fontstyle . '\\307\\226 \307\226}' # |ǖ|\307\226|U+01D6|0307 0226|LATIN SMALL LETTER U WITH DIAERESIS AND MACRON
set label 103070227 center at graph val_position_x, 0.9/3.2 '{' . str_fontstyle . '\\307\\227 \307\227}' # |Ǘ|\307\227|U+01D7|0307 0227|LATIN CAPITAL LETTER U WITH DIAERESIS AND ACUTE
set label 103070230 center at graph val_position_x, 0.8/3.2 '{' . str_fontstyle . '\\307\\230 \307\230}' # |ǘ|\307\230|U+01D8|0307 0230|LATIN SMALL LETTER U WITH DIAERESIS AND ACUTE
set label 103070231 center at graph val_position_x, 0.7/3.2 '{' . str_fontstyle . '\\307\\231 \307\231}' # |Ǚ|\307\231|U+01D9|0307 0231|LATIN CAPITAL LETTER U WITH DIAERESIS AND CARON
set label 103070232 center at graph val_position_x, 0.6/3.2 '{' . str_fontstyle . '\\307\\232 \307\232}' # |ǚ|\307\232|U+01DA|0307 0232|LATIN SMALL LETTER U WITH DIAERESIS AND CARON
set label 103070233 center at graph val_position_x, 0.5/3.2 '{' . str_fontstyle . '\\307\\233 \307\233}' # |Ǜ|\307\233|U+01DB|0307 0233|LATIN CAPITAL LETTER U WITH DIAERESIS AND GRAVE
set label 103070234 center at graph val_position_x, 0.4/3.2 '{' . str_fontstyle . '\\307\\234 \307\234}' # |ǜ|\307\234|U+01DC|0307 0234|LATIN SMALL LETTER U WITH DIAERESIS AND GRAVE
set label 103070235 center at graph val_position_x, 0.3/3.2 '{' . str_fontstyle . '\\307\\235 \307\235}' # |ǝ|\307\235|U+01DD|0307 0235|LATIN SMALL LETTER TURNED E
set label 103070236 center at graph val_position_x, 0.2/3.2 '{' . str_fontstyle . '\\307\\236 \307\236}' # |Ǟ|\307\236|U+01DE|0307 0236|LATIN CAPITAL LETTER A WITH DIAERESIS AND MACRON
set label 103070237 center at graph val_position_x, 0.1/3.2 '{' . str_fontstyle . '\\307\\237 \307\237}' # |ǟ|\307\237|U+01DF|0307 0237|LATIN SMALL LETTER A WITH DIAERESIS AND MACRON

val_position_x = 0.8
set label 103070240 center at graph val_position_x, 3.2/3.2 '{' . str_fontstyle . '\\307\\240 \307\240}' # |Ǡ|\307\240|U+01E0|0307 0240|LATIN CAPITAL LETTER A WITH DOT ABOVE AND MACRON
set label 103070241 center at graph val_position_x, 3.1/3.2 '{' . str_fontstyle . '\\307\\241 \307\241}' # |ǡ|\307\241|U+01E1|0307 0241|LATIN SMALL LETTER A WITH DOT ABOVE AND MACRON
set label 103070242 center at graph val_position_x, 3.0/3.2 '{' . str_fontstyle . '\\307\\242 \307\242}' # |Ǣ|\307\242|U+01E2|0307 0242|LATIN CAPITAL LETTER AE WITH MACRON
set label 103070243 center at graph val_position_x, 2.9/3.2 '{' . str_fontstyle . '\\307\\243 \307\243}' # |ǣ|\307\243|U+01E3|0307 0243|LATIN SMALL LETTER AE WITH MACRON
set label 103070244 center at graph val_position_x, 2.8/3.2 '{' . str_fontstyle . '\\307\\244 \307\244}' # |Ǥ|\307\244|U+01E4|0307 0244|LATIN CAPITAL LETTER G WITH STROKE
set label 103070245 center at graph val_position_x, 2.7/3.2 '{' . str_fontstyle . '\\307\\245 \307\245}' # |ǥ|\307\245|U+01E5|0307 0245|LATIN SMALL LETTER G WITH STROKE
set label 103070246 center at graph val_position_x, 2.6/3.2 '{' . str_fontstyle . '\\307\\246 \307\246}' # |Ǧ|\307\246|U+01E6|0307 0246|LATIN CAPITAL LETTER G WITH CARON
set label 103070247 center at graph val_position_x, 2.5/3.2 '{' . str_fontstyle . '\\307\\247 \307\247}' # |ǧ|\307\247|U+01E7|0307 0247|LATIN SMALL LETTER G WITH CARON
set label 103070250 center at graph val_position_x, 2.4/3.2 '{' . str_fontstyle . '\\307\\250 \307\250}' # |Ǩ|\307\250|U+01E8|0307 0250|LATIN CAPITAL LETTER K WITH CARON
set label 103070251 center at graph val_position_x, 2.3/3.2 '{' . str_fontstyle . '\\307\\251 \307\251}' # |ǩ|\307\251|U+01E9|0307 0251|LATIN SMALL LETTER K WITH CARON
set label 103070252 center at graph val_position_x, 2.2/3.2 '{' . str_fontstyle . '\\307\\252 \307\252}' # |Ǫ|\307\252|U+01EA|0307 0252|LATIN CAPITAL LETTER O WITH OGONEK
set label 103070253 center at graph val_position_x, 2.1/3.2 '{' . str_fontstyle . '\\307\\253 \307\253}' # |ǫ|\307\253|U+01EB|0307 0253|LATIN SMALL LETTER O WITH OGONEK
set label 103070254 center at graph val_position_x, 2.0/3.2 '{' . str_fontstyle . '\\307\\254 \307\254}' # |Ǭ|\307\254|U+01EC|0307 0254|LATIN CAPITAL LETTER O WITH OGONEK AND MACRON
set label 103070255 center at graph val_position_x, 1.9/3.2 '{' . str_fontstyle . '\\307\\255 \307\255}' # |ǭ|\307\255|U+01ED|0307 0255|LATIN SMALL LETTER O WITH OGONEK AND MACRON
set label 103070256 center at graph val_position_x, 1.8/3.2 '{' . str_fontstyle . '\\307\\256 \307\256}' # |Ǯ|\307\256|U+01EE|0307 0256|LATIN CAPITAL LETTER EZH WITH CARON
set label 103070257 center at graph val_position_x, 1.7/3.2 '{' . str_fontstyle . '\\307\\257 \307\257}' # |ǯ|\307\257|U+01EF|0307 0257|LATIN SMALL LETTER EZH WITH CARON
set label 103070260 center at graph val_position_x, 1.6/3.2 '{' . str_fontstyle . '\\307\\260 \307\260}' # |ǰ|\307\260|U+01F0|0307 0260|LATIN SMALL LETTER J WITH CARON
set label 103070261 center at graph val_position_x, 1.5/3.2 '{' . str_fontstyle . '\\307\\261 \307\261}' # |Ǳ|\307\261|U+01F1|0307 0261|LATIN CAPITAL LETTER DZ
set label 103070262 center at graph val_position_x, 1.4/3.2 '{' . str_fontstyle . '\\307\\262 \307\262}' # |ǲ|\307\262|U+01F2|0307 0262|LATIN CAPITAL LETTER D WITH SMALL LETTER Z
set label 103070263 center at graph val_position_x, 1.3/3.2 '{' . str_fontstyle . '\\307\\263 \307\263}' # |ǳ|\307\263|U+01F3|0307 0263|LATIN SMALL LETTER DZ
set label 103070264 center at graph val_position_x, 1.2/3.2 '{' . str_fontstyle . '\\307\\264 \307\264}' # |Ǵ|\307\264|U+01F4|0307 0264|LATIN CAPITAL LETTER G WITH ACUTE
set label 103070265 center at graph val_position_x, 1.1/3.2 '{' . str_fontstyle . '\\307\\265 \307\265}' # |ǵ|\307\265|U+01F5|0307 0265|LATIN SMALL LETTER G WITH ACUTE
set label 103070266 center at graph val_position_x, 1.0/3.2 '{' . str_fontstyle . '\\307\\266 \307\266}' # |Ƕ|\307\266|U+01F6|0307 0266|LATIN CAPITAL LETTER HWAIR
set label 103070267 center at graph val_position_x, 0.9/3.2 '{' . str_fontstyle . '\\307\\267 \307\267}' # |Ƿ|\307\267|U+01F7|0307 0267|LATIN CAPITAL LETTER WYNN
set label 103070270 center at graph val_position_x, 0.8/3.2 '{' . str_fontstyle . '\\307\\270 \307\270}' # |Ǹ|\307\270|U+01F8|0307 0270|LATIN CAPITAL LETTER N WITH GRAVE
set label 103070271 center at graph val_position_x, 0.7/3.2 '{' . str_fontstyle . '\\307\\271 \307\271}' # |ǹ|\307\271|U+01F9|0307 0271|LATIN SMALL LETTER N WITH GRAVE
set label 103070272 center at graph val_position_x, 0.6/3.2 '{' . str_fontstyle . '\\307\\272 \307\272}' # |Ǻ|\307\272|U+01FA|0307 0272|LATIN CAPITAL LETTER A WITH RING ABOVE AND ACUTE
set label 103070273 center at graph val_position_x, 0.5/3.2 '{' . str_fontstyle . '\\307\\273 \307\273}' # |ǻ|\307\273|U+01FB|0307 0273|LATIN SMALL LETTER A WITH RING ABOVE AND ACUTE
set label 103070274 center at graph val_position_x, 0.4/3.2 '{' . str_fontstyle . '\\307\\274 \307\274}' # |Ǽ|\307\274|U+01FC|0307 0274|LATIN CAPITAL LETTER AE WITH ACUTE
set label 103070275 center at graph val_position_x, 0.3/3.2 '{' . str_fontstyle . '\\307\\275 \307\275}' # |ǽ|\307\275|U+01FD|0307 0275|LATIN SMALL LETTER AE WITH ACUTE
set label 103070276 center at graph val_position_x, 0.2/3.2 '{' . str_fontstyle . '\\307\\276 \307\276}' # |Ǿ|\307\276|U+01FE|0307 0276|LATIN CAPITAL LETTER O WITH STROKE AND ACUTE
set label 103070277 center at graph val_position_x, 0.1/3.2 '{' . str_fontstyle . '\\307\\277 \307\277}' # |ǿ|\307\277|U+01FF|0307 0277|LATIN SMALL LETTER O WITH STROKE AND ACUTE

# val_position_x = 0.2
# set label 103100200 center at graph val_position_x, 3.2/3.2 '{' . str_fontstyle . '\\310\\200 \310\200}' # |Ȁ|\310\200|U+0200|0310 0200|LATIN CAPITAL LETTER A WITH DOUBLE GRAVE
# set label 103100201 center at graph val_position_x, 3.1/3.2 '{' . str_fontstyle . '\\310\\201 \310\201}' # |ȁ|\310\201|U+0201|0310 0201|LATIN SMALL LETTER A WITH DOUBLE GRAVE
# set label 103100202 center at graph val_position_x, 3.0/3.2 '{' . str_fontstyle . '\\310\\202 \310\202}' # |Ȃ|\310\202|U+0202|0310 0202|LATIN CAPITAL LETTER A WITH INVERTED BREVE
# set label 103100203 center at graph val_position_x, 2.9/3.2 '{' . str_fontstyle . '\\310\\203 \310\203}' # |ȃ|\310\203|U+0203|0310 0203|LATIN SMALL LETTER A WITH INVERTED BREVE
# set label 103100204 center at graph val_position_x, 2.8/3.2 '{' . str_fontstyle . '\\310\\204 \310\204}' # |Ȅ|\310\204|U+0204|0310 0204|LATIN CAPITAL LETTER E WITH DOUBLE GRAVE
# set label 103100205 center at graph val_position_x, 2.7/3.2 '{' . str_fontstyle . '\\310\\205 \310\205}' # |ȅ|\310\205|U+0205|0310 0205|LATIN SMALL LETTER E WITH DOUBLE GRAVE
# set label 103100206 center at graph val_position_x, 2.6/3.2 '{' . str_fontstyle . '\\310\\206 \310\206}' # |Ȇ|\310\206|U+0206|0310 0206|LATIN CAPITAL LETTER E WITH INVERTED BREVE
# set label 103100207 center at graph val_position_x, 2.5/3.2 '{' . str_fontstyle . '\\310\\207 \310\207}' # |ȇ|\310\207|U+0207|0310 0207|LATIN SMALL LETTER E WITH INVERTED BREVE
# set label 103100210 center at graph val_position_x, 2.4/3.2 '{' . str_fontstyle . '\\310\\210 \310\210}' # |Ȉ|\310\210|U+0208|0310 0210|LATIN CAPITAL LETTER I WITH DOUBLE GRAVE
# set label 103100211 center at graph val_position_x, 2.3/3.2 '{' . str_fontstyle . '\\310\\211 \310\211}' # |ȉ|\310\211|U+0209|0310 0211|LATIN SMALL LETTER I WITH DOUBLE GRAVE
# set label 103100212 center at graph val_position_x, 2.2/3.2 '{' . str_fontstyle . '\\310\\212 \310\212}' # |Ȋ|\310\212|U+020A|0310 0212|LATIN CAPITAL LETTER I WITH INVERTED BREVE
# set label 103100213 center at graph val_position_x, 2.1/3.2 '{' . str_fontstyle . '\\310\\213 \310\213}' # |ȋ|\310\213|U+020B|0310 0213|LATIN SMALL LETTER I WITH INVERTED BREVE
# set label 103100214 center at graph val_position_x, 2.0/3.2 '{' . str_fontstyle . '\\310\\214 \310\214}' # |Ȍ|\310\214|U+020C|0310 0214|LATIN CAPITAL LETTER O WITH DOUBLE GRAVE
# set label 103100215 center at graph val_position_x, 1.9/3.2 '{' . str_fontstyle . '\\310\\215 \310\215}' # |ȍ|\310\215|U+020D|0310 0215|LATIN SMALL LETTER O WITH DOUBLE GRAVE
# set label 103100216 center at graph val_position_x, 1.8/3.2 '{' . str_fontstyle . '\\310\\216 \310\216}' # |Ȏ|\310\216|U+020E|0310 0216|LATIN CAPITAL LETTER O WITH INVERTED BREVE
# set label 103100217 center at graph val_position_x, 1.7/3.2 '{' . str_fontstyle . '\\310\\217 \310\217}' # |ȏ|\310\217|U+020F|0310 0217|LATIN SMALL LETTER O WITH INVERTED BREVE
# set label 103100220 center at graph val_position_x, 1.6/3.2 '{' . str_fontstyle . '\\310\\220 \310\220}' # |Ȑ|\310\220|U+0210|0310 0220|LATIN CAPITAL LETTER R WITH DOUBLE GRAVE
# set label 103100221 center at graph val_position_x, 1.5/3.2 '{' . str_fontstyle . '\\310\\221 \310\221}' # |ȑ|\310\221|U+0211|0310 0221|LATIN SMALL LETTER R WITH DOUBLE GRAVE
# set label 103100222 center at graph val_position_x, 1.4/3.2 '{' . str_fontstyle . '\\310\\222 \310\222}' # |Ȓ|\310\222|U+0212|0310 0222|LATIN CAPITAL LETTER R WITH INVERTED BREVE
# set label 103100223 center at graph val_position_x, 1.3/3.2 '{' . str_fontstyle . '\\310\\223 \310\223}' # |ȓ|\310\223|U+0213|0310 0223|LATIN SMALL LETTER R WITH INVERTED BREVE
# set label 103100224 center at graph val_position_x, 1.2/3.2 '{' . str_fontstyle . '\\310\\224 \310\224}' # |Ȕ|\310\224|U+0214|0310 0224|LATIN CAPITAL LETTER U WITH DOUBLE GRAVE
# set label 103100225 center at graph val_position_x, 1.1/3.2 '{' . str_fontstyle . '\\310\\225 \310\225}' # |ȕ|\310\225|U+0215|0310 0225|LATIN SMALL LETTER U WITH DOUBLE GRAVE
# set label 103100226 center at graph val_position_x, 1.0/3.2 '{' . str_fontstyle . '\\310\\226 \310\226}' # |Ȗ|\310\226|U+0216|0310 0226|LATIN CAPITAL LETTER U WITH INVERTED BREVE
# set label 103100227 center at graph val_position_x, 0.9/3.2 '{' . str_fontstyle . '\\310\\227 \310\227}' # |ȗ|\310\227|U+0217|0310 0227|LATIN SMALL LETTER U WITH INVERTED BREVE
# set label 103100230 center at graph val_position_x, 0.8/3.2 '{' . str_fontstyle . '\\310\\230 \310\230}' # |Ș|\310\230|U+0218|0310 0230|LATIN CAPITAL LETTER S WITH COMMA BELOW
# set label 103100231 center at graph val_position_x, 0.7/3.2 '{' . str_fontstyle . '\\310\\231 \310\231}' # |ș|\310\231|U+0219|0310 0231|LATIN SMALL LETTER S WITH COMMA BELOW
# set label 103100232 center at graph val_position_x, 0.6/3.2 '{' . str_fontstyle . '\\310\\232 \310\232}' # |Ț|\310\232|U+021A|0310 0232|LATIN CAPITAL LETTER T WITH COMMA BELOW
# set label 103100233 center at graph val_position_x, 0.5/3.2 '{' . str_fontstyle . '\\310\\233 \310\233}' # |ț|\310\233|U+021B|0310 0233|LATIN SMALL LETTER T WITH COMMA BELOW
# set label 103100234 center at graph val_position_x, 0.4/3.2 '{' . str_fontstyle . '\\310\\234 \310\234}' # |Ȝ|\310\234|U+021C|0310 0234|LATIN CAPITAL LETTER YOGH
# set label 103100235 center at graph val_position_x, 0.3/3.2 '{' . str_fontstyle . '\\310\\235 \310\235}' # |ȝ|\310\235|U+021D|0310 0235|LATIN SMALL LETTER YOGH
# set label 103100236 center at graph val_position_x, 0.2/3.2 '{' . str_fontstyle . '\\310\\236 \310\236}' # |Ȟ|\310\236|U+021E|0310 0236|LATIN CAPITAL LETTER H WITH CARON
# set label 103100237 center at graph val_position_x, 0.1/3.2 '{' . str_fontstyle . '\\310\\237 \310\237}' # |ȟ|\310\237|U+021F|0310 0237|LATIN SMALL LETTER H WITH CARON
# set label 103100240 center at graph val_position_x, 3.2/3.2 '{' . str_fontstyle . '\\310\\240 \310\240}' # |Ƞ|\310\240|U+0220|0310 0240|LATIN CAPITAL LETTER N WITH LONG RIGHT LEG
# set label 103100241 center at graph val_position_x, 3.1/3.2 '{' . str_fontstyle . '\\310\\241 \310\241}' # |ȡ|\310\241|U+0221|0310 0241|LATIN SMALL LETTER D WITH CURL
# set label 103100242 center at graph val_position_x, 3.0/3.2 '{' . str_fontstyle . '\\310\\242 \310\242}' # |Ȣ|\310\242|U+0222|0310 0242|LATIN CAPITAL LETTER OU
# set label 103100243 center at graph val_position_x, 2.9/3.2 '{' . str_fontstyle . '\\310\\243 \310\243}' # |ȣ|\310\243|U+0223|0310 0243|LATIN SMALL LETTER OU
# set label 103100244 center at graph val_position_x, 2.8/3.2 '{' . str_fontstyle . '\\310\\244 \310\244}' # |Ȥ|\310\244|U+0224|0310 0244|LATIN CAPITAL LETTER Z WITH HOOK
# set label 103100245 center at graph val_position_x, 2.7/3.2 '{' . str_fontstyle . '\\310\\245 \310\245}' # |ȥ|\310\245|U+0225|0310 0245|LATIN SMALL LETTER Z WITH HOOK
# set label 103100246 center at graph val_position_x, 2.6/3.2 '{' . str_fontstyle . '\\310\\246 \310\246}' # |Ȧ|\310\246|U+0226|0310 0246|LATIN CAPITAL LETTER A WITH DOT ABOVE
# set label 103100247 center at graph val_position_x, 2.5/3.2 '{' . str_fontstyle . '\\310\\247 \310\247}' # |ȧ|\310\247|U+0227|0310 0247|LATIN SMALL LETTER A WITH DOT ABOVE
# set label 103100250 center at graph val_position_x, 2.4/3.2 '{' . str_fontstyle . '\\310\\250 \310\250}' # |Ȩ|\310\250|U+0228|0310 0250|LATIN CAPITAL LETTER E WITH CEDILLA
# set label 103100251 center at graph val_position_x, 2.3/3.2 '{' . str_fontstyle . '\\310\\251 \310\251}' # |ȩ|\310\251|U+0229|0310 0251|LATIN SMALL LETTER E WITH CEDILLA
# set label 103100252 center at graph val_position_x, 2.2/3.2 '{' . str_fontstyle . '\\310\\252 \310\252}' # |Ȫ|\310\252|U+022A|0310 0252|LATIN CAPITAL LETTER O WITH DIAERESIS AND MACRON
# set label 103100253 center at graph val_position_x, 2.1/3.2 '{' . str_fontstyle . '\\310\\253 \310\253}' # |ȫ|\310\253|U+022B|0310 0253|LATIN SMALL LETTER O WITH DIAERESIS AND MACRON
# set label 103100254 center at graph val_position_x, 2.0/3.2 '{' . str_fontstyle . '\\310\\254 \310\254}' # |Ȭ|\310\254|U+022C|0310 0254|LATIN CAPITAL LETTER O WITH TILDE AND MACRON
# set label 103100255 center at graph val_position_x, 1.9/3.2 '{' . str_fontstyle . '\\310\\255 \310\255}' # |ȭ|\310\255|U+022D|0310 0255|LATIN SMALL LETTER O WITH TILDE AND MACRON
# set label 103100256 center at graph val_position_x, 1.8/3.2 '{' . str_fontstyle . '\\310\\256 \310\256}' # |Ȯ|\310\256|U+022E|0310 0256|LATIN CAPITAL LETTER O WITH DOT ABOVE
# set label 103100257 center at graph val_position_x, 1.7/3.2 '{' . str_fontstyle . '\\310\\257 \310\257}' # |ȯ|\310\257|U+022F|0310 0257|LATIN SMALL LETTER O WITH DOT ABOVE
# set label 103100260 center at graph val_position_x, 1.6/3.2 '{' . str_fontstyle . '\\310\\260 \310\260}' # |Ȱ|\310\260|U+0230|0310 0260|LATIN CAPITAL LETTER O WITH DOT ABOVE AND MACRON
# set label 103100261 center at graph val_position_x, 1.5/3.2 '{' . str_fontstyle . '\\310\\261 \310\261}' # |ȱ|\310\261|U+0231|0310 0261|LATIN SMALL LETTER O WITH DOT ABOVE AND MACRON
# set label 103100262 center at graph val_position_x, 1.4/3.2 '{' . str_fontstyle . '\\310\\262 \310\262}' # |Ȳ|\310\262|U+0232|0310 0262|LATIN CAPITAL LETTER Y WITH MACRON
# set label 103100263 center at graph val_position_x, 1.3/3.2 '{' . str_fontstyle . '\\310\\263 \310\263}' # |ȳ|\310\263|U+0233|0310 0263|LATIN SMALL LETTER Y WITH MACRON
# set label 103100264 center at graph val_position_x, 1.2/3.2 '{' . str_fontstyle . '\\310\\264 \310\264}' # |ȴ|\310\264|U+0234|0310 0264|LATIN SMALL LETTER L WITH CURL
# set label 103100265 center at graph val_position_x, 1.1/3.2 '{' . str_fontstyle . '\\310\\265 \310\265}' # |ȵ|\310\265|U+0235|0310 0265|LATIN SMALL LETTER N WITH CURL
# set label 103100266 center at graph val_position_x, 1.0/3.2 '{' . str_fontstyle . '\\310\\266 \310\266}' # |ȶ|\310\266|U+0236|0310 0266|LATIN SMALL LETTER T WITH CURL
# set label 103100267 center at graph val_position_x, 0.9/3.2 '{' . str_fontstyle . '\\310\\267 \310\267}' # |ȷ|\310\267|U+0237|0310 0267|LATIN SMALL LETTER DOTLESS J
# set label 103100270 center at graph val_position_x, 0.8/3.2 '{' . str_fontstyle . '\\310\\270 \310\270}' # |ȸ|\310\270|U+0238|0310 0270|LATIN SMALL LETTER DB DIGRAPH
# set label 103100271 center at graph val_position_x, 0.7/3.2 '{' . str_fontstyle . '\\310\\271 \310\271}' # |ȹ|\310\271|U+0239|0310 0271|LATIN SMALL LETTER QP DIGRAPH
# set label 103100272 center at graph val_position_x, 0.6/3.2 '{' . str_fontstyle . '\\310\\272 \310\272}' # |Ⱥ|\310\272|U+023A|0310 0272|LATIN CAPITAL LETTER A WITH STROKE
# set label 103100273 center at graph val_position_x, 0.5/3.2 '{' . str_fontstyle . '\\310\\273 \310\273}' # |Ȼ|\310\273|U+023B|0310 0273|LATIN CAPITAL LETTER C WITH STROKE
# set label 103100274 center at graph val_position_x, 0.4/3.2 '{' . str_fontstyle . '\\310\\274 \310\274}' # |ȼ|\310\274|U+023C|0310 0274|LATIN SMALL LETTER C WITH STROKE
# set label 103100275 center at graph val_position_x, 0.3/3.2 '{' . str_fontstyle . '\\310\\275 \310\275}' # |Ƚ|\310\275|U+023D|0310 0275|LATIN CAPITAL LETTER L WITH BAR
# set label 103100276 center at graph val_position_x, 0.2/3.2 '{' . str_fontstyle . '\\310\\276 \310\276}' # |Ⱦ|\310\276|U+023E|0310 0276|LATIN CAPITAL LETTER T WITH DIAGONAL STROKE
# set label 103100277 center at graph val_position_x, 0.1/3.2 '{' . str_fontstyle . '\\310\\277 \310\277}' # |ȿ|\310\277|U+023F|0310 0277|LATIN SMALL LETTER S WITH SWASH TAIL
# set label 103110200 center at graph val_position_x, 3.2/3.2 '{' . str_fontstyle . '\\311\\200 \311\200}' # |ɀ|\311\200|U+0240|0311 0200|LATIN SMALL LETTER Z WITH SWASH TAIL
# set label 103110201 center at graph val_position_x, 3.1/3.2 '{' . str_fontstyle . '\\311\\201 \311\201}' # |Ɂ|\311\201|U+0241|0311 0201|LATIN CAPITAL LETTER GLOTTAL STOP
# set label 103110202 center at graph val_position_x, 3.0/3.2 '{' . str_fontstyle . '\\311\\202 \311\202}' # |ɂ|\311\202|U+0242|0311 0202|LATIN SMALL LETTER GLOTTAL STOP
# set label 103110203 center at graph val_position_x, 2.9/3.2 '{' . str_fontstyle . '\\311\\203 \311\203}' # |Ƀ|\311\203|U+0243|0311 0203|LATIN CAPITAL LETTER B WITH STROKE
# set label 103110204 center at graph val_position_x, 2.8/3.2 '{' . str_fontstyle . '\\311\\204 \311\204}' # |Ʉ|\311\204|U+0244|0311 0204|LATIN CAPITAL LETTER U BAR
# set label 103110205 center at graph val_position_x, 2.7/3.2 '{' . str_fontstyle . '\\311\\205 \311\205}' # |Ʌ|\311\205|U+0245|0311 0205|LATIN CAPITAL LETTER TURNED V
# set label 103110206 center at graph val_position_x, 2.6/3.2 '{' . str_fontstyle . '\\311\\206 \311\206}' # |Ɇ|\311\206|U+0246|0311 0206|LATIN CAPITAL LETTER E WITH STROKE
# set label 103110207 center at graph val_position_x, 2.5/3.2 '{' . str_fontstyle . '\\311\\207 \311\207}' # |ɇ|\311\207|U+0247|0311 0207|LATIN SMALL LETTER E WITH STROKE
# set label 103110210 center at graph val_position_x, 2.4/3.2 '{' . str_fontstyle . '\\311\\210 \311\210}' # |Ɉ|\311\210|U+0248|0311 0210|LATIN CAPITAL LETTER J WITH STROKE
# set label 103110211 center at graph val_position_x, 2.3/3.2 '{' . str_fontstyle . '\\311\\211 \311\211}' # |ɉ|\311\211|U+0249|0311 0211|LATIN SMALL LETTER J WITH STROKE
# set label 103110212 center at graph val_position_x, 2.2/3.2 '{' . str_fontstyle . '\\311\\212 \311\212}' # |Ɋ|\311\212|U+024A|0311 0212|LATIN CAPITAL LETTER SMALL Q WITH HOOK TAIL
# set label 103110213 center at graph val_position_x, 2.1/3.2 '{' . str_fontstyle . '\\311\\213 \311\213}' # |ɋ|\311\213|U+024B|0311 0213|LATIN SMALL LETTER Q WITH HOOK TAIL
# set label 103110214 center at graph val_position_x, 2.0/3.2 '{' . str_fontstyle . '\\311\\214 \311\214}' # |Ɍ|\311\214|U+024C|0311 0214|LATIN CAPITAL LETTER R WITH STROKE
# set label 103110215 center at graph val_position_x, 1.9/3.2 '{' . str_fontstyle . '\\311\\215 \311\215}' # |ɍ|\311\215|U+024D|0311 0215|LATIN SMALL LETTER R WITH STROKE
# set label 103110216 center at graph val_position_x, 1.8/3.2 '{' . str_fontstyle . '\\311\\216 \311\216}' # |Ɏ|\311\216|U+024E|0311 0216|LATIN CAPITAL LETTER Y WITH STROKE
# set label 103110217 center at graph val_position_x, 1.7/3.2 '{' . str_fontstyle . '\\311\\217 \311\217}' # |ɏ|\311\217|U+024F|0311 0217|LATIN SMALL LETTER Y WITH STROKE
# set label 103110220 center at graph val_position_x, 1.6/3.2 '{' . str_fontstyle . '\\311\\220 \311\220}' # |ɐ|\311\220|U+0250|0311 0220|LATIN SMALL LETTER TURNED A
# set label 103110221 center at graph val_position_x, 1.5/3.2 '{' . str_fontstyle . '\\311\\221 \311\221}' # |ɑ|\311\221|U+0251|0311 0221|LATIN SMALL LETTER ALPHA
# set label 103110222 center at graph val_position_x, 1.4/3.2 '{' . str_fontstyle . '\\311\\222 \311\222}' # |ɒ|\311\222|U+0252|0311 0222|LATIN SMALL LETTER TURNED ALPHA
# set label 103110223 center at graph val_position_x, 1.3/3.2 '{' . str_fontstyle . '\\311\\223 \311\223}' # |ɓ|\311\223|U+0253|0311 0223|LATIN SMALL LETTER B WITH HOOK
# set label 103110224 center at graph val_position_x, 1.2/3.2 '{' . str_fontstyle . '\\311\\224 \311\224}' # |ɔ|\311\224|U+0254|0311 0224|LATIN SMALL LETTER OPEN O
# set label 103110225 center at graph val_position_x, 1.1/3.2 '{' . str_fontstyle . '\\311\\225 \311\225}' # |ɕ|\311\225|U+0255|0311 0225|LATIN SMALL LETTER C WITH CURL
# set label 103110226 center at graph val_position_x, 1.0/3.2 '{' . str_fontstyle . '\\311\\226 \311\226}' # |ɖ|\311\226|U+0256|0311 0226|LATIN SMALL LETTER D WITH TAIL
# set label 103110227 center at graph val_position_x, 0.9/3.2 '{' . str_fontstyle . '\\311\\227 \311\227}' # |ɗ|\311\227|U+0257|0311 0227|LATIN SMALL LETTER D WITH HOOK
# set label 103110230 center at graph val_position_x, 0.8/3.2 '{' . str_fontstyle . '\\311\\230 \311\230}' # |ɘ|\311\230|U+0258|0311 0230|LATIN SMALL LETTER REVERSED E
# set label 103110231 center at graph val_position_x, 0.7/3.2 '{' . str_fontstyle . '\\311\\231 \311\231}' # |ə|\311\231|U+0259|0311 0231|LATIN SMALL LETTER SCHWA
# set label 103110232 center at graph val_position_x, 0.6/3.2 '{' . str_fontstyle . '\\311\\232 \311\232}' # |ɚ|\311\232|U+025A|0311 0232|LATIN SMALL LETTER SCHWA WITH HOOK
# set label 103110233 center at graph val_position_x, 0.5/3.2 '{' . str_fontstyle . '\\311\\233 \311\233}' # |ɛ|\311\233|U+025B|0311 0233|LATIN SMALL LETTER OPEN E
# set label 103110234 center at graph val_position_x, 0.4/3.2 '{' . str_fontstyle . '\\311\\234 \311\234}' # |ɜ|\311\234|U+025C|0311 0234|LATIN SMALL LETTER REVERSED OPEN E
# set label 103110235 center at graph val_position_x, 0.3/3.2 '{' . str_fontstyle . '\\311\\235 \311\235}' # |ɝ|\311\235|U+025D|0311 0235|LATIN SMALL LETTER REVERSED OPEN E WITH HOOK
# set label 103110236 center at graph val_position_x, 0.2/3.2 '{' . str_fontstyle . '\\311\\236 \311\236}' # |ɞ|\311\236|U+025E|0311 0236|LATIN SMALL LETTER CLOSED REVERSED OPEN E
# set label 103110237 center at graph val_position_x, 0.1/3.2 '{' . str_fontstyle . '\\311\\237 \311\237}' # |ɟ|\311\237|U+025F|0311 0237|LATIN SMALL LETTER DOTLESS J WITH STROKE
# set label 103110240 center at graph val_position_x, 3.2/3.2 '{' . str_fontstyle . '\\311\\240 \311\240}' # |ɠ|\311\240|U+0260|0311 0240|LATIN SMALL LETTER G WITH HOOK
# set label 103110241 center at graph val_position_x, 3.1/3.2 '{' . str_fontstyle . '\\311\\241 \311\241}' # |ɡ|\311\241|U+0261|0311 0241|LATIN SMALL LETTER SCRIPT G
# set label 103110242 center at graph val_position_x, 3.0/3.2 '{' . str_fontstyle . '\\311\\242 \311\242}' # |ɢ|\311\242|U+0262|0311 0242|LATIN LETTER SMALL CAPITAL G
# set label 103110243 center at graph val_position_x, 2.9/3.2 '{' . str_fontstyle . '\\311\\243 \311\243}' # |ɣ|\311\243|U+0263|0311 0243|LATIN SMALL LETTER GAMMA
# set label 103110244 center at graph val_position_x, 2.8/3.2 '{' . str_fontstyle . '\\311\\244 \311\244}' # |ɤ|\311\244|U+0264|0311 0244|LATIN SMALL LETTER RAMS HORN
# set label 103110245 center at graph val_position_x, 2.7/3.2 '{' . str_fontstyle . '\\311\\245 \311\245}' # |ɥ|\311\245|U+0265|0311 0245|LATIN SMALL LETTER TURNED H
# set label 103110246 center at graph val_position_x, 2.6/3.2 '{' . str_fontstyle . '\\311\\246 \311\246}' # |ɦ|\311\246|U+0266|0311 0246|LATIN SMALL LETTER H WITH HOOK
# set label 103110247 center at graph val_position_x, 2.5/3.2 '{' . str_fontstyle . '\\311\\247 \311\247}' # |ɧ|\311\247|U+0267|0311 0247|LATIN SMALL LETTER HENG WITH HOOK
# set label 103110250 center at graph val_position_x, 2.4/3.2 '{' . str_fontstyle . '\\311\\250 \311\250}' # |ɨ|\311\250|U+0268|0311 0250|LATIN SMALL LETTER I WITH STROKE
# set label 103110251 center at graph val_position_x, 2.3/3.2 '{' . str_fontstyle . '\\311\\251 \311\251}' # |ɩ|\311\251|U+0269|0311 0251|LATIN SMALL LETTER IOTA
# set label 103110252 center at graph val_position_x, 2.2/3.2 '{' . str_fontstyle . '\\311\\252 \311\252}' # |ɪ|\311\252|U+026A|0311 0252|LATIN LETTER SMALL CAPITAL I
# set label 103110253 center at graph val_position_x, 2.1/3.2 '{' . str_fontstyle . '\\311\\253 \311\253}' # |ɫ|\311\253|U+026B|0311 0253|LATIN SMALL LETTER L WITH MIDDLE TILDE
# set label 103110254 center at graph val_position_x, 2.0/3.2 '{' . str_fontstyle . '\\311\\254 \311\254}' # |ɬ|\311\254|U+026C|0311 0254|LATIN SMALL LETTER L WITH BELT
# set label 103110255 center at graph val_position_x, 1.9/3.2 '{' . str_fontstyle . '\\311\\255 \311\255}' # |ɭ|\311\255|U+026D|0311 0255|LATIN SMALL LETTER L WITH RETROFLEX HOOK
# set label 103110256 center at graph val_position_x, 1.8/3.2 '{' . str_fontstyle . '\\311\\256 \311\256}' # |ɮ|\311\256|U+026E|0311 0256|LATIN SMALL LETTER LEZH
# set label 103110257 center at graph val_position_x, 1.7/3.2 '{' . str_fontstyle . '\\311\\257 \311\257}' # |ɯ|\311\257|U+026F|0311 0257|LATIN SMALL LETTER TURNED M
# set label 103110260 center at graph val_position_x, 1.6/3.2 '{' . str_fontstyle . '\\311\\260 \311\260}' # |ɰ|\311\260|U+0270|0311 0260|LATIN SMALL LETTER TURNED M WITH LONG LEG
# set label 103110261 center at graph val_position_x, 1.5/3.2 '{' . str_fontstyle . '\\311\\261 \311\261}' # |ɱ|\311\261|U+0271|0311 0261|LATIN SMALL LETTER M WITH HOOK
# set label 103110262 center at graph val_position_x, 1.4/3.2 '{' . str_fontstyle . '\\311\\262 \311\262}' # |ɲ|\311\262|U+0272|0311 0262|LATIN SMALL LETTER N WITH LEFT HOOK
# set label 103110263 center at graph val_position_x, 1.3/3.2 '{' . str_fontstyle . '\\311\\263 \311\263}' # |ɳ|\311\263|U+0273|0311 0263|LATIN SMALL LETTER N WITH RETROFLEX HOOK
# set label 103110264 center at graph val_position_x, 1.2/3.2 '{' . str_fontstyle . '\\311\\264 \311\264}' # |ɴ|\311\264|U+0274|0311 0264|LATIN LETTER SMALL CAPITAL N
# set label 103110265 center at graph val_position_x, 1.1/3.2 '{' . str_fontstyle . '\\311\\265 \311\265}' # |ɵ|\311\265|U+0275|0311 0265|LATIN SMALL LETTER BARRED O
# set label 103110266 center at graph val_position_x, 1.0/3.2 '{' . str_fontstyle . '\\311\\266 \311\266}' # |ɶ|\311\266|U+0276|0311 0266|LATIN LETTER SMALL CAPITAL OE
# set label 103110267 center at graph val_position_x, 0.9/3.2 '{' . str_fontstyle . '\\311\\267 \311\267}' # |ɷ|\311\267|U+0277|0311 0267|LATIN SMALL LETTER CLOSED OMEGA
# set label 103110270 center at graph val_position_x, 0.8/3.2 '{' . str_fontstyle . '\\311\\270 \311\270}' # |ɸ|\311\270|U+0278|0311 0270|LATIN SMALL LETTER PHI
# set label 103110271 center at graph val_position_x, 0.7/3.2 '{' . str_fontstyle . '\\311\\271 \311\271}' # |ɹ|\311\271|U+0279|0311 0271|LATIN SMALL LETTER TURNED R
# set label 103110272 center at graph val_position_x, 0.6/3.2 '{' . str_fontstyle . '\\311\\272 \311\272}' # |ɺ|\311\272|U+027A|0311 0272|LATIN SMALL LETTER TURNED R WITH LONG LEG
# set label 103110273 center at graph val_position_x, 0.5/3.2 '{' . str_fontstyle . '\\311\\273 \311\273}' # |ɻ|\311\273|U+027B|0311 0273|LATIN SMALL LETTER TURNED R WITH HOOK
# set label 103110274 center at graph val_position_x, 0.4/3.2 '{' . str_fontstyle . '\\311\\274 \311\274}' # |ɼ|\311\274|U+027C|0311 0274|LATIN SMALL LETTER R WITH LONG LEG
# set label 103110275 center at graph val_position_x, 0.3/3.2 '{' . str_fontstyle . '\\311\\275 \311\275}' # |ɽ|\311\275|U+027D|0311 0275|LATIN SMALL LETTER R WITH TAIL
# set label 103110276 center at graph val_position_x, 0.2/3.2 '{' . str_fontstyle . '\\311\\276 \311\276}' # |ɾ|\311\276|U+027E|0311 0276|LATIN SMALL LETTER R WITH FISHHOOK
# set label 103110277 center at graph val_position_x, 0.1/3.2 '{' . str_fontstyle . '\\311\\277 \311\277}' # |ɿ|\311\277|U+027F|0311 0277|LATIN SMALL LETTER REVERSED R WITH FISHHOOK

# --- plot --- #
plot 1/0 notitle