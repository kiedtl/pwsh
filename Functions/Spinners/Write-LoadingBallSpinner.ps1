function Write-LoadingBallSpinner {
    param(
        [int]$Cycles,
        [int]$Speed,
        [string]$Text
    )
    $ball = [System.Text.Encoding]::UTF8.GetString((226,151,143))
    1..$Cycles | % {
        write-host "`r`r( ${ball}${ball}${ball}${ball}${ball}${ball}${ball}) $Text" -NoNewline
        start-sleep -m $Speed
        write-host "`r`r(  ${ball}${ball}${ball}${ball}${ball}${ball}) $Text" -NoNewline
        start-sleep -m $Speed
        write-host "`r`r(   ${ball}${ball}${ball}${ball}${ball}) $Text" -NoNewline
        start-sleep -m $Speed
        write-host "`r`r(${ball}   ${ball}${ball}${ball}${ball}) $Text" -NoNewline
        start-sleep -m $Speed
        write-host "`r`r(${ball}${ball}   ${ball}${ball}${ball}) $Text" -NoNewline
        start-sleep -m $Speed
        write-host "`r`r(${ball}${ball}${ball}   ${ball}${ball}) $Text" -NoNewline
        start-sleep -m $Speed
        write-host "`r`r(${ball}${ball}${ball}    ${ball}) $Text" -NoNewline
        start-sleep -m $Speed
        write-host "`r`r(${ball}${ball}${ball}${ball}    ) $Test" -NoNewline
        start-sleep -m $Speed
        write-host "`r`r(${ball}${ball}${ball}${ball}${ball}   ) $Test" -NoNewline
        start-sleep -m $Speed
        write-host "`r`r(${ball}${ball}${ball}${ball}${ball}${ball}  ) $Test" -NoNewline
        start-sleep -m $Speed

    }
}
