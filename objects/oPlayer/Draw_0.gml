if(dmgCooldown>30 and floor(dmgCooldown/2)%2=0)
{
	shader_set(shaderDmg);
	draw_self();
	shader_reset();
}
else draw_self();
// PARTICLES
if(right or left or up or down)
{
	particleAmount = (run ? 20 : 10);
	grassParticles(x-10,x+10,y+4,y+12,particleAmount);
}
