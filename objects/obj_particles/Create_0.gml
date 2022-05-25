ps = part_system_create();
part_system_depth       (ps,-1000000);

spark = part_type_create();
part_type_sprite        (spark,spr_part_spark,false,false,false);             
part_type_orientation   (spark,0,0,0,0,1);             // uhol
part_type_size          (spark,0.05,0.25,0,0);                // velkost particlu
part_type_speed         (spark,2,3,0.1,0.1);                 // rychlost particlu
part_type_direction     (spark,0,360,0,0);               // smer
part_type_life          (spark,room_speed/5,room_speed/4);      // zivotnost
part_type_colour2       (spark,make_colour_rgb(249, 25, 9),make_colour_rgb(99, 22, 16));

spark_emitter = part_emitter_create(ps);            // emiter, ktory "vytvara particly"
//part_emitter_region(ps,spark_emitter,x,x,y,y,ps_shape_line,ps_distr_linear);    // oblast, v ktorej sa vytvaraju particly
//part_emitter_stream(ps,spark_emitter,spark,15);    // "vypustenie" particlov

