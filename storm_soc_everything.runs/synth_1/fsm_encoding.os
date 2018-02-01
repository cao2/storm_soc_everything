
 add_fsm_encoding \
       {CACHE.ARB_STATE} \
       { }  \
       {{000 000} {001 100} {010 001} {011 010} {100 011} {101 110} {110 101} }

 add_fsm_encoding \
       {BUS_UNIT.ARB_STATE} \
       { }  \
       {{000 000} {001 100} {010 101} {011 011} {100 001} {101 010} {110 110} }

 add_fsm_encoding \
       {i2c_master_bit_ctrl.c_state} \
       { }  \
       {{00000 00000} {00001 00001} {00010 00010} {00011 00011} {00100 00100} {00101 00101} {00110 00110} {00111 00111} {01000 01000} {01001 01001} {01010 01110} {01011 01111} {01100 10000} {01101 10001} {01110 01010} {01111 01011} {10000 01100} {10001 01101} }

 add_fsm_encoding \
       {i2c_master_byte_ctrl.statemachine.c_state} \
       { }  \
       {{000 000} {001 001} {010 010} {011 011} {100 100} {101 101} }
