require 'lua-lander'
--

-- Globals
require 'src.entities'
require 'src.world'
require 'src.ui'
require 'src.utils'
require 'src.gamestates'
--

function love.conf(t)
    io.stdout:setvbuf('no')

    t.identity = 'space-bum-for-hire'
    t.version  = '11.2'
    t.console  = false

    t.window.title      = 'Space Bum For Hire'
    t.window.x          = 200
    t.window.y          = 25
    t.window.width      = 1280
    t.window.height     = 800
    t.window.fullscreen = false
    t.window.highdpi    = true
    t.window.vsync      = true

    t.modules.touch   = false
    t.modules.thread  = false
    t.modules.video   = false
end