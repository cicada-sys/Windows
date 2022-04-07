for /f "delims=" %%A in ('dir /s /b %WINDIR%\system32\*htable.xsl') do set "var=%%A"

wmic os get CSName,Caption,BuildNumber /format:"%var%" >> 1.html
wmic USERACCOUNT list brief /format:"%var%" >> 1.html
wmic group list full /format:"%var%" >> 1.html
wmic ntdomain list brief /format:"%var%" >> 1.html
wmic share get name,path,status /format:"%var%" >> 1.html
wmic nicconfig where IPEnabled='true' get DefaultIPGateway,DHCPEnabled,DHCPServer,IPAddress,IPSubnet,MACAddress /format:"%var%" >> 1.html
wmic qfe get Caption,Description,HotFixID,InstalledOn /format:"%var%" >> 1.html
wmic product get name,version,InstallLocation /format:"%var%" >> 1.html
wmic service get DisplayName,ErrorControl,ExitCode,Name,PathName,ProcessId /format:"%var%" >> 1.html
wmic startup get command,caption /format:"%var%" >> 1.html
wmic Timezone get DaylightName,Description,StandardName /format:"%var%" >> 1.html
wmic startup get Caption,Command,Location,User /format:"%var%" >> 1.html
wmic volume get Label,DeviceID,DriveLetter,FileSystem,Capacity,FreeSpace /format:"%var%" >> 1.html


