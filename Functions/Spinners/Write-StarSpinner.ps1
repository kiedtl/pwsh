function Write-StarSpinner {
    param(
        [int]$Cycles,
        [int]$Speed,
        [string]$Text
    )
    1..$Cycles | % {
        write-host "`r`r[ * ] $Text" -NoNewline
        start-sleep -m $Speed
        write-host "`r`r[ + ] $Text" -NoNewline
        start-sleep -m $Speed
        write-host "`r`r[ x ] $Text" -NoNewline
        start-sleep -m $Speed
    }
}
