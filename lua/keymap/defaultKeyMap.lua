-- Maps specific key combinations to console commands
-- Key combos should be seperated by -'s
-- See keyNames.lua for key names! Key names for modifiers are as follows and must be followed by a dash ('-')
-- Shift = 0x10
-- Ctrl = 0x11
-- Alt = 0x12
defaultKeyMap = {
    ['Esc']                 = 'escape',
    ['Pause']               = 'pause',
    ['Ctrl-F']              = 'cap_frame',
    ['Alt-L']               = 'toggle_lifebars',
    ['Ctrl-W']              = 'tog_military',
    ['Ctrl-E']              = 'tog_defense',
    ['Ctrl-R']              = 'tog_econ',
    ['Ctrl-N']              = 'rename',
    ['Home']                = 'split_screen_enable',
    ['End']                 = 'split_screen_disable',
    ['Alt-UpArrow']         = 'switch_layout_up',
    ['Alt-DownArrow']       = 'switch_layout_down',
    ['Alt-LeftArrow']       = 'switch_skin_down',
    ['Alt-RightArrow']      = 'switch_skin_up',

    ['F1']                  = 'toggle_key_bindings',
    ['Ctrl-Alt-F1']         = 'toggle_notify_customiser',
    ['F2']                  = 'toggle_score_screen',
    ['F3']                  = 'quick_save',
    ['F4']                  = 'toggle_diplomacy_screen',
    ['F5']                  = 'ping_alert',
    ['F6']                  = 'ping_move',
    ['F7']                  = 'ping_attack',
    ['F8']                  = 'ping_marker',
    ['F10']                 = 'toggle_main_menu',
    ['F11']                 = 'toggle_disconnect_screen',
    ['F12']                 = 'show_objective_screen',
    ['1']                   = 'group1',
    ['2']                   = 'group2',
    ['3']                   = 'group3',
    ['4']                   = 'group4',
    ['5']                   = 'group5',
    ['6']                   = 'group6',
    ['7']                   = 'group7',
    ['8']                   = 'group8',
    ['9']                   = 'group9',
    ['0']                   = 'group0',
    ['Ctrl-1']              = 'set_group1',
    ['Ctrl-2']              = 'set_group2',
    ['Ctrl-3']              = 'set_group3',
    ['Ctrl-4']              = 'set_group4',
    ['Ctrl-5']              = 'set_group5',
    ['Ctrl-6']              = 'set_group6',
    ['Ctrl-7']              = 'set_group7',
    ['Ctrl-8']              = 'set_group8',
    ['Ctrl-9']              = 'set_group9',
    ['Ctrl-0']              = 'set_group0',
    ['Shift-1']             = 'append_group1',
    ['Shift-2']             = 'append_group2',
    ['Shift-3']             = 'append_group3',
    ['Shift-4']             = 'append_group4',
    ['Shift-5']             = 'append_group5',
    ['Shift-6']             = 'append_group6',
    ['Shift-7']             = 'append_group7',
    ['Shift-8']             = 'append_group8',
    ['Shift-9']             = 'append_group9',
    ['Shift-0']             = 'append_group0',
    ['Ctrl-Shift-1']        = 'fac_group1',
    ['Ctrl-Shift-2']        = 'fac_group2',
    ['Ctrl-Shift-3']        = 'fac_group3',
    ['Ctrl-Shift-4']        = 'fac_group4',
    ['Ctrl-Shift-5']        = 'fac_group5',
    ['Ctrl-Shift-6']        = 'fac_group6',
    ['Ctrl-Shift-7']        = 'fac_group7',
    ['Ctrl-Shift-8']        = 'fac_group8',
    ['Ctrl-Shift-9']        = 'fac_group9',
    ['Ctrl-Shift-0']        = 'fac_group0',
    ['Ctrl-A']              = 'select_air',
    ['Ctrl-S']              = 'select_naval',
    ['Ctrl-L']              = 'select_land',
    ['Ctrl-Z']              = 'select_all_units_of_same_type',
    ['Ctrl-B']              = 'select_engineers',
    ['Shift-Period']        = 'goto_engineer',
    ['Alt-Period']          = 'select_idle_t1_engineer',
    ['Period']              = 'cycle_engineers',
    ['Comma']               = 'goto_commander',
    ['Alt-Comma']           = 'select_commander',
    ['Ctrl-X']              = 'select_all',
    ['Ctrl-C']              = 'select_all_onscreen',
    ['Ctrl-Period']         = 'select_all_eng_onscreen',
    ['Ctrl-H']              = 'select_all_factory_onscreen',
    ['H']                   = 'select_nearest_factory',
    ['Ctrl-Shift-L']        = 'select_nearest_land_factory',
    ['Ctrl-Shift-A']        = 'select_nearest_air_factory',
    ['Ctrl-Shift-S']        = 'select_nearest_naval_factory',
    ['Shift-T']             = 'create_build_template',

    ['Tab']                 = 'cycle_context_based_templates',
    ['Shift-Tab']           = 'cycle_context_based_templates',
    ['Q']                   = 'zoom_in',
    ['W']                   = 'zoom_out',
    ['Shift-Q']             = 'zoom_in_fast',
    ['Shift-W']             = 'zoom_out_fast',
    ['T']                   = 'track_unit',
    ['Ctrl-Shift-T']        = 'track_unit_minimap',
    ['Ctrl-Alt-T']          = 'track_unit_second_mon',
    ['V']                   = 'reset_camera',
    ['Ctrl-V']              = 'cam_free',

    ['R']                   = 'repair',
    ['E']                   = 'reclaim',
    ['P']                   = 'patrol',
    ['A']                   = 'attack',
    ['C']                   = 'capture',
    ['S']                   = 'stop',
    ['D']                   = 'dive',
    ['F']                   = 'ferry',
    ['I']                   = 'guard',
    ['U']                   = 'transport',
    ['L']                   = 'launch_tactical',
    ['O']                   = 'overcharge',
    ['M']                   = 'move',
    ['N']                   = 'nuke',
    ['G']                   = 'spreadattack',

    ['Shift-R']             = 'shift_repair',
    ['Shift-E']             = 'shift_reclaim',
    ['Shift-P']             = 'shift_patrol',
    ['Shift-A']             = 'shift_attack',
    ['Shift-C']             = 'shift_capture',
    ['Shift-S']             = 'shift_stop',
    ['Shift-D']             = 'shift_dive',
    ['Shift-F']             = 'shift_ferry',
    ['Shift-I']             = 'shift_guard',
    ['Shift-U']             = 'shift_transport',
    ['Shift-L']             = 'shift_launch_tactical',
    ['Shift-O']             = 'shift_overcharge',
    ['Shift-M']             = 'shift_move',
    ['Shift-N']             = 'shift_nuke',
    ['Shift-G']             = 'shift_spreadattack',

    ['B']                   = 'toggle_build_mode',
    ['Alt-R']               = 'toggle_reclaim_labels',

    ['Z']                   = 'pause_unit',

    ['LeftBracket']         = 'mode',

    ['Ctrl-K']              = 'suicide',

    ['NumMinus']            = 'decrease_game_speed',
    ['NumPlus']             = 'increase_game_speed',
    ['NumStar']             = 'reset_game_speed',

    ['PageUp']              = 'chat_page_up',
    ['PageDown']            = 'chat_page_down',
    ['Shift-PageUp']        = 'chat_line_up',
    ['Shift-PageDown']      = 'chat_line_down',

    ['NumSlash']            = 'show_fps',
}

debugKeyMap = {
    ['Ctrl-Alt-P']          = 'debug_navpath',
    ['Alt-F2']              = 'debug_create_unit',
    ['Alt-T']               = 'debug_teleport',
    ['Alt-A']               = 'debug_run_opponent_AI',
    ['Ctrl-Alt-B']          = 'debug_blingbling',
    ['Alt-Delete']          = 'debug_destroy_units',

    ['Ctrl-Alt-Comma']      = 'debug_graphics_fidelity_0',
    ['Ctrl-Alt-Period']     = 'debug_graphics_fidelity_2',

    ['Alt-F3']              = 'debug_scenario_method_f3',
    ['Shift-F3']            = 'debug_scenario_method_shift_f3',
    ['Ctrl-F3']             = 'debug_scenario_method_ctrl_f3',
    ['Shift-F4']            = 'debug_scenario_method_shift_f4',
    ['Ctrl-F4']             = 'debug_scenario_method_ctrl_f4',
    ['Ctrl-Alt-F4']         = 'debug_scenario_method_ctrl_alt_f3',
    ['Ctrl-Shift-F4']       = 'debug_scenario_method_f4',
    ['Ctrl-Shift-F5']       = 'debug_scenario_method_f5',
    ['Shift-F5']            = 'debug_scenario_method_shift_f5',
    ['Ctrl-F5']             = 'debug_scenario_method_ctrl_f5',
    ['Ctrl-Alt-F5']         = 'debug_scenario_method_ctrl_alt_f5',

    ['Ctrl-Alt-Shift-F8']   = 'debug_campaign_instawin',
    ['Shift-F6']            = 'debug_create_entity',
    ['Shift-F7']            = 'debug_show_stats',
    ['Shift-F8']            = 'debug_show_army_stats',
    ['F9']                  = 'debug_toggle_log_window',
    ['Alt-F9']              = 'debug_open_lua_debugger',
    ['Alt-F11']             = 'debug_show_frame_stats',
    ['Ctrl-Alt-W']          = 'debug_render_wireframe',
    ['Ctrl-Shift-W']        = 'debug_weapons',
    ['Ctrl-Alt-O']          = 'debug_grid',
    ['Alt-Q']               = 'debug_show_focus_ui_control',
    ['Alt-W']               = 'debug_dump_focus_ui_control',
    ['Alt-D']               = 'debug_dump_ui_controls',
    ['Alt-V']               = 'debug_skeletons',
    ['Alt-B']               = 'debug_bones',

    ['Ctrl-Shift-X']        = 'debug_redo_console_command',
    ['Ctrl-Shift-C']        = 'debug_copy_units',
    ['Ctrl-Shift-V']        = 'debug_paste_units',

    ['Alt-N']               = 'debug_nodamage',
    ['Ctrl-Alt-E']          = 'debug_show_emmitter_window',
    ['Ctrl-Alt-Z']          = 'debug_sally_shears',
    ['Ctrl-Shift-Alt-C']    = 'debug_collision',
    ['Ctrl-Slash']          = 'debug_pause_single_step',
    ['Ctrl-F10']            = 'debug_restart_session',
    ['Ctrl-Shift-F1']       = 'debug_toggle_pannels',
}

