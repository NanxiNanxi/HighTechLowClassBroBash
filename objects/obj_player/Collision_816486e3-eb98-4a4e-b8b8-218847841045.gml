/// @description Insert description here

//there's a bug that the owner will not equals to self, so has to us2 absolute value 100044 of self

		if (other.owner = 100044 || other.owner = self)
	{
		
		
		audio_play_sound(bgm_mike_special,1000, false)
		
		
		//exit
	}


	hit = 1;
	audio_play_sound(bgm_special_pain,1000, false)
	hp -= other.damage;
	
	with other 
		instance_destroy()

