function Write-CircleSpinner {
    param(
        [int]$Cycles,
        [int]$Speed,
        [string]$Text
    )
    [string]$c1 = [System.Text.Encoding]::UTF8.GetString((226,151,180))
    [string]$c2 = [System.Text.Encoding]::UTF8.GetString((226,151,183))
    [string]$c3 = [System.Text.Encoding]::UTF8.GetString((226,151,182))
    [string]$c4 = [System.Text.Encoding]::UTF8.GetString((226,151,181))
    1..$Cycles | % {
        write-host "`r`r[ $c1 ] $Text" -NoNewline
        start-sleep -m $Speed
        write-host "`r`r[ $c2 ] $Text" -NoNewline
        start-sleep -m $Speed
        write-host "`r`r[ $c3 ] $Text" -NoNewline
        start-sleep -m $Speed
        write-host "`r`r[ $c4 ] $Text" -NoNewline
        start-sleep -m $Speed
    }
}
