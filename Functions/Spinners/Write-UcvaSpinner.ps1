function Write-UcvaSpinner {
    param(
        [int]$Cycles,
        [int]$Speed,
        [string]$Text
    )
    1..$Cycles | % {
        write-host "`r`r[ u ] $Text" -NoNewline
        start-sleep -m $Speed
        write-host "`r`r[ c ] $Text" -NoNewline
        start-sleep -m $Speed
        write-host "`r`r[ v ] $Text" -NoNewline
        start-sleep -m $Speed
        write-host "`r`r[ a ] $Text" -NoNewline
        start-sleep -m $Speed
    }
}
