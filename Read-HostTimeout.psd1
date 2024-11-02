<#	
    #===#===#===#===#===#===#===#===#===#===#===#===#===#===#===#===#===#===#===#===#===#===#===#===
    Filename:       Read-HostTimeout.psd1
    Created by:     Yannick Brouard
    +---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---
    Name:           Read-HostTimeout
    Type:           Powershell module manifest
    Version:        1.0.0.20241101
    #===#===#===#===#===#===#===#===#===#===#===#===#===#===#===#===#===#===#===#===#===#===#===#===
#>

<#
    #===#===#===#===#===#===#===#===#===#===#===#===#===#===#===#===#===#===#===#===#===#===#===#===
    Changelog
    +---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---
    1.0.0.20220920      Initial publication
    +---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---
    1.0.0.20220922      Changes to Read-HostTimeout.psm1
    +---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---
    1.0.0.20241101      Changes to Read-HostTimeout.psm1
                        Changed versioning to Major.Minor.Patch.Build Date*-Build Number**
                        Removed Organization
                        Updated info
                        Cleaned up code; fixed typos
    
                        *Date format YYYYMMDD
                        **Number format XX; only used if there is more than one build per date
    +---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---
    
    #===#===#===#===#===#===#===#===#===#===#===#===#===#===#===#===#===#===#===#===#===#===#===#===
#>

@{
    # Script module or binary module file associated with this manifest
    RootModule = 'Read-HostTimeout.psm1'
    
    # Version number of this module.
    ModuleVersion = '1.0.0.20241101'
    
    # ID used to uniquely identify this module
    GUID = '57a67405-c075-448d-aca9-73d679378224'
    
    # Author of this module
    Author = 'Yannick Brouard'
    
    # Company or vendor of this module
    #CompanyName = ''
    
    # Copyright statement for this module
    Copyright = '(c) 2024. All rights reserved.'
    
    # Description of the functionality provided by this module
    Description = '`Read-HostTimeout` is a function mimicking `Read-Host` with a timeout functionality added.'
    
    # Minimum version of the Windows PowerShell engine required by this module
    PowerShellVersion = '5.1'
    
    # Name of the Windows PowerShell host required by this module
    PowerShellHostName = 'ConsoleHost'
    
    # Minimum version of the Windows PowerShell host required by this module
    #PowerShellHostVersion = ''
    
    # Minimum version of the .NET Framework required by this module
    DotNetFrameworkVersion = '4.8'
    
    # Minimum version of the common language runtime (CLR) required by this module
    #CLRVersion = ''
    
    # Processor architecture (None, X86, Amd64, IA64) required by this module
    #ProcessorArchitecture = 'None'
    
    # Modules that must be imported into the global environment prior to importing this module
    #RequiredModules = @()
    
    # Assemblies that must be loaded prior to importing this module
    #RequiredAssemblies = @()
    
    # Script files (.ps1) that are run in the caller's environment prior to importing this module
    #ScriptsToProcess = @()
    
    # Type files (.ps1xml) to be loaded when importing this module
    #TypesToProcess = @()
    
    # Format files (.ps1xml) to be loaded when importing this module
    #FormatsToProcess = @()
    
    # Modules to import as nested modules of the module specified in ModuleToProcess
    #NestedModules = @()
    
    # Functions to export from this module
    FunctionsToExport = @('Read-HostTimeout') #For performance, list functions explicitly
    
    # Cmdlets to export from this module
    CmdletsToExport = '*' 
    
    # Variables to export from this module
    VariablesToExport = '*'
    
    # Aliases to export from this module
    #AliasesToExport = '*' #For performance, list alias explicitly
    
    # DSC class resources to export from this module.
    #DSCResourcesToExport = '*'
    
    # List of all modules packaged with this module
    #ModuleList = @()
    
    # List of all files packaged with this module
    FileList = @('Read-HostTimeout.psd1', 'Read-HostTimeout.psm1','LICENSE','README.md')
    
    # Private data to pass to the module specified in ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
    PrivateData = @{
        
        # Support for PowerShellGet galleries.
        PSData = @{
            
            # Tags applied to this module. These help with module discovery in online galleries.
            Tags = @("Read-Host","console","input","query","timeout","countdown")
            
            # A URL to the license for this module.
            LicenseUri = 'https://github.com/yckbrd/Read-HostTimeout/blob/main/LICENSE'
            
            # A URL to the main website for this project.
            ProjectUri = 'https://github.com/yckbrd/Read-HostTimeout'
            
            # A URL to an icon representing this module.
            #IconUri = ''
            
            # ReleaseNotes of this module
            #ReleaseNotes = ''
            
            # Prerelease string of this module
            #Prerelease = ''
            
            # Flag to indicate whether the module requires explicit user acceptance for install/update/save
            RequireLicenseAcceptance = $false
            
            # External dependent modules of this module
            #ExternalModuleDependencies = @()
            
        } # End of PSData hashtable
        
    } # End of PrivateData hashtable
    
    # HelpInfo URI of this module
    HelpInfoURI = 'https://github.com/yckbrd/Read-HostTimeout/blob/main/README.md'
    
    # Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
    #DefaultCommandPrefix = ''
}
