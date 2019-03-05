--------------------------------

--- main.lua
---
---
---
---
--- calclator for finding the area and circumfrence of a circle
---
--- by Joshua van der laan
--
-- how to calculate the area of a square
-- 
-------------------------------------------------------------------------------------

display.setDefault( "background", 50/255, 100/255, 255/255)




local diameterOfCircleTextField = native.newTextField( display.contentCenterX + 45, display.contentCenterY + 205 , 180, 40 )
diameterOfCircleTextField.id = "diameter textField"

local diameterTextField = display.newText( "diameter =", display.contentCenterX - 110, display.contentCenterY + 205, native.systemFont, 20 )
diameterTextField.id = "area textField"
diameterTextField:setFillColor( 1, 1, 1 )




local areaOfCircleTextField = display.newText( "area", display.contentCenterX, display.contentCenterY - 250, native.systemFont, 20 )
areaOfCircleTextField.id = "area textField"
areaOfCircleTextField:setFillColor( 1, 1, 1 )

local circumfrenceOfCircleTextField = display.newText( "circumfrence", display.contentCenterX, display.contentCenterY - 200, native.systemFont, 20 )
circumfrenceOfCircleTextField.id = "area textField 2"
circumfrenceOfCircleTextField:setFillColor( 1, 1, 1 )

local areaimage = display.newImageRect("areapic.png", 200 , 200 )
areaimage.x = display.contentCenterX + 67.5
areaimage.y = display.contentCenterY + 85

local circumfrencepic = display.newImageRect("circumfrencepic.png", 200 , 200 )
circumfrencepic.x = display.contentCenterX - 75
circumfrencepic.y = display.contentCenterY - 90



local calculateButton = display.newImageRect("button.jpg", 180 , 50 )
calculateButton.x = display.contentCenterX + 45
calculateButton.y = display.contentCenterY + 250
calculateButton.id = "calculate button"
 
local function calculateButtonTouch( event )
    local diameterOfCircle
    local areaOfCircle
    local circumfrenceOfcircle
    circumfrenceOfcircle = circumfrenceOfCircleTextField.text
    diameterOfCircle = diameterOfCircleTextField.text
    areaOfCircle = (diameterOfCircle/2 * diameterOfCircle/2) * 3.14159265359
    circumfrenceOfcircle = diameterOfCircle * 3.14159265359




    -- print( areaOfCircle )

    areaOfCircleTextField.text = "The area is " .. areaOfCircle
    circumfrenceOfCircleTextField.text = "The circumfrence is " .. circumfrenceOfcircle


    return true

end



calculateButton:addEventListener( "touch", calculateButtonTouch )