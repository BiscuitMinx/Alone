///scr_check_door

while (!done) {
      num_active = 0;
      num_needed = 0;
      
      if (instance_exists(obj_keystone)){
         for (i = 0; i < instance_number(obj_keystone); i++){
             n = keystone[i];
             
             if (n.color == color) num_needed++;
             if ((n.activated == true) && (n.color == color)) num_active++;
             
         }

         if (num_active == num_needed) {
            if (color == "green") {
               sprite_index = spr_door_open_gre;
            } else if (color == "blue") {
                      sprite_index = spr_door_open_blu;
            } else {
                   sprite_index = spr_door_open;
            }
            image_speed = .2;
            done = true;
         }
      }
      break;
}
