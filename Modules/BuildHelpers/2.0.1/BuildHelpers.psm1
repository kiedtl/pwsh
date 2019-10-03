#Get public and private function definition files.
$Public  = @( Get-ChildItem -Path $PSScriptRoot\Public\*.ps1 -ErrorAction SilentlyContinue )
$Private = @( Get-ChildItem -Path $PSScriptRoot\Private\*.ps1 -ErrorAction SilentlyContinue )
$ModuleRoot = $PSScriptRoot

#Dot source the files
Foreach($import in @($Public + $Private))
{
    Try
    {
        . $import.fullname
    }
    Catch
    {
        Write-Error -Message "Failed to import function $($import.fullname): $_"
    }
}

# Load dependencies. TODO: Move to module dependency once the bug that
# causes this is fixed: https://ci.appveyor.com/project/RamblingCookieMonster/buildhelpers/build/1.0.22
# Thanks to Joel Bennett for this!
$fallbackModule = Get-Module -Name $PSScriptRoot\Private\Modules\Configuration -ListAvailable
if ($configModule = Get-Module $fallbackModule.Name -ListAvailable)
{
    $configModule |
        Where-Object { $_.Version -gt $fallbackModule.Version} |
        Sort-Object -Property Version -Descending |
        Select-Object -First 1 |
        Import-Module -Force
}
if (-not (Get-Module $fallbackModule.Name | Where-Object { $_.Version -gt $fallbackModule.Version}))
{
    $fallbackModule | Import-Module -Force
}

Export-ModuleMember -Function $Public.Basename
Export-ModuleMember -Function Get-Metadata, Update-Metadata, Export-Metadata

# Set aliases (#10)
Set-Alias -Name Set-BuildVariable -Value $PSScriptRoot\Scripts\Set-BuildVariable.ps1
Set-Alias -Name Get-NextPSGalleryVersion -Value Get-NextNugetPackageVersion
Export-ModuleMember -Alias Set-BuildVariable, Get-NextPSGalleryVersion
