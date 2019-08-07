' All variables must be declared explicitly
Option Explicit

' Constants for this VBScript
Const str_ExtensionHtml          = ".html"
Const str_PathFolderWork         = "D:\Dta-1\GitHub\TIL\GitHubPages\contents\MathJax\unicode"
Const val_OpenTextFileForWriting = 2



' #===============================================================================================================================#
' # Main procedure of this VBScript is as below
' #===============================================================================================================================#

' Variables for this VBScript
Dim obj_FSO

' STEP.01
' generate the instance of File System Object
Set obj_FSO = CreateObject("Scripting.FileSystemObject")

' STEP.02
' generate the HTML files
Call GenerateEachHtmlFile("Asana-Math")
Call GenerateEachHtmlFile("Gyre-Pagella")
Call GenerateEachHtmlFile("Gyre-Termes")
Call GenerateEachHtmlFile("Latin-Modern")
Call GenerateEachHtmlFile("Neo-Euler")
Call GenerateEachHtmlFile("STIX-Web")

' STEP.03
' delete the instance of File System Object
Set obj_FSO = Nothing

' STEP.04
' Finish this VBScript
WScript.Echo "All processes has finished successfully."
WScript.Quit

' #===============================================================================================================================#
' # Main procedure of this VBScript is as above
' #===============================================================================================================================#


Sub GenerateEachHtmlFile (ByRef str_NameWebFont)

	' Variables for this <Sub>
	Dim obj_HtmlFileTarget
	Dim str_PathHtmlFileTarget

	' STEP.01
	' gnerate the file path to write the contents
	str_PathHtmlFileTarget = obj_FSO.BuildPath(str_PathFolderWork, str_NameWebFont & str_ExtensionHtml)

	' STEP.02
	' gnerate & attach the file to write the contents
	Set obj_HtmlFileTarget = obj_FSO.OpenTextFile(str_PathHtmlFileTarget, val_OpenTextFileForWriting, true, true)

	' STEP.03
	' write the header part in the target HTML file
	Call WriteHeader (obj_HtmlFileTarget, str_NameWebFont)
	Call WriteBody   (obj_HtmlFileTarget, str_NameWebFont)
	Call WriteClosing(obj_HtmlFileTarget, str_NameWebFont)

	' STEP.04
	' Close the file to write contents
	obj_HtmlFileTarget.Close()
	Set obj_HtmlFileTarget = Nothing

	' STEP.TRUE END
	Exit Sub

End Sub



' #===============================================================================================================================#



Sub WriteHeader (ByRef obj_HtmlFileTarget, ByRef str_NameWebFont)

	With obj_HtmlFileTarget

		Call .WriteLine( str_AddIndentsAsTab(0, str_HtmlStartTag("!DOCTYPE HTML") ) )
		Call .WriteLine( str_AddIndentsAsTab(0, str_HtmlStartTag("html" & Space(1) & "lang=" & str_EncloseInQuotes("ja") ) ) )

		Call .WriteLine( str_AddIndentsAsTab(0, str_HtmlStartTag("head") ) )

		Call .WriteLine( str_AddIndentsAsTab(1, str_EncloseInHtmlTag("title", "TIL" ) ) )
		Call .WriteLine( str_AddIndentsAsTab(1, str_HtmlStartTag    ("meta" & Space(1) & "charset=" & str_EncloseInQuotes("UTF-8") & "/") ) )
		Call .WriteLine( str_AddIndentsAsTab(1, str_HtmlStartTag("link rel=" & str_EncloseInQuotes("stylesheet") & Space(1) & "type=" & str_EncloseInQuotes("text/css") & Space(1) & "href=" & str_EncloseInQuotes("https://raw.githubusercontent.com/DSCF-1224/TIL/master/GitHubPages/settings/pattern01.css") ) ) )
		Call .WriteLine( str_AddIndentsAsTab(1, str_HtmlStartTag("link rel=" & str_EncloseInQuotes("stylesheet") & Space(1) & "type=" & str_EncloseInQuotes("text/css") & Space(1) & "href=" & str_EncloseInQuotes("table.css") ) ) )
		Call .WriteLine( str_AddIndentsAsTab(1, str_HtmlStartTag("script" & Space(1) & "type=" & str_EncloseInQuotes("text/x-mathjax-config") ) ) )
		Call .WriteLine( str_AddIndentsAsTab(2, "MathJax.Hub.Config({") )
		Call .WriteLine( str_AddIndentsAsTab(3, "displayAlign"   & Space(2) & ":" & Space(1) & str_EncloseInQuotes("left") & ",") )
		Call .WriteLine( str_AddIndentsAsTab(3, "displayIndent"  & Space(1) & ":" & Space(1) & str_EncloseInQuotes("2em") & ",") )
		Call .WriteLine( str_AddIndentsAsTab(3, "tex2jax"        & Space(1) & ":" & Space(1) & "{") )
		Call .WriteLine( str_AddIndentsAsTab(4, "inlineMath"     & Space(5) & ":" & Space(1) &"[['$','$'], ['\\(','\\)']],") )
		Call .WriteLine( str_AddIndentsAsTab(4, "processEscapes" & Space(1) & ":" & Space(1) & "true,") )
		Call .WriteLine( str_AddIndentsAsTab(3, "},") )
		Call .WriteLine( str_AddIndentsAsTab(3, "TeX"             & Space(1) & ":" & Space(1) & "{") )
		Call .WriteLine( str_AddIndentsAsTab(4, "equationNumbers" & Space(1) & ":" & Space(1) & "{" & Space(1) & "autoNumber" & Space(1) & ":" & Space(1) & str_EncloseInQuotes("AMS") & Space(1) & "},") )
		Call .WriteLine( str_AddIndentsAsTab(3, "},") )
		Call .WriteLine( str_AddIndentsAsTab(3, str_EncloseInQuotes("HTML-CSS") & Space(1) & ":" & Space(1) & "{") )
		Call .WriteLine( str_AddIndentsAsTab(4, "webFont"                       & Space(1) & ":" & Space(1) & str_EncloseInQuotes(str_NameWebFont) & ",") )
		Call .WriteLine( str_AddIndentsAsTab(3, "},") )
		Call .WriteLine( str_AddIndentsAsTab(2, "});") )
		Call .WriteLine( str_AddIndentsAsTab(1, str_HtmlEndTag("script") ) )
		Call .WriteLine( str_AddIndentsAsTab(1, str_HtmlStartTag("script" & Space(1) & "src=" & str_EncloseInQuotes("https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.5/MathJax.js?config=TeX-AMS_HTML&locale=ja") ) & str_HtmlEndTag("script") ) )

		Call .WriteLine( str_AddIndentsAsTab(0, str_HtmlEndTag("head") ) )

	End With

	' STEP.TRUE END
	Exit Sub

End Sub

