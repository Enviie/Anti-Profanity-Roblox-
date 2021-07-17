# How to Use

# Toggle
- See Filter you can put it false to stop or put true to make it work again
```lua
getgenv().Settings = {
	Filter = true,
}
```

# Censor Words
- Put your Censor Words to whatever you want to replace the offensive words
```lua
getgenv().Settings = {
	CensorWord = "bleep",
}
```

# Offensive Words Blacklisting
- Offensive Words blacklist soo the word will be replaced to the Censor Words ex: when you say booga it goes "bleep"
```lua
getgenv().Settings = {
	OffensiveWords = {"ooga", "booga", ""} -- see Quotation mark that is empty put your offensive word
}
```

# Setup
```lua
getgenv().Settings = {
	Filter = true,
	CensorWord = "bleep",
	OffensiveWords = {"ooga", "booga", ""}
}
loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Enviie/Anti-Profanity-Roblox-/main/Anti%20Profanity.lua"))("Yes Watch Your Potty Mouth")
```
