import { world, system } from '@minecraft/server';

world.afterEvents.playerSpawn.subscribe(event =>{ 
	isl_playerSpawn(event);
});

function isl_playerSpawn(event){
	const player = event.player;
	
	if(!player.hasTag("isl_playerSpawn")){
		if(world.getAbsoluteTime() < 600){
			player.runCommandAsync("setworldspawn 8 32767 8");
			player.runCommandAsync("tp @a 8 74 8");
		}
		player.runCommandAsync("give @s apple 1");
		player.runCommandAsync("give @s dirt 1");
		player.runCommandAsync("give @s sapling 1");
		player.runCommandAsync("give @s lava_bucket 1");
		player.runCommandAsync("give @s ice 1");
		player.runCommandAsync("give @s chest 1");
		player.addTag("isl_playerSpawn");
	}
}