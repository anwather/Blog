Configuration PortalDownload
    {

    Node localhost
        {

        File SetupFile
            {
            DestinationPath = "C:\Temp"
            SourcePath = "https://download.microsoft.com/download/B/3/7/B37F4D01-F382-421C-8D3C-7F3BA2CBCCF3/Setup.zip"
            Force = $true
            }

        Archive ExtractFile
            {
            Path = "C:\Temp\Setup.zip"
            Destination = "C:\Temp\Portal\"
            Force = $true
            }
        }
    }
