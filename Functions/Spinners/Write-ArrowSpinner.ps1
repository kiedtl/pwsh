function Write-ArrowSpinner {
    param(
        [int]$Cycles,
        [int]$Speed,
        [string]$Text
    )
    [string]$w = [System.Text.Encoding]::UTF8.GetString((226,134,144))
    [string]$nw = [System.Text.Encoding]::UTF8.GetString((226,134,150))
    [string]$n = [System.Text.Encoding]::UTF8.GetString((226,134,145))
    [string]$ne = [System.Text.Encoding]::UTF8.GetString((226,134,151))
    [string]$e = [System.Text.Encoding]::UTF8.GetString((226,134,146))
    [string]$se = [System.Text.Encoding]::UTF8.GetString((226,134,152))
    [string]$s = [System.Text.Encoding]::UTF8.GetString((226,134,147))
    [string]$sw = [System.Text.Encoding]::UTF8.GetString((226,134,153))

    1..$Cycles | % {
        write-host "`r`r[ $w ] $Text" -NoNewline
        start-sleep -m $Speed
        write-host "`r`r[ $nw ] $Text" -NoNewline
        start-sleep -m $Speed
        write-host "`r`r[ $n ] $Text" -NoNewline
        start-sleep -m $Speed
        write-host "`r`r[ $ne ] $Text" -NoNewline
        start-sleep -m $Speed
        write-host "`r`r[ $e ] $Text" -NoNewline
        start-sleep -m $Speed
        write-host "`r`r[ $se ] $Text" -NoNewline
        start-sleep -m $Speed
        write-host "`r`r[ $s ] $Text" -NoNewline
        start-sleep -m $Speed
        write-host "`r`r[ $sw ] $Text" -NoNewline
        start-sleep -m $Speed
    }
}
