using module ATAPHtmlReport
        function Test-Windows10_DataProtection_MS_1 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_1')
            $obj | Add-Member NoteProperty Task('Automatic Root Certificates Update')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\SystemCertificates\AuthRoot" | Select-Object -ErrorAction Stop -ExpandProperty DisableRootAutoUpdate
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "1") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_2.1.1 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_2.1.1')
            $obj | Add-Member NoteProperty Task('Allow Cortana')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Windows Search" | Select-Object -ErrorAction Stop -ExpandProperty AllowCortana
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "0") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_2.1.2 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_2.1.2')
            $obj | Add-Member NoteProperty Task('Allow search and Cortana to use location')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Windows Search" | Select-Object -ErrorAction Stop -ExpandProperty AllowSearchToUseLocation
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "0") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_2.1.3 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_2.1.3')
            $obj | Add-Member NoteProperty Task('Do not allow web search')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Windows Search" | Select-Object -ErrorAction Stop -ExpandProperty DisableWebSearch
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "1") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_2.1.4 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_2.1.4')
            $obj | Add-Member NoteProperty Task('Dont search the web or display web results in Search')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Windows Search" | Select-Object -ErrorAction Stop -ExpandProperty ConnectedSearchUseWeb
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "0") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_2.1.5 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_2.1.5')
            $obj | Add-Member NoteProperty Task('Set what information is shared in Search')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Windows Search" | Select-Object -ErrorAction Stop -ExpandProperty ConnectedSearchPrivacy
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "3") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_3.1 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_3.1')
            $obj | Add-Member NoteProperty Task('Prevent Windows from setting the time automatically')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\W32Time\Parameters" | Select-Object -ErrorAction Stop -ExpandProperty Type
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "NoSync") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_3.2 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_3.2')
            $obj | Add-Member NoteProperty Task('Prevent Windows from setting the time automatically')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\W32time\TimeProviders\NtpClient" | Select-Object -ErrorAction Stop -ExpandProperty Enabled
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "0") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_4 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_4')
            $obj | Add-Member NoteProperty Task('Prevent Windows from retrieving device metadata from the Internet')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Device Metadata" | Select-Object -ErrorAction Stop -ExpandProperty PreventDeviceMetadataFromNetwork
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "1") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_5 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_5')
            $obj | Add-Member NoteProperty Task('Turn off Find My Device')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\FindMyDevice" | Select-Object -ErrorAction Stop -ExpandProperty AllowFindMyDevice
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "0") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_6 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_6')
            $obj | Add-Member NoteProperty Task('Fonts that are included in Windows but that are not stored on the local device can be downloaded on demand')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\System" | Select-Object -ErrorAction Stop -ExpandProperty EnableFontProviders
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "0") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_7 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_7')
            $obj | Add-Member NoteProperty Task('Turn off Insider Preview builds for Windows 10')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\PreviewBuilds" | Select-Object -ErrorAction Stop -ExpandProperty AllowBuildPreview
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "0") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_8.0.1 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_8.0.1')
            $obj | Add-Member NoteProperty Task('Turn on Suggested Sites')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Internet Explorer\Suggested Sites" | Select-Object -ErrorAction Stop -ExpandProperty Enabled
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "0") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_8.0.2 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_8.0.2')
            $obj | Add-Member NoteProperty Task('Allow Microsoft services to provide enhanced suggestions as the user types in the Address Bar')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Internet Explorer" | Select-Object -ErrorAction Stop -ExpandProperty AllowServicePoweredQSA
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "0") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_8.0.3 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_8.0.3')
            $obj | Add-Member NoteProperty Task('Turn off the auto-complete feature for web addresses')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\Explorer\AutoComplete" | Select-Object -ErrorAction Stop -ExpandProperty AutoSuggest
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "No") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_8.0.4 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_8.0.4')
            $obj | Add-Member NoteProperty Task('Turn off browser geolocation')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Internet Explorer\Geolocation" | Select-Object -ErrorAction Stop -ExpandProperty PolicyDisableGeolocation
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "1") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_8.0.5 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_8.0.5')
            $obj | Add-Member NoteProperty Task('Prevent managing SmartScreen filter')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Internet Explorer\PhishingFilter" | Select-Object -ErrorAction Stop -ExpandProperty EnabledV9
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "0") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_8.0.6 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_8.0.6')
            $obj | Add-Member NoteProperty Task('Choose whether employees can configure Compatibility View.')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Internet Explorer\BrowserEmulation" | Select-Object -ErrorAction Stop -ExpandProperty DisableSiteListEditing
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "1") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_8.0.7 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_8.0.7')
            $obj | Add-Member NoteProperty Task('Turn off the flip ahead with page prediction feature')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Internet Explorer\FlipAhead" | Select-Object -ErrorAction Stop -ExpandProperty Enabled
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "0") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_8.0.8 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_8.0.8')
            $obj | Add-Member NoteProperty Task('Turn off background synchronization for feeds and Web Slices')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Internet Explorer\Feeds" | Select-Object -ErrorAction Stop -ExpandProperty BackgroundSyncStatus
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "0") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_8.0.9 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_8.0.9')
            $obj | Add-Member NoteProperty Task('Allow Online Tips')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" | Select-Object -ErrorAction Stop -ExpandProperty AllowOnlineTips
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "0") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_8.0.10 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_8.0.10')
            $obj | Add-Member NoteProperty Task('To turn off the home page')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKCU:\SOFTWARE\Policies\Microsoft\Internet Explorer\Main" | Select-Object -ErrorAction Stop -ExpandProperty Start Page
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "about:blank") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_8.0.11 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_8.0.11')
            $obj | Add-Member NoteProperty Task('To turn off the home page')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKCU:\SOFTWARE\Policies\Microsoft\Internet Explorer\Control" | Select-Object -ErrorAction Stop -ExpandProperty Panel HomePage
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "1") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_8.0.12 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_8.0.12')
            $obj | Add-Member NoteProperty Task('To configure the First Run Wizard')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKCU:\SOFTWARE\Policies\Microsoft\Internet Explorer\Main" | Select-Object -ErrorAction Stop -ExpandProperty DisableFirstRunCustomize
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "1") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_8.0.13 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_8.0.13')
            $obj | Add-Member NoteProperty Task('To configure the behavior for a new tab')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKCU:\SOFTWARE\Policies\Microsoft\Internet Explorer\TabbedBrowsing" | Select-Object -ErrorAction Stop -ExpandProperty NewTabPageShow
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "0") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_8.1 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_8.1')
            $obj | Add-Member NoteProperty Task('ActiveX control blocking periodically downloads a new list of out-of-date ActiveX controls that should be blocked')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKCU:\Software\Microsoft\Internet Explorer\VersionManager" | Select-Object -ErrorAction Stop -ExpandProperty DownloadVersionList
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "0") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_9 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_9')
            $obj | Add-Member NoteProperty Task('You can turn off License Manager related traffic by setting the following registry entry')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\LicenseManager" | Select-Object -ErrorAction Stop -ExpandProperty Start
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "4") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_10 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_10')
            $obj | Add-Member NoteProperty Task('To turn off Live Tiles')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\PushNotifications" | Select-Object -ErrorAction Stop -ExpandProperty NoCloudApplicationNotification
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "1") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_11 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_11')
            $obj | Add-Member NoteProperty Task('To turn off mail synchronization for Microsoft Accounts that are configured on a device')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Mail" | Select-Object -ErrorAction Stop -ExpandProperty ManualLaunchAllowed
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "4") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_12 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_12')
            $obj | Add-Member NoteProperty Task('To disable the Microsoft Account Sign-In Assistant')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services" | Select-Object -ErrorAction Stop -ExpandProperty wlidsvc Start
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "4") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_13.1 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_13.1')
            $obj | Add-Member NoteProperty Task('Allow Address Bar drop-down list suggestions')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\MicrosoftEdge\ServiceUI" | Select-Object -ErrorAction Stop -ExpandProperty ShowOneBox
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "0") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_13.2 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_13.2')
            $obj | Add-Member NoteProperty Task('Allow configuration updates for the Books Library')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\MicrosoftEdge\BooksLibrary" | Select-Object -ErrorAction Stop -ExpandProperty AllowConfigurationUpdateForBooksLibrary
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "0") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_13.3 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_13.3')
            $obj | Add-Member NoteProperty Task('Configure Autofill')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\MicrosoftEdge\Main" | Select-Object -ErrorAction Stop -ExpandProperty Use FormSuggest
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "No") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_13.4 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_13.4')
            $obj | Add-Member NoteProperty Task('Configure Do Not Track')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\MicrosoftEdge\Main" | Select-Object -ErrorAction Stop -ExpandProperty DoNotTrack
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "1") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_13.5 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_13.5')
            $obj | Add-Member NoteProperty Task('Configure Password Manager')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\MicrosoftEdge\Main" | Select-Object -ErrorAction Stop -ExpandProperty FormSuggest Passwords
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "No") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_13.6 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_13.6')
            $obj | Add-Member NoteProperty Task('Configure search suggestions in Address Bar')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\MicrosoftEdge\SearchScopes" | Select-Object -ErrorAction Stop -ExpandProperty ShowSearchSuggestionsGlobal
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "0") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_13.7 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_13.7')
            $obj | Add-Member NoteProperty Task('Configure Windows Defender SmartScreen Filter (Windows 10, version 1703)')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\MicrosoftEdge\PhishingFilter" | Select-Object -ErrorAction Stop -ExpandProperty EnabledV9
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "0") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_13.8 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_13.8')
            $obj | Add-Member NoteProperty Task('Allow web content on New Tab page')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\MicrosoftEdge\ServiceUI" | Select-Object -ErrorAction Stop -ExpandProperty AllowWebContentOnNewTabPage
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "0") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_13.9 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_13.9')
            $obj | Add-Member NoteProperty Task('Configure corporate Home pages')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\MicrosoftEdge\Internet Settings" | Select-Object -ErrorAction Stop -ExpandProperty ProvisionedHomePages
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "about:blank") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_13.10 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_13.10')
            $obj | Add-Member NoteProperty Task('Prevent the First Run webpage from opening on Microsoft Edge')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\MicrosoftEdge\Main" | Select-Object -ErrorAction Stop -ExpandProperty PreventFirstRunPage
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "1") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_13.11 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_13.11')
            $obj | Add-Member NoteProperty Task('Choose whether employees can configure Compatibility View.')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\MicrosoftEdge\BrowserEmulation" | Select-Object -ErrorAction Stop -ExpandProperty MSCompatibilityMode
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "0") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_14 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_14')
            $obj | Add-Member NoteProperty Task('You can turn off NCSI by doing one of the following')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\NetworkConnectivityStatusIndicator" | Select-Object -ErrorAction Stop -ExpandProperty NoActiveProbe
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "1") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_15.1 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_15.1')
            $obj | Add-Member NoteProperty Task('You can turn off the ability to download and update offline maps.')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Maps" | Select-Object -ErrorAction Stop -ExpandProperty AutoDownloadAndUpdateMapData
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "0") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_15.2 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_15.2')
            $obj | Add-Member NoteProperty Task('You can turn off the ability to download and update offline maps.')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Maps" | Select-Object -ErrorAction Stop -ExpandProperty AllowUntriggeredNetworkTrafficOnSettingsPage
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "0") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_16.1 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_16.1')
            $obj | Add-Member NoteProperty Task('To turn off OneDrive in your organization')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\OneDrive" | Select-Object -ErrorAction Stop -ExpandProperty DisableFileSyncNGSC
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "1") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_16.2 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_16.2')
            $obj | Add-Member NoteProperty Task('To turn off OneDrive in your organization')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\OneDrive" | Select-Object -ErrorAction Stop -ExpandProperty PreventNetworkTrafficPreUserSignIn
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "1") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_18.1.1 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_18.1.1')
            $obj | Add-Member NoteProperty Task('To turn off Let apps use advertising ID to make ads more interesting to you based on your app usage (turning this off will reset your ID)')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo" | Select-Object -ErrorAction Stop -ExpandProperty Enabled
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "0") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_18.1.2 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_18.1.2')
            $obj | Add-Member NoteProperty Task('To turn off Let apps use advertising ID to make ads more interesting to you based on your app usage (turning this off will reset your ID)')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo" | Select-Object -ErrorAction Stop -ExpandProperty DisabledByGroupPolicy
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "1") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_18.1.3 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_18.1.3')
            $obj | Add-Member NoteProperty Task('To turn off Let websites provide locally relevant content by accessing my language list')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKCU:\Control Panel\International\User Profile" | Select-Object -ErrorAction Stop -ExpandProperty HttpAcceptLanguageOptOut
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "1") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_18.1.4 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_18.1.4')
            $obj | Add-Member NoteProperty Task('To turn off Let Windows track app launches to improve Start and search results')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" | Select-Object -ErrorAction Stop -ExpandProperty Start_TrackProgs
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "0") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_18.2.1 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_18.2.1')
            $obj | Add-Member NoteProperty Task('To turn off Location for this device')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\AppPrivacy" | Select-Object -ErrorAction Stop -ExpandProperty LetAppsAccessLocation
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "2") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_18.2.2 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_18.2.2')
            $obj | Add-Member NoteProperty Task('To turn off Location')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\LocationAndSensors" | Select-Object -ErrorAction Stop -ExpandProperty DisableLocation
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "1") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_18.3.1 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_18.3.1')
            $obj | Add-Member NoteProperty Task('To turn off Let apps use my camera')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\AppPrivacy" | Select-Object -ErrorAction Stop -ExpandProperty LetAppsAccessCamera
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "2") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_18.4.1 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_18.4.1')
            $obj | Add-Member NoteProperty Task('To turn off Let apps use my microphone')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\AppPrivacy" | Select-Object -ErrorAction Stop -ExpandProperty LetAppsAccessMicrophone
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "2") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_18.5.1 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_18.5.1')
            $obj | Add-Member NoteProperty Task('To turn off notifications network usage')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\PushNotifications" | Select-Object -ErrorAction Stop -ExpandProperty NoCloudApplicationNotification
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "1") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_18.5.2 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_18.5.2')
            $obj | Add-Member NoteProperty Task('To turn off Let apps access my notifications')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\AppPrivacy" | Select-Object -ErrorAction Stop -ExpandProperty LetAppsAccessNotifications
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "2") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_18.6.1 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_18.6.1')
            $obj | Add-Member NoteProperty Task('To turn off dictation of your voice, speaking to Cortana and other apps, and to prevent sending your voice input to Microsoft Speech services')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKCU:\Software\Microsoft\Speech_OneCore\Settings\OnlineSpeechPrivacy" | Select-Object -ErrorAction Stop -ExpandProperty HasAccepted
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "0") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_18.6.2 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_18.6.2')
            $obj | Add-Member NoteProperty Task('turn off updates to the speech recognition and speech synthesis models')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Speech" | Select-Object -ErrorAction Stop -ExpandProperty AllowSpeechModelUpdate
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "0") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_18.7.1 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_18.7.1')
            $obj | Add-Member NoteProperty Task('To turn off Let apps access my name, picture, and other account info')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\AppPrivacy" | Select-Object -ErrorAction Stop -ExpandProperty LetAppsAccessAccountInfo
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "2") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_18.8 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_18.8')
            $obj | Add-Member NoteProperty Task('To turn off Choose apps that can access contacts')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\AppPrivacy" | Select-Object -ErrorAction Stop -ExpandProperty LetAppsAccessContacts
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "2") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_18.9.1 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_18.9.1')
            $obj | Add-Member NoteProperty Task('To turn off Let apps access my calendar')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\AppPrivacy" | Select-Object -ErrorAction Stop -ExpandProperty LetAppsAccessCalendar
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "2") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_18.10 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_18.10')
            $obj | Add-Member NoteProperty Task('To turn off Let apps access my call history')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\AppPrivacy" | Select-Object -ErrorAction Stop -ExpandProperty LetAppsAccessCallHistory
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "2") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_18.11 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_18.11')
            $obj | Add-Member NoteProperty Task('To turn off Let apps access and send email')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\AppPrivacy" | Select-Object -ErrorAction Stop -ExpandProperty LetAppsAccessEmail
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "2") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_18.12.1 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_18.12.1')
            $obj | Add-Member NoteProperty Task('To turn off Let apps read or send messages (text or MMS)')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\AppPrivacy" | Select-Object -ErrorAction Stop -ExpandProperty LetAppsAccessMessaging
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "2") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_18.12.3 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_18.12.3')
            $obj | Add-Member NoteProperty Task('To turn off Message Sync')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\Messaging" | Select-Object -ErrorAction Stop -ExpandProperty AllowMessageSync
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "0") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_18.13.1 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_18.13.1')
            $obj | Add-Member NoteProperty Task('To turn off Let apps make phone calls')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\AppPrivacy" | Select-Object -ErrorAction Stop -ExpandProperty LetAppsAccessPhone
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "2") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_18.14.1 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_18.14.1')
            $obj | Add-Member NoteProperty Task('To turn off Let apps control radios')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\AppPrivacy" | Select-Object -ErrorAction Stop -ExpandProperty LetAppsAccessRadios
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "2") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_18.15.1 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_18.15.1')
            $obj | Add-Member NoteProperty Task('To turn off Let apps automatically share and sync info with wireless devices that do not explicitly pair with your PC, tablet, or phone')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\AppPrivacy" | Select-Object -ErrorAction Stop -ExpandProperty LetAppsSyncWithDevices
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "2") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_18.15.2 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_18.15.2')
            $obj | Add-Member NoteProperty Task('To turn off Let your apps use your trusted devices (hardware youve already connected, or comes with your PC, tablet, or phone)')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\AppPrivacy" | Select-Object -ErrorAction Stop -ExpandProperty LetAppsAccessTrustedDevices
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "2") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_18.16.1 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_18.16.1')
            $obj | Add-Member NoteProperty Task('To change how frequently Windows should ask for my feedback')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\DataCollection" | Select-Object -ErrorAction Stop -ExpandProperty DoNotShowFeedbackNotifications
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "1") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_18.16.2 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_18.16.2')
            $obj | Add-Member NoteProperty Task('To change the level of diagnostic and usage data sent when you Send your device data to Microsoft')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\DataCollection" | Select-Object -ErrorAction Stop -ExpandProperty AllowTelemetry
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "0") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_18.16.3 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_18.16.3')
            $obj | Add-Member NoteProperty Task('To turn off tailored experiences with relevant tips and recommendations by using your diagnostics data')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\CloudContent" | Select-Object -ErrorAction Stop -ExpandProperty DisableWindowsConsumerFeatures
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "1") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_18.16.4 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_18.16.4')
            $obj | Add-Member NoteProperty Task('To turn off tailored experiences with relevant tips and recommendations by using your diagnostics data')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKCU:\SOFTWARE\Policies\Microsoft\Windows\CloudContent" | Select-Object -ErrorAction Stop -ExpandProperty DisableTailoredExperiencesWithDiagnosticData
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "1") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_18.17 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_18.17')
            $obj | Add-Member NoteProperty Task('To turn off Let apps run in the background')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\AppPrivacy" | Select-Object -ErrorAction Stop -ExpandProperty LetAppsRunInBackground
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "2") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_18.18 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_18.18')
            $obj | Add-Member NoteProperty Task('To turn off Let Windows and your apps use your motion data and collect motion history')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\AppPrivacy" | Select-Object -ErrorAction Stop -ExpandProperty LetAppsAccessMotion
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "2") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_18.19 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_18.19')
            $obj | Add-Member NoteProperty Task('In the Tasks area, you can choose which apps have access to your tasks')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\AppPrivacy" | Select-Object -ErrorAction Stop -ExpandProperty LetAppsAccessTasks
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "2") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_18.20 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_18.20')
            $obj | Add-Member NoteProperty Task('In the App diagnostics area, you can choose which apps have access to your diagnostic information')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\AppPrivacy" | Select-Object -ErrorAction Stop -ExpandProperty LetAppsGetDiagnosticInfo
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "2") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_18.21 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_18.21')
            $obj | Add-Member NoteProperty Task('To turn off Inking & Typing data collection')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\InputPersonalization" | Select-Object -ErrorAction Stop -ExpandProperty RestrictImplicitTextCollection
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "1") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_18.22.1 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_18.22.1')
            $obj | Add-Member NoteProperty Task('In the Activity History area, you can choose turn Off tracking of your Activity History')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\System" | Select-Object -ErrorAction Stop -ExpandProperty EnableActivityFeed
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "0") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_18.22.2 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_18.22.2')
            $obj | Add-Member NoteProperty Task('In the Activity History area, you can choose turn Off tracking of your Activity History')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\System" | Select-Object -ErrorAction Stop -ExpandProperty PublishUserActivities
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "0") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_18.22.3 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_18.22.3')
            $obj | Add-Member NoteProperty Task('In the Activity History area, you can choose turn Off tracking of your Activity History')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\System" | Select-Object -ErrorAction Stop -ExpandProperty UploadUserActivities
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "0") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_18.23.1 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_18.23.1')
            $obj | Add-Member NoteProperty Task('In the Voice activation area, you can choose turn Off apps ability to listen for a Voice keyword.')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\AppPrivacy" | Select-Object -ErrorAction Stop -ExpandProperty LetAppsActivateWithVoice
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "0") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_18.23.2 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_18.23.2')
            $obj | Add-Member NoteProperty Task('In the Voice activation area, you can choose turn Off apps ability to listen for a Voice keyword.')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\AppPrivacy" | Select-Object -ErrorAction Stop -ExpandProperty PublishUserActivities
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "0") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_19 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_19')
            $obj | Add-Member NoteProperty Task('Enterprise customers can manage their Windows activation status with volume licensing using an on-premises Key Management Server. You can opt out of sending KMS client activation data to Microsoft automatically by doing one of the following')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows NT\CurrentVersion\Software Protection Platform" | Select-Object -ErrorAction Stop -ExpandProperty NoGenTicket
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "1") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_20 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_20')
            $obj | Add-Member NoteProperty Task('Enterprise customers can manage updates to the Disk Failure Prediction Model.')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\StorageHealth" | Select-Object -ErrorAction Stop -ExpandProperty AllowDiskHealthModelUpdates
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "0") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_21.1 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_21.1')
            $obj | Add-Member NoteProperty Task('You can control if your settings are synchronized')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\SettingSync" | Select-Object -ErrorAction Stop -ExpandProperty DisableSettingSync
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "2") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_21.2 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_21.2')
            $obj | Add-Member NoteProperty Task('You can control if your settings are synchronized')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\SettingSync" | Select-Object -ErrorAction Stop -ExpandProperty DisableSettingSyncUserOverride
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "1") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_21.3 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_21.3')
            $obj | Add-Member NoteProperty Task('To turn off Messaging cloud sync')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKCU:\SOFTWARE\Microsoft\Messaging" | Select-Object -ErrorAction Stop -ExpandProperty CloudServiceSyncEnabled
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "0") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_22 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_22')
            $obj | Add-Member NoteProperty Task('You can disable Teredo by using Group Policy or by using the netsh.exe command')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\TCPIP\v6Transition" | Select-Object -ErrorAction Stop -ExpandProperty Teredo_State
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "Disabled") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_23 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_23')
            $obj | Add-Member NoteProperty Task('To turn off Connect to suggested open hotspots and Connect to networks shared by my contacts')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\WcmSvc\wifinetworkmanager\config" | Select-Object -ErrorAction Stop -ExpandProperty AutoConnectAllowedOEM
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "0") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_24.0.1 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_24.0.1')
            $obj | Add-Member NoteProperty Task('You can disconnect from the Microsoft Antimalware Protection Service')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows Defender\Spynet" | Select-Object -ErrorAction Stop -ExpandProperty SpyNetReporting
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "0") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_24.0.2 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_24.0.2')
            $obj | Add-Member NoteProperty Task('You can disconnect from the Microsoft Antimalware Protection Service')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender\Updates" | Select-Object -ErrorAction Stop -ExpandProperty
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($null -eq $regValue) {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_24.0.3 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_24.0.3')
            $obj | Add-Member NoteProperty Task('You can stop sending file samples back to Microsoft')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows Defender\Spynet" | Select-Object -ErrorAction Stop -ExpandProperty SubmitSamplesConsent
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "2") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_24.0.4 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_24.0.4')
            $obj | Add-Member NoteProperty Task('You can stop downloading Definition Updates')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender\Signature Updates" | Select-Object -ErrorAction Stop -ExpandProperty FallbackOrder
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "FileShares") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_24.0.5 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_24.0.5')
            $obj | Add-Member NoteProperty Task('You can stop downloading Definition Updates')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender\Signature Updates" | Select-Object -ErrorAction Stop -ExpandProperty DefinitionUpdateFileSharesSources
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($null -eq $regValue) {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_24.0.6 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_24.0.6')
            $obj | Add-Member NoteProperty Task('You can turn off Malicious Software Reporting Tool diagnostic data')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\MRT" | Select-Object -ErrorAction Stop -ExpandProperty DontReportInfectionInformation
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "1") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_24.0.7 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_24.0.7')
            $obj | Add-Member NoteProperty Task('You can turn off Enhanced Notifications as follows')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender\Reporting" | Select-Object -ErrorAction Stop -ExpandProperty DisableEnhancedNotifications
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "1") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_24.1.1 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_24.1.1')
            $obj | Add-Member NoteProperty Task('To disable Windows Defender Smartscreen')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\System" | Select-Object -ErrorAction Stop -ExpandProperty EnableSmartScreen
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "0") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_24.1.2 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_24.1.2')
            $obj | Add-Member NoteProperty Task('To disable Windows Defender Smartscreen')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender\SmartScreen" | Select-Object -ErrorAction Stop -ExpandProperty ConfigureAppInstallControlEnabled
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "1") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_24.1.3 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_24.1.3')
            $obj | Add-Member NoteProperty Task('To disable Windows Defender Smartscreen')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender\SmartScreen" | Select-Object -ErrorAction Stop -ExpandProperty ConfigureAppInstallControl
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "Anywhere") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_25.1 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_25.1')
            $obj | Add-Member NoteProperty Task('Windows Spotlight provides features such as different background images and text on the lock screen, suggested apps, Microsoft account notifications, and Windows tips')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKCU:\SOFTWARE\Policies\Microsoft\Windows\CloudContent" | Select-Object -ErrorAction Stop -ExpandProperty DisableWindowsSpotlightFeatures
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "1") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_25.2 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_25.2')
            $obj | Add-Member NoteProperty Task('')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Personalization" | Select-Object -ErrorAction Stop -ExpandProperty NoLockScreen
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "1") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_25.3 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_25.3')
            $obj | Add-Member NoteProperty Task('')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Personalization" | Select-Object -ErrorAction Stop -ExpandProperty LockScreenImage
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "C:\windows\web\screen\lockscreen.jpg") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_25.4 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_25.4')
            $obj | Add-Member NoteProperty Task('')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Personalization" | Select-Object -ErrorAction Stop -ExpandProperty LockScreenOverlaysDisabled
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "1") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_25.5 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_25.5')
            $obj | Add-Member NoteProperty Task('')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\CloudContent" | Select-Object -ErrorAction Stop -ExpandProperty DisableSoftLanding
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "1") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_25.6 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_25.6')
            $obj | Add-Member NoteProperty Task('')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\CloudContent" | Select-Object -ErrorAction Stop -ExpandProperty DisableWindowsConsumerFeatures
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "1") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_26.1 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_26.1')
            $obj | Add-Member NoteProperty Task('You can turn off the ability to launch apps from the Microsoft Store that were preinstalled or downloaded')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsStore" | Select-Object -ErrorAction Stop -ExpandProperty DisableStoreApps
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "1") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_26.2 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_26.2')
            $obj | Add-Member NoteProperty Task('You can turn off the ability to launch apps from the Microsoft Store that were preinstalled or downloaded')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsStore" | Select-Object -ErrorAction Stop -ExpandProperty AutoDownload
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "2") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_27 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_27')
            $obj | Add-Member NoteProperty Task('You can turn off apps for websites, preventing customers who visit websites that are registered with their associated app from directly launching the app')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\System" | Select-Object -ErrorAction Stop -ExpandProperty EnableAppUriHandlers
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "0") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_28.3 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_28.3')
            $obj | Add-Member NoteProperty Task('')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization" | Select-Object -ErrorAction Stop -ExpandProperty DODownloadMode
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "100") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_29.1 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_29.1')
            $obj | Add-Member NoteProperty Task('You can turn off Windows Update')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\WindowsUpdate" | Select-Object -ErrorAction Stop -ExpandProperty DoNotConnectToWindowsUpdateInternetLocations
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "1") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_29.2 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_29.2')
            $obj | Add-Member NoteProperty Task('You can turn off Windows Update')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\WindowsUpdate" | Select-Object -ErrorAction Stop -ExpandProperty DisableWindowsUpdateAccess
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "1") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_29.3 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_29.3')
            $obj | Add-Member NoteProperty Task('You can turn off Windows Update')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\WindowsUpdate" | Select-Object -ErrorAction Stop -ExpandProperty WUServer
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_29.4 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_29.4')
            $obj | Add-Member NoteProperty Task('You can turn off Windows Update')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\WindowsUpdate" | Select-Object -ErrorAction Stop -ExpandProperty WUStatusServer
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_29.5 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_29.5')
            $obj | Add-Member NoteProperty Task('You can turn off Windows Update')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\WindowsUpdate" | Select-Object -ErrorAction Stop -ExpandProperty UpdateServiceUrlAlternate
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_MS_29.6 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_MS_29.6')
            $obj | Add-Member NoteProperty Task('You can turn off Windows Update')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\WindowsUpdate\AU" | Select-Object -ErrorAction Stop -ExpandProperty UseWUServer
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "1") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

    function Get-MSAuditResult {Test-Windows10_DataProtection_MS_1
            Test-Windows10_DataProtection_MS_2.1.1
            Test-Windows10_DataProtection_MS_2.1.2
            Test-Windows10_DataProtection_MS_2.1.3
            Test-Windows10_DataProtection_MS_2.1.4
            Test-Windows10_DataProtection_MS_2.1.5
            Test-Windows10_DataProtection_MS_3.1
            Test-Windows10_DataProtection_MS_3.2
            Test-Windows10_DataProtection_MS_4
            Test-Windows10_DataProtection_MS_5
            Test-Windows10_DataProtection_MS_6
            Test-Windows10_DataProtection_MS_7
            Test-Windows10_DataProtection_MS_8.0.1
            Test-Windows10_DataProtection_MS_8.0.2
            Test-Windows10_DataProtection_MS_8.0.3
            Test-Windows10_DataProtection_MS_8.0.4
            Test-Windows10_DataProtection_MS_8.0.5
            Test-Windows10_DataProtection_MS_8.0.6
            Test-Windows10_DataProtection_MS_8.0.7
            Test-Windows10_DataProtection_MS_8.0.8
            Test-Windows10_DataProtection_MS_8.0.9
            Test-Windows10_DataProtection_MS_8.0.10
            Test-Windows10_DataProtection_MS_8.0.11
            Test-Windows10_DataProtection_MS_8.0.12
            Test-Windows10_DataProtection_MS_8.0.13
            Test-Windows10_DataProtection_MS_8.1
            Test-Windows10_DataProtection_MS_9
            Test-Windows10_DataProtection_MS_10
            Test-Windows10_DataProtection_MS_11
            Test-Windows10_DataProtection_MS_12
            Test-Windows10_DataProtection_MS_13.1
            Test-Windows10_DataProtection_MS_13.2
            Test-Windows10_DataProtection_MS_13.3
            Test-Windows10_DataProtection_MS_13.4
            Test-Windows10_DataProtection_MS_13.5
            Test-Windows10_DataProtection_MS_13.6
            Test-Windows10_DataProtection_MS_13.7
            Test-Windows10_DataProtection_MS_13.8
            Test-Windows10_DataProtection_MS_13.9
            Test-Windows10_DataProtection_MS_13.10
            Test-Windows10_DataProtection_MS_13.11
            Test-Windows10_DataProtection_MS_14
            Test-Windows10_DataProtection_MS_15.1
            Test-Windows10_DataProtection_MS_15.2
            Test-Windows10_DataProtection_MS_16.1
            Test-Windows10_DataProtection_MS_16.2
            Test-Windows10_DataProtection_MS_18.1.1
            Test-Windows10_DataProtection_MS_18.1.2
            Test-Windows10_DataProtection_MS_18.1.3
            Test-Windows10_DataProtection_MS_18.1.4
            Test-Windows10_DataProtection_MS_18.2.1
            Test-Windows10_DataProtection_MS_18.2.2
            Test-Windows10_DataProtection_MS_18.3.1
            Test-Windows10_DataProtection_MS_18.4.1
            Test-Windows10_DataProtection_MS_18.5.1
            Test-Windows10_DataProtection_MS_18.5.2
            Test-Windows10_DataProtection_MS_18.6.1
            Test-Windows10_DataProtection_MS_18.6.2
            Test-Windows10_DataProtection_MS_18.7.1
            Test-Windows10_DataProtection_MS_18.8
            Test-Windows10_DataProtection_MS_18.9.1
            Test-Windows10_DataProtection_MS_18.10
            Test-Windows10_DataProtection_MS_18.11
            Test-Windows10_DataProtection_MS_18.12.1
            Test-Windows10_DataProtection_MS_18.12.3
            Test-Windows10_DataProtection_MS_18.13.1
            Test-Windows10_DataProtection_MS_18.14.1
            Test-Windows10_DataProtection_MS_18.15.1
            Test-Windows10_DataProtection_MS_18.15.2
            Test-Windows10_DataProtection_MS_18.16.1
            Test-Windows10_DataProtection_MS_18.16.2
            Test-Windows10_DataProtection_MS_18.16.3
            Test-Windows10_DataProtection_MS_18.16.4
            Test-Windows10_DataProtection_MS_18.17
            Test-Windows10_DataProtection_MS_18.18
            Test-Windows10_DataProtection_MS_18.19
            Test-Windows10_DataProtection_MS_18.20
            Test-Windows10_DataProtection_MS_18.21
            Test-Windows10_DataProtection_MS_18.22.1
            Test-Windows10_DataProtection_MS_18.22.2
            Test-Windows10_DataProtection_MS_18.22.3
            Test-Windows10_DataProtection_MS_18.23.1
            Test-Windows10_DataProtection_MS_18.23.2
            Test-Windows10_DataProtection_MS_19
            Test-Windows10_DataProtection_MS_20
            Test-Windows10_DataProtection_MS_21.1
            Test-Windows10_DataProtection_MS_21.2
            Test-Windows10_DataProtection_MS_21.3
            Test-Windows10_DataProtection_MS_22
            Test-Windows10_DataProtection_MS_23
            Test-Windows10_DataProtection_MS_24.0.1
            Test-Windows10_DataProtection_MS_24.0.2
            Test-Windows10_DataProtection_MS_24.0.3
            Test-Windows10_DataProtection_MS_24.0.4
            Test-Windows10_DataProtection_MS_24.0.5
            Test-Windows10_DataProtection_MS_24.0.6
            Test-Windows10_DataProtection_MS_24.0.7
            Test-Windows10_DataProtection_MS_24.1.1
            Test-Windows10_DataProtection_MS_24.1.2
            Test-Windows10_DataProtection_MS_24.1.3
            Test-Windows10_DataProtection_MS_25.1
            Test-Windows10_DataProtection_MS_25.2
            Test-Windows10_DataProtection_MS_25.3
            Test-Windows10_DataProtection_MS_25.4
            Test-Windows10_DataProtection_MS_25.5
            Test-Windows10_DataProtection_MS_25.6
            Test-Windows10_DataProtection_MS_26.1
            Test-Windows10_DataProtection_MS_26.2
            Test-Windows10_DataProtection_MS_27
            Test-Windows10_DataProtection_MS_28.3
            Test-Windows10_DataProtection_MS_29.1
            Test-Windows10_DataProtection_MS_29.2
            Test-Windows10_DataProtection_MS_29.3
            Test-Windows10_DataProtection_MS_29.4
            Test-Windows10_DataProtection_MS_29.5
            Test-Windows10_DataProtection_MS_29.6
            }
        function Test-Windows10_DataProtection_BSI_3.1.1 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_BSI_3.1.1')
            $obj | Add-Member NoteProperty Task('Configuration of the lowest telemetry-level')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection" | Select-Object -ErrorAction Stop -ExpandProperty AllowTelemetry
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "0") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_BSI_3.1.2.1 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_BSI_3.1.2.1')
            $obj | Add-Member NoteProperty Task('Deactivation of the telemetry-service and etw-sessions')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\DiagTrack" | Select-Object -ErrorAction Stop -ExpandProperty Start
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "4") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_BSI_3.1.2.2 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_BSI_3.1.2.2')
            $obj | Add-Member NoteProperty Task('Deactivation of the telemetry-service and etw-sessions')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\WMI\Autologger\AutoLogger-Diagtrack-Listener" | Select-Object -ErrorAction Stop -ExpandProperty Start
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "0") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

        function Test-Windows10_DataProtection_BSI_3.1.3.1 {
            $obj = New-Object PSObject
            $obj | Add-Member NoteProperty Name('Test-Windows10_DataProtection_BSI_3.1.3.1')
            $obj | Add-Member NoteProperty Task('Deactivation of telemetry according to Microsoft recommendation')

            try {
                $regValue = Get-ItemProperty -ErrorAction Stop -Path Registry::"HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\wuauserv" | Select-Object -ErrorAction Stop -ExpandProperty Start
            }
            catch {
                Write-Error "Registry Key not found"
            }
            if ($regValue -eq "4") {

                $obj | Add-Member NoteProperty Status("Compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::True)
            }
            else {
                $obj | Add-Member NoteProperty Status("Not compliant")
                $obj | Add-Member NoteProperty Passed([AuditStatus]::False)

            }
            Write-Output $obj
        }

    function Get-BSIAuditResult {Test-Windows10_DataProtection_BSI_3.1.1
            Test-Windows10_DataProtection_BSI_3.1.2.1
            Test-Windows10_DataProtection_BSI_3.1.2.2
            Test-Windows10_DataProtection_BSI_3.1.3.1
            }
function Convert-ToAuditInfo {
    param (
        [Parameter(Mandatory = $true, ValueFromPipeline = $true)]
        [Psobject] $auditObject
    )

    process {
        Write-Output (New-Object -TypeName AuditInfo -Property @{
            Id      = $auditObject.Name
            Task    = $auditObject.Task
            Message = $auditObject.Status
            Audit   = $auditObject.Passed
        })
    }
}

function Get-Windows10_DataProtectionHtmlReport {
    <#
    .Synopsis
        Generates an audit report in an html file.
    .Description
        The Get-Windows10_DataProtectionHtmlReport cmdlet collects by default data from the current machine to generate an audit report.
    .Parameter Path
        Specifies the relative path to the file in which the report will be stored.
    .Example
        C:\PS> Get-Windows10_DataProtectionHtmlReport -Path "MyReport.html"
    #>

    [CmdletBinding()]
    param (
    [string] $Path = "$($env:HOMEPATH)\Documents\$(Get-Date -UFormat %Y%m%d_%H%M)_auditreport.html",

    [switch] $DarkMode,

    [switch] $PerformanceOptimized
)

    [hashtable[]]$sections = @(

            @{
                Title = "MS"
                AuditInfos = Get-MSAuditResult | Convert-ToAuditInfo | Sort-Object -Property Id
            }

            @{
                Title = "BSI"
                AuditInfos = Get-BSIAuditResult | Convert-ToAuditInfo | Sort-Object -Property Id
            }
        )

Get-ATAPHtmlReport -Path $Path -Title "Windows10_DataProtection Audit Report" -ModuleName "Windows10_DataProtectionAudit" -BasedOn "BSI" -Sections $sections -DarkMode: $DarkMode
}
