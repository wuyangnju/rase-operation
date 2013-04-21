raseHome=$(dirname $0)/..
$raseHome/var/bin/headquarters.sh $raseHome/plugins/alts/normal.5.alts RinottRas $raseHome/plugins/ras/RinottRas.class "0.05 1 10 68.2226" NormalSim $raseHome/plugins/sim/NormalSim.class "" 5 $raseHome/logs/$(date +%s)
$raseHome/var/bin/headquarters.sh $raseHome/plugins/alts/normal.5.alts ParallelSequentialRas $raseHome/plugins/ras/ParallelSequentialRas.class "0.05 1 10 68.2226" NormalSim $raseHome/plugins/sim/NormalSim.class "" 5 $raseHome/logs/$(date +%s)
$raseHome/var/bin/headquarters.sh $raseHome/plugins/alts/normal.5.alts TableFillingRas $raseHome/plugins/ras/TableFillingRas.class "0.05 1 10 68.2226" NormalSim $raseHome/plugins/sim/NormalSim.class "" 5 $raseHome/logs/$(date +%s)
