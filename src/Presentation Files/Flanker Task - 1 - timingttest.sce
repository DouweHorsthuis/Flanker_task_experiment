scenario = "Flanker Task - 1";

no_logfile = false;
scenario_type = trials;
response_matching = simple_matching;
default_background_color = 0, 0, 0; #gray
default_text_color = 200,200,200; #black #200,200,200; #white
default_font_size = 30;  
active_buttons = 2;
button_codes = 1,2;
write_codes = true; 
pulse_width = 10;
pcl_file = "Flanker task.pcl"; 
begin;

text{caption = "\n\n\n\n\n\n\n\n\n\n+\n\n\n\n\n\n\n\n\n\nLEFT                                                                                        RIGHT";} in_out_text;
picture { text in_out_text; x = 0; y = 0; } left_right_pic;
bitmap { filename = "standard_et.jpg"; preload = true; } et_bit; # for the eyetracker

trial{ #this is the first screen to prepare people 
  trial_duration = forever;        	# trial lasts until target
   trial_type = specific_response;  # button is pressed
   terminator_button = 1,2;   # left-Ctrl
   picture {
		text {caption ="Please double press any Ctrl to start";};
      x=0;y=0;};
}start_trial;

trial{ # the first stim is too quick if there is no delay. This trial puts 2sec between the start and the stim
	trial_duration = 2000; #2 sec before the first stim
	stimulus_event {
		picture {
		text {caption ="+";};
      x=0;y=0;};
	}wait_event;
	stimulus_event {
	nothing{};
	deltat=500;
		code = "201 start recording";  
	port_code = 201; 
	}code_event;
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
				background_color = 200,200,200;
			}s1_txt;
			x = 256; y = -256;
		}pic_s1;  
	}s1_event;
	stimulus_event{
	nothing{};
	deltat = 9;
	port_code = 10; 
	}s1_trigger;
}s1_trial;

trial { 
    trial_duration = 1500; #set to change between 1500-2000ms   
     picture left_right_pic;  
    code = "isi";
    target_button = 1; #so that a hit shows up if you press left button
} isi_trial_left;

trial { 
    trial_duration = 1500; #set to change between 1500-2000ms   
     picture left_right_pic;  
    code = "isi";
    target_button = 2; #so that a hit shows up if you press right button
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