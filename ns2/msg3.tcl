
set base_time 12.00 
$ns_ at $base_time "$ns_ connect $agents(0) $agents(1)"
$ns_ at $base_time "$agents(0) send 3 Ho!" 
$ns_ at [expr {$base_time + 0.5 }] "$ns_ flush-trace" 
$ns_ at [expr {$base_time + 0.5 }] "flush $tracefd" 
$ns_ at [expr {$base_time + 0.5 }] "$ns_ halt" 
$ns_ resume
