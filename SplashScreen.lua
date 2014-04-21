
local storyboard= require ( "storyboard" )
local scene= storyboard.newScene()

function scene:createScene(event)
    local group=self.view
    
    local background = display.newImage( "menu_images/splash_screen_image.png")
    background.x=_W/2;
    background.y=_H/2
    group:insert(background);
        
end

function scene:willEnterScene( event )
    local group=self.view
    
    
end

local function onChange()
	
    options = {effect = "fade",time=500}
    storyboard.gotoScene("MenuScreen",options)

   
end

function scene:enterScene( event )
    local group=self.view
    
    timer.performWithDelay ( 2000, onChange )
    
end



function scene:exitScene( event )
    local group=self.view
    -- storyboard.removeScene("SplashScreen");
    
end

function scene:didExitScene( event )
    local group=self.view
    storyboard.removeScene("SplashScreen");
    
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

scene:addEventListener ( "createScene", scene )

scene:addEventListener ( "willEnterScene", scene )
scene:addEventListener ( "enterScene", scene )
scene:addEventListener ( "exitScene", scene )
scene:addEventListener ( "didExitScene", scene )
scene:addEventListener ( "destroyScene", scene )
scene:addEventListener ( "overlayBegan", scene )
scene:addEventListener ( "overlayEnded", scene )

return scene
