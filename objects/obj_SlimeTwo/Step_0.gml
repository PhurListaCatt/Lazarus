if keyboard_check(ord("R"))
{
room_restart();	
}
///__________________________________________________\\\
//Max health setter
if SlimeTwoHealth  >= SlimeTwoHealthMax + 1
{
SlimeTwoHealth  = SlimeTwoHealthMax	
}

//Minimum health setter
if SlimeTwoHealth  <= -1 //this value is one ahead than normal 
{
SlimeTwoHealth  = 0
//Death animation
}
//HealthBarSetter
global.SlimeTwoHealthBar = SlimeTwoHealth

//Animations
/*
Make it so player animation is added for:
Jump, idle, left, right, falling.

Then make a global string for a heart system
*/
///__________________________________________________\\\
/// movement
rkey = keyboard_check(vk_right)
lkey = keyboard_check(vk_left)
jkey = keyboard_check(vk_up)
skey = keyboard_check(vk_down)

//check for ground
//change sprite depending on direction
if (!place_meeting(x, y, obj_CollisionMaster))
{
	if(lastsprite == 1)
	{
	image_speed = 3
	sprite_index = spr_PlayerJumpRight
	}
	else if(lastsprite == 0)
	{
		image_speed = 3
		sprite_index = spr_PlayerJumpLeft
	}
}


//check for ground
if (place_meeting(x, y+1 , obj_CollisionMaster))
//checks last sprite and picks a new one based off that so jumping works properly
    {
	if(lastsprite == 0)
	{
	sprite_index = spr_PlayerLeft
	}
	else if(lastsprite == 1)
	{
	sprite_index = spr_Player
	}
	if(rkey)
	{
	sprite_index = spr_Player
	lastsprite = 1
	}
	if(lkey)
	{
	sprite_index = spr_PlayerLeft
	lastsprite = 0
	}
    vspd = 0;
    //jumping
    if (jkey) && (jtimer = 1)
        {
        vspd = -jspd;
		jtimer = 0
		alarm[0] = 40
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