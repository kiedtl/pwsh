﻿@{

# Script module or binary module file associated with this manifest.
RootModule = 'BuildHelpers.psm1'

# Version number of this module.
ModuleVersion = '2.0.1'

# ID used to uniquely identify this module
GUID = 'ec079170-28b7-40b4-aaae-f8ebf76850ab'

# Author of this module
Author = 'Warren Frame'

# Company or vendor of this module
#CompanyName = 'Unknown'

# Copyright statement for this module
Copyright = '(c) 2016 Warren F. All rights reserved.'

# Description of the functionality provided by this module
Description = 'Helper functions for PowerShell CI/CD scenarios.'

# Minimum version of the Windows PowerShell engine required by this module
PowerShellVersion = '3.0'

# Name of the Windows PowerShell host required by this module
# PowerShellHostName = ''

# Minimum version of the Windows PowerShell host required by this module
# PowerShellHostVersion = ''

# Minimum version of Microsoft .NET Framework required by this module
# DotNetFrameworkVersion = ''

# Minimum version of the common language runtime (CLR) required by this module
# CLRVersion = ''

# Processor architecture (None, X86, Amd64) required by this module
# ProcessorArchitecture = ''

# Modules that must be imported into the global environment prior to importing this module
# RequiredModules = @()

# Assemblies that must be loaded prior to importing this module
# RequiredAssemblies = @()

# Script files (.ps1) that are run in the caller's environment prior to importing this module.
# ScriptsToProcess = @()

# Type files (.ps1xml) to be loaded when importing this module
# TypesToProcess = @()

# Format files (.ps1xml) to be loaded when importing this module
#FormatsToProcess = '.Format.ps1xml'

# Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
# NestedModules = @()

# Functions to export from this module
FunctionsToExport = @('Add-TestResultToAppveyor','Export-Metadata','Find-NugetPackage','Get-BuildEnvironment','Get-BuildEnvironmentDetail','Get-BuildVariables','Get-GitChangedFile','Get-Metadata','Get-ModuleAliases','Get-ModuleFunctions','Get-NextNugetPackageVersion','Get-NextPowerShellGetVersion','Get-ProjectName','Get-PSModuleManifest','Invoke-Git','Set-BuildEnvironment','Set-ModuleAliases','Set-ModuleFormats','Set-ModuleFunctions','Set-ModuleTypes','Set-ShieldsIoBadge','Step-ModuleVersion','Step-Version','Update-Metadata')

# Cmdlets to export from this module
CmdletsToExport = '*'

# Variables to export from this module
VariablesToExport = '*'

# Aliases to export from this module
AliasesToExport = @('Set-BuildVariable', 'Get-NextPSGalleryVersion')

# DSC resources to export from this module
# DscResourcesToExport = @()

# List of all modules packaged with this module
# ModuleList = @()

# List of all files packaged with this module
# FileList = @()

# Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
PrivateData = @{

    PSData = @{

        # Tags applied to this module. These help with module discovery in online galleries.
         Tags = @('Continuous', 'Delivery', 'Deployment', 'Integration', 'DevOps', 'Jenkins', 'GitLab', 'CI', 'VSTS', 'AppVeyor')

        # A URL to the license for this module.
         LicenseUri = 'https://github.com/RamblingCookieMonster/BuildHelpers/blob/master/LICENSE'

        # A URL to the main website for this project.
         ProjectUri = 'https://github.com/RamblingCookieMonster/BuildHelpers/'

        # A URL to an icon representing this module.
        # IconUri = ''

        # ReleaseNotes of this module
        ReleaseNotes = "This release will load an external copy of Joel Bennett's Configuration module if we find one on your system, and it is newer than the embedded Configuration module"

    } # End of PSData hashtable

} # End of PrivateData hashtable

# HelpInfo URI of this module
# HelpInfoURI = ''

# Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
# DefaultCommandPrefix = ''

}
