
local storyboard= require ( "storyboard" )
local scene= storyboard.newScene()
local widget=require ( "widget" )




function scene:createScene(event)
	local group=self.view
end

function scene:willEnterScene( event )
	local group=self.view
	

end

function scene:enterScene( event )
	local group=self.view
	local function doClick(event)
		local obj=event.target
		GAME_OVER_OVERLAY=obj.value
		storyboard.hideOverlay("fromTop")
	end
        
        local bgImg=display.newImage("menu_images/overlay_bg.png", _W/2, _H/2)
                bgImg.x=_W/2
         bgImg.y=_H/2
        group:insert(bgImg)
        
	if(tonumber(AVAILABLE_COINS)<200)then
		local coinsWidget=display.newText( group ,"Oops U R out off coins :(", _W/2, _H/2, system.native, 11)
		coinsWidget.x=_W/2
		coinsWidget.y=_H/2-20
		else
		local useLife=widget.newButton{ label= "Use Coins", onRelease=doClick }
		useLife.x=_W/2
		useLife.y=_H/2-40
		useLife.value="coins"
		group:insert(useLife)
	end
	
	local restartGame=widget.newButton{ label= "Restart Game", onRelease=doClick }
	restartGame.x=_W/2
	restartGame.y=_H/2+20
	restartGame.value="restart"
	group:insert(restartGame)

	local endGame=widget.newButton{ label= "EXIT", onRelease=doClick }
	endGame.x=_W/2
	endGame.y=_H/2+80
	endGame.value="exit"
	group:insert(endGame)

end

function scene:exitScene( event )
	local group=self.view
	

end

function scene:didExitScene( event )
	local group=self.view
	

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
		print ( "onKeyEvent" )
		
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
