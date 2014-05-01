
local storyboard= require ( "storyboard" )
local scene= storyboard.newScene()
--local widget=require ( "widget" )




function scene:createScene(event)
    local group=self.view
end

function scene:willEnterScene( event )
    local group=self.view
    
    
end

function scene:enterScene( event )
    local group=self.view
    
    local function doClick(event)
        local obj= event.target
        obj.alpha=0.8
        obj.xScale=0.8
        obj.yScale=0.8
        
        if(event.phase == "moved"  or event.phase == "ended"  )then
            obj.alpha=1
            obj.xScale=1
            obj.yScale=1
            if(event.phase == "ended" )then
                --call another screen
                GAME_OVER_OVERLAY=obj.value
                storyboard.hideOverlay("fromTop")
            end
        end
    end
    
    if(tonumber(AVAILABLE_COINS)<200)then
--        local coinsWidget=display.newImage("menu_images/oops_msg.png", _W/2, _H/2)
--        coinsWidget.x=_W/2
--        coinsWidget.y=_H/2-60
--        group:insert(coinsWidget)
    local msgText=display.newText( group,"OOPS! YOU ARE OUT OF COINS", 5,5, "Comic Strip", 22 )
    msgText:setTextColor ( 61, 29, 3)
    msgText.x=_W/2
    msgText.y=_H/2-60
    else
        local useLife=display.newImage("menu_images/save_me_button.png", _W/2, _H/2)
        useLife.x=_W/2
        useLife.y=_H/2-60
        useLife.value="coins"
        useLife:addEventListener("touch", doClick)
        group:insert(useLife)
    end
    
    local restartGame=display.newImage("menu_images/restart_game_btn_1.png", _W/2, _H/2)
    restartGame.x=_W/2
    restartGame.y=_H/2+20
    restartGame.value="restart"
        restartGame:addEventListener("touch", doClick)
    group:insert(restartGame)
    
    local endGame=display.newImage("menu_images/exit_game_btn.png", _W/2, _H/2)
    endGame.x=_W/2
    endGame.y=_H/2+100
    endGame.value="exit"
        endGame:addEventListener("touch", doClick)
    group:insert(endGame)
    
end

function scene:exitScene( event )
    local group=self.view
    Runtime:removeEventListener( "key", onKeyEvent );
    
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
