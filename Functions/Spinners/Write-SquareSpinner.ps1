function Write-SquareSpinner {
    param(
        [int]$Cycles,
        [int]$Speed,
        [string]$Text
    )
    [string]$s1 = [System.Text.Encoding]::UTF8.GetString((226,151,176))
    [string]$s2 = [System.Text.Encoding]::UTF8.GetString((226,151,179))
    [string]$s3 = [System.Text.Encoding]::UTF8.GetString((226,151,178))
    [string]$s4 = [System.Text.Encoding]::UTF8.GetString((226,151,177))
    1..$Cycles | % {
        write-host "`r`r[ $s1 ] $Text" -NoNewline
        start-sleep -m $Speed
        write-host "`r`r[ $s2 ] $Text" -NoNewline
        start-sleep -m $Speed
        write-host "`r`r[ $s3 ] $Text" -NoNewline
        start-sleep -m $Speed
        write-host "`r`r[ $s4 ] $Text" -NoNewline
        start-sleep -m $Speed
    }
}
