#!/bin/env fish

function generate_images
  local ARGS="proc; opt; fsm; opt;"
  yosys -p "read_verilog ../Lab_4/Lab_4.srcs/sources_1/imports/Lab3_true.srcs/sources_1/imports/Lab3/Lab3.srcs/sources_1/imports/new/FullAdder_module.v; ${ARGS} show -format png -prefix ./images/full_adder_module"
  yosys -p "read_verilog ../Lab_4/Lab_4.srcs/sources_1/new/top_main_module.v; ${ARGS} show -format png -prefix ./images/top_main_module"
  yosys -p "read_verilog ../Lab_4/Lab_4.srcs/sources_1/new/LSFR_module.v; ${ARGS} show -format png -prefix ./images/lsfr_module"
  yosys -p "read_verilog ../Lab_4/Lab_4.srcs/sources_1/imports/Lab3_true.srcs/sources_1/imports/Lab3/Lab3.srcs/sources_1/new/edge_detector_module.v; ${ARGS} show -format png -prefix ./images/edge_detector_module"
  yosys -p "read_verilog ../Lab_4/Lab_4.srcs/sources_1/new/Time_Counter_module.v; ${ARGS} show -format png -prefix ./images/time_counter_module"
  yosys -p "read_verilog ../Lab_4/Lab_4.srcs/sources_1/imports/Lab3_true.srcs/sources_1/imports/Lab3/Lab3.srcs/sources_1/new/fifthteen-bit_counter_module.v; ${ARGS} show -format png -prefix ./images/fifthteen-bit_counter_module"
  yosys -p "read_verilog ../Lab_4/Lab_4.srcs/sources_1/imports/Lab3_true.srcs/sources_1/imports/Lab3/Lab3.srcs/sources_1/new/five_bit_counter_module.v; ${ARGS} show -format png -prefix ./images/five-bit_counter_module"
  yosys -p "read_verilog ../Lab_4/Lab_4.srcs/sources_1/new/state_machine_module.v; ${ARGS} show -format png -prefix ./images/state_machine_module"
  yosys -p "read_verilog ../Lab_4/Lab_4.srcs/sources_1/new/state_machine_combinatorial.v; ${ARGS} show -format png -prefix ./images/state_machine_combinatorial_module"
end

function compile_project
  find commands -type f -iname "*.tex" -exec echo "\\input{{}}" \; > ./commands.tex
  /Library/TeX/texbin/lualatex --shell-escape --output-directory=./build/ ./report.tex
end

function cleanup_directory
  rm ./commands/._*
  rm ./._*
end

# generate_images
# cleanup_directory
compile_project

