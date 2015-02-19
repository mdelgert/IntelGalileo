echo "Cron/Scripts/G1/UnisonSyncScripts.sh begin at $(date)" >> /Scripts/CronSync.log

echo "Unison sync G2 begin at $(date)" >> /Scripts/CronSync.log
unison G2.prf
echo "Unison sync G2 end at $(date)" >> /Scripts/CronSync.log

echo "Unison sync G3 begin at $(date)" >> /Scripts/CronSync.log
unison G3.prf
echo "Unison sync G3 end at $(date)" >> /Scripts/CronSync.log

echo "Unison sync G4 begin at $(date)" >> /Scripts/CronSync.log
unison G4.prf
echo "Unison sync G4 end at $(date)" >> /Scripts/CronSync.log

echo "Cron/Scripts/G1/UnisonSyncScripts.sh end at $(date)" >> /Scripts/CronSync.log