
$CustomElement = {
    New-UDElement -Tag "span" -Content { "Custom Element!" } -Attributes @{ className = "white-text" }
}

$NestedElements = {
    New-UDElement -Tag "div" -Attributes @{ className = "card black-text"} -Content { 
        New-UDElement -Tag "div" -Attributes @{ className = "card-content" } -Content { "Nested Element!" }
     }
}

$Attributes = {
    New-UDElement -Tag "div" -Attributes @{ 
        className = "card"
        style = @{
            backgroundColor = "#4081C9"
            color = "#FFFFFF"
        }
    } -Content { 
        "Attributes"
    }
}

$LoadContentFromAnEndpoint = {
    New-UDElement -Tag "div" -Attributes @{ className = "white-text" } -Endpoint {
        Get-Date
    }
}

$SetContentFromAnEndpoint = {
    $onClickHandler = {
        Set-UDElement -Id "target" -Content { New-Guid }
    }

    New-UDElement -Tag "a" -Attributes @{ className = "btn"; onClick = $onClickHandler } -Content { "Update the GUID" }
    New-UDElement -Tag "p" -Id "target" -Attributes @{ className = "white-text" }
}

New-UDPage -Name "Elements" -Icon sort_numeric_asc -Content {
    New-UDPageHeader -Title "Elements" -Icon "sort-numeric-asc" -Description "Create custom elements using PowerShell script to create any type of HTML node." -DocLink "https://adamdriscoll.gitbooks.io/powershell-universal-dashboard/content/custom-elements.html"
    New-UDExample -Title "Simple Elements" -Description "Simple HTML element." -Script $CustomElement
    New-UDExample -Title "Nested Elements" -Description "Elements can be nested within each other." -Script $NestedElements
    New-UDExample -Title "Attributes" -Description "Set attributes on the HTML tag." -Script $Attributes
    New-UDExample -Title "Endpoints" -Description "Load the content of an element from an PowerShell endpoint." -Script $LoadContentFromAnEndpoint
    New-UDExample -Title "Endpoints" -Description "Load the content of an element from an PowerShell endpoint." -Script $SetContentFromAnEndpoint
}