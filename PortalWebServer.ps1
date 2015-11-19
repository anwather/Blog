Configuration PortalWebServer
    {
    # Need to change to add a foreach loop
    Node localhost
        {

        WindowsFeature WebServer
            {
            Ensure="Present"
            Name="Web-Server"
            }

        WindowsFeature NETASP
            {
            Ensure="Present"
            Name="NET-Framework-45-ASPNET"
            DependsOn = "[WindowsFeature]WebServer"
            }

        WindowsFeature WebAuth
            {
            Ensure="Present"
            Name="Web-Windows-Auth"
            DependsOn = "[WindowsFeature]WebServer"
            }
        WindowsFeature BasicAuth
            {
            Ensure="Present"
            Name="Web-Basic-Auth"
            DependsOn = "[WindowsFeature]WebServer"
            }
        WindowsFeature ASP
            {
            Ensure="Present"
            Name="Web-ASP"
            DependsOn = "[WindowsFeature]WebServer"
            }
        WindowsFeature ASPNET
            {
            Ensure="Present"
            Name="Web-ASP-Net"
            DependsOn = "[WindowsFeature]WebServer"
            }
        WindowsFeature ASPNET45
            {
            Ensure="Present"
            Name="Web-ASP-Net45"
            DependsOn = "[WindowsFeature]WebServer"
            }
        }
      }

PortalWebServer
        