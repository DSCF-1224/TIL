# ==================================================================================================================================
# [objective]
# [reference]
# - https://note.nkmk.me/python-pypdf2-pdf-merge-insert-split/
# - https://www.soudegesu.com/post/python/extract-text-from-pdf-with-pypdf2/
# ==================================================================================================================================

import PyPDF2

with open("./target.pdf", mode= "rb") as fstream_pdf:

    obj_pdf_reader = PyPDF2.PdfFileReader(fstream_pdf)

    for iter_page in range( obj_pdf_reader.getNumPages() ):

        with open("./page" + str( iter_page + 1 ).zfill(4) + ".txt", mode= "w") as fstream_txt:

            fstream_txt.write( obj_pdf_reader.getPage(iter_page).extractText() )

            pass

    pass

# ==================================================================================================================================
# EOF
# ==================================================================================================================================
