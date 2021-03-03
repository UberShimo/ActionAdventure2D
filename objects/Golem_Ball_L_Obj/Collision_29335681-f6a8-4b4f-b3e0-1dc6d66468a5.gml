action_set_relative(0);
action_move_contact(-90, 12, 0);
action_set_vspeed(0);
{
var __b__;
action_set_relative(1);
__b__ = action_if_collision(-4, 0, 0);
action_set_relative(0);
}
if __b__
{
{
{
action_set_relative(1);
action_create_object(Golem_Ball_Break_Obj, 0, 0);
action_set_relative(0);
}
action_kill_object();
}
}
action_set_relative(0);
