### Synology Telegram notifications:

1. In **`Control Panel -> Notifications -> Email, SMS, Push Service`**
 check **`SMS`** checkbox
2. Setup Telegram bot (if you have not), use BotFather chatbot. 
3. Use `@MissRose_bot`to get your chat ID typing `/id` to chat
4. in **`Control Panel -> Notifications -> SMS`** click **Add SMS service provider** and type:

	**Provider name**: Telegram 
	
	**SMS URL:** `https://api.telegram.org/botBOT_TOKEN/sendMessage?chat_id=CHAT_ID&text=Hello+world&user=User&password=Password&to=12345678`
5. Choose HTTP GET method and click Next and Next
6. Set following params:
	```
	chat_id: Other
	text: Message content
	user: Username
	password: Password
	to: Phone number
	```
7. Apply
