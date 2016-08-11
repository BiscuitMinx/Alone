///scr_door_init_keys

if (instance_exists(obj_keystone)) {
   for (i = 0; i < instance_number(obj_keystone); i++) {
       keystone[i] = instance_find(obj_keystone, i);
   }
}
