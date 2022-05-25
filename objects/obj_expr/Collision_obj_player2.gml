obj_player2_stats.expr ++;
var expr = instance_create(obj_player2.x, obj_player2.y, obj_expr_gain);
expr.creator = obj_player2;
instance_destroy();

