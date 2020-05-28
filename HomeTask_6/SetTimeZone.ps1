Configuration SetTimeZone
{
    Import-DSCResource -ModuleName xTimeZone

    Node "localhost"
    {
        xTimeZone TimeZoneExample
        {
            IsSingleInstance = 'Yes'
            TimeZone = "Greenwich Standard Time"
        }
    }
}

SetTimeZone -output C:\serverConfig
Start-DscConfiguration -Path C:\serverConfig  -Wait -Force -Verbose