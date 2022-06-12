// Movement
// -----------------------
MAX_SPEED = 5;
NORMAL_SPEED = 3;
SPEED = NORMAL_SPEED;
dirX = 0;
dirY = 0;
velX = 0;
velY = 0;

run = 0;
right = 0;
left = 0;
up = 0;
down = 0;

last_faced = 4;

inventory = [];
MAX_ITEMS = 25;

// Combat 
// -----------------------
hearts = 3;
attacking = false;
attackCooldown = 0;
dmgCooldown = 0;

// Collectables
coins = 0;

//visuals
particleAmount = 50; //percent between 0 and 100
grassTile = instance_create_layer(x,y,"grassAnimation",oGrassSingleTile);
grassTile.target = self;

//Start Setup
alarm_set(0,1);
