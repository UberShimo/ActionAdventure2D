action_set_relative(0);
action_set_alarm(10, 0);
{
var __b__;
action_set_relative(1);
__b__ = action_if_object(Detection_Area_Obj, 0, 0);
action_set_relative(0);
}
if __b__
{
{
__b__ = action_if_dice(20);
if __b__
{
{
action_set_relative(1);
action_create_object(Zombie_Obj, 0, 0);
action_set_relative(0);
}
}
}
}
action_set_relative(0);
