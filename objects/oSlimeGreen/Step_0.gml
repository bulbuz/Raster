standardMove();
standardShot();
enemyCheckForDmg();
	
if(hearts <= 0)
		instance_destroy(self);
		
dmgCooldown--;
