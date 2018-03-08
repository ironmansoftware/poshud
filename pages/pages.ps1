

    New-UDRow {
        New-UDColumn -Size 3 {
            New-UDCard  @AlternateColors -Title "Pages" -Text "Create multi-page dashboards. Provide icons and link text. Take advantage of ReactJS routing to provide custom URLs."
        }
        New-UDColumn -Size 9 {
            New-UDCard @ScriptColors -Language "PowerShell" -Text 'New-UDPage -Name Components -Icon area_chart -Content {
    New-UDChart {}
}' -Title "PowerShell"
        }
    }
    New-UDRow {
        New-UDColumn -Size 3 {
            New-UDCard  @AlternateColors -Title "Navigation Bar" -Text "Customize the navigation bar colors, text and links."
        }
        New-UDColumn -Size 9 {
            New-UDCard @ScriptColors -Language "PowerShell" -Text '$NavBarLinks = @((New-UDLink -Text "PowerShell Pro Tools" -Url "https://poshtools.com/buy-powershell-pro-tools/" -Icon heart_o),
(New-UDLink -Text "Documentation" -Url "https://adamdriscoll.gitbooks.io/powershell-tools-documentation/content/powershell-pro-tools-documentation/universal-dashboard.html" -Icon book))
New-UDDashboard -NavbarLinks $NavBarLinks -Title "PowerShell Universal Dashboard" -NavBarColor "#FF1c1c1c" -NavBarFontColor "#FF55b3ff" -BackgroundColor "#FF333333" -FontColor "#FFFFFFF" ' -Title "PowerShell"
        }
    }