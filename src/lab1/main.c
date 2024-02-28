#include <stdio.h>

int main(const int argc, const char **argv)
{
    const char *whoToHello = argc > 1 ? argv[1] : "World";

    printf("Hello, %s!\n", whoToHello);
    return 0;
}