if CloudCreator = 0
{
instance_create_depth(x,y,-5,obj_Cloud)		
alarm[0] = choose(60,90,110)
CloudCreator = -1
}

if CloudCreator = 1
{
instance_create_depth(x+40,y-30,-7,obj_Cloud)	
instance_create_depth(x+33,y+30,-5,obj_Cloud)	
alarm[0] = choose(60,90,110)
CloudCreator = -1
}

if CloudCreator = 2
{
instance_create_depth(x+40,y-30,-5,obj_Cloud)	
instance_create_depth(x+33,y+30,-5,obj_Cloud)	
alarm[0] = choose(90,120,170)
CloudCreator = -1
}