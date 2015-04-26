--[[
	Main Script for Aware
	by CodingRevolution
]]--


--Variables--

--Functions--

--Code--

term.setBackgroundColor(colors.black)
term.setTextColor(colors.white)
term.clear()
term.setCursorPos(1,1)

while true do
	term.write("Input a valid sentence: ")
	local input = read()
	local header = {
		input = textutils.urlEncode(input),
		options = "none",
		version= "0.1"
	}
	local httpObj, sec = http.get("http://www.naturalparsing.com/api/parse",header)
	print(textutils.urlEncode(input))
	print(sec)
	for i,v in pairs(httpObj) do
		print(i)
	end
	print(httpObj.read())
end