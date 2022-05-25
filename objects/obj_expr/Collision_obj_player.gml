obj_player1_stats.expr ++;
var expr = instance_create(obj_player.x, obj_player.y, obj_expr_gain);
expr.creator = obj_player;
instance_destroy();

