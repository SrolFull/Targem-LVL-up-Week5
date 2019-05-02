/// @description Insert description here
// You can write your code in this editor
//Quest look like
//status - Quest param: who give - name- discrtiption - script
//Quest status: Unavailable - Rvailable - Realization - Done - Handed
enum status {
	Unavailable,
	Available,
	Realization,
	Done,
	Handed
	
}
quests[0] = [ status.Available,	[
			"GuildMaster",
			"First step",
			"You shood try to kill something",
			scr_1quest_kill_1_archer,			
			]
];