ps = part_system_create();
part_system_depth(ps,0);

spark = part_type_create();
part_type_sprite        (spark,spr_part_spark,false,false,false);  
part_type_orientation   (spark,0,0,0,0,1);                                  // uhol
part_type_size          (spark,0.05,0.10,0,0); 
part_type_speed         (spark,0.25,0.30,0.015,0.03);                       // rychlost particlu
part_type_direction     (spark,0,360,0,15);                                 // smer
part_type_life          (spark,room_speed*8,room_speed*10);                 // zivotnost
part_type_colour3       (spark,c_red,make_colour_rgb(229, 164, 66),c_gray);

line = part_type_create();
part_type_sprite        (line,spr_part_line,false,false,false); 
part_type_orientation   (line,0,0,0,0,1);                                   // uhol
part_type_size          (line,0.04,0.07,0,0); 
part_type_speed         (line,0.25,0.30,0.018,0.05);                        // rychlost particlu
part_type_direction     (line,0,360,0,0);                                   // smer
part_type_life          (line,room_speed*8,room_speed*10);                  // zivotnost
part_type_colour3       (line,make_colour_rgb(229, 164, 66),make_colour_rgb(216, 212, 88),c_gray);

spark_emitter = part_emitter_create(ps);                                    // emiter, ktory "vytvara particly"
part_emitter_region     (ps,spark_emitter,x,x,y,y,ps_shape_ellipse,ps_distr_linear);     // oblast, v ktorej sa vytvaraju particly
part_emitter_stream     (ps,spark_emitter,spark,18);                        // "vypustenie" particlov

line_emitter = part_emitter_create(ps);                                     // emiter, ktory "vytvara particly"
part_emitter_region     (ps,line_emitter,x,x,y,y,ps_shape_line,ps_distr_linear);         // oblast, v ktorej sa vytvaraju particly
part_emitter_stream     (ps,line_emitter,line,3);                           // "vypustenie" particlov

