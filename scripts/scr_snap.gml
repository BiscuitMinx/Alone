///scr_snap
keystone = instance_nearest(x , y, obj_keystone);
dist = 17;
img_ang = keystone.image_angle;
snap_angle_x = 1;
snap_angle_y = 0;

switch (img_ang){
       case (90):
            snap_angle_x = 0;
            snap_angle_y = -1;
            break;
       case (180):
            snap_angle_x = -1;
            snap_angle_y = 0;
            break;
       case (270):
            snap_angle_x = 0;
            snap_angle_y = 1;
            break;
       case (360):
            snap_angle_x = 1;
            snap_angle_y = 0;
            break;
       default:
               snap_angle_x = 1;
               snap_angle_y = 0;
               //show_message("Error at: scr_snap; Line 23-28ish");
       break;    
}

if (point_in_rectangle(keystone.x + (snap_angle_x * dist), keystone.y + (snap_angle_y * dist), x - dist, y - dist, x + dist, y + dist) && keystone.color == self.color) {
   what = true;
}

if (what) {
   phy_position_x = keystone.x + (snap_angle_x * 32);
   phy_position_y = keystone.y + (snap_angle_y * 32);
   
   if (color == "green") {
   sprite_index = spr_key_activated_gre;
   
   } else if (color == "blue") {
   sprite_index = spr_key_activated_blu;
   
   } else {
   sprite_index = spr_key_activated;
   }
   
   physics_set_density(obj_keystone, 0);
   keystone.activated = true;
}
