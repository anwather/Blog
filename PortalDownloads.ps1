Configuration PortalDownload
    {

    Import-DSCResource -ModuleName xPSDesiredStateConfiguration

    Node localhost
        {

        File SetupFile
            {
            Uri = "https://raw.githubusercontent.com/anwather/Blog/Dev/Setup.zip"
            DestinationPath = "C:\Temp"
            }

        Archive ExtractFile
            {
            Path = "C:\Temp\Setup.zip"
            Destination = "C:\Temp\Portal\"
            Force = $true
            }
        }
    }
