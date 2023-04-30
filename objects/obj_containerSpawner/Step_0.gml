timer--;
randomize();
if (timer <= 0){
	selecter = irandom(3)
	instance_create_layer(x,y,"Instances", object_array[selecter]);
	timer = 100;
}