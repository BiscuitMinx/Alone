///scr_fix_color

if (object_index == obj_key) {
   if (color_gre) {
      sprite_index = spr_key_gre;
   } else if (color_blu) {
             sprite_index = spr_key_blu;
   } else {
          sprite_index = spr_key;
   }
} else if (object_index == obj_keystone) {
          if (color_gre) {
             sprite_index = spr_keystone_gre;
          } else if (color_blu) {
                    sprite_index = spr_keystone_blu;
          } else {
                 sprite_index = spr_keystone;
          }
} else if (object_index == obj_door) {
          if (color_gre) {
             sprite_index = spr_door_gre;
          } else if (color_blu) {
                    sprite_index = spr_door_blu;
          } else {
                 sprite_index = spr_door;
          }
} else {
       sprite_index = spr_unassigned;
}
