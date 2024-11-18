# Remote-NTP-Reset
## What's this all about?
This script was created for specific scenario as there was an necessity to face the problem with synchronization of NTP clients' clocks. In this case research network contained some IoT devices with same username but different (static) IP addresses. It was crucial to quickly synchronize their clocks in order to maintain correct data aquisition. Such process isn't that simple, due to the nature of NTP. One of solutions to that problem was to force specific (no to distant) time (taken from server) and shorten synchronization process. 
## How does it work?
This script reads current time on server, takes IP addresses from given array then (on client) stops ntp service, sets saved time and starts ntp service. As a result, time is supposed to be synchronised in ~3-5 minutes instead of 15 on its own. 
There is also a logging system which writes whole progress to *temporary* file on server. Also *flag file* is created in user's */tmp/* folder to avoid executing script twice. 
## Other use
This script can be used in different scenarios. Whole remotely executed command is defined in separate file - just change its content and remember that main script expects argument after that. You can delete that feature or use it. 
## Comments
*This script needs more research. Perhaps there are more efficient ways to imporove mentioned process. As soon as they will be found, I will implement reasonable changes in this repository*
