///__________________________________________________\\\
//Max health setter
if HealthPlayer  >= HealthMaxPlayer + 1
{
HealthPlayer  = HealthMaxPlayer	
}

//Minimum health setter
if HealthPlayer  <= 0
{
HealthPlayer  = -1
//Death animation
}
///__________________________________________________\\\
/// movement
rkey = keyboard_check(ord("D"))
lkey = keyboard_check(ord("A"))
jkey = keyboard_check(ord("W"));
skey = keyboard_check(ord("S"));

//check for ground
if (place_meeting(x, y+vspd+1, obj_CollisionMaster))
    {
    vspd = 0;
    //jumping
    if (jkey)
        {
        vspd = -jspd;
        }
    }
else
{
//gravity
if (vspd < 10)
    {
    vspd += grav;
    }
}
// moving right
if rkey = true
    {
    hspd = spd;
    }
// moving left
if lkey = true
    {
    hspd = -spd;
    }
// check if not moving
if lkey = false && rkey = false
    {
    hspd = 0;
    }
// Horizontal collision
if (place_meeting(x+hspd, y, obj_CollisionMaster))
    {
    while (!place_meeting(x+sign(hspd), y, obj_CollisionMaster))
         {
         x += sign(hspd);
         }
    hspd = 0;
    }
//move horizontally
x += hspd;
// vertical collision
if (place_meeting(x, y+vspd, obj_CollisionMaster))
    {
    while (!place_meeting(x, y+sign(vspd), obj_CollisionMaster))
         {
         y += sign(vspd);
         }
    vspd = 0;
    }
//move vertically
y += vspd;

//Knockbacks from traps and enemies
/*
Stuff and stuff
*/
///__________________________________________________\\\