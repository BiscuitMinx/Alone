///scr_move_state
scr_hotkeys();

if (up_key) {phy_position_y += -spd}
if (down_key) {phy_position_y += spd}
if (left_key) {phy_position_x += -spd}
if (right_key) {phy_position_x += spd}

/*
if (hspeed - vspeed == 0 || hspeed + vspeed == 0) {
   phy_position_x += lengthdir_x(spd, sign(hspeed + vspeed));
   phy_position_y += lengthdir_y(spd, sign(hspeed + vspeed));
}
*/


