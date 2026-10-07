#include <iostream>
#include "../src/bib.hpp"

int main() {
    // 1. Teste do Fatorial
    if (calcularFatorial(5) == 120) {
        std::cout << "Teste Passou: Fatorial de 5 e 120!" << std::endl;
    } else {
        std::cout << "Teste Falhou no Fatorial!" << std::endl;
        return 1; // Para o programa com erro
    }

    // 2. Teste da Soma
    if (somar(2, 3) == 5) {
        std::cout << "Teste Passou: Soma de 2 e 3 e 5!" << std::endl;
    } else {
        std::cout << "Teste Falhou na Soma!" << std::endl;
        return 1; // Para o programa com erro
    }

    // Se passou em todos os testes acima, chega aqui e termina com sucesso
    return 0; 
}