
 add_fsm_encoding \
       {btn_scan.btn_x} \
       { }  \
       {{00000 1000000} {01111 0100000} {10111 0010000} {11011 0001000} {11101 0000100} {11110 0000010} }

 add_fsm_encoding \
       {parallel2serial.state} \
       { }  \
       {{000 000} {001 001} {010 010} {011 011} }

 add_fsm_encoding \
       {parallel2serial__parameterized0.state} \
       { }  \
       {{000 00010} {001 00100} {010 01000} {011 10000} }
