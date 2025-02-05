// Copyright 2020 OpenHW Group
// Copyright 2020 Datum Technology Corporation
// 
// Licensed under the Solderpad Hardware Licence, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
// 
//     https://solderpad.org/licenses/
// 
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.


`ifndef __UVMT_CV32_TEST_CFG_SV__
`define __UVMT_CV32_TEST_CFG_SV__


/**
 * Datum TODO tune this up for CORE-V projects.
 */
class uvmt_cv32_test_cfg_c extends uvm_object;
   
   // Command line arguments
   string         cli_block_name_str      = "BLKNM";
   bit            cli_block_name_override = 0;
   //uvm_reg_block  cli_selected_block;
   
   
   //`uvm_object_utils_begin(uvmt_cv32_test_cfg_c)
   //   `uvm_field_object(cli_selected_block, UVM_DEFAULT)
   //`uvm_object_utils_end
   
   
   /**
    * Default constructor.
    */
   extern function new(string name="uvmt_cv32_test_cfg");
   
   /**
    * TODO Describe uvmt_cv32_test_cfg_c::process_cli_args()
    */
   extern function void process_cli_args();
   
endclass : uvmt_cv32_test_cfg_c


function uvmt_cv32_test_cfg_c::new(string name="uvmt_cv32_test_cfg");
   
   super.new(name);
   
endfunction : new


function void uvmt_cv32_test_cfg_c::process_cli_args();
   
   string  cli_block_name_parsed_str  = "";
   
   if (uvm_cmdline_proc.get_arg_value({"+", cli_block_name_str, "="}, cli_block_name_parsed_str)) begin
      if (cli_block_name_parsed_str != "") begin
         //cli_num_pkts_override = 1;
         //cli_selected_block = ral.get_block_by_name(cli_block_name_parsed_str);
      end
      else begin
         cli_block_name_override = 0;
      end
   end
   else begin
      cli_block_name_override = 0;
   end
   
endfunction : process_cli_args


`endif // __UVMT_CV32_TEST_CFG_SV__
