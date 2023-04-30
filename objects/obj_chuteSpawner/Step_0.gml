timer--;

if (timer <= 0){
	newArray = array_shuffle(chute_array);
	chute_array = newArray;
	instance_destroy(obj_chuteBlue);
	instance_destroy(obj_chuteOrange);
	instance_destroy(obj_chutePurple);
	instance_destroy(obj_chuteRed);
	
	for(var i = 0; i < array_length(chute_array); i++){
		instance_create_layer(xpos+(i*175),480, "Instances", chute_array[i]);
	}
	
	timer = 600;
}