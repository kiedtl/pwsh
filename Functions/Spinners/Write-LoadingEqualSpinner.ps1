function Write-LoadingEqualSpinner {
    param(
        [int]$Cycles,
        [int]$Speed,
        [string]$Text
    )
    $sleeptime = $Sleep
    1..$cycles | % {
        write-host "`r`r[ ======] $Text" -NoNewline
        start-sleep -m $sleeptime
        write-host "`r`r[  =====] $Text" -NoNewline
        start-sleep -m $sleeptime
        write-host "`r`r[   ====] $Text" -NoNewline
        start-sleep -m $sleeptime
        write-host "`r`r[=   ===] $Text" -NoNewline
        start-sleep -m $sleeptime
        write-host "`r`r[==   ==] $Text" -NoNewline
        start-sleep -m $sleeptime
        write-host "`r`r[===   =] $Text" -NoNewline
        start-sleep -m $sleeptime
        write-host "`r`r[===    ] $Text" -NoNewline
        start-sleep -m $sleeptime
    }
}
