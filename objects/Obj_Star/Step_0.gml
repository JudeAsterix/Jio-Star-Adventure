/// @description Insert description here
// You can write your code in this editor
Star_Update();
//part_particles_create(global.p_system,x,y,global.p_star_trail,1);
part_emitter_region(global.p_system,p_emitter,x-24,x+24,y,y,ps_shape_line,ps_distr_gaussian);