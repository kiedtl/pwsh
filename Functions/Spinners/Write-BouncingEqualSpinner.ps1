function Write-BouncingEqualSpinner {
    param(
        [int]$Cycles,
        [int]$Speed,
        [string]$Text
    )
    $sleeptime = $Sleep
    1..$Cycles | % {
        write-host "`r`r[=    ] $Text" -NoNewline
        start-sleep -m $sleeptime
        write-host "`r`r[ =   ] $Text" -NoNewline
        start-sleep -m $sleeptime
        write-host "`r`r[  =  ] $Text" -NoNewline
        start-sleep -m $sleeptime
        write-host "`r`r[   = ] $Text" -NoNewline
        start-sleep -m $sleeptime
        write-host "`r`r[    =] $Text" -NoNewline
        start-sleep -m $sleeptime
        write-host "`r`r[   = ] $Text" -NoNewline
        start-sleep -m $sleeptime
        write-host "`r`r[  =  ] $Text" -NoNewline
        start-sleep -m $sleeptime
        write-host "`r`r[ =   ] $Text" -NoNewline
        start-sleep -m $sleeptime
    }
}