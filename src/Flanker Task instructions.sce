scenario = "Flanker Task instructions";

no_logfile = false;
scenario_type = trials;
response_matching = simple_matching;
default_background_color = 128, 128, 128; #gray
default_text_color = 200,200,200; #black #200,200,200; #white
default_font_size = 30;  
active_buttons = 2;
button_codes = 1,2;
write_codes = true; 
pulse_width = 10;
pcl_file = "Flanker task instructions.pcl"; 
begin;

text{caption = "\n\n\n\n\n\n\n\n\n\n+\n\n\n\n\n\n\n\n\n\nLEFT                                                                                        RIGHT";} in_out_text;
picture { text in_out_text; x = 0; y = 0; } left_right_pic;

trial{ 
  trial_duration = forever;        	# trial lasts until target
   trial_type = specific_response;  # button is pressed
   terminator_button = 1,2;   # left-Ctrl
   picture {
		text {caption ="Please press any Ctrl to continue";};
      x=0;y=0;};
}start_trial;

trial{ # the first stim is too quick if there is no delay. This trial puts 2sec between the start and the stim
	trial_duration = 2000; #2 sec before the first stim
	stimulus_event {
		picture {
		text {caption ="+";};
      x=0;y=0;};
	}wait_event;
}wait_trial;
		

trial{ #this is the s1 trial 
  trial_duration = 200;        	# trial lasts 200ms
	stimulus_event {
		picture {	
			text {	
				caption = "<><<>";
				font_size = 75;
				text_align = align_center;
				font_color = 200,200,200;
			}s1_txt;
			x = 256; y = -256;
		}pic_s1; 
		port_code = 10;  
	}s1_event;
}s1_trial;

trial { 
	trial_duration = 1500; #set to change between 1500-2000ms  
	stimulus_event {
		picture left_right_pic;  
		code = "isi";
		response_active = true;
		target_button = 2; #so that a hit shows up if you press left button
	}isi_left_event;
} isi_trial_left;

trial { 
   trial_duration = 1500; #set to change between 1500-2000ms   
	stimulus_event {
		picture left_right_pic;  
		code = "isi";
		response_active = true;
		target_button = 1; #so that a hit shows up if you press right button
	}isi_right_event;
} isi_trial_right;

trial {
trial_duration = 2000;
	stimulus_event {
		nothing{};
		code = "end";  
		port_code = 200;  
		time = 0;
   } event_end;  
} end_trial;

trial{ 
  trial_duration = forever;        	# trial lasts until target
   trial_type = specific_response;  # button is pressed
   terminator_button = 1,2;   # Ctrl
   picture {
		text {caption ="\n\nYou will see arrows point either to the left or to the right.\n\n Focus on the central arrow.\n\n If the CENTRAL arrow points to the left, \n press the left Ctrl with your left index finger. \n\n\n If the CENTRAL arrow points to the right, \n press the right Ctrl with your right index finger. \n\n\n Please press any Ctrl 2x to start the practice.";};
      x=0;y=0;};
}instructions_1_trial;

trial{ 
  trial_duration = 2000;        	# trial lasts until target
   picture {
		text {caption ="Well done!!";};
      x=0;y=0;};
}feedback_good_trial;

trial{ 
  trial_duration = 2000;        	# trial lasts until target
   picture {
		text {caption ="Please try again";};
      x=0;y=0;};
}feedback_incorrect_trial;

trial{ 
  trial_duration = 2000;        	# trial lasts until target
   picture {
		text {caption ="It seems like you didn't press";};
      x=0;y=0;};
}feedback_miss_trial;