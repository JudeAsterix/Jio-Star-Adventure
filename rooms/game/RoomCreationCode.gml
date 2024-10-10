global.p_system = part_system_create_layer("Particles", false);
global.p_star_trail = part_type_create();
part_type_shape(global.p_star_trail,pt_shape_pixel);
part_type_size(global.p_star_trail,1,1,0,2);
part_type_color1(global.p_star_trail,c_white);
part_type_life(global.p_star_trail,5,30);