if place_meeting(x,y,obj_SlimeOne) && image_index >= 2 && DamagePlayerOne = false
{
alarm[0] = 30
obj_SlimeOne.SlimeOneHealth -= 1
DamagePlayerOne = true
}

if place_meeting(x,y,obj_SlimeTwo) && image_index >= 2 && DamagePlayerOne = false
{
alarm[0] = 30
obj_SlimeTwo.SlimeTwoHealth -= 1
DamagePlayerOne = true
}