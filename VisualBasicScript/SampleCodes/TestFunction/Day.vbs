Rem #===========================================================================
Rem # * warhing
Rem #   * This Visual Basic Script was written in UTF-8
Rem # * target
Rem #   * check what returned from the following function
Rem #     * ScriptEngine()
Rem #     * ScriptEngineMajorVersion()
Rem #     * ScriptEngineMinorVersion()
Rem #     * ScriptEngineBuildVersion()
Rem #===========================================================================

Rem # Require all variables to be explicitly declared
Option Explicit

Rem # Information of this VBScript
Rem # The return values displayed are when this script was tested
WScript.Echo "ScriptEngine"             & Space(1) & ":" & Space(1) & ScriptEngine()             Rem # returns : VBScript
WScript.Echo "ScriptEngineMajorVersion" & Space(1) & ":" & Space(1) & ScriptEngineMajorVersion() Rem # returns : 5
WScript.Echo "ScriptEngineMinorVersion" & Space(1) & ":" & Space(1) & ScriptEngineMinorVersion() Rem # returns : 8
WScript.Echo "ScriptEngineBuildVersion" & Space(1) & ":" & Space(1) & ScriptEngineBuildVersion() Rem # returns : 16384

Rem # Test function `Date`
WScript.Echo Date()             Rem # returns : 2019/08/07
WScript.Echo TypeName( Date() ) Rem # returns : Date

Rem #===========================================================================
Rem # EOF
