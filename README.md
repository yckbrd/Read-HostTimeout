# Read-HostTimeout
## 1.0.0.2
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
