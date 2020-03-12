Function Invoke-PowerBI
{
	Param
	(
        [Parameter(Mandatory = $true)]$Method,
		[Parameter(Mandatory = $true)]$Url,
		[Parameter(Mandatory = $false)]$Body,
		[Parameter(Mandatory = $false)]$ContentType = 'application/json'
    )

	if (-not $script:EndpointUrl)
	{
		Write-Error "You are not connected to Power BI."
	}

	$Headers = Get-PowerBIAccessToken
	$Uri = "$script:EndpointUrl/$Url"

	return Invoke-RestMethod -Method $Method -Headers $Headers -Uri $Uri -Body $Body -ContentType $ContentType
}