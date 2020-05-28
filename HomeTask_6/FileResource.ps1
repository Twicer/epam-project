Configuration FileResource
{
    Import-DSCResource -ModuleName PSDesiredStateConfiguration
    
    Node "localhost"
    {
        File DirectoryCopy
        {
            Ensure = "Present"
            Type = "Directory"
            Recurse = $true
            SourcePath = "C:\DemoSours"
            DestinationPath = "D:\DemoDestination"
        }

        Log AfterDirectoryCopy
        {
            Message = "Finished running the file resource with ID DirectoryCopy"
            DependsOn = "[File]DirectoryCopy"
        }
    }
}

FileResource -output C:\serverConfig
Start-DscConfiguration -Path C:\serverConfig  -Wait -Force -Verbose