function Get-OperatingSystem {
    if (($PSVersionTable.PSEdition) -eq "Desktop") { 
        return ("win32", "desktop")
    } elseif (($PSVersionTable.PSEdition) -eq "Core") {
        if (($PSVersionTable.Platform) -eq "Win32NT") {
            return ("win32","core")
        } elseif (($PSVersionTable.Platform) -eq "Unix") {
            if ($IsLinux) { return ("linux","core") }
            elseif ($IsMacOS) { return ("darwin","core") }
            else { return ($null,$null) }
        }
        else { return ($null,$null) }
    }
}