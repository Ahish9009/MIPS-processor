webtalk_init -webtalk_dir /home/ahish/Sem-4/proc/execute/execute.sim/sim_1/behav/xsim/xsim.dir/execute_tb4_behav/webtalk/
webtalk_register_client -client project
webtalk_add_data -client project -key date_generated -value "Thu Feb 20 21:58:13 2020" -context "software_version_and_target_device"
webtalk_add_data -client project -key product_version -value "XSIM v2019.2 (64-bit)" -context "software_version_and_target_device"
webtalk_add_data -client project -key build_version -value "2708876" -context "software_version_and_target_device"
webtalk_add_data -client project -key os_platform -value "LIN64" -context "software_version_and_target_device"
webtalk_add_data -client project -key registration_id -value "" -context "software_version_and_target_device"
webtalk_add_data -client project -key tool_flow -value "xsim_vivado" -context "software_version_and_target_device"
webtalk_add_data -client project -key beta -value "FALSE" -context "software_version_and_target_device"
webtalk_add_data -client project -key route_design -value "FALSE" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_family -value "not_applicable" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_device -value "not_applicable" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_package -value "not_applicable" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_speed -value "not_applicable" -context "software_version_and_target_device"
webtalk_add_data -client project -key random_id -value "1bf71e9b-a260-49f7-b82f-90b62b5f9db8" -context "software_version_and_target_device"
webtalk_add_data -client project -key project_id -value "40a8504ff13f45349937f17ec2c9d911" -context "software_version_and_target_device"
webtalk_add_data -client project -key project_iteration -value "6" -context "software_version_and_target_device"
webtalk_add_data -client project -key os_name -value "Ubuntu" -context "user_environment"
webtalk_add_data -client project -key os_release -value "Ubuntu 18.04.3 LTS" -context "user_environment"
webtalk_add_data -client project -key cpu_name -value "Intel(R) Core(TM) i7-7920HQ CPU @ 3.10GHz" -context "user_environment"
webtalk_add_data -client project -key cpu_speed -value "3095.998 MHz" -context "user_environment"
webtalk_add_data -client project -key total_processors -value "2" -context "user_environment"
webtalk_add_data -client project -key system_ram -value "5.000 GB" -context "user_environment"
webtalk_register_client -client xsim
webtalk_add_data -client xsim -key Command -value "xsim" -context "xsim\\command_line_options"
webtalk_add_data -client xsim -key trace_waveform -value "true" -context "xsim\\usage"
webtalk_add_data -client xsim -key runtime -value "1 us" -context "xsim\\usage"
webtalk_add_data -client xsim -key iteration -value "1" -context "xsim\\usage"
webtalk_add_data -client xsim -key Simulation_Time -value "0.04_sec" -context "xsim\\usage"
webtalk_add_data -client xsim -key Simulation_Memory -value "129908_KB" -context "xsim\\usage"
webtalk_transmit -clientid 172989855 -regid "" -xml /home/ahish/Sem-4/proc/execute/execute.sim/sim_1/behav/xsim/xsim.dir/execute_tb4_behav/webtalk/usage_statistics_ext_xsim.xml -html /home/ahish/Sem-4/proc/execute/execute.sim/sim_1/behav/xsim/xsim.dir/execute_tb4_behav/webtalk/usage_statistics_ext_xsim.html -wdm /home/ahish/Sem-4/proc/execute/execute.sim/sim_1/behav/xsim/xsim.dir/execute_tb4_behav/webtalk/usage_statistics_ext_xsim.wdm -intro "<H3>XSIM Usage Report</H3><BR>"
webtalk_terminate
