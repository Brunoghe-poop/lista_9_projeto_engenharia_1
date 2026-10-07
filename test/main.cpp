#include <iostream>
#include "../src/bib.hpp" // O ficheiro que vamos criar a seguir

int main() {
    // Teste simples: o fatorial de 5 tem de ser 120
    if (calcularFatorial(5) == 120) {
        std::cout << "Teste Passou: Fatorial de 5 e 120!" << std::endl;
        return 0; // Sucesso
    } else {
        std::cout << "Teste Falhou!" << std::endl;
        return 1; // Erro
    }
}