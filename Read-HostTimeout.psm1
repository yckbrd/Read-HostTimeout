<#	
	===========================================================================
	 Filename:     	Read-HostTimeout.psm1
	 Created by:   	Yannick Brouard
	 Organization: 	BROuard SOLutions
	-------------------------------------------------------------------------
	 Name:			Read-HostTimeout
	 Type:			PowerShell module
	 Version:		1.0.0.2
	===========================================================================
#>

<#
	Changelog
	---------
	2022-09-20		1.0.0.0		Initial publication
	2022-09-22		1.0.0.1		Removed .NOTES sample text
						Removed empty line outputs
						Replaced alias `sleep` with proper `Start-Sleep`
	2022-09-22		1.0.0.2		Moved `Get-Help` comment block to proper position
						Cleaned up script
#>

function Read-HostTimeout
{
	
	<#
		.SYNOPSIS
			`Read-Host` with timeout countdown.

		.DESCRIPTION
			`Read-HostTimeout` is a function mimicking `Read-Host` with a timeout functionality added.

		.PARAMETER ConfirmKey
			Specifies the confirmation key which stops the countdown. Cannot be more than one character. Default is y.

		.PARAMETER Prompt
			Specifies the text of the prompt. If the string includes spaces, enclose it in quotation marks. Default is "To stop the countdown please press $ConfirmKey".

		.PARAMETER Duration
			Specifies the duration of the countdown in seconds. Cannot be zero. Values accepted 1-255. Default is 10.

		.EXAMPLE
			PS C:\> Read-HostTimeout

		.EXAMPLE
			PS C:\> Read-HostTimeout -ConfirmKey s -Prompt "To start the process press s" -Duration 3

		.EXAMPLE
			PS C:\> Read-HostTimeout -ConfirmKey q -Prompt "To quit this mode press q" -Duration 5
	#>
	
	param
	(
		[Parameter(Mandatory = $false)]
		[string]$ConfirmKey = 'y',
		[Parameter(Mandatory = $false)]
		[string]$Prompt = "To stop the countdown please press $ConfirmKey",
		[Parameter(Mandatory = $false)]
		[Byte]$Duration = 10
	)
	
	#checking if function is called in a console
	if ($Host.Name -ne "ConsoleHost")
	{
		Write-Error "Read-HostTimeout requires PowerShell host to be a console." -ErrorAction Stop
	}
	
	#checking if duration is not zero
	if ($Duration -eq 0)
	{
		Write-Error "Duration cannot be zero." -ErrorAction Stop
	}
	
	#checking if confirmation key is not more than one character
	if ($ConfirmKey.Length -gt 1)
	{
		Write-Error "Confirmation key cannot be more than one character." -ErrorAction Stop
	}
	
	#displaying the prompt
	Write-Information -MessageData "$Prompt" -InformationAction Continue
	Write-Information -MessageData "Countdown..." -InformationAction Continue
	
	#displaying the countdown as long as there is no input or the input is not the confirmation key, and the countdown has not reached zero yet  
	$i = $Duration
	while (((($keyavailable = [Console]::KeyAvailable) -eq $false) -or (($readkey = [Console]::ReadKey().Key) -ne $ConfirmKey)) -and ($i -ge 0))
	{
		Start-Sleep 1
		Write-Information -MessageData "...$i" -InformationAction Continue
		$i--
	}
	
	#consequence if countdown has reached zero
	if ($i -eq -1)
	{
		Write-Information -MessageData "...timeout" -InformationAction Continue
		$global:readhosttimeout = $null
	}
	
	#consequence if confirmation key has been pressed
	else
	{
		Write-Information -MessageData "...stopped" -InformationAction Continue
		$global:readhosttimeout = $readkey
	}
	
	#function termination
	return $global:readhosttimeout
}
