#This \ (backslash) character encodes difficult-to-type characters into a string. There are various "escape sequences" available for different characters you might want to use

tabby_cat = "\tI'm tabbed in."
persian_cat = "I'm split\non a line"
blacklash_cat = "I'am \\ a \\ cat."

fat_cat = """
I'll do a list:
\t* Cat food
\t* Fishies
\t*Carnip\n\t* Grass
"""


puts tabby_cat
puts persian_cat
puts blacklash_cat
puts fat_cat

#Escape	What it does. 
# \\	Backslash ()
# \'	Single-quote (')
# \"	Double-quote (")
# \a	ASCII bell (BEL)
# \b	ASCII backspace (BS)
# \f	ASCII formfeed (FF)
# \n	ASCII linefeed (LF)
# \r	ASCII Carriage Return (CR)
# \t	ASCII Horizontal Tab (TAB)
# \uxxxx	Character with 16-bit hex value xxxx (Unicode only)
# \v	ASCII vertical tab (VT)
# \ooo	Character with octal value ooo
# \xhh	Character with hex value hh