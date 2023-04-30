x -= xSpeed;

if (x <= -100){
	instance_destroy();
}

sprite_index = spr_containerTwo;


if(position_meeting(mouse_x, mouse_y, self)){
	if(mouse_check_button(mb_left)  && !global.dragging_object){
		xSpeed = 0;
		audio_play_sound(sound_click, 1, false);
		global.dragging_object = true;
		global.dragged_object = id;
		mouseXOffset = x - mouse_x;
        mouseYOffset = y - mouse_y;
	}
	if (mouse_check_button_released(mb_left) && global.dragging_object && global.dragged_object == id){
		xSpeed = 0;
		global.dragging_object = false;
		global.dragged_object = noone;
		if (place_meeting(x,y,obj_chuteOrange)){
			global.totalScore += 1;
			audio_play_sound(sound_success, 1, false);
			instance_destroy(self);
		}
		else if (place_meeting(x,y,obj_chuteRed) or place_meeting(x,y,obj_chutePurple) or place_meeting(x,y,obj_chuteBlue)){
			global.totalScore -= 1;
			instance_destroy(self);
			audio_play_sound(sound_explode, 1, false);
		}
		else{
			instance_destroy(self);
			global.totalScore -= 1;
			audio_play_sound(sound_explode, 1, false);
		}
	}
	if (global.dragging_object && global.dragged_object == id) {
		sprite_index = spr_containerMovingTwo;
        x = mouse_x + mouseXOffset;
        y = mouse_y + mouseYOffset;
	}
}




