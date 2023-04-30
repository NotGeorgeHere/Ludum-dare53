time = 10;
timer = time;

xpos = 200;

chute_array = [obj_chuteBlue, obj_chuteOrange, obj_chutePurple, obj_chuteRed];

for(var i = 0; i < array_length(chute_array); i++){
		instance_create_layer(xpos+(i*175),480, "Instances", chute_array[i]);
}