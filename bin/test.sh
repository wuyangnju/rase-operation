raseHome=$(dirname $0)/..
$raseHome/var/bin/headquarters.sh $raseHome/plugins/alts/normal.5.alts $raseHome/plugins/ras/RinottRas.class "0.05 1 10 68.2226" $raseHome/plugins/sim/NormalSim.class "" 5 $raseHome/logs/$(date +%s)
$raseHome/var/bin/headquarters.sh $raseHome/plugins/alts/normal.5.alts $raseHome/plugins/ras/ParallelSequentialRas.class "0.05 1 10 68.2226" $raseHome/plugins/sim/NormalSim.class "" 5 $raseHome/logs/$(date +%s)
$raseHome/var/bin/headquarters.sh $raseHome/plugins/alts/normal.5.alts $raseHome/plugins/ras/TableFillingRas.class "0.05 1 10 68.2226" $raseHome/plugins/sim/NormalSim.class "" 5 $raseHome/logs/$(date +%s)

$raseHome/var/bin/headquarters.sh $raseHome/plugins/alts/normal.100.alts $raseHome/plugins/ras/RinottRas.class "0.05 1 10 68.2226" $raseHome/plugins/sim/NormalSim.class "" 5 $raseHome/logs/$(date +%s)
$raseHome/var/bin/headquarters.sh $raseHome/plugins/alts/normal.100.alts $raseHome/plugins/ras/ParallelSequentialRas.class "0.05 1 10 68.2226" $raseHome/plugins/sim/NormalSim.class "" 5 $raseHome/logs/$(date +%s)
$raseHome/var/bin/headquarters.sh $raseHome/plugins/alts/normal.100.alts $raseHome/plugins/ras/TableFillingRas.class "0.05 1 10 68.2226" $raseHome/plugins/sim/NormalSim.class "" 5 $raseHome/logs/$(date +%s)

$raseHome/var/bin/headquarters.sh $raseHome/plugins/alts/normal.100.alts $raseHome/plugins/ras/ParallelSequentialRas.class "0.05 1 10 68.2226" $raseHome/plugins/sim/NormalSim.class "" 5 $raseHome/logs/$(date +%s) 12
