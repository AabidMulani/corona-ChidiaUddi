local background
local backButton
local msgText
local storyboard= require ( "storyboard" )
local scene= storyboard.newScene()

function scene:createScene(event)
	local group=self.view
        background = display.newImage( "menu_images/menu_screen_bg.png")
	background.x=_W/2;
	background.y=_H/2
	
	msgText=display.newText( "Rate Us Screen is Under construction", 0, 0, "Helvetica", 22 )
	msgText.x=_W/2;
	msgText.y=_H/2
	msgText:setTextColor(233, 255, 230)
	group:insert(background);
	group:insert(msgText);
	
end

function scene:willEnterScene( event )
	local group=self.view
	

end

function scene:enterScene( event )
	local group=self.view

end

function scene:exitScene( event )
	local group=self.view
	
	Runtime:removeEventListener ( "key", onKeyEvent )

end

function scene:didExitScene( event )
	local group=self.view

	storyboard.removeScene("RateUsScreen");

end

function scene:destroyScene( event )
	local group=self.view
	

end

function scene:overlayBegan( event )
	local group=self.view
	

end

function scene:overlayEnded( event )
	local group=self.view
	

end

-- Key listener
local function onKeyEvent( event )

	if(event.phase == "down" and event.keyName == "back") then
		options = {effect = "fade",time=300 }
				
				 storyboard.gotoScene("MenuScreen",options)
        return true
    end
    return false
end

-- Add the key callback	
	Runtime:addEventListener( "key", onKeyEvent );

scene:addEventListener ( "createScene", scene )

scene:addEventListener ( "willEnterScene", scene )
scene:addEventListener ( "enterScene", scene )
scene:addEventListener ( "exitScene", scene )
scene:addEventListener ( "didExitScene", scene )
scene:addEventListener ( "destroyScene", scene )
scene:addEventListener ( "overlayBegan", scene )
scene:addEventListener ( "overlayEnded", scene )

return scene
