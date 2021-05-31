# IF #

## 使用方法 ##

### 所定のファイルが存在するかを確認する ###

```Batchfile
@REM ===========================================================================
@REM The main process is as follows.
@REM ===========================================================================

@CALL :checkFileExistence IF.md

@REM ===========================================================================
@REM The local subroutine is as follows
@REM ===========================================================================

:checkFileExistence
IF EXIST %1 (
    @ECHO The target file %1 is detected.
) ELSE (
    @ECHO The target file %1 is NOT detected.
)
```

<!-- EOF -->
