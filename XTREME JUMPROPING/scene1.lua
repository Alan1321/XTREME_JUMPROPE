local composer = require( "composer" )
local scene = composer.newScene() -- Creation for this scene
local file = require("file")

function scene:create( event )
 
   local sceneGroup = self.view
   local image = display.newImageRect("background.png", 640, 1140)
   image.x = display.contentCenterX
   image.y = display.contentCenterY
   sceneGroup:insert(image)

   local title = display.newText ("XTREME JUMP ROPING", 320, 100, native.systemFontBold, 50)
   title:setFillColor (100,0,0)
   sceneGroup:insert(title)
   local chooseLevel = display.newText ("Choose Difficulty Level Below", 320, 200, native.systemFontBold, 35)
   chooseLevel:setFillColor (0,0,0)
   sceneGroup:insert(chooseLevel)
   -------------------------------------------------------------------------------------------
   local green = display.newImage("greenbutton.png")
   green.x = display.contentCenterX
   green.y = display.contentCenterY - 150
   sceneGroup:insert(green)

   local easy = display.newText ("EASY", green.x, green.y, native.systemFontBold, 50)
   easy:setFillColor (100,100,100)
   sceneGroup:insert(easy)
   -------------------------------------------------------------------------------------------
   local yellow = display.newImage("yellowbutton.png")
   yellow.x = display.contentCenterX
   yellow.y = display.contentCenterY
   sceneGroup:insert(yellow)

   local medium = display.newText ("MEDIUM", yellow.x, yellow.y, native.systemFontBold, 50)
   medium:setFillColor (100,100,100)
   sceneGroup:insert(medium)
   -------------------------------------------------------------------------------------------
   local orange = display.newImage("orangebutton.png")
   orange.x = display.contentCenterX
   orange.y = display.contentCenterY + 150
   sceneGroup:insert(orange)

   local hard = display.newText ("HARD", orange.x, orange.y, native.systemFontBold, 50)
   orange:setFillColor (100,100,100)
   sceneGroup:insert(hard)
   -------------------------------------------------------------------------------------------
   local red = display.newImage("redbutton.png")
   red.x = display.contentCenterX
   red.y = display.contentCenterY + 300
   sceneGroup:insert(red)

   local extreme = display.newText ("XTREME", red.x, red.y, native.systemFontBold, 50)
   red:setFillColor (100,100,100)
   sceneGroup:insert(extreme)
   -------------------------------------------------------------------------------------------
   local optionsButton = display.newImageRect("options.png", 200, 80)
   optionsButton.x = display.contentCenterX - 200
   optionsButton.y = display.contentCenterY + 500
   sceneGroup:insert(optionsButton)

   local optionsText = display.newText ("Options", optionsButton.x, optionsButton.y, native.systemFontBold, 30)
   optionsText:setFillColor (100,100,100)
   sceneGroup:insert(optionsText);
   -------------------------------------------------------------------------------------------
   local creditsButton = display.newImageRect("credits.png", 200, 80)
   creditsButton.x = display.contentCenterX + 200
   creditsButton.y = display.contentCenterY + 500
   sceneGroup:insert(creditsButton)

   local creditsText = display.newText ("Credits", creditsButton.x, creditsButton.y, native.systemFontBold, 30)
   creditsText:setFillColor (100,100,100)
   sceneGroup:insert(creditsText);
   -------------------------------------------------------------------------------------------
   local options1 = {
      effect = "slideUp",
      time = 500
   }
   local function nextOptions (event)
         composer.gotoScene("optionscene", options1);
   end
   optionsButton:addEventListener("tap", nextOptions);    
   -------------------------------------------------------------------------------------------
   local options2 = {
      effect = "slideUp",
      time = 500
   }
   local function nextCredits (event)
         composer.gotoScene("creditscene", options2);
   end
   creditsButton:addEventListener("tap", nextCredits);
   -------------------------------------------------------------------------------------------
   local optionsEasy = {
      effect = "slideLeft",
      time = 500,
      params = {
        startSpeed = 0.01,
        endSpeed = 3,
        multiplier = 1
      }
   }
   local function goEasy (event)
         composer.gotoScene("scene2", optionsEasy);
   end
   green:addEventListener("tap", goEasy);
   -------------------------------------------------------------------------------------------
   local optionsMedium = {
      effect = "slideLeft",
      time = 500,
      params = {
        startSpeed = 3,
        endSpeed = 7,
        multiplier = 1.5
      }
   }
   local function goMedium (event)
         composer.gotoScene("scene2", optionsMedium);
   end
   yellow:addEventListener("tap", goMedium);
   -------------------------------------------------------------------------------------------
   local optionsHard = {
      effect = "slideLeft",
      time = 500,
      params = {
        startSpeed = 7,
        endSpeed = 10,
        multiplier = 2
      }
   }
   local function goHard (event)
         composer.gotoScene("scene2", optionsHard);
   end
   orange:addEventListener("tap", goHard);
   -------------------------------------------------------------------------------------------
   local optionsExtreme = {
      effect = "slideLeft",
      time = 500,
      params = {
        startSpeed = 10,
        endSpeed = 10,
        multiplier = 3
      }
   }
   local function goExtreme (event)
         composer.gotoScene("scene2", optionsExtreme);
   end
   red:addEventListener("tap", goExtreme);
   -------------------------------------------------------------------------------------------
    

 end
  
 -- "scene:show()"
 function scene:show( event )
  
    local sceneGroup = self.view
    local phase = event.phase
  
    if ( phase == "will" ) then
       -- Called when the scene is still off screen (but is about to come on screen).
    elseif ( phase == "did" ) then
       -- Called when the scene is now on screen.
       -- Insert code here to make the scene come alive.
       -- Example: start timers, begin animation, play audio, etc.
    end
 end
  
 -- "scene:hide()"
 function scene:hide( event )
  
    local sceneGroup = self.view
    local phase = event.phase
  
    if ( phase == "will" ) then
       -- Called when the scene is on screen (but is about to go off screen).
       -- Insert code here to "pause" the scene.
       -- Example: stop timers, stop animation, stop audio, etc.
    elseif ( phase == "did" ) then
       -- Called immediately after scene goes off screen.
    end
 end
  
 -- "scene:destroy()"
 function scene:destroy( event )
  
    local sceneGroup = self.view
  
    -- Called prior to the removal of scene's view ("sceneGroup").
    -- Insert code here to clean up the scene.
    -- Example: remove display objects, save state, etc.
 end
  
 ---------------------------------------------------------------------------------
  
 -- Listener setup
 scene:addEventListener( "create", scene )
 scene:addEventListener( "show", scene )
 scene:addEventListener( "hide", scene )
 scene:addEventListener( "destroy", scene )
  
 ---------------------------------------------------------------------------------
  
 return scene