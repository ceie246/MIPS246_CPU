
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name cpu_pc_if_id_itype -dir "E:/GitHub/MIPS246_CPU/cpu_pc_if_id_jtype_bus_led_segment/planAhead_run_2" -part xc6slx16csg324-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "E:/GitHub/MIPS246_CPU/cpu_pc_if_id_jtype_bus_led_segment/top_core.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {E:/GitHub/MIPS246_CPU/cpu_pc_if_id_jtype_bus_led_segment} }
set_property target_constrs_file "top_cpu_ucf.ucf" [current_fileset -constrset]
add_files [list {top_cpu_ucf.ucf}] -fileset [get_property constrset [current_run]]
open_netlist_design
