if application "Brave Browser" is running then

	tell application "Brave Browser"

		if exists window 1 then

			if mode of window 1 = "incognito" then

				tell application "Brave Browser" to activate

			else

				tell application "Brave Browser" to make new window with properties {mode:"incognito"}

			end if

		else

			tell application "Brave Browser" to make new window with properties {mode:"incognito"}

		end if

	end tell

else

	do shell script "open -a /Applications/Brave\\ Browser.app --args --incognito"

end if
