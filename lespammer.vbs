set shell = createobject ("wscript.shell")

strtext = inputbox ("Write down your message you like le spammer to spam")
strtimes = inputbox ("How many times do you like to spam?")
strspeed = inputbox ("How fast do you like to spam? (1000 = one per sec, 100 = 10 per sec etc)")
strtimeneed = inputbox ("How many SECONDS do you need to get to the input box?")
If not isnumeric (strtimes & strspeed & strtimeneed) then
msgbox "Invalid input, restart the program and try again"
wscript.quit
End If
strtimeneed2 = strtimeneed * 1000
do
msgbox "You have " & strtimeneed & " seconds to get to your input area where you are going to spam."
wscript.sleep strtimeneed2
for i=0 to strtimes
shell.sendkeys (strtext & "{enter}")
wscript.sleep strspeed
Next
wscript.sleep strspeed * strtimes / 10
returnvalue=MsgBox ("Want to spam again with the same info?",36)
If returnvalue=6 Then
Msgbox "le spammer will restart :3"
End If
If returnvalue=7 Then
msgbox "le spammer is shutting down uwu"
wscript.quit
End IF
loop