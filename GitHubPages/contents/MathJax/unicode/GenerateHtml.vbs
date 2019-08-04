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
Call GenerateEachHtmlFile("Asana-Math2")
Call GenerateEachHtmlFile("STIX-Web2")

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

		Call .WriteLine( str_AddIndentsAsTab(0, "<!DOCTYPE html>") )
		Call .WriteLine( str_AddIndentsAsTab(0, "<html" & Space(1) & "lang=" & str_EncloseInQuotes("ja") & ">") )

		Call .WriteLine( str_AddIndentsAsTab(0, str_HtmlStartTag("head") ) )

		Call .WriteLine( str_AddIndentsAsTab(1, str_HtmlStartTag("title") & "TIL" & str_HtmlEndTag("title") ) )
		Call .WriteLine( str_AddIndentsAsTab(1, "<meta" & Space(1) & "charset=" & str_EncloseInQuotes("UTF-8") & ">") )
		Call .WriteLine( str_AddIndentsAsTab(1, "<link rel=" & str_EncloseInQuotes("stylesheet") & Space(1) & "type=" & str_EncloseInQuotes("text/css") & Space(1) & "href=" & str_EncloseInQuotes("../../../GitHubPages/settings/pattern01.css") & ">") )
		Call .WriteLine( str_AddIndentsAsTab(1, "<script" & Space(1) & "type=" & str_EncloseInQuotes("text/x-mathjax-config") & ">") )
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
		Call .WriteLine( str_AddIndentsAsTab(1, "<script" & Space(1) & "src=" & str_EncloseInQuotes("https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.5/MathJax.js?config=TeX-AMS_HTML&locale=ja") & ">" & str_HtmlEndTag("script") ) )

		Call .WriteLine( str_AddIndentsAsTab(0, str_HtmlEndTag("head") ) )

	End With

	' STEP.TRUE END
	Exit Sub

End Sub

Sub WriteBody (ByRef obj_HtmlFileTarget, ByRef str_NameWebFont)

	With obj_HtmlFileTarget

		Call .WriteLine( str_AddIndentsAsTab(0, str_HtmlStartTag("body") ) )

		Call .WriteLine( str_AddIndentsAsTab(0, str_EncloseInHtmlTag("h1", "TIL" & str_HtmlStartTag("br") & "MathJax" & str_HtmlStartTag("br") & str_NameWebFont) ) )

		Call .WriteLine( str_AddIndentsAsTab(0, str_HtmlStartTag("table") ) )
		Call .WriteLine( str_AddIndentsAsTab(1, str_HtmlStartTag("thead") ) )
		Call .WriteLine( str_AddIndentsAsTab(1, str_HtmlEndTag("thead") ) )
		Call .WriteLine( str_AddIndentsAsTab(1, str_HtmlStartTag("tbody") ) )
		Call .WriteLine( str_AddIndentsAsTab(1, str_HtmlEndTag("tbody") ) )
		Call .WriteLine( str_AddIndentsAsTab(1, str_HtmlStartTag("tfoot") ) )
		Call .WriteLine( str_AddIndentsAsTab(1, str_HtmlEndTag("tfoot") ) )
		Call .WriteLine( str_AddIndentsAsTab(0, str_HtmlEndTag("table") ) )

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
	str_AddIndentsAsTab = ""

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

Function str_HtmlEndTag (ByRef str_NameTag)
	str_HtmlEndTag = "</" & str_NameTag & ">"
	Exit Function
End Function

Function str_HtmlStartTag (ByRef str_NameTag)
	str_HtmlStartTag = "<" & str_NameTag & ">"
	Exit Function
End Function

Function str_EncloseInHtmlTag (ByRef str_NameTag, ByRef str_target)
	str_EncloseInHtmlTag = str_HtmlStartTag(str_NameTag) & str_target & str_HtmlEndTag(str_NameTag)
	Exit Function
End Function

' EOF
