var xx = lengthdir_x(45,projectile_face*45);
var yy = lengthdir_y(45,projectile_face*45);

part_emitter_region(particle.ps,particle.spark_emitter,x-xx,x+xx,y+yy,y-yy,ps_shape_rectangle,ps_distr_gaussian);
part_emitter_stream(particle.ps,particle.spark_emitter,particle.spark,7);    // "vypustenie" particlov

