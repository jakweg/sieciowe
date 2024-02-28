# Laby z przedmiotu Programowanie sieciowe

### Uruchamianie kontenerów
Aby dołączyć do kontenera użyj komendy
```bash
./join.sh first
```

A w drugim oknie terminala
```bash
./join.sh second
```

Kontenery widzą się pod nazwą domenową `first` oraz `second`.

### Uruchamianie programów

Aby kompilować i uruchomić program wpisz w kontenerze

```bash
./build-and-run.sh lab1
```
gdzie `lab1` to nazwa labu który chcesz uruchomić.
Możesz dać dodatkowe argumenty po `--`
```bash
./build-and-run.sh lab1 -- arg1 arg2
```

### Sprzątanie
```bash
docker-compose down
```