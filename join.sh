set -e
docker-compose up --build -d

if [[ "$#" -ne 1 ]]; then
    echo 'Expected one argument for example "first" or "second"'
    exit 1
fi
if [[ "$1" =~ first|second ]]; then
    docker exec -ti sieciowe-$1-1 bash
    exit 0
fi
echo 'Invalid container name'
exit 1