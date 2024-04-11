target = mac

syn:
	dc_shell -f $(target).tcl | tee $(target).log &

clean:
	rm -rf *.log *.sdf *.rep *_syn.v *.sdc *.svf WORK 
