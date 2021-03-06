-- Control Settings
-- Shane Krolikowski
--

Control_ = {
	none = {
		-- key_escape_on = function() Gamestate:current():quit() end,
	},
	cutscene = {
		key_escape_on    = function() Gamestate.push(Gamestates['pause']) end,
		key_p_on         = function() Gamestate.push(Gamestates['pause']) end,
		key_space_on     = function() Gamestate.current():skip()          end,
		button_Start_on  = function() Gamestate.push(Gamestates['pause']) end,
		button_A_on      = function() Gamestate:current():skip()    end,
		button_B_on      = function() Gamestate:current():skip()    end,
	},
	gameplay = {
		-- keyboard
		key_1_on      = function() Gamestate:current().player:setWeapon('pistol') end,
		key_2_on      = function() Gamestate:current().player:setWeapon('shotgun') end,
		key_escape_on = function() Gamestate.push(Gamestates['pause'])   end,
		key_w_on      = function() Gamestate:current().player:keyOn('w') end,
		key_a_on      = function() Gamestate:current().player:keyOn('a') end,
		key_s_on      = function() Gamestate:current().player:keyOn('s') end,
		key_d_on      = function() Gamestate:current().player:keyOn('d') end,
		key_l_on      = function() Gamestate:current().player:setLock(true) end,
		key_tab_on    = function() Gamestate:current():teleport() end,
		key_p_on      = function() Gamestate.push(Gamestates['pause']) end,
		key_space_on  = function() Gamestate:current().player:keyOn('jump_on') end,
		key_a_down    = function(dt, et) Gamestate:current().player:move(dt, et) end,
		key_d_down    = function(dt, et) Gamestate:current().player:move(dt, et) end,
		key_k_down    = function(dt, et) Gamestate:current().player.weapon:trigger(dt, et) end,
		key_w_off     = function() Gamestate:current().player:keyOff('w') end,
		key_a_off     = function() Gamestate:current().player:keyOff('a') end,
		key_d_off     = function() Gamestate:current().player:keyOff('d') end,
		key_s_off     = function() Gamestate:current().player:keyOff('s') end,
		key_l_off     = function() Gamestate:current().player:setLock(false) end,
		key_k_off     = function() Gamestate:current().player.weapon:holster() end,
		key_space_off = function() Gamestate:current().player:keyOff('jump_off') end,
		-- joystick
		axis_up_on      = function() Gamestate:current().player:keyOn('w')  end,
		axis_left_on    = function() Gamestate:current().player:keyOn('a')  end,
		axis_down_on    = function() Gamestate:current().player:keyOn('s')  end,
		axis_right_on   = function() Gamestate:current().player:keyOn('d')  end,
		axis_up_off     = function() Gamestate:current().player:keyOff('w') end,
		axis_left_off   = function() Gamestate:current().player:keyOff('a') end,
		axis_down_off   = function() Gamestate:current().player:keyOff('s') end,
		axis_right_off  = function() Gamestate:current().player:keyOff('d') end,
		axis_left_down  = function(dt, et) Gamestate:current().player:move(dt, et) end,
		axis_right_down = function(dt, et) Gamestate:current().player:move(dt, et) end,
		button_X_on     = function() Gamestate:current().player:keyOn('jump_on')   end,
		button_X_off    = function() Gamestate:current().player:keyOff('jump_off') end,
		button_B_on     = function() Gamestate:current().player:keyOn('jump_on')   end,
		button_B_off    = function() Gamestate:current().player:keyOff('jump_off') end,
		button_A_down   = function(dt, et) Gamestate:current().player.weapon:trigger(dt, et) end,
		button_A_off    = function() Gamestate:current().player.weapon:holster() end,
		button_Y_down   = function(dt, et) Gamestate:current().player.weapon:trigger(dt, et) end,
		button_Y_off    = function() Gamestate:current().player.weapon:holster() end,
		button_R_on     = function() Gamestate:current().player:setLock(true)  end,
		button_R_off    = function() Gamestate:current().player:setLock(false) end,
		button_L_on     = function() Gamestate:current().player:toggleWeapon() end,
		button_Start_on = function() Gamestate.push(Gamestates['pause']) end,
		button_Select_on = function() Gamestate:current():teleport() end,
	},
	pause = {
		key_escape_on    = function() Gamestate:current():unpause() end,
		key_q_on         = function() Gamestate:current():quit()    end,
		key_c_on         = function() Gamestate:current():unpause() end,
		key_p_on         = function() Gamestate:current():unpause() end,
		button_Start_on  = function() Gamestate:current():unpause() end,
		button_Select_on = function() Gamestate:current():quit()    end,
	},
	death = {
		key_q_on         = function() Gamestate:current():quit()     end,
		key_c_on         = function() Gamestate:current():continue() end,
		key_escape_on    = function() Gamestate:current():continue() end,
		button_Start_on  = function() Gamestate:current():continue() end,
		button_A_on      = function() Gamestate:current():continue() end,
		button_B_on      = function() Gamestate:current():continue() end,
		button_Select_on = function() Gamestate:current():quit()     end,
	},
	complete = {
		key_q_on         = function() Gamestate:current():quit() end,
		button_Select_on = function() Gamestate:current():quit() end,
	}
}