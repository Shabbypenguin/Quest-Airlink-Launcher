Make sure your Oculus Desktop is on V28. From there go and grab https://drive.google.com/file/d/1ubBKWOO1R7mu_YinoGkWkCKRxK94hdMo/view?usp=sharing and place it in "Program Files\Oculus\Support\oculus-client\resources". restart the oculus desktop software and go to settings, beta, and enable air link.

You'll need developer mode enabled on your quest device. Plug your Oculus Quest into a usb port on the computer and then right click on airliink.ps1 and choose run in powershell. it will disconnect ADB, get tthe computers IP, the quests IP, and connect to it via wireless ADB. it will pause and tell you to remove the quest from the computer. Hit enter and it will run the command to start Air Link. Enjoy your games :)


Credits:
/u/99spider - for posting a premodded app.asar and for finding how to enable Air Link.
/u/gumpy5 - for the powershell command to scrape port from oculus service.
