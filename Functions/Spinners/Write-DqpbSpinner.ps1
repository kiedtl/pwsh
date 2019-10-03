function Write-DqpbSpinner {
    param(
        [int]$Cycles,
        [int]$Speed,
        [string]$Text
    )
    1..$Cycles | % {
        write-host "`r`r[ d ] $Text" -NoNewline
        start-sleep -m $Speed
        write-host "`r`r[ q ] $Text" -NoNewline
        start-sleep -m $Speed
        write-host "`r`r[ p ] $Text" -NoNewline
        start-sleep -m $Speed
        write-host "`r`r[ b ] $Text" -NoNewline
        start-sleep -m $Speed
    }
}
