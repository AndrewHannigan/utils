# Usage: nohup bash collect_docker_stats.sh &

while true; do docker stats --no-stream | sed "s/^/$(date)\t/" | tail -n +2 >> stats.txt; sleep 1; done


