-----------------------------------------------------------------------------------------
-- May 9/2019
-- main.lua
-- Created By: Marlon Poddalgoda
-----------------------------------------------------------------------------------------

--background
display.setDefault( "background", 47/255, 97/255, 214/255 )

--text
local myText = display.newText( "Pi Calculator", 160, -10, native.systemFont, 50 )
myText:setFillColor( 0/255, 0/255, 0/255 )

local myText = display.newText( "By: Marlon", 100, 35, native.systemFont, 30 )
myText:setFillColor( 255/255, 29/255, 98/255 )

local myText = display.newText( "Input number:", 122, 285, native.systemFont, 32 )
myText:setFillColor( 25/255, 255/255, 98/255 )

local myText = display.newText( "Pi(π) is equal to...", 145, 410, native.systemFont, 30 )
myText:setFillColor( 255/255, 255/255, 98/255 )

--images
local image = display.newImageRect( "assets/pi.png", 120, 90 )
image.x = 160
image.y = 200

--calculate button
local calculate = display.newImageRect( "assets/calculate.png", 250, 75 )
calculate.x = 160
calculate.y = 100

--answer output
local answertext = display.newText( "<Enter a number>", 160, 470, native.systemFont, 37 )
answertext:setFillColor( 255/255, 255/255, 0/255 )

--input_textfields
local inputTextfield = native.newTextField( display.contentCenterX, 340, 280, 60 )
inputTextfield.id = "iteration input"

--function

local function calculateTouch ( event )
	local answer
	local input
	local sign

	input = inputTextfield.text
	answer = 0
	sign = -1

	for loop = 1, input, 1 do
		sign=sign*-1
		answer = answer+4/(loop*2-1)*sign
		answertext.text = (answer)
	end
end

calculate:addEventListener( "touch", calculateTouch )