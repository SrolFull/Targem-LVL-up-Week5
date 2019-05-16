//1 - status
//2 - Aim
//3 - Reward
enum Status{
	Unavailable,
	Available,
	Progress,
	Finished,
	Closed
};
with(obj_player){
	//1 quest
	quests[0] = [Status.Unavailable,scr_kill_1_archer_quest,scr_kill_1_archer_reward];
}