Configuration PortalWebServer
    {

    Param(
        [string[]]$Feature)
    # Need to change to add a foreach loop
    Node PortalServer
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