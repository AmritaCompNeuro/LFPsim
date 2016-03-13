: lfp.mod

COMMENT
LFPsim - Simulation scripts to compute Local Field Potentials (LFP) of cable compartmental models of neuron and network implemented in NEURON simulation environment.

LFPsim works reliably on biophysically detailed multi-compartmental neurons with some or all active channels. We

Last updated 12-March-2016
Developed by : Harilal Parasuram & Shyam Diwakar
Computational Neuroscience & Neurophysiology Lab, School of Biotechnology, Amrita University, India.
Email: harilalp@am.amrita.edu; shyam@amrita.edu
www.amrita.edu/compneuro 
ENDCOMMENT

NEURON {
	SUFFIX lfp
	POINTER transmembrane_current, initial_part_line, initial_part_point, initial_part_rc
	RANGE lfp_line,lfp_point,lfp_rc
	
}


ASSIGNED {

	initial_part_line 
	initial_part_rc
	transmembrane_current 
	lfp_line
	lfp_point
	lfp_rc
	initial_part_point


}

BREAKPOINT { 

	:Point Source Approximation 	
	lfp_point =   transmembrane_current * initial_part_point * 1e-1   : So the calculated signal will be in nV

	:Line Source Approximation
	lfp_line =   transmembrane_current * initial_part_line  * 1e-1  : So the calculated signal will be in nV

	:RC
	lfp_rc =   transmembrane_current * initial_part_rc * 1e-3 : So the calculated signal will be in nV

}

