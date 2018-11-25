key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_up = keyboard_check_pressed(vk_up);
key_down = keyboard_check_pressed(vk_down);

var hmovedir = key_right - key_left;
var vmovedir = key_down - key_up;
hsp = hmovedir * 5;
vsp = vmovedir * 5;

collideObjWithGroup(self);

x = x + hsp;
y = y + vsp;