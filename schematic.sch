# File saved with Nlview 7.5.8 2022-09-21 7111 VDI=41 GEI=38 GUI=JA:10.0 threadsafe
# 
# non-default properties - (restore without -noprops)
property -colorscheme classic
property attrcolor #000000
property attrfontsize 8
property autobundle 1
property backgroundcolor #ffffff
property boxcolor0 #000000
property boxcolor1 #000000
property boxcolor2 #000000
property boxinstcolor #000000
property boxpincolor #000000
property buscolor #008000
property closeenough 5
property createnetattrdsp 2048
property decorate 1
property elidetext 40
property fillcolor1 #ffffcc
property fillcolor2 #dfebf8
property fillcolor3 #f0f0f0
property gatecellname 2
property instattrmax 30
property instdrag 15
property instorder 1
property marksize 12
property maxfontsize 18
property maxzoom 7.5
property netcolor #19b400
property objecthighlight0 #ff00ff
property objecthighlight1 #ffff00
property objecthighlight2 #00ff00
property objecthighlight3 #0095ff
property objecthighlight4 #8000ff
property objecthighlight5 #ffc800
property objecthighlight7 #00ffff
property objecthighlight8 #ff00ff
property objecthighlight9 #ccccff
property objecthighlight10 #0ead00
property objecthighlight11 #cefc00
property objecthighlight12 #9e2dbe
property objecthighlight13 #ba6a29
property objecthighlight14 #fc0188
property objecthighlight15 #02f990
property objecthighlight16 #f1b0fb
property objecthighlight17 #fec004
property objecthighlight18 #149bff
property objecthighlight19 #eb591b
property overlaycolor #19b400
property pbuscolor #000000
property pbusnamecolor #000000
property pinattrmax 20
property pinorder 2
property pinpermute 0
property portcolor #000000
property portnamecolor #000000
property ripindexfontsize 4
property rippercolor #000000
property rubberbandcolor #000000
property rubberbandfontsize 18
property selectattr 0
property selectionappearance 2
property selectioncolor #0000ff
property sheetheight 44
property sheetwidth 68
property showmarks 1
property shownetname 0
property showpagenumbers 1
property showripindex 1
property timelimit 1
#
module new top_module work:top_module:NOFILE -nosplit
load symbol data_mem work:data_mem:NOFILE HIERBOX pin clk input.left pin write input.left pinBus addr input.left [8:0] pinBus in_data input.left [7:0] pinBus out_data output.right [7:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol instruction_mem work:instruction_mem:NOFILE HIERBOX pinBus address input.left [9:0] pinBus instruction output.right [15:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol PC work:PC:NOFILE HIERBOX pin clk input.left pin enable input.left pin jump input.left pin reset input.left pinBus offset input.left [5:0] pinBus pc output.right [9:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol ALU work:ALU:NOFILE HIERBOX pin carry output.right pin sign output.right pin zeroflag output.right pinBus Rx input.left [7:0] pinBus Ry input.left [7:0] pinBus Rz output.right [7:0] pinBus opcode input.left [3:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol RTL_MUX13 work MUX pinBus I0 input.left [7:0] pinBus I1 input.left [7:0] pinBus O output.right [7:0] pinBus S input.bot [1:0] fillcolor 1
load symbol RTL_AND2 work AND pin I0 input pin I1 input pin O output fillcolor 1
load symbol RTL_AND2 workI1 AND pin I0 input pin I1 input.neg pin O output fillcolor 1
load symbol RTL_OR work OR pin I0 input pin I1 input pin O output fillcolor 1
load symbol RTL_MUX16 work MUX pin S input.bot pinBus I0 input.left [7:0] pinBus I1 input.left [7:0] pinBus O output.right [7:0] fillcolor 1
load symbol cu work:cu:NOFILE HIERBOX pin jump output.right pin mem_to_reg output.right pin reg_to_ALU output.right pin write_data_mem output.right pin write_reg output.right pinBus IR input.left [3:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol RTL_INV work INV pin I0 input pin O output fillcolor 1
load symbol hazard_unit work:hazard_unit:NOFILE HIERBOX pin ex_mem_to_reg input.left pin ex_write_reg input.left pin is_branch input.left pin mem_mem_to_reg input.left pin mem_write_reg input.left pin stall output.right pin wb_write_reg input.left pinBus ex_dest input.left [2:0] pinBus ex_rs1 input.left [2:0] pinBus ex_rs2 input.left [2:0] pinBus forward_a_ex output.right [1:0] pinBus forward_a_id output.right [1:0] pinBus forward_b_ex output.right [1:0] pinBus forward_b_id output.right [1:0] pinBus id_rs1 input.left [2:0] pinBus id_rs2 input.left [2:0] pinBus mem_dest input.left [2:0] pinBus wb_dest input.left [2:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol RTL_EQ10 work RTL(=) pin O output.right pinBus I0 input.left [3:0] pinBus I1 input.left [3:0] fillcolor 1
load symbol RTL_EQ9 work RTL(=) pin O output.right pinBus I0 input.left [7:0] pinBus I1 input.left [7:0] fillcolor 1
load symbol register_file work:register_file:NOFILE HIERBOX pin clk input.left pin write input.left pinBus addr_1 input.left [2:0] pinBus addr_2 input.left [2:0] pinBus in_addr input.left [2:0] pinBus in_data input.left [7:0] pinBus out_data_1 output.right [7:0] pinBus out_data_2 output.right [7:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol RTL_MUX10 work MUX pin S input.bot pinBus I0 input.left [15:0] pinBus I1 input.left [15:0] pinBus O output.right [15:0] fillcolor 1
load symbol RTL_MUX24 work MUX pin I0 input.left pin I1 input.left pin O output.right pin S input.bot fillcolor 1
load symbol RTL_MUX25 work MUX pin S input.bot pinBus I0 input.left [38:0] pinBus I1 input.left [38:0] pinBus O output.right [38:0] fillcolor 1
load symbol RTL_REG_ASYNC__BREG_2 work[20:0]ssww GEN pin C input.clk.left pin CLR input.top pinBus D input.left [20:0] pinBus Q output.right [20:0] fillcolor 1 sandwich 3 prop @bundle 21
load symbol RTL_REG_ASYNC__BREG_1 work[15:0]sssww GEN pin C input.clk.left pin CE input.left pin CLR input.top pinBus D input.left [15:0] pinBus Q output.right [15:0] fillcolor 1 sandwich 3 prop @bundle 16
load symbol RTL_REG_ASYNC__BREG_2 work[30:0]ssww GEN pin C input.clk.left pin CLR input.top pinBus D input.left [30:0] pinBus Q output.right [30:0] fillcolor 1 sandwich 3 prop @bundle 31
load symbol RTL_REG_ASYNC__BREG_2 work[38:0]ssww GEN pin C input.clk.left pin CLR input.top pinBus D input.left [38:0] pinBus Q output.right [38:0] fillcolor 1 sandwich 3 prop @bundle 39
load port clk input -pg 1 -lvl 0 -x 0 -y 740
load port reset input -pg 1 -lvl 0 -x 0 -y 690
load inst D1 data_mem work:data_mem:NOFILE -autohide -attr @cell(#000000) data_mem -pinBusAttr addr @name addr[8:0] -pinBusAttr in_data @name in_data[7:0] -pinBusAttr out_data @name out_data[7:0] -pg 1 -lvl 22 -x 6340 -y 680
load inst I1 instruction_mem work:instruction_mem:NOFILE -autohide -attr @cell(#000000) instruction_mem -pinBusAttr address @name address[9:0] -pinBusAttr instruction @name instruction[15:0] -pg 1 -lvl 13 -x 3600 -y 730
load inst P1 PC work:PC:NOFILE -autohide -attr @cell(#000000) PC -pinBusAttr offset @name offset[5:0] -pinBusAttr pc @name pc[9:0] -pg 1 -lvl 12 -x 3330 -y 690
load inst a1 ALU work:ALU:NOFILE -autohide -attr @cell(#000000) ALU -pinAttr carry @attr n/c -pinAttr sign @attr n/c -pinAttr zeroflag @attr n/c -pinBusAttr Rx @name Rx[7:0] -pinBusAttr Ry @name Ry[7:0] -pinBusAttr Rz @name Rz[7:0] -pinBusAttr opcode @name opcode[3:0] -pg 1 -lvl 6 -x 1640 -y 280
load inst alu_rx_fwd0_i RTL_MUX13 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[7:0] -pinBusAttr I0 @attr S=2'b01 -pinBusAttr I1 @name I1[7:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[7:0] -pinBusAttr S @name S[1:0] -pg 1 -lvl 4 -x 980 -y 110
load inst alu_rx_fwd_i RTL_MUX13 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[7:0] -pinBusAttr I0 @attr S=2'b10 -pinBusAttr I1 @name I1[7:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[7:0] -pinBusAttr S @name S[1:0] -pg 1 -lvl 5 -x 1360 -y 100
load inst alu_ry_fwd0_i RTL_MUX13 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[7:0] -pinBusAttr I0 @attr S=2'b01 -pinBusAttr I1 @name I1[7:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[7:0] -pinBusAttr S @name S[1:0] -pg 1 -lvl 3 -x 640 -y 280
load inst alu_ry_fwd_i RTL_MUX13 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[7:0] -pinBusAttr I0 @attr S=2'b10 -pinBusAttr I1 @name I1[7:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[7:0] -pinBusAttr S @name S[1:0] -pg 1 -lvl 4 -x 980 -y 280
load inst branch_rx0_i RTL_MUX13 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[7:0] -pinBusAttr I0 @attr S=2'b10 -pinBusAttr I1 @name I1[7:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[7:0] -pinBusAttr S @name S[1:0] -pg 1 -lvl 6 -x 1640 -y 470
load inst branch_rx1_i RTL_MUX13 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[7:0] -pinBusAttr I0 @attr S=2'b01 -pinBusAttr I1 @name I1[7:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[7:0] -pinBusAttr S @name S[1:0] -pg 1 -lvl 5 -x 1360 -y 470
load inst branch_rx_i RTL_MUX13 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[7:0] -pinBusAttr I0 @attr S=2'b11 -pinBusAttr I1 @name I1[7:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[7:0] -pinBusAttr S @name S[1:0] -pg 1 -lvl 7 -x 1910 -y 470
load inst branch_ry0_i RTL_MUX13 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[7:0] -pinBusAttr I0 @attr S=2'b10 -pinBusAttr I1 @name I1[7:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[7:0] -pinBusAttr S @name S[1:0] -pg 1 -lvl 6 -x 1640 -y 610
load inst branch_ry1_i RTL_MUX13 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[7:0] -pinBusAttr I0 @attr S=2'b01 -pinBusAttr I1 @name I1[7:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[7:0] -pinBusAttr S @name S[1:0] -pg 1 -lvl 5 -x 1360 -y 590
load inst branch_ry_i RTL_MUX13 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[7:0] -pinBusAttr I0 @attr S=2'b11 -pinBusAttr I1 @name I1[7:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[7:0] -pinBusAttr S @name S[1:0] -pg 1 -lvl 7 -x 1910 -y 610
load inst branch_taken0_i RTL_AND2 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 9 -x 2440 -y 500
load inst branch_taken0_i__0 RTL_AND2 workI1 -attr @cell(#000000) RTL_AND -pg 1 -lvl 9 -x 2440 -y 640
load inst branch_taken_i RTL_OR work -attr @cell(#000000) RTL_OR -pg 1 -lvl 10 -x 2750 -y 700
load inst bus_ALU_2_in_i RTL_MUX16 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[7:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[7:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[7:0] -pg 1 -lvl 5 -x 1360 -y 290
load inst bus_reg_in_i RTL_MUX16 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[7:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[7:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[7:0] -pg 1 -lvl 2 -x 380 -y 140
load inst c1 cu work:cu:NOFILE -autohide -attr @cell(#000000) cu -pinBusAttr IR @name IR[3:0] -pg 1 -lvl 10 -x 2750 -y 540
load inst enable0_i RTL_INV work -attr @cell(#000000) RTL_INV -pg 1 -lvl 11 -x 3020 -y 630
load inst hu hazard_unit work:hazard_unit:NOFILE -autohide -attr @cell(#000000) hazard_unit -pinBusAttr ex_dest @name ex_dest[2:0] -pinBusAttr ex_rs1 @name ex_rs1[2:0] -pinBusAttr ex_rs2 @name ex_rs2[2:0] -pinBusAttr forward_a_ex @name forward_a_ex[1:0] -pinBusAttr forward_a_id @name forward_a_id[1:0] -pinBusAttr forward_b_ex @name forward_b_ex[1:0] -pinBusAttr forward_b_id @name forward_b_id[1:0] -pinBusAttr id_rs1 @name id_rs1[2:0] -pinBusAttr id_rs2 @name id_rs2[2:0] -pinBusAttr mem_dest @name mem_dest[2:0] -pinBusAttr wb_dest @name wb_dest[2:0] -pg 1 -lvl 18 -x 5100 -y 60
load inst is_beq_i RTL_EQ10 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[3:0] -pinBusAttr I1 @name I1[3:0] -pinBusAttr I1 @attr V=B\"1010\" -pg 1 -lvl 16 -x 4540 -y 930
load inst is_bne_i RTL_EQ10 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[3:0] -pinBusAttr I1 @name I1[3:0] -pinBusAttr I1 @attr V=B\"1011\" -pg 1 -lvl 8 -x 2240 -y 630
load inst is_branch0_i RTL_OR work -attr @cell(#000000) RTL_OR -pg 1 -lvl 17 -x 4710 -y 320
load inst is_equal_i RTL_EQ9 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[7:0] -pinBusAttr I1 @name I1[7:0] -pg 1 -lvl 8 -x 2240 -y 510
load inst r1 register_file work:register_file:NOFILE -autohide -attr @cell(#000000) register_file -pinBusAttr addr_1 @name addr_1[2:0] -pinBusAttr addr_2 @name addr_2[2:0] -pinBusAttr in_addr @name in_addr[2:0] -pinBusAttr in_data @name in_data[7:0] -pinBusAttr out_data_1 @name out_data_1[7:0] -pinBusAttr out_data_2 @name out_data_2[7:0] -pg 1 -lvl 4 -x 980 -y 390
load inst stage10_i RTL_MUX10 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[15:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[15:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[15:0] -pg 1 -lvl 14 -x 3970 -y 750
load inst stage10_i__0 RTL_MUX24 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 14 -x 3970 -y 590
load inst stage1_i RTL_MUX24 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b0 -pinAttr I1 @attr S=default -pg 1 -lvl 13 -x 3600 -y 590
load inst stage20_i RTL_MUX25 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[38:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[38:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[38:0] -pg 1 -lvl 19 -x 5540 -y 550
load inst take_target_i RTL_OR work -attr @cell(#000000) RTL_OR -pg 1 -lvl 11 -x 3020 -y 700
load inst stage4_reg[20:0] RTL_REG_ASYNC__BREG_2 work[20:0]ssww -attr @cell(#000000) RTL_REG_ASYNC -pg 1 -lvl 1 -x 90 -y 750
load inst stage1_reg[15:0] RTL_REG_ASYNC__BREG_1 work[15:0]sssww -attr @cell(#000000) RTL_REG_ASYNC -pg 1 -lvl 15 -x 4200 -y 950
load inst stage3_reg[30:0] RTL_REG_ASYNC__BREG_2 work[30:0]ssww -attr @cell(#000000) RTL_REG_ASYNC -pg 1 -lvl 21 -x 6070 -y 640
load inst stage2_reg[38:0] RTL_REG_ASYNC__BREG_2 work[38:0]ssww -attr @cell(#000000) RTL_REG_ASYNC -pg 1 -lvl 20 -x 5770 -y 730
load net <const0> -ground -pin is_beq_i I1[2] -pin is_beq_i I1[0] -pin is_bne_i I1[2] -pin stage10_i I0[15] -pin stage10_i I0[14] -pin stage10_i I0[13] -pin stage10_i I0[12] -pin stage10_i I0[11] -pin stage10_i I0[10] -pin stage10_i I0[9] -pin stage10_i I0[8] -pin stage10_i I0[7] -pin stage10_i I0[6] -pin stage10_i I0[5] -pin stage10_i I0[4] -pin stage10_i I0[3] -pin stage10_i I0[2] -pin stage10_i I0[1] -pin stage10_i I0[0] -pin stage1_i I1 -pin stage20_i I0[38] -pin stage20_i I0[37] -pin stage20_i I0[36] -pin stage20_i I0[35] -pin stage20_i I0[34] -pin stage20_i I0[33] -pin stage20_i I0[32] -pin stage20_i I0[31] -pin stage20_i I0[30] -pin stage20_i I0[29] -pin stage20_i I0[28] -pin stage20_i I0[27] -pin stage20_i I0[26] -pin stage20_i I0[25] -pin stage20_i I0[24] -pin stage20_i I0[23] -pin stage20_i I0[22] -pin stage20_i I0[21] -pin stage20_i I0[20] -pin stage20_i I0[19] -pin stage20_i I0[18] -pin stage20_i I0[17] -pin stage20_i I0[16] -pin stage20_i I0[15] -pin stage20_i I0[14] -pin stage20_i I0[13] -pin stage20_i I0[12] -pin stage20_i I0[11] -pin stage20_i I0[10] -pin stage20_i I0[9] -pin stage20_i I0[8] -pin stage20_i I0[7] -pin stage20_i I0[6] -pin stage20_i I0[5] -pin stage20_i I0[4] -pin stage20_i I0[3] -pin stage20_i I0[2] -pin stage20_i I0[1] -pin stage20_i I0[0]
load net <const1> -power -pin is_beq_i I1[3] -pin is_beq_i I1[1] -pin is_bne_i I1[3] -pin is_bne_i I1[1] -pin is_bne_i I1[0] -pin stage10_i__0 I0 -pin stage1_i I0
load net ALU_out[0] -attr @rip(#000000) Rz[0] -pin a1 Rz[0] -pin branch_rx_i I0[0] -pin branch_ry_i I0[0] -pin stage3_reg[30:0] D[0]
load net ALU_out[1] -attr @rip(#000000) Rz[1] -pin a1 Rz[1] -pin branch_rx_i I0[1] -pin branch_ry_i I0[1] -pin stage3_reg[30:0] D[1]
load net ALU_out[2] -attr @rip(#000000) Rz[2] -pin a1 Rz[2] -pin branch_rx_i I0[2] -pin branch_ry_i I0[2] -pin stage3_reg[30:0] D[2]
load net ALU_out[3] -attr @rip(#000000) Rz[3] -pin a1 Rz[3] -pin branch_rx_i I0[3] -pin branch_ry_i I0[3] -pin stage3_reg[30:0] D[3]
load net ALU_out[4] -attr @rip(#000000) Rz[4] -pin a1 Rz[4] -pin branch_rx_i I0[4] -pin branch_ry_i I0[4] -pin stage3_reg[30:0] D[4]
load net ALU_out[5] -attr @rip(#000000) Rz[5] -pin a1 Rz[5] -pin branch_rx_i I0[5] -pin branch_ry_i I0[5] -pin stage3_reg[30:0] D[5]
load net ALU_out[6] -attr @rip(#000000) Rz[6] -pin a1 Rz[6] -pin branch_rx_i I0[6] -pin branch_ry_i I0[6] -pin stage3_reg[30:0] D[6]
load net ALU_out[7] -attr @rip(#000000) Rz[7] -pin a1 Rz[7] -pin branch_rx_i I0[7] -pin branch_ry_i I0[7] -pin stage3_reg[30:0] D[7]
load net CU_bus_1[0] -pin stage2_reg[38:0] Q[9] -pin stage3_reg[30:0] D[28]
load net CU_bus_1[1] -pin bus_ALU_2_in_i S -pin stage2_reg[38:0] Q[10]
load net CU_bus_1[2] -pin hu ex_mem_to_reg -pin stage2_reg[38:0] Q[11] -pin stage3_reg[30:0] D[29]
load net CU_bus_1[3] -pin hu ex_write_reg -pin stage2_reg[38:0] Q[12] -pin stage3_reg[30:0] D[30]
load net IR_bus[0] -attr @rip(#000000) instruction[0] -pin I1 instruction[0] -pin stage10_i I1[0]
load net IR_bus[10] -attr @rip(#000000) instruction[10] -pin I1 instruction[10] -pin stage10_i I1[10]
load net IR_bus[11] -attr @rip(#000000) instruction[11] -pin I1 instruction[11] -pin stage10_i I1[11]
load net IR_bus[12] -attr @rip(#000000) instruction[12] -pin I1 instruction[12] -pin stage10_i I1[12]
load net IR_bus[13] -attr @rip(#000000) instruction[13] -pin I1 instruction[13] -pin stage10_i I1[13]
load net IR_bus[14] -attr @rip(#000000) instruction[14] -pin I1 instruction[14] -pin stage10_i I1[14]
load net IR_bus[15] -attr @rip(#000000) instruction[15] -pin I1 instruction[15] -pin stage10_i I1[15]
load net IR_bus[1] -attr @rip(#000000) instruction[1] -pin I1 instruction[1] -pin stage10_i I1[1]
load net IR_bus[2] -attr @rip(#000000) instruction[2] -pin I1 instruction[2] -pin stage10_i I1[2]
load net IR_bus[3] -attr @rip(#000000) instruction[3] -pin I1 instruction[3] -pin stage10_i I1[3]
load net IR_bus[4] -attr @rip(#000000) instruction[4] -pin I1 instruction[4] -pin stage10_i I1[4]
load net IR_bus[5] -attr @rip(#000000) instruction[5] -pin I1 instruction[5] -pin stage10_i I1[5]
load net IR_bus[6] -attr @rip(#000000) instruction[6] -pin I1 instruction[6] -pin stage10_i I1[6]
load net IR_bus[7] -attr @rip(#000000) instruction[7] -pin I1 instruction[7] -pin stage10_i I1[7]
load net IR_bus[8] -attr @rip(#000000) instruction[8] -pin I1 instruction[8] -pin stage10_i I1[8]
load net IR_bus[9] -attr @rip(#000000) instruction[9] -pin I1 instruction[9] -pin stage10_i I1[9]
load net address_bus[0] -attr @rip(#000000) pc[0] -pin I1 address[0] -pin P1 pc[0]
load net address_bus[1] -attr @rip(#000000) pc[1] -pin I1 address[1] -pin P1 pc[1]
load net address_bus[2] -attr @rip(#000000) pc[2] -pin I1 address[2] -pin P1 pc[2]
load net address_bus[3] -attr @rip(#000000) pc[3] -pin I1 address[3] -pin P1 pc[3]
load net address_bus[4] -attr @rip(#000000) pc[4] -pin I1 address[4] -pin P1 pc[4]
load net address_bus[5] -attr @rip(#000000) pc[5] -pin I1 address[5] -pin P1 pc[5]
load net address_bus[6] -attr @rip(#000000) pc[6] -pin I1 address[6] -pin P1 pc[6]
load net address_bus[7] -attr @rip(#000000) pc[7] -pin I1 address[7] -pin P1 pc[7]
load net address_bus[8] -attr @rip(#000000) pc[8] -pin I1 address[8] -pin P1 pc[8]
load net address_bus[9] -attr @rip(#000000) pc[9] -pin I1 address[9] -pin P1 pc[9]
load net alu_out_wb[0] -attr @rip(#000000) 0 -pin bus_reg_in_i I1[0] -pin stage4_reg[20:0] Q[8]
load net alu_out_wb[1] -attr @rip(#000000) 1 -pin bus_reg_in_i I1[1] -pin stage4_reg[20:0] Q[9]
load net alu_out_wb[2] -attr @rip(#000000) 2 -pin bus_reg_in_i I1[2] -pin stage4_reg[20:0] Q[10]
load net alu_out_wb[3] -attr @rip(#000000) 3 -pin bus_reg_in_i I1[3] -pin stage4_reg[20:0] Q[11]
load net alu_out_wb[4] -attr @rip(#000000) 4 -pin bus_reg_in_i I1[4] -pin stage4_reg[20:0] Q[12]
load net alu_out_wb[5] -attr @rip(#000000) 5 -pin bus_reg_in_i I1[5] -pin stage4_reg[20:0] Q[13]
load net alu_out_wb[6] -attr @rip(#000000) 6 -pin bus_reg_in_i I1[6] -pin stage4_reg[20:0] Q[14]
load net alu_out_wb[7] -attr @rip(#000000) 7 -pin bus_reg_in_i I1[7] -pin stage4_reg[20:0] Q[15]
load net alu_rx_fwd0_i_n_0 -attr @rip(#000000) O[7] -pin alu_rx_fwd0_i O[7] -pin alu_rx_fwd_i I1[7]
load net alu_rx_fwd0_i_n_1 -attr @rip(#000000) O[6] -pin alu_rx_fwd0_i O[6] -pin alu_rx_fwd_i I1[6]
load net alu_rx_fwd0_i_n_2 -attr @rip(#000000) O[5] -pin alu_rx_fwd0_i O[5] -pin alu_rx_fwd_i I1[5]
load net alu_rx_fwd0_i_n_3 -attr @rip(#000000) O[4] -pin alu_rx_fwd0_i O[4] -pin alu_rx_fwd_i I1[4]
load net alu_rx_fwd0_i_n_4 -attr @rip(#000000) O[3] -pin alu_rx_fwd0_i O[3] -pin alu_rx_fwd_i I1[3]
load net alu_rx_fwd0_i_n_5 -attr @rip(#000000) O[2] -pin alu_rx_fwd0_i O[2] -pin alu_rx_fwd_i I1[2]
load net alu_rx_fwd0_i_n_6 -attr @rip(#000000) O[1] -pin alu_rx_fwd0_i O[1] -pin alu_rx_fwd_i I1[1]
load net alu_rx_fwd0_i_n_7 -attr @rip(#000000) O[0] -pin alu_rx_fwd0_i O[0] -pin alu_rx_fwd_i I1[0]
load net alu_rx_fwd[0] -attr @rip(#000000) O[0] -pin a1 Rx[0] -pin alu_rx_fwd_i O[0] -pin stage3_reg[30:0] D[8]
load net alu_rx_fwd[1] -attr @rip(#000000) O[1] -pin a1 Rx[1] -pin alu_rx_fwd_i O[1] -pin stage3_reg[30:0] D[9]
load net alu_rx_fwd[2] -attr @rip(#000000) O[2] -pin a1 Rx[2] -pin alu_rx_fwd_i O[2] -pin stage3_reg[30:0] D[10]
load net alu_rx_fwd[3] -attr @rip(#000000) O[3] -pin a1 Rx[3] -pin alu_rx_fwd_i O[3] -pin stage3_reg[30:0] D[11]
load net alu_rx_fwd[4] -attr @rip(#000000) O[4] -pin a1 Rx[4] -pin alu_rx_fwd_i O[4] -pin stage3_reg[30:0] D[12]
load net alu_rx_fwd[5] -attr @rip(#000000) O[5] -pin a1 Rx[5] -pin alu_rx_fwd_i O[5] -pin stage3_reg[30:0] D[13]
load net alu_rx_fwd[6] -attr @rip(#000000) O[6] -pin a1 Rx[6] -pin alu_rx_fwd_i O[6] -pin stage3_reg[30:0] D[14]
load net alu_rx_fwd[7] -attr @rip(#000000) O[7] -pin a1 Rx[7] -pin alu_rx_fwd_i O[7] -pin stage3_reg[30:0] D[15]
load net alu_ry_fwd0_i_n_0 -attr @rip(#000000) O[7] -pin alu_ry_fwd0_i O[7] -pin alu_ry_fwd_i I1[7]
load net alu_ry_fwd0_i_n_1 -attr @rip(#000000) O[6] -pin alu_ry_fwd0_i O[6] -pin alu_ry_fwd_i I1[6]
load net alu_ry_fwd0_i_n_2 -attr @rip(#000000) O[5] -pin alu_ry_fwd0_i O[5] -pin alu_ry_fwd_i I1[5]
load net alu_ry_fwd0_i_n_3 -attr @rip(#000000) O[4] -pin alu_ry_fwd0_i O[4] -pin alu_ry_fwd_i I1[4]
load net alu_ry_fwd0_i_n_4 -attr @rip(#000000) O[3] -pin alu_ry_fwd0_i O[3] -pin alu_ry_fwd_i I1[3]
load net alu_ry_fwd0_i_n_5 -attr @rip(#000000) O[2] -pin alu_ry_fwd0_i O[2] -pin alu_ry_fwd_i I1[2]
load net alu_ry_fwd0_i_n_6 -attr @rip(#000000) O[1] -pin alu_ry_fwd0_i O[1] -pin alu_ry_fwd_i I1[1]
load net alu_ry_fwd0_i_n_7 -attr @rip(#000000) O[0] -pin alu_ry_fwd0_i O[0] -pin alu_ry_fwd_i I1[0]
load net alu_ry_fwd[0] -attr @rip(#000000) O[0] -pin alu_ry_fwd_i O[0] -pin bus_ALU_2_in_i I0[0]
load net alu_ry_fwd[1] -attr @rip(#000000) O[1] -pin alu_ry_fwd_i O[1] -pin bus_ALU_2_in_i I0[1]
load net alu_ry_fwd[2] -attr @rip(#000000) O[2] -pin alu_ry_fwd_i O[2] -pin bus_ALU_2_in_i I0[2]
load net alu_ry_fwd[3] -attr @rip(#000000) O[3] -pin alu_ry_fwd_i O[3] -pin bus_ALU_2_in_i I0[3]
load net alu_ry_fwd[4] -attr @rip(#000000) O[4] -pin alu_ry_fwd_i O[4] -pin bus_ALU_2_in_i I0[4]
load net alu_ry_fwd[5] -attr @rip(#000000) O[5] -pin alu_ry_fwd_i O[5] -pin bus_ALU_2_in_i I0[5]
load net alu_ry_fwd[6] -attr @rip(#000000) O[6] -pin alu_ry_fwd_i O[6] -pin bus_ALU_2_in_i I0[6]
load net alu_ry_fwd[7] -attr @rip(#000000) O[7] -pin alu_ry_fwd_i O[7] -pin bus_ALU_2_in_i I0[7]
load net branch_rx0_i_n_0 -attr @rip(#000000) O[7] -pin branch_rx0_i O[7] -pin branch_rx_i I1[7]
load net branch_rx0_i_n_1 -attr @rip(#000000) O[6] -pin branch_rx0_i O[6] -pin branch_rx_i I1[6]
load net branch_rx0_i_n_2 -attr @rip(#000000) O[5] -pin branch_rx0_i O[5] -pin branch_rx_i I1[5]
load net branch_rx0_i_n_3 -attr @rip(#000000) O[4] -pin branch_rx0_i O[4] -pin branch_rx_i I1[4]
load net branch_rx0_i_n_4 -attr @rip(#000000) O[3] -pin branch_rx0_i O[3] -pin branch_rx_i I1[3]
load net branch_rx0_i_n_5 -attr @rip(#000000) O[2] -pin branch_rx0_i O[2] -pin branch_rx_i I1[2]
load net branch_rx0_i_n_6 -attr @rip(#000000) O[1] -pin branch_rx0_i O[1] -pin branch_rx_i I1[1]
load net branch_rx0_i_n_7 -attr @rip(#000000) O[0] -pin branch_rx0_i O[0] -pin branch_rx_i I1[0]
load net branch_rx1_i_n_0 -attr @rip(#000000) O[7] -pin branch_rx0_i I1[7] -pin branch_rx1_i O[7]
load net branch_rx1_i_n_1 -attr @rip(#000000) O[6] -pin branch_rx0_i I1[6] -pin branch_rx1_i O[6]
load net branch_rx1_i_n_2 -attr @rip(#000000) O[5] -pin branch_rx0_i I1[5] -pin branch_rx1_i O[5]
load net branch_rx1_i_n_3 -attr @rip(#000000) O[4] -pin branch_rx0_i I1[4] -pin branch_rx1_i O[4]
load net branch_rx1_i_n_4 -attr @rip(#000000) O[3] -pin branch_rx0_i I1[3] -pin branch_rx1_i O[3]
load net branch_rx1_i_n_5 -attr @rip(#000000) O[2] -pin branch_rx0_i I1[2] -pin branch_rx1_i O[2]
load net branch_rx1_i_n_6 -attr @rip(#000000) O[1] -pin branch_rx0_i I1[1] -pin branch_rx1_i O[1]
load net branch_rx1_i_n_7 -attr @rip(#000000) O[0] -pin branch_rx0_i I1[0] -pin branch_rx1_i O[0]
load net branch_rx[0] -attr @rip(#000000) O[0] -pin branch_rx_i O[0] -pin is_equal_i I0[0]
load net branch_rx[1] -attr @rip(#000000) O[1] -pin branch_rx_i O[1] -pin is_equal_i I0[1]
load net branch_rx[2] -attr @rip(#000000) O[2] -pin branch_rx_i O[2] -pin is_equal_i I0[2]
load net branch_rx[3] -attr @rip(#000000) O[3] -pin branch_rx_i O[3] -pin is_equal_i I0[3]
load net branch_rx[4] -attr @rip(#000000) O[4] -pin branch_rx_i O[4] -pin is_equal_i I0[4]
load net branch_rx[5] -attr @rip(#000000) O[5] -pin branch_rx_i O[5] -pin is_equal_i I0[5]
load net branch_rx[6] -attr @rip(#000000) O[6] -pin branch_rx_i O[6] -pin is_equal_i I0[6]
load net branch_rx[7] -attr @rip(#000000) O[7] -pin branch_rx_i O[7] -pin is_equal_i I0[7]
load net branch_ry0_i_n_0 -attr @rip(#000000) O[7] -pin branch_ry0_i O[7] -pin branch_ry_i I1[7]
load net branch_ry0_i_n_1 -attr @rip(#000000) O[6] -pin branch_ry0_i O[6] -pin branch_ry_i I1[6]
load net branch_ry0_i_n_2 -attr @rip(#000000) O[5] -pin branch_ry0_i O[5] -pin branch_ry_i I1[5]
load net branch_ry0_i_n_3 -attr @rip(#000000) O[4] -pin branch_ry0_i O[4] -pin branch_ry_i I1[4]
load net branch_ry0_i_n_4 -attr @rip(#000000) O[3] -pin branch_ry0_i O[3] -pin branch_ry_i I1[3]
load net branch_ry0_i_n_5 -attr @rip(#000000) O[2] -pin branch_ry0_i O[2] -pin branch_ry_i I1[2]
load net branch_ry0_i_n_6 -attr @rip(#000000) O[1] -pin branch_ry0_i O[1] -pin branch_ry_i I1[1]
load net branch_ry0_i_n_7 -attr @rip(#000000) O[0] -pin branch_ry0_i O[0] -pin branch_ry_i I1[0]
load net branch_ry1_i_n_0 -attr @rip(#000000) O[7] -pin branch_ry0_i I1[7] -pin branch_ry1_i O[7]
load net branch_ry1_i_n_1 -attr @rip(#000000) O[6] -pin branch_ry0_i I1[6] -pin branch_ry1_i O[6]
load net branch_ry1_i_n_2 -attr @rip(#000000) O[5] -pin branch_ry0_i I1[5] -pin branch_ry1_i O[5]
load net branch_ry1_i_n_3 -attr @rip(#000000) O[4] -pin branch_ry0_i I1[4] -pin branch_ry1_i O[4]
load net branch_ry1_i_n_4 -attr @rip(#000000) O[3] -pin branch_ry0_i I1[3] -pin branch_ry1_i O[3]
load net branch_ry1_i_n_5 -attr @rip(#000000) O[2] -pin branch_ry0_i I1[2] -pin branch_ry1_i O[2]
load net branch_ry1_i_n_6 -attr @rip(#000000) O[1] -pin branch_ry0_i I1[1] -pin branch_ry1_i O[1]
load net branch_ry1_i_n_7 -attr @rip(#000000) O[0] -pin branch_ry0_i I1[0] -pin branch_ry1_i O[0]
load net branch_ry[0] -attr @rip(#000000) O[0] -pin branch_ry_i O[0] -pin is_equal_i I1[0]
load net branch_ry[1] -attr @rip(#000000) O[1] -pin branch_ry_i O[1] -pin is_equal_i I1[1]
load net branch_ry[2] -attr @rip(#000000) O[2] -pin branch_ry_i O[2] -pin is_equal_i I1[2]
load net branch_ry[3] -attr @rip(#000000) O[3] -pin branch_ry_i O[3] -pin is_equal_i I1[3]
load net branch_ry[4] -attr @rip(#000000) O[4] -pin branch_ry_i O[4] -pin is_equal_i I1[4]
load net branch_ry[5] -attr @rip(#000000) O[5] -pin branch_ry_i O[5] -pin is_equal_i I1[5]
load net branch_ry[6] -attr @rip(#000000) O[6] -pin branch_ry_i O[6] -pin is_equal_i I1[6]
load net branch_ry[7] -attr @rip(#000000) O[7] -pin branch_ry_i O[7] -pin is_equal_i I1[7]
load net branch_taken -pin branch_taken_i O -pin take_target_i I1
netloc branch_taken 1 10 1 2930 700n
load net branch_taken0 -pin branch_taken0_i O -pin branch_taken_i I0
netloc branch_taken0 1 9 1 2660 500n
load net branch_taken0_i__0_n_0 -pin branch_taken0_i__0 O -pin branch_taken_i I1
netloc branch_taken0_i__0_n_0 1 9 1 2640 640n
load net bus_ALU_2_in[0] -attr @rip(#000000) O[0] -pin a1 Ry[0] -pin bus_ALU_2_in_i O[0]
load net bus_ALU_2_in[1] -attr @rip(#000000) O[1] -pin a1 Ry[1] -pin bus_ALU_2_in_i O[1]
load net bus_ALU_2_in[2] -attr @rip(#000000) O[2] -pin a1 Ry[2] -pin bus_ALU_2_in_i O[2]
load net bus_ALU_2_in[3] -attr @rip(#000000) O[3] -pin a1 Ry[3] -pin bus_ALU_2_in_i O[3]
load net bus_ALU_2_in[4] -attr @rip(#000000) O[4] -pin a1 Ry[4] -pin bus_ALU_2_in_i O[4]
load net bus_ALU_2_in[5] -attr @rip(#000000) O[5] -pin a1 Ry[5] -pin bus_ALU_2_in_i O[5]
load net bus_ALU_2_in[6] -attr @rip(#000000) O[6] -pin a1 Ry[6] -pin bus_ALU_2_in_i O[6]
load net bus_ALU_2_in[7] -attr @rip(#000000) O[7] -pin a1 Ry[7] -pin bus_ALU_2_in_i O[7]
load net bus_Rx[0] -attr @rip(#000000) 0 -pin alu_rx_fwd0_i I1[0] -pin stage2_reg[38:0] Q[16]
load net bus_Rx[1] -attr @rip(#000000) 1 -pin alu_rx_fwd0_i I1[1] -pin stage2_reg[38:0] Q[17]
load net bus_Rx[2] -attr @rip(#000000) 2 -pin alu_rx_fwd0_i I1[2] -pin stage2_reg[38:0] Q[18]
load net bus_Rx[3] -attr @rip(#000000) 3 -pin alu_rx_fwd0_i I1[3] -pin stage2_reg[38:0] Q[19]
load net bus_Rx[4] -attr @rip(#000000) 4 -pin alu_rx_fwd0_i I1[4] -pin stage2_reg[38:0] Q[20]
load net bus_Rx[5] -attr @rip(#000000) 5 -pin alu_rx_fwd0_i I1[5] -pin stage2_reg[38:0] Q[21]
load net bus_Rx[6] -attr @rip(#000000) 6 -pin alu_rx_fwd0_i I1[6] -pin stage2_reg[38:0] Q[22]
load net bus_Rx[7] -attr @rip(#000000) 7 -pin alu_rx_fwd0_i I1[7] -pin stage2_reg[38:0] Q[23]
load net bus_Ry[0] -attr @rip(#000000) 0 -pin alu_ry_fwd0_i I1[0] -pin stage2_reg[38:0] Q[24]
load net bus_Ry[1] -attr @rip(#000000) 1 -pin alu_ry_fwd0_i I1[1] -pin stage2_reg[38:0] Q[25]
load net bus_Ry[2] -attr @rip(#000000) 2 -pin alu_ry_fwd0_i I1[2] -pin stage2_reg[38:0] Q[26]
load net bus_Ry[3] -attr @rip(#000000) 3 -pin alu_ry_fwd0_i I1[3] -pin stage2_reg[38:0] Q[27]
load net bus_Ry[4] -attr @rip(#000000) 4 -pin alu_ry_fwd0_i I1[4] -pin stage2_reg[38:0] Q[28]
load net bus_Ry[5] -attr @rip(#000000) 5 -pin alu_ry_fwd0_i I1[5] -pin stage2_reg[38:0] Q[29]
load net bus_Ry[6] -attr @rip(#000000) 6 -pin alu_ry_fwd0_i I1[6] -pin stage2_reg[38:0] Q[30]
load net bus_Ry[7] -attr @rip(#000000) 7 -pin alu_ry_fwd0_i I1[7] -pin stage2_reg[38:0] Q[31]
load net bus_data_out[0] -attr @rip(#000000) out_data[0] -pin D1 out_data[0] -pin stage4_reg[20:0] D[0]
load net bus_data_out[1] -attr @rip(#000000) out_data[1] -pin D1 out_data[1] -pin stage4_reg[20:0] D[1]
load net bus_data_out[2] -attr @rip(#000000) out_data[2] -pin D1 out_data[2] -pin stage4_reg[20:0] D[2]
load net bus_data_out[3] -attr @rip(#000000) out_data[3] -pin D1 out_data[3] -pin stage4_reg[20:0] D[3]
load net bus_data_out[4] -attr @rip(#000000) out_data[4] -pin D1 out_data[4] -pin stage4_reg[20:0] D[4]
load net bus_data_out[5] -attr @rip(#000000) out_data[5] -pin D1 out_data[5] -pin stage4_reg[20:0] D[5]
load net bus_data_out[6] -attr @rip(#000000) out_data[6] -pin D1 out_data[6] -pin stage4_reg[20:0] D[6]
load net bus_data_out[7] -attr @rip(#000000) out_data[7] -pin D1 out_data[7] -pin stage4_reg[20:0] D[7]
load net bus_reg_1[0] -attr @rip(#000000) out_data_1[0] -pin branch_rx1_i I1[0] -pin r1 out_data_1[0] -pin stage20_i I1[16]
load net bus_reg_1[1] -attr @rip(#000000) out_data_1[1] -pin branch_rx1_i I1[1] -pin r1 out_data_1[1] -pin stage20_i I1[17]
load net bus_reg_1[2] -attr @rip(#000000) out_data_1[2] -pin branch_rx1_i I1[2] -pin r1 out_data_1[2] -pin stage20_i I1[18]
load net bus_reg_1[3] -attr @rip(#000000) out_data_1[3] -pin branch_rx1_i I1[3] -pin r1 out_data_1[3] -pin stage20_i I1[19]
load net bus_reg_1[4] -attr @rip(#000000) out_data_1[4] -pin branch_rx1_i I1[4] -pin r1 out_data_1[4] -pin stage20_i I1[20]
load net bus_reg_1[5] -attr @rip(#000000) out_data_1[5] -pin branch_rx1_i I1[5] -pin r1 out_data_1[5] -pin stage20_i I1[21]
load net bus_reg_1[6] -attr @rip(#000000) out_data_1[6] -pin branch_rx1_i I1[6] -pin r1 out_data_1[6] -pin stage20_i I1[22]
load net bus_reg_1[7] -attr @rip(#000000) out_data_1[7] -pin branch_rx1_i I1[7] -pin r1 out_data_1[7] -pin stage20_i I1[23]
load net bus_reg_2[0] -attr @rip(#000000) out_data_2[0] -pin branch_ry1_i I1[0] -pin r1 out_data_2[0] -pin stage20_i I1[24]
load net bus_reg_2[1] -attr @rip(#000000) out_data_2[1] -pin branch_ry1_i I1[1] -pin r1 out_data_2[1] -pin stage20_i I1[25]
load net bus_reg_2[2] -attr @rip(#000000) out_data_2[2] -pin branch_ry1_i I1[2] -pin r1 out_data_2[2] -pin stage20_i I1[26]
load net bus_reg_2[3] -attr @rip(#000000) out_data_2[3] -pin branch_ry1_i I1[3] -pin r1 out_data_2[3] -pin stage20_i I1[27]
load net bus_reg_2[4] -attr @rip(#000000) out_data_2[4] -pin branch_ry1_i I1[4] -pin r1 out_data_2[4] -pin stage20_i I1[28]
load net bus_reg_2[5] -attr @rip(#000000) out_data_2[5] -pin branch_ry1_i I1[5] -pin r1 out_data_2[5] -pin stage20_i I1[29]
load net bus_reg_2[6] -attr @rip(#000000) out_data_2[6] -pin branch_ry1_i I1[6] -pin r1 out_data_2[6] -pin stage20_i I1[30]
load net bus_reg_2[7] -attr @rip(#000000) out_data_2[7] -pin branch_ry1_i I1[7] -pin r1 out_data_2[7] -pin stage20_i I1[31]
load net bus_reg_in[0] -attr @rip(#000000) O[0] -pin alu_rx_fwd0_i I0[0] -pin alu_ry_fwd0_i I0[0] -pin branch_rx1_i I0[0] -pin branch_ry1_i I0[0] -pin bus_reg_in_i O[0] -pin r1 in_data[0]
load net bus_reg_in[1] -attr @rip(#000000) O[1] -pin alu_rx_fwd0_i I0[1] -pin alu_ry_fwd0_i I0[1] -pin branch_rx1_i I0[1] -pin branch_ry1_i I0[1] -pin bus_reg_in_i O[1] -pin r1 in_data[1]
load net bus_reg_in[2] -attr @rip(#000000) O[2] -pin alu_rx_fwd0_i I0[2] -pin alu_ry_fwd0_i I0[2] -pin branch_rx1_i I0[2] -pin branch_ry1_i I0[2] -pin bus_reg_in_i O[2] -pin r1 in_data[2]
load net bus_reg_in[3] -attr @rip(#000000) O[3] -pin alu_rx_fwd0_i I0[3] -pin alu_ry_fwd0_i I0[3] -pin branch_rx1_i I0[3] -pin branch_ry1_i I0[3] -pin bus_reg_in_i O[3] -pin r1 in_data[3]
load net bus_reg_in[4] -attr @rip(#000000) O[4] -pin alu_rx_fwd0_i I0[4] -pin alu_ry_fwd0_i I0[4] -pin branch_rx1_i I0[4] -pin branch_ry1_i I0[4] -pin bus_reg_in_i O[4] -pin r1 in_data[4]
load net bus_reg_in[5] -attr @rip(#000000) O[5] -pin alu_rx_fwd0_i I0[5] -pin alu_ry_fwd0_i I0[5] -pin branch_rx1_i I0[5] -pin branch_ry1_i I0[5] -pin bus_reg_in_i O[5] -pin r1 in_data[5]
load net bus_reg_in[6] -attr @rip(#000000) O[6] -pin alu_rx_fwd0_i I0[6] -pin alu_ry_fwd0_i I0[6] -pin branch_rx1_i I0[6] -pin branch_ry1_i I0[6] -pin bus_reg_in_i O[6] -pin r1 in_data[6]
load net bus_reg_in[7] -attr @rip(#000000) O[7] -pin alu_rx_fwd0_i I0[7] -pin alu_ry_fwd0_i I0[7] -pin branch_rx1_i I0[7] -pin branch_ry1_i I0[7] -pin bus_reg_in_i O[7] -pin r1 in_data[7]
load net clk -pin D1 clk -pin P1 clk -port clk -pin r1 clk -pin stage1_reg[15:0] C -pin stage2_reg[38:0] C -pin stage3_reg[30:0] C -pin stage4_reg[20:0] C
netloc clk 1 0 22 20 820 NJ 820 NJ 820 800 790 NJ 790 NJ 790 NJ 790 NJ 790 NJ 790 NJ 790 NJ 790 3240 900 NJ 900 NJ 900 4150 840 NJ 840 NJ 840 NJ 840 NJ 840 5720 800 6020 710 N
load net dest_reg_s2[0] -attr @rip(#000000) 0 -pin hu ex_dest[0] -pin hu ex_rs1[0] -pin stage2_reg[38:0] Q[13] -pin stage3_reg[30:0] D[25]
load net dest_reg_s2[1] -attr @rip(#000000) 1 -pin hu ex_dest[1] -pin hu ex_rs1[1] -pin stage2_reg[38:0] Q[14] -pin stage3_reg[30:0] D[26]
load net dest_reg_s2[2] -attr @rip(#000000) 2 -pin hu ex_dest[2] -pin hu ex_rs1[2] -pin stage2_reg[38:0] Q[15] -pin stage3_reg[30:0] D[27]
load net enable0 -pin P1 enable -pin enable0_i O
netloc enable0 1 11 1 3140J 630n
load net forward_a_ex[0] -attr @rip(#000000) forward_a_ex[0] -pin alu_rx_fwd0_i S[0] -pin alu_rx_fwd_i S[0] -pin hu forward_a_ex[0]
load net forward_a_ex[1] -attr @rip(#000000) forward_a_ex[1] -pin alu_rx_fwd0_i S[1] -pin alu_rx_fwd_i S[1] -pin hu forward_a_ex[1]
load net forward_a_id[0] -attr @rip(#000000) forward_a_id[0] -pin branch_rx0_i S[0] -pin branch_rx1_i S[0] -pin branch_rx_i S[0] -pin hu forward_a_id[0]
load net forward_a_id[1] -attr @rip(#000000) forward_a_id[1] -pin branch_rx0_i S[1] -pin branch_rx1_i S[1] -pin branch_rx_i S[1] -pin hu forward_a_id[1]
load net forward_b_ex[0] -attr @rip(#000000) forward_b_ex[0] -pin alu_ry_fwd0_i S[0] -pin alu_ry_fwd_i S[0] -pin hu forward_b_ex[0]
load net forward_b_ex[1] -attr @rip(#000000) forward_b_ex[1] -pin alu_ry_fwd0_i S[1] -pin alu_ry_fwd_i S[1] -pin hu forward_b_ex[1]
load net forward_b_id[0] -attr @rip(#000000) forward_b_id[0] -pin branch_ry0_i S[0] -pin branch_ry1_i S[0] -pin branch_ry_i S[0] -pin hu forward_b_id[0]
load net forward_b_id[1] -attr @rip(#000000) forward_b_id[1] -pin branch_ry0_i S[1] -pin branch_ry1_i S[1] -pin branch_ry_i S[1] -pin hu forward_b_id[1]
load net imm_off_bus[0] -attr @rip(#000000) 0 -pin bus_ALU_2_in_i I1[0] -pin stage2_reg[38:0] Q[0] -pin stage3_reg[30:0] D[16]
load net imm_off_bus[1] -attr @rip(#000000) 1 -pin bus_ALU_2_in_i I1[1] -pin stage2_reg[38:0] Q[1] -pin stage3_reg[30:0] D[17]
load net imm_off_bus[2] -attr @rip(#000000) 2 -pin bus_ALU_2_in_i I1[2] -pin stage2_reg[38:0] Q[2] -pin stage3_reg[30:0] D[18]
load net imm_off_bus[3] -attr @rip(#000000) 3 -pin bus_ALU_2_in_i I1[3] -pin stage2_reg[38:0] Q[3] -pin stage3_reg[30:0] D[19]
load net imm_off_bus[4] -attr @rip(#000000) 4 -pin bus_ALU_2_in_i I1[4] -pin stage2_reg[38:0] Q[4] -pin stage3_reg[30:0] D[20]
load net imm_off_bus[5] -attr @rip(#000000) 5 -pin bus_ALU_2_in_i I1[5] -pin stage2_reg[38:0] Q[5] -pin stage3_reg[30:0] D[21]
load net imm_off_bus[6] -attr @rip(#000000) 6 -pin bus_ALU_2_in_i I1[6] -pin stage2_reg[38:0] Q[6] -pin stage3_reg[30:0] D[22]
load net imm_off_bus[7] -attr @rip(#000000) 7 -pin bus_ALU_2_in_i I1[7] -pin stage2_reg[38:0] Q[7] -pin stage3_reg[30:0] D[23]
load net imm_off_bus[8] -pin stage2_reg[38:0] Q[8] -pin stage3_reg[30:0] D[24]
load net is_beq -pin branch_taken0_i I0 -pin is_beq_i O -pin is_branch0_i I0
netloc is_beq 1 8 9 2390 350 NJ 350 NJ 350 NJ 350 NJ 350 NJ 350 NJ 350 NJ 350 4640
load net is_bne -pin branch_taken0_i__0 I0 -pin is_bne_i O -pin is_branch0_i I1
netloc is_bne 1 8 9 2390 550 2620J 470 NJ 470 NJ 470 NJ 470 NJ 470 NJ 470 NJ 470 4660J
load net is_branch0 -pin hu is_branch -pin is_branch0_i O
netloc is_branch0 1 17 1 4910 210n
load net is_equal -pin branch_taken0_i I1 -pin branch_taken0_i__0 I1 -pin is_equal_i O
netloc is_equal 1 8 1 2370 510n
load net mem_addr_s3[0] -attr @rip(#000000) 0 -pin D1 addr[0] -pin stage3_reg[30:0] Q[16]
load net mem_addr_s3[1] -attr @rip(#000000) 1 -pin D1 addr[1] -pin stage3_reg[30:0] Q[17]
load net mem_addr_s3[2] -attr @rip(#000000) 2 -pin D1 addr[2] -pin stage3_reg[30:0] Q[18]
load net mem_addr_s3[3] -attr @rip(#000000) 3 -pin D1 addr[3] -pin stage3_reg[30:0] Q[19]
load net mem_addr_s3[4] -attr @rip(#000000) 4 -pin D1 addr[4] -pin stage3_reg[30:0] Q[20]
load net mem_addr_s3[5] -attr @rip(#000000) 5 -pin D1 addr[5] -pin stage3_reg[30:0] Q[21]
load net mem_addr_s3[6] -attr @rip(#000000) 6 -pin D1 addr[6] -pin stage3_reg[30:0] Q[22]
load net mem_addr_s3[7] -attr @rip(#000000) 7 -pin D1 addr[7] -pin stage3_reg[30:0] Q[23]
load net mem_addr_s3[8] -attr @rip(#000000) 8 -pin D1 addr[8] -pin stage3_reg[30:0] Q[24]
load net mem_out_wb[0] -attr @rip(#000000) 0 -pin bus_reg_in_i I0[0] -pin stage4_reg[20:0] Q[0]
load net mem_out_wb[1] -attr @rip(#000000) 1 -pin bus_reg_in_i I0[1] -pin stage4_reg[20:0] Q[1]
load net mem_out_wb[2] -attr @rip(#000000) 2 -pin bus_reg_in_i I0[2] -pin stage4_reg[20:0] Q[2]
load net mem_out_wb[3] -attr @rip(#000000) 3 -pin bus_reg_in_i I0[3] -pin stage4_reg[20:0] Q[3]
load net mem_out_wb[4] -attr @rip(#000000) 4 -pin bus_reg_in_i I0[4] -pin stage4_reg[20:0] Q[4]
load net mem_out_wb[5] -attr @rip(#000000) 5 -pin bus_reg_in_i I0[5] -pin stage4_reg[20:0] Q[5]
load net mem_out_wb[6] -attr @rip(#000000) 6 -pin bus_reg_in_i I0[6] -pin stage4_reg[20:0] Q[6]
load net mem_out_wb[7] -attr @rip(#000000) 7 -pin bus_reg_in_i I0[7] -pin stage4_reg[20:0] Q[7]
load net offset_pc_bus[0] -attr @rip(#000000) 0 -pin P1 offset[0] -pin stage1_reg[15:0] Q[0] -pin stage20_i I1[0]
load net offset_pc_bus[1] -attr @rip(#000000) 1 -pin P1 offset[1] -pin stage1_reg[15:0] Q[1] -pin stage20_i I1[1]
load net offset_pc_bus[2] -attr @rip(#000000) 2 -pin P1 offset[2] -pin stage1_reg[15:0] Q[2] -pin stage20_i I1[2]
load net offset_pc_bus[3] -attr @rip(#000000) 3 -pin P1 offset[3] -pin stage1_reg[15:0] Q[3] -pin stage20_i I1[3]
load net offset_pc_bus[4] -attr @rip(#000000) 4 -pin P1 offset[4] -pin stage1_reg[15:0] Q[4] -pin stage20_i I1[4]
load net offset_pc_bus[5] -attr @rip(#000000) 5 -pin P1 offset[5] -pin stage1_reg[15:0] Q[5] -pin stage20_i I1[5]
load net opcode_s2[0] -attr @rip(#000000) 0 -pin a1 opcode[0] -pin stage2_reg[38:0] Q[32]
load net opcode_s2[1] -attr @rip(#000000) 1 -pin a1 opcode[1] -pin stage2_reg[38:0] Q[33]
load net opcode_s2[2] -attr @rip(#000000) 2 -pin a1 opcode[2] -pin stage2_reg[38:0] Q[34]
load net opcode_s2[3] -attr @rip(#000000) 3 -pin a1 opcode[3] -pin stage2_reg[38:0] Q[35]
load net p_0_in[0] -attr @rip(#000000) 0 -pin alu_rx_fwd_i I0[0] -pin alu_ry_fwd_i I0[0] -pin branch_rx0_i I0[0] -pin branch_ry0_i I0[0] -pin stage3_reg[30:0] Q[0] -pin stage4_reg[20:0] D[8]
load net p_0_in[1] -attr @rip(#000000) 1 -pin alu_rx_fwd_i I0[1] -pin alu_ry_fwd_i I0[1] -pin branch_rx0_i I0[1] -pin branch_ry0_i I0[1] -pin stage3_reg[30:0] Q[1] -pin stage4_reg[20:0] D[9]
load net p_0_in[2] -attr @rip(#000000) 2 -pin alu_rx_fwd_i I0[2] -pin alu_ry_fwd_i I0[2] -pin branch_rx0_i I0[2] -pin branch_ry0_i I0[2] -pin stage3_reg[30:0] Q[2] -pin stage4_reg[20:0] D[10]
load net p_0_in[3] -attr @rip(#000000) 3 -pin alu_rx_fwd_i I0[3] -pin alu_ry_fwd_i I0[3] -pin branch_rx0_i I0[3] -pin branch_ry0_i I0[3] -pin stage3_reg[30:0] Q[3] -pin stage4_reg[20:0] D[11]
load net p_0_in[4] -attr @rip(#000000) 4 -pin alu_rx_fwd_i I0[4] -pin alu_ry_fwd_i I0[4] -pin branch_rx0_i I0[4] -pin branch_ry0_i I0[4] -pin stage3_reg[30:0] Q[4] -pin stage4_reg[20:0] D[12]
load net p_0_in[5] -attr @rip(#000000) 5 -pin alu_rx_fwd_i I0[5] -pin alu_ry_fwd_i I0[5] -pin branch_rx0_i I0[5] -pin branch_ry0_i I0[5] -pin stage3_reg[30:0] Q[5] -pin stage4_reg[20:0] D[13]
load net p_0_in[6] -attr @rip(#000000) 6 -pin alu_rx_fwd_i I0[6] -pin alu_ry_fwd_i I0[6] -pin branch_rx0_i I0[6] -pin branch_ry0_i I0[6] -pin stage3_reg[30:0] Q[6] -pin stage4_reg[20:0] D[14]
load net p_0_in[7] -attr @rip(#000000) 7 -pin alu_rx_fwd_i I0[7] -pin alu_ry_fwd_i I0[7] -pin branch_rx0_i I0[7] -pin branch_ry0_i I0[7] -pin stage3_reg[30:0] Q[7] -pin stage4_reg[20:0] D[15]
load net reset -pin P1 reset -port reset -pin stage1_reg[15:0] CLR -pin stage2_reg[38:0] CLR -pin stage3_reg[30:0] CLR -pin stage4_reg[20:0] CLR
netloc reset 1 0 21 NJ 690N NJ 690 NJ 690 760J 710 NJ 710 NJ 710 NJ 710 2030J 720 NJ 720 2600J 750 NJ 750 3180 880 NJ 880 NJ 880 NJ 880N 4390J 860 NJ 860 NJ 860 NJ 860 5700 670N 5980
load net rs2_s2[0] -attr @rip(#000000) 0 -pin hu ex_rs2[0] -pin stage2_reg[38:0] Q[36]
load net rs2_s2[1] -attr @rip(#000000) 1 -pin hu ex_rs2[1] -pin stage2_reg[38:0] Q[37]
load net rs2_s2[2] -attr @rip(#000000) 2 -pin hu ex_rs2[2] -pin stage2_reg[38:0] Q[38]
load net stage1 -pin stage10_i__0 I1 -pin stage1_i O
netloc stage1 1 13 1 3800 590n
load net stage10[0] -attr @rip(#000000) O[0] -pin stage10_i O[0] -pin stage1_reg[15:0] D[0]
load net stage10[10] -attr @rip(#000000) O[10] -pin stage10_i O[10] -pin stage1_reg[15:0] D[10]
load net stage10[11] -attr @rip(#000000) O[11] -pin stage10_i O[11] -pin stage1_reg[15:0] D[11]
load net stage10[12] -attr @rip(#000000) O[12] -pin stage10_i O[12] -pin stage1_reg[15:0] D[12]
load net stage10[13] -attr @rip(#000000) O[13] -pin stage10_i O[13] -pin stage1_reg[15:0] D[13]
load net stage10[14] -attr @rip(#000000) O[14] -pin stage10_i O[14] -pin stage1_reg[15:0] D[14]
load net stage10[15] -attr @rip(#000000) O[15] -pin stage10_i O[15] -pin stage1_reg[15:0] D[15]
load net stage10[1] -attr @rip(#000000) O[1] -pin stage10_i O[1] -pin stage1_reg[15:0] D[1]
load net stage10[2] -attr @rip(#000000) O[2] -pin stage10_i O[2] -pin stage1_reg[15:0] D[2]
load net stage10[3] -attr @rip(#000000) O[3] -pin stage10_i O[3] -pin stage1_reg[15:0] D[3]
load net stage10[4] -attr @rip(#000000) O[4] -pin stage10_i O[4] -pin stage1_reg[15:0] D[4]
load net stage10[5] -attr @rip(#000000) O[5] -pin stage10_i O[5] -pin stage1_reg[15:0] D[5]
load net stage10[6] -attr @rip(#000000) O[6] -pin stage10_i O[6] -pin stage1_reg[15:0] D[6]
load net stage10[7] -attr @rip(#000000) O[7] -pin stage10_i O[7] -pin stage1_reg[15:0] D[7]
load net stage10[8] -attr @rip(#000000) O[8] -pin stage10_i O[8] -pin stage1_reg[15:0] D[8]
load net stage10[9] -attr @rip(#000000) O[9] -pin stage10_i O[9] -pin stage1_reg[15:0] D[9]
load net stage10_i__0_n_0 -pin stage10_i__0 O -pin stage1_reg[15:0] CE
netloc stage10_i__0_n_0 1 14 1 4130 590n
load net stage1_reg_n_0 -pin c1 IR[3] -pin is_beq_i I0[3] -pin is_bne_i I0[3] -pin stage1_reg[15:0] Q[15] -pin stage20_i I1[35]
load net stage1_reg_n_1 -pin c1 IR[2] -pin is_beq_i I0[2] -pin is_bne_i I0[2] -pin stage1_reg[15:0] Q[14] -pin stage20_i I1[34]
load net stage1_reg_n_2 -pin c1 IR[1] -pin is_beq_i I0[1] -pin is_bne_i I0[1] -pin stage1_reg[15:0] Q[13] -pin stage20_i I1[33]
load net stage1_reg_n_3 -pin c1 IR[0] -pin is_beq_i I0[0] -pin is_bne_i I0[0] -pin stage1_reg[15:0] Q[12] -pin stage20_i I1[32]
load net stage1_reg_n_4 -pin hu id_rs1[2] -pin r1 addr_1[2] -pin stage1_reg[15:0] Q[11] -pin stage20_i I1[15]
load net stage1_reg_n_5 -pin hu id_rs1[1] -pin r1 addr_1[1] -pin stage1_reg[15:0] Q[10] -pin stage20_i I1[14]
load net stage1_reg_n_6 -pin hu id_rs1[0] -pin r1 addr_1[0] -pin stage1_reg[15:0] Q[9] -pin stage20_i I1[13]
load net stage1_reg_n_7 -pin hu id_rs2[2] -pin r1 addr_2[2] -pin stage1_reg[15:0] Q[8] -pin stage20_i I1[38] -pin stage20_i I1[8]
load net stage1_reg_n_8 -pin hu id_rs2[1] -pin r1 addr_2[1] -pin stage1_reg[15:0] Q[7] -pin stage20_i I1[37] -pin stage20_i I1[7]
load net stage1_reg_n_9 -pin hu id_rs2[0] -pin r1 addr_2[0] -pin stage1_reg[15:0] Q[6] -pin stage20_i I1[36] -pin stage20_i I1[6]
load net stage20[0] -attr @rip(#000000) O[0] -pin stage20_i O[0] -pin stage2_reg[38:0] D[0]
load net stage20[10] -attr @rip(#000000) O[10] -pin stage20_i O[10] -pin stage2_reg[38:0] D[10]
load net stage20[11] -attr @rip(#000000) O[11] -pin stage20_i O[11] -pin stage2_reg[38:0] D[11]
load net stage20[12] -attr @rip(#000000) O[12] -pin stage20_i O[12] -pin stage2_reg[38:0] D[12]
load net stage20[13] -attr @rip(#000000) O[13] -pin stage20_i O[13] -pin stage2_reg[38:0] D[13]
load net stage20[14] -attr @rip(#000000) O[14] -pin stage20_i O[14] -pin stage2_reg[38:0] D[14]
load net stage20[15] -attr @rip(#000000) O[15] -pin stage20_i O[15] -pin stage2_reg[38:0] D[15]
load net stage20[16] -attr @rip(#000000) O[16] -pin stage20_i O[16] -pin stage2_reg[38:0] D[16]
load net stage20[17] -attr @rip(#000000) O[17] -pin stage20_i O[17] -pin stage2_reg[38:0] D[17]
load net stage20[18] -attr @rip(#000000) O[18] -pin stage20_i O[18] -pin stage2_reg[38:0] D[18]
load net stage20[19] -attr @rip(#000000) O[19] -pin stage20_i O[19] -pin stage2_reg[38:0] D[19]
load net stage20[1] -attr @rip(#000000) O[1] -pin stage20_i O[1] -pin stage2_reg[38:0] D[1]
load net stage20[20] -attr @rip(#000000) O[20] -pin stage20_i O[20] -pin stage2_reg[38:0] D[20]
load net stage20[21] -attr @rip(#000000) O[21] -pin stage20_i O[21] -pin stage2_reg[38:0] D[21]
load net stage20[22] -attr @rip(#000000) O[22] -pin stage20_i O[22] -pin stage2_reg[38:0] D[22]
load net stage20[23] -attr @rip(#000000) O[23] -pin stage20_i O[23] -pin stage2_reg[38:0] D[23]
load net stage20[24] -attr @rip(#000000) O[24] -pin stage20_i O[24] -pin stage2_reg[38:0] D[24]
load net stage20[25] -attr @rip(#000000) O[25] -pin stage20_i O[25] -pin stage2_reg[38:0] D[25]
load net stage20[26] -attr @rip(#000000) O[26] -pin stage20_i O[26] -pin stage2_reg[38:0] D[26]
load net stage20[27] -attr @rip(#000000) O[27] -pin stage20_i O[27] -pin stage2_reg[38:0] D[27]
load net stage20[28] -attr @rip(#000000) O[28] -pin stage20_i O[28] -pin stage2_reg[38:0] D[28]
load net stage20[29] -attr @rip(#000000) O[29] -pin stage20_i O[29] -pin stage2_reg[38:0] D[29]
load net stage20[2] -attr @rip(#000000) O[2] -pin stage20_i O[2] -pin stage2_reg[38:0] D[2]
load net stage20[30] -attr @rip(#000000) O[30] -pin stage20_i O[30] -pin stage2_reg[38:0] D[30]
load net stage20[31] -attr @rip(#000000) O[31] -pin stage20_i O[31] -pin stage2_reg[38:0] D[31]
load net stage20[32] -attr @rip(#000000) O[32] -pin stage20_i O[32] -pin stage2_reg[38:0] D[32]
load net stage20[33] -attr @rip(#000000) O[33] -pin stage20_i O[33] -pin stage2_reg[38:0] D[33]
load net stage20[34] -attr @rip(#000000) O[34] -pin stage20_i O[34] -pin stage2_reg[38:0] D[34]
load net stage20[35] -attr @rip(#000000) O[35] -pin stage20_i O[35] -pin stage2_reg[38:0] D[35]
load net stage20[36] -attr @rip(#000000) O[36] -pin stage20_i O[36] -pin stage2_reg[38:0] D[36]
load net stage20[37] -attr @rip(#000000) O[37] -pin stage20_i O[37] -pin stage2_reg[38:0] D[37]
load net stage20[38] -attr @rip(#000000) O[38] -pin stage20_i O[38] -pin stage2_reg[38:0] D[38]
load net stage20[3] -attr @rip(#000000) O[3] -pin stage20_i O[3] -pin stage2_reg[38:0] D[3]
load net stage20[4] -attr @rip(#000000) O[4] -pin stage20_i O[4] -pin stage2_reg[38:0] D[4]
load net stage20[5] -attr @rip(#000000) O[5] -pin stage20_i O[5] -pin stage2_reg[38:0] D[5]
load net stage20[6] -attr @rip(#000000) O[6] -pin stage20_i O[6] -pin stage2_reg[38:0] D[6]
load net stage20[7] -attr @rip(#000000) O[7] -pin stage20_i O[7] -pin stage2_reg[38:0] D[7]
load net stage20[8] -attr @rip(#000000) O[8] -pin stage20_i O[8] -pin stage2_reg[38:0] D[8]
load net stage20[9] -attr @rip(#000000) O[9] -pin stage20_i O[9] -pin stage2_reg[38:0] D[9]
load net stage3_reg_n_0 -pin hu mem_write_reg -pin stage3_reg[30:0] Q[30] -pin stage4_reg[20:0] D[20]
load net stage3_reg_n_1 -pin hu mem_mem_to_reg -pin stage3_reg[30:0] Q[29] -pin stage4_reg[20:0] D[19]
load net stage3_reg_n_3 -attr @rip(#000000) 2 -pin hu mem_dest[2] -pin stage3_reg[30:0] Q[27] -pin stage4_reg[20:0] D[18]
load net stage3_reg_n_4 -attr @rip(#000000) 1 -pin hu mem_dest[1] -pin stage3_reg[30:0] Q[26] -pin stage4_reg[20:0] D[17]
load net stage3_reg_n_5 -attr @rip(#000000) 0 -pin hu mem_dest[0] -pin stage3_reg[30:0] Q[25] -pin stage4_reg[20:0] D[16]
load net stage4_reg_n_0 -pin hu wb_write_reg -pin r1 write -pin stage4_reg[20:0] Q[20]
load net stage4_reg_n_1 -pin bus_reg_in_i S -pin stage4_reg[20:0] Q[19]
load net stage4_reg_n_2 -attr @rip(#000000) 2 -pin hu wb_dest[2] -pin r1 in_addr[2] -pin stage4_reg[20:0] Q[18]
load net stage4_reg_n_3 -attr @rip(#000000) 1 -pin hu wb_dest[1] -pin r1 in_addr[1] -pin stage4_reg[20:0] Q[17]
load net stage4_reg_n_4 -attr @rip(#000000) 0 -pin hu wb_dest[0] -pin r1 in_addr[0] -pin stage4_reg[20:0] Q[16]
load net stall -pin enable0_i I0 -pin hu stall -pin stage1_i S -pin stage20_i S
netloc stall 1 10 9 2970 590 NJ 590 3480J 650N 3800J 670 NJ 670 NJ 670 NJ 670 NJ 670 5370
load net store_data_s3[0] -attr @rip(#000000) 0 -pin D1 in_data[0] -pin stage3_reg[30:0] Q[8]
load net store_data_s3[1] -attr @rip(#000000) 1 -pin D1 in_data[1] -pin stage3_reg[30:0] Q[9]
load net store_data_s3[2] -attr @rip(#000000) 2 -pin D1 in_data[2] -pin stage3_reg[30:0] Q[10]
load net store_data_s3[3] -attr @rip(#000000) 3 -pin D1 in_data[3] -pin stage3_reg[30:0] Q[11]
load net store_data_s3[4] -attr @rip(#000000) 4 -pin D1 in_data[4] -pin stage3_reg[30:0] Q[12]
load net store_data_s3[5] -attr @rip(#000000) 5 -pin D1 in_data[5] -pin stage3_reg[30:0] Q[13]
load net store_data_s3[6] -attr @rip(#000000) 6 -pin D1 in_data[6] -pin stage3_reg[30:0] Q[14]
load net store_data_s3[7] -attr @rip(#000000) 7 -pin D1 in_data[7] -pin stage3_reg[30:0] Q[15]
load net take_target -pin P1 jump -pin stage10_i S -pin stage10_i__0 S -pin take_target_i O
netloc take_target 1 11 3 3220 820 NJ 820 3820
load net w1 -attr @rip(#000000) 12 -pin c1 write_reg -pin stage20_i I1[12]
load net w2 -attr @rip(#000000) 11 -pin c1 mem_to_reg -pin stage20_i I1[11]
load net w3 -attr @rip(#000000) 10 -pin c1 reg_to_ALU -pin stage20_i I1[10]
load net w4 -pin c1 jump -pin take_target_i I0
netloc w4 1 10 1 2950 550n
load net w5 -attr @rip(#000000) 9 -pin c1 write_data_mem -pin stage20_i I1[9]
load net write_data_mem_s3 -pin D1 write -pin stage3_reg[30:0] Q[28]
load netBundle @bus_data_out 8 bus_data_out[7] bus_data_out[6] bus_data_out[5] bus_data_out[4] bus_data_out[3] bus_data_out[2] bus_data_out[1] bus_data_out[0] -autobundled
netbloc @bus_data_out 1 0 23 40 840 NJ 840 NJ 840 NJ 840 NJ 840 NJ 840 NJ 840 NJ 840 NJ 840 NJ 840 NJ 840 NJ 840 NJ 840 NJ 840 4110J 820 NJ 820 NJ 820 NJ 820 NJ 820 NJ 820 NJ 820 NJ 820 6510
load netBundle @IR_bus 16 IR_bus[15] IR_bus[14] IR_bus[13] IR_bus[12] IR_bus[11] IR_bus[10] IR_bus[9] IR_bus[8] IR_bus[7] IR_bus[6] IR_bus[5] IR_bus[4] IR_bus[3] IR_bus[2] IR_bus[1] IR_bus[0] -autobundled
netbloc @IR_bus 1 13 1 3780 740n
load netBundle @address_bus 10 address_bus[9] address_bus[8] address_bus[7] address_bus[6] address_bus[5] address_bus[4] address_bus[3] address_bus[2] address_bus[1] address_bus[0] -autobundled
netbloc @address_bus 1 12 1 NJ 740
load netBundle @ALU_out 8 ALU_out[7] ALU_out[6] ALU_out[5] ALU_out[4] ALU_out[3] ALU_out[2] ALU_out[1] ALU_out[0] -autobundled
netbloc @ALU_out 1 6 15 1790 770 NJ 770 NJ 770 NJ 770 NJ 770 3160J 640 3460J 680 3780J 690 NJ 690 NJ 690 NJ 690 NJ 690 NJ 690 5660J 650 5940J
load netBundle @alu_rx_fwd0_i_n_ 8 alu_rx_fwd0_i_n_0 alu_rx_fwd0_i_n_1 alu_rx_fwd0_i_n_2 alu_rx_fwd0_i_n_3 alu_rx_fwd0_i_n_4 alu_rx_fwd0_i_n_5 alu_rx_fwd0_i_n_6 alu_rx_fwd0_i_n_7 -autobundled
netbloc @alu_rx_fwd0_i_n_ 1 4 1 N 110
load netBundle @alu_rx_fwd 8 alu_rx_fwd[7] alu_rx_fwd[6] alu_rx_fwd[5] alu_rx_fwd[4] alu_rx_fwd[3] alu_rx_fwd[2] alu_rx_fwd[1] alu_rx_fwd[0] -autobundled
netbloc @alu_rx_fwd 1 5 16 1500 210 NJ 210 NJ 210 NJ 210 NJ 210 NJ 210 NJ 210 NJ 210 NJ 210 NJ 210 NJ 210 NJ 210 4890J 350 NJ 350 NJ 350 6000
load netBundle @alu_ry_fwd0_i_n_ 8 alu_ry_fwd0_i_n_0 alu_ry_fwd0_i_n_1 alu_ry_fwd0_i_n_2 alu_ry_fwd0_i_n_3 alu_ry_fwd0_i_n_4 alu_ry_fwd0_i_n_5 alu_ry_fwd0_i_n_6 alu_ry_fwd0_i_n_7 -autobundled
netbloc @alu_ry_fwd0_i_n_ 1 3 1 800 280n
load netBundle @alu_ry_fwd 8 alu_ry_fwd[7] alu_ry_fwd[6] alu_ry_fwd[5] alu_ry_fwd[4] alu_ry_fwd[3] alu_ry_fwd[2] alu_ry_fwd[1] alu_ry_fwd[0] -autobundled
netbloc @alu_ry_fwd 1 4 1 N 280
load netBundle @branch_rx0_i_n_ 8 branch_rx0_i_n_0 branch_rx0_i_n_1 branch_rx0_i_n_2 branch_rx0_i_n_3 branch_rx0_i_n_4 branch_rx0_i_n_5 branch_rx0_i_n_6 branch_rx0_i_n_7 -autobundled
netbloc @branch_rx0_i_n_ 1 6 1 1770 470n
load netBundle @branch_rx1_i_n_ 8 branch_rx1_i_n_0 branch_rx1_i_n_1 branch_rx1_i_n_2 branch_rx1_i_n_3 branch_rx1_i_n_4 branch_rx1_i_n_5 branch_rx1_i_n_6 branch_rx1_i_n_7 -autobundled
netbloc @branch_rx1_i_n_ 1 5 1 1480 470n
load netBundle @branch_rx 8 branch_rx[7] branch_rx[6] branch_rx[5] branch_rx[4] branch_rx[3] branch_rx[2] branch_rx[1] branch_rx[0] -autobundled
netbloc @branch_rx 1 7 1 2070 470n
load netBundle @branch_ry0_i_n_ 8 branch_ry0_i_n_0 branch_ry0_i_n_1 branch_ry0_i_n_2 branch_ry0_i_n_3 branch_ry0_i_n_4 branch_ry0_i_n_5 branch_ry0_i_n_6 branch_ry0_i_n_7 -autobundled
netbloc @branch_ry0_i_n_ 1 6 1 1770 610n
load netBundle @branch_ry1_i_n_ 8 branch_ry1_i_n_0 branch_ry1_i_n_1 branch_ry1_i_n_2 branch_ry1_i_n_3 branch_ry1_i_n_4 branch_ry1_i_n_5 branch_ry1_i_n_6 branch_ry1_i_n_7 -autobundled
netbloc @branch_ry1_i_n_ 1 5 1 1480 590n
load netBundle @branch_ry 8 branch_ry[7] branch_ry[6] branch_ry[5] branch_ry[4] branch_ry[3] branch_ry[2] branch_ry[1] branch_ry[0] -autobundled
netbloc @branch_ry 1 7 1 2070 520n
load netBundle @bus_ALU_2_in 8 bus_ALU_2_in[7] bus_ALU_2_in[6] bus_ALU_2_in[5] bus_ALU_2_in[4] bus_ALU_2_in[3] bus_ALU_2_in[2] bus_ALU_2_in[1] bus_ALU_2_in[0] -autobundled
netbloc @bus_ALU_2_in 1 5 1 1480 290n
load netBundle @bus_reg_in 8 bus_reg_in[7] bus_reg_in[6] bus_reg_in[5] bus_reg_in[4] bus_reg_in[3] bus_reg_in[2] bus_reg_in[1] bus_reg_in[0] -autobundled
netbloc @bus_reg_in 1 2 3 500 140 780 560 1240
load netBundle @forward_a_ex 2 forward_a_ex[1] forward_a_ex[0] -autobundled
netbloc @forward_a_ex 1 4 15 1160 160N NJ 160 NJ 160 NJ 160 NJ 160 NJ 160 NJ 160 NJ 160 NJ 160 NJ 160 NJ 160 NJ 160 NJ 160 4830J 10 5290
load netBundle @forward_a_id 2 forward_a_id[1] forward_a_id[0] -autobundled
netbloc @forward_a_id 1 5 14 N 530N N 530N 2030J 430 NJ 430 NJ 430 NJ 430 NJ 430 NJ 430 NJ 430 NJ 430 NJ 430 NJ 430 NJ 430 5330
load netBundle @forward_b_ex 2 forward_b_ex[1] forward_b_ex[0] -autobundled
netbloc @forward_b_ex 1 3 16 N 340N 1240J 230 NJ 230 NJ 230 NJ 230 NJ 230 NJ 230 NJ 230 NJ 230 NJ 230 NJ 230 NJ 230 NJ 230 NJ 230 4870J 370 5310
load netBundle @forward_b_id 2 forward_b_id[1] forward_b_id[0] -autobundled
netbloc @forward_b_id 1 5 14 1520 670N N 670N 2050J 450 NJ 450 NJ 450 NJ 450 NJ 450 NJ 450 NJ 450 NJ 450 NJ 450 NJ 450 NJ 450 5290
load netBundle @bus_reg_1 8 bus_reg_1[7] bus_reg_1[6] bus_reg_1[5] bus_reg_1[4] bus_reg_1[3] bus_reg_1[2] bus_reg_1[1] bus_reg_1[0] -autobundled
netbloc @bus_reg_1 1 4 15 1220 390 NJ 390 NJ 390 NJ 390 NJ 390 NJ 390 NJ 390 NJ 390 NJ 390 NJ 390 NJ 390 NJ 390 NJ 390 NJ 390 5390
load netBundle @bus_reg_2 8 bus_reg_2[7] bus_reg_2[6] bus_reg_2[5] bus_reg_2[4] bus_reg_2[3] bus_reg_2[2] bus_reg_2[1] bus_reg_2[0] -autobundled
netbloc @bus_reg_2 1 4 15 1200 410 NJ 410 NJ 410 NJ 410 NJ 410 NJ 410 NJ 410 NJ 410 NJ 410 NJ 410 NJ 410 NJ 410 NJ 410 NJ 410 5350
load netBundle @stage10 16 stage10[15] stage10[14] stage10[13] stage10[12] stage10[11] stage10[10] stage10[9] stage10[8] stage10[7] stage10[6] stage10[5] stage10[4] stage10[3] stage10[2] stage10[1] stage10[0] -autobundled
netbloc @stage10 1 14 1 4090 750n
load netBundle @stage20 39 stage20[38] stage20[37] stage20[36] stage20[35] stage20[34] stage20[33] stage20[32] stage20[31] stage20[30] stage20[29] stage20[28] stage20[27] stage20[26] stage20[25] stage20[24] stage20[23] stage20[22] stage20[21] stage20[20] stage20[19] stage20[18] stage20[17] stage20[16] stage20[15] stage20[14] stage20[13] stage20[12] stage20[11] stage20[10] stage20[9] stage20[8] stage20[7] stage20[6] stage20[5] stage20[4] stage20[3] stage20[2] stage20[1] stage20[0] -autobundled
netbloc @stage20 1 19 1 5680 550n
load netBundle @alu_out_wb,mem_out_wb 21 stage4_reg_n_0 stage4_reg_n_1 stage4_reg_n_2 stage4_reg_n_3 stage4_reg_n_4 alu_out_wb[7] alu_out_wb[6] alu_out_wb[5] alu_out_wb[4] alu_out_wb[3] alu_out_wb[2] alu_out_wb[1] alu_out_wb[0] mem_out_wb[7] mem_out_wb[6] mem_out_wb[5] mem_out_wb[4] mem_out_wb[3] mem_out_wb[2] mem_out_wb[1] mem_out_wb[0] -autobundled
netbloc @alu_out_wb,mem_out_wb 1 1 17 260 200N 520J 200 840 190 NJ 190 NJ 190 NJ 190 NJ 190 NJ 190 NJ 190 NJ 190 NJ 190 NJ 190 NJ 190 NJ 190 NJ 190 NJ 190 4930
load netBundle @stage1_reg_n_,offset_pc_bus 16 stage1_reg_n_0 stage1_reg_n_1 stage1_reg_n_2 stage1_reg_n_3 stage1_reg_n_4 stage1_reg_n_5 stage1_reg_n_6 stage1_reg_n_7 stage1_reg_n_8 stage1_reg_n_9 offset_pc_bus[5] offset_pc_bus[4] offset_pc_bus[3] offset_pc_bus[2] offset_pc_bus[1] offset_pc_bus[0] -autobundled
netbloc @stage1_reg_n_,offset_pc_bus 1 3 16 860 690 NJ 690 NJ 690 NJ 690 2090 700 NJ 700 2620 810 NJ 810 3200 860 NJ 860 NJ 860 NJ 860 4370 1000 NJ 1000 4950 540 5310J
load netBundle @mem_addr_s3,store_data_s3 31 stage3_reg_n_0 stage3_reg_n_1 write_data_mem_s3 stage3_reg_n_3 stage3_reg_n_4 stage3_reg_n_5 mem_addr_s3[8] mem_addr_s3[7] mem_addr_s3[6] mem_addr_s3[5] mem_addr_s3[4] mem_addr_s3[3] mem_addr_s3[2] mem_addr_s3[1] mem_addr_s3[0] store_data_s3[7] store_data_s3[6] store_data_s3[5] store_data_s3[4] store_data_s3[3] store_data_s3[2] store_data_s3[1] store_data_s3[0] p_0_in[7] p_0_in[6] p_0_in[5] p_0_in[4] p_0_in[3] p_0_in[2] p_0_in[1] p_0_in[0] -autobundled
netbloc @mem_addr_s3,store_data_s3 1 0 22 40 540 NJ 540 NJ 540 820 540 1180 670 1500 550 NJ 550 2030J 560 2350J 570 2680J 490 NJ 490 NJ 490 NJ 490 NJ 490 NJ 490 NJ 490 NJ 490 4970 470 NJ 470 NJ 470 NJ 470 6240
load netBundle @imm_off_bus,bus_Ry,bus_Rx 39 rs2_s2[2] rs2_s2[1] rs2_s2[0] opcode_s2[3] opcode_s2[2] opcode_s2[1] opcode_s2[0] bus_Ry[7] bus_Ry[6] bus_Ry[5] bus_Ry[4] bus_Ry[3] bus_Ry[2] bus_Ry[1] bus_Ry[0] bus_Rx[7] bus_Rx[6] bus_Rx[5] bus_Rx[4] bus_Rx[3] bus_Rx[2] bus_Rx[1] bus_Rx[0] dest_reg_s2[2] dest_reg_s2[1] dest_reg_s2[0] CU_bus_1[3] CU_bus_1[2] CU_bus_1[1] CU_bus_1[0] imm_off_bus[8] imm_off_bus[7] imm_off_bus[6] imm_off_bus[5] imm_off_bus[4] imm_off_bus[3] imm_off_bus[2] imm_off_bus[1] imm_off_bus[0] -autobundled
netbloc @imm_off_bus,bus_Ry,bus_Rx 1 2 19 520 220 760 220 1220 350N 1500 370 NJ 370 NJ 370 NJ 370 NJ 370 NJ 370 NJ 370 NJ 370 NJ 370 NJ 370 NJ 370 NJ 370 4850 490 NJ 490 NJ 490 5960
load netBundle @w 4 w1 w2 w3 w5 -autobundled
netbloc @w 1 10 9 2930 510 NJ 510 NJ 510 NJ 510 NJ 510 NJ 510 NJ 510 4830J 560 5290
levelinfo -pg 1 0 90 380 640 980 1360 1640 1910 2240 2440 2750 3020 3330 3600 3970 4200 4540 4710 5100 5540 5770 6070 6340 6530
pagesize -pg 1 -db -bbox -sgen -80 0 6530 1030
show
zoom 0.276364
scrollpos -22 -450
#
# initialize ictrl to current module top_module work:top_module:NOFILE
ictrl init topinfo |
