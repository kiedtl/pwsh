<# 
.NAME
    Get-Weather
.SYNOPSIS
    Retrieves the weather for the specified location from wttr.in
.DESCRIPTION
    Retrieves the weather for the specified location from the website http://wttr.in/ using Invoke-WebRequest and returns the data as a string.
.PARAMETER Location
    The city, ZIP code, airport, or station for which to retrieve the weather. You may also add to this other properties - see the wttr.in repository for more information.
.PARAMETER UserAgent
    The user agent to use when requesting the weather from http://wttr.in/
.ALIASES gw

#>
function Get-Weather {
    Param (
        [
            Parameter(
                Mandatory=$true,
                ValueFromPipeline=$true,
                Position=1
            )
        ]
        [string]$Location,
        [
            Parameter(
                Mandatory=$false,
                Position=2
            )
        ]
        [string]$UserAgent = "curl"
    )
    $Flags = "https://wttr.in/${Location}"
    $Weather = (Invoke-WebRequest $Flags -UserAgent "${UserAgent}").Content
    return $Weather
}

Set-Alias -Name gw -Value Get-Weather
