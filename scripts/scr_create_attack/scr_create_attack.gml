var owner = argument0;
var damage;
damage = argument1;
var obj_collisionBox = argument2;
var h = instance_create_layer(x,y,"Instances",obj_collisionBox);
h.image_xscale = other.image_xscale;

h.owner = owner;
h.damage = damage;