Sub WriteBody (ByRef obj_HtmlFileTarget, ByRef str_NameWebFont)

	With obj_HtmlFileTarget

		Call .WriteLine( str_AddIndentsAsTab(0, str_HtmlStartTag("body") ) )

		Call .WriteLine( str_AddIndentsAsTab(0, str_EncloseInHtmlTag("h1", "TIL" & str_HtmlStartTag("br") & "MathJax" & str_HtmlStartTag("br") & str_NameWebFont) ) )

		Call .WriteLine( str_AddIndentsAsTab(0, str_HtmlStartTag("table class=" & str_EncloseInQuotes("Tbl-MathJax-Unicode") ) ) )

		Call .WriteLine( str_AddIndentsAsTab(1, str_HtmlStartTag("thead") ) )
		Call .WriteLine( str_AddIndentsAsTab(2, str_HtmlStartTag("tr") ) )
		Call .WriteLine( str_AddIndentsAsTab(3, str_EncloseInHtmlTag("th", "USV") ) )
		Call .WriteLine( str_AddIndentsAsTab(3, str_EncloseInHtmlTag("th", "defalut") ) )
		Call .WriteLine( str_AddIndentsAsTab(3, str_EncloseInHtmlTag("th", "Garamond") ) )
		Call .WriteLine( str_AddIndentsAsTab(3, str_EncloseInHtmlTag("th", "Times New Roman") ) )
		Call .WriteLine( str_AddIndentsAsTab(3, str_EncloseInHtmlTag("th", "Description") ) )
		Call .WriteLine( str_AddIndentsAsTab(2, str_HtmlEndTag("tr") ) )
		Call .WriteLine( str_AddIndentsAsTab(1, str_HtmlEndTag("thead") ) )

		Call .WriteLine( str_AddIndentsAsTab(1, str_HtmlStartTag("tbody") ) )

		Call addTableData(obj_HtmlFileTarget, "0391", "capital alpha, greek")
		Call addTableData(obj_HtmlFileTarget, "0392", "capital beta, greek")
		Call addTableData(obj_HtmlFileTarget, "0393", "capital gamma, greek")
		Call addTableData(obj_HtmlFileTarget, "0394", "capital delta, greek")
		Call addTableData(obj_HtmlFileTarget, "0395", "capital epsilon, greek")
		Call addTableData(obj_HtmlFileTarget, "0396", "capital zeta, greek")
		Call addTableData(obj_HtmlFileTarget, "0397", "capital eta, greek")
		Call addTableData(obj_HtmlFileTarget, "0398", "capital theta, greek")
		Call addTableData(obj_HtmlFileTarget, "0399", "capital iota, greek")
		Call addTableData(obj_HtmlFileTarget, "039A", "capital kappa, greek")
		Call addTableData(obj_HtmlFileTarget, "039B", "capital lambda, greek")
		Call addTableData(obj_HtmlFileTarget, "039C", "capital mu, greek")
		Call addTableData(obj_HtmlFileTarget, "039D", "capital nu, greek")
		Call addTableData(obj_HtmlFileTarget, "039E", "capital xi, greek")
		Call addTableData(obj_HtmlFileTarget, "039F", "capital omicron, greek")
		Call addTableData(obj_HtmlFileTarget, "03A0", "capital pi, greek")
		Call addTableData(obj_HtmlFileTarget, "03A1", "capital rho, greek")
		Call addTableData(obj_HtmlFileTarget, "03A3", "capital sigma, greek")
		Call addTableData(obj_HtmlFileTarget, "03A4", "capital tau, greek")
		Call addTableData(obj_HtmlFileTarget, "03A5", "capital upsilon, greek")
		Call addTableData(obj_HtmlFileTarget, "03A6", "capital phi, greek")
		Call addTableData(obj_HtmlFileTarget, "03A7", "capital chi, greek")
		Call addTableData(obj_HtmlFileTarget, "03A8", "capital psi, greek")
		Call addTableData(obj_HtmlFileTarget, "03A9", "capital omega, greek")
		Call addTableData(obj_HtmlFileTarget, "03B1", "small alpha, greek")
		Call addTableData(obj_HtmlFileTarget, "03B2", "small beta, greek")
		Call addTableData(obj_HtmlFileTarget, "03B3", "small gamma, greek")
		Call addTableData(obj_HtmlFileTarget, "03B4", "small delta, greek")
		Call addTableData(obj_HtmlFileTarget, "03B5", "small epsilon, greek")
		Call addTableData(obj_HtmlFileTarget, "03B6", "small zeta, greek")
		Call addTableData(obj_HtmlFileTarget, "03B7", "small eta, greek")
		Call addTableData(obj_HtmlFileTarget, "03B8", "small theta, greek")
		Call addTableData(obj_HtmlFileTarget, "03B9", "small iota, greek")
		Call addTableData(obj_HtmlFileTarget, "03BA", "small kappa, greek")
		Call addTableData(obj_HtmlFileTarget, "03BB", "small lambda, greek")
		Call addTableData(obj_HtmlFileTarget, "03BC", "small mu, greek")
		Call addTableData(obj_HtmlFileTarget, "03BD", "small nu, greek")
		Call addTableData(obj_HtmlFileTarget, "03BE", "small xi, greek")
		Call addTableData(obj_HtmlFileTarget, "03BF", "small omicron, greek")
		Call addTableData(obj_HtmlFileTarget, "03C0", "small pi, greek")
		Call addTableData(obj_HtmlFileTarget, "03C1", "small rho, greek")
		Call addTableData(obj_HtmlFileTarget, "03C3", "small sigma, greek")
		Call addTableData(obj_HtmlFileTarget, "03C4", "small tau, greek")
		Call addTableData(obj_HtmlFileTarget, "03C5", "small upsilon, greek")
		Call addTableData(obj_HtmlFileTarget, "03C6", "small phi, greek")
		Call addTableData(obj_HtmlFileTarget, "03C7", "small chi, greek")
		Call addTableData(obj_HtmlFileTarget, "03C8", "small psi, greek")
		Call addTableData(obj_HtmlFileTarget, "03C9", "small omega, greek")

		Call addTableData(obj_HtmlFileTarget, "2145", "double-struck small d")
		Call addTableData(obj_HtmlFileTarget, "2146", "double-struck capital D")
		Call addTableData(obj_HtmlFileTarget, "2147", "double-struck small e")
		Call addTableData(obj_HtmlFileTarget, "2148", "double-struck small i")
		Call addTableData(obj_HtmlFileTarget, "2149", "double-struck small j")

		Call addTableData(obj_HtmlFileTarget, "21BA", "anticlockwise open circle arrow")
		Call addTableData(obj_HtmlFileTarget, "21BB", "clockwise open circle arrow")

		Call .WriteLine( str_AddIndentsAsTab(1, str_HtmlEndTag("tbody") ) )
		Call .WriteLine( str_AddIndentsAsTab(0, str_HtmlEndTag("table") ) )

		Call .WriteLine( str_AddIndentsAsTab(0, str_HtmlStartTag("hr") ) )
		Call .WriteLine( str_AddIndentsAsTab(0, str_HtmlStartTag("input" & Space(1) & "class=" & str_EncloseInQuotes("BottonHref") & Space(1) & "type=" & str_EncloseInQuotes("button") & Space(1) & "onclick=" & str_EncloseInQuotes("location.href='" & "https://dscf-1224.github.io/TIL/" & "'") & Space(1) & "value=" & str_EncloseInQuotes("Top Page")      ) ) )
		Call .WriteLine( str_AddIndentsAsTab(0, str_HtmlStartTag("input" & Space(1) & "class=" & str_EncloseInQuotes("BottonHref") & Space(1) & "type=" & str_EncloseInQuotes("button") & Space(1) & "onclick=" & str_EncloseInQuotes("location.href='" & "https://github.com/DSCF-1224/TIL" & "'") & Space(1) & "value=" & str_EncloseInQuotes("GitHub of TIL") ) ) )

		Call .WriteLine( str_AddIndentsAsTab(0, str_HtmlEndTag("body") ) )

	End With

	' STEP.TRUE END
	Exit Sub

End Sub

Sub WriteClosing (ByRef obj_HtmlFileTarget, ByRef str_NameWebFont)

	With obj_HtmlFileTarget

		Call .WriteLine      ( str_AddIndentsAsTab(0, str_HtmlEndTag("html") ) )
		Call .WriteBlankLines(1)
		Call .WriteLine      ( str_AddIndentsAsTab(0, "<!-- EOF -->") )

	End With

	' STEP.TRUE END
	Exit Sub

End Sub

Function str_AddIndentsAsTab (ByRef int_NumIndents, ByRef str_target)

	' Variables for this <Function>
	Dim itrIndent

	' STEP.01
	' Initialize the return value of this function
	If int_NumIndents = 0 Then
		str_AddIndentsAsTab = str_target
		Exit Function
	Else
		str_AddIndentsAsTab = ""
	End If

	' STEP.02
	' Add tabs as the index
	For itrIndent = 1 To int_NumIndents Step 1
		str_AddIndentsAsTab = str_AddIndentsAsTab + vbTab
	Next

	' STEP.03
	' Add main part of return value
	str_AddIndentsAsTab = str_AddIndentsAsTab & str_target

	' STEP.TRUE END
	Exit Function

End Function

Function str_EncloseInQuotes (ByRef str_target)
	str_EncloseInQuotes = Chr(34) & str_target & Chr(34)
	Exit Function
End Function

Function str_HtmlStartTag (ByRef str_NameTag)
	str_HtmlStartTag = "<" & str_NameTag & ">"
	Exit Function
End Function

Function str_HtmlEndTag (ByRef str_NameTag)
	str_HtmlEndTag = str_HtmlStartTag("/" & str_NameTag)
	Exit Function
End Function

Function str_EncloseInHtmlTag (ByRef str_NameTag, ByRef str_target)
	str_EncloseInHtmlTag = str_HtmlStartTag(str_NameTag) & str_target & str_HtmlEndTag(str_NameTag)
	Exit Function
End Function

Sub addTableData (ByRef obj_HtmlFileTarget, ByVal val_USV, ByVal str_Description)

	With obj_HtmlFileTarget

		Call .WriteLine( str_AddIndentsAsTab(2, str_HtmlStartTag("tr") ) )
		Call .WriteLine( str_AddIndentsAsTab(3, str_EncloseInHtmlTag("td", "U+0" & val_USV) ) )
		Call .WriteLine( str_AddIndentsAsTab(3, str_EncloseInHtmlTag("td", "\(\unicode{x"                  & val_USV & "}\)") ) )
		Call .WriteLine( str_AddIndentsAsTab(3, str_EncloseInHtmlTag("td", "\(\unicode[Garamond]{x"        & val_USV & "}\)") ) )
		Call .WriteLine( str_AddIndentsAsTab(3, str_EncloseInHtmlTag("td", "\(\unicode[Times New Roman]{x" & val_USV & "}\)") ) )
		Call .WriteLine( str_AddIndentsAsTab(3, str_EncloseInHtmlTag("td", str_Description) ) )
		Call .WriteLine( str_AddIndentsAsTab(2, str_HtmlEndTag("tr") ) )
		
	End With

	Exit Sub

End Sub

' EOF
