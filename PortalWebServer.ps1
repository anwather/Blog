Configuration PortalWebServer
    {

    Param(
        [string[]]$Feature)
    # Need to change to add a foreach loop
    Node localhost
        {

        foreach ($WindowsFeature in $Feature)
            {
            WindowsFeature $Feature
                {
                Ensure = "Present"
                Name = $Feature
                }
        

            }
        }
    }


PortalWebServer -Feature 'WebServer','NETASP','WebAuth','BasicAuth','ASP','ASPNET','ASPNET45'
Start-DscConfiguration -Path .\PortalWebServer -Wait -Verbose
        