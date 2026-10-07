#include "bib.hpp"

int calcularFatorial(int n) {
    if (n <= 1) {
        return 1;
    }
    return n * calcularFatorial(n - 1);
}
int somar(int a, int b) {
    return a + b;
}