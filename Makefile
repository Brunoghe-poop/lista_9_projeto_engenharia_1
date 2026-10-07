# Compilador e flags
CXX = g++
CXXFLAGS = -Wall -std=c++11 -Iinclude -Isrc

# Diretórios
SRC_DIR = src
BIN_DIR = bin
TEST_DIR = test

# Nome dos executáveis finais
TARGET = $(BIN_DIR)/main.exe
TEST_TARGET = $(BIN_DIR)/testeRegressivo.exe

# Procura todos os ficheiros .cpp na pasta src
SRCS = $(wildcard $(SRC_DIR)/*.cpp)
# Transforma o nome dos ficheiros de .cpp para .o e coloca-os na pasta bin
OBJS = $(patsubst $(SRC_DIR)/%.cpp, $(BIN_DIR)/%.o, $(SRCS))

# Para os testes, usamos todos os ficheiros da src (exceto o main.cpp principal para não dar conflito) mais o main.cpp dos testes
TEST_SRCS = $(filter-out $(SRC_DIR)/main.cpp, $(SRCS)) $(TEST_DIR)/main.cpp

# Regra padrão: compila o projeto principal
all: $(TARGET)

# Gera o executável principal na pasta bin
$(TARGET): $(OBJS)
	$(CXX) $(CXXFLAGS) -o $@ $^

# Compila cada ficheiro .cpp para um ficheiro .o na pasta bin
$(BIN_DIR)/%.o: $(SRC_DIR)/%.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

# Regra dos testes (Exigência 9 do trabalho)
testes:
	$(CXX) $(CXXFLAGS) $(TEST_SRCS) -o $(TEST_TARGET)

# Regra para limpar os ficheiros compilados
clean:
	rm -f $(BIN_DIR)/*.o $(BIN_DIR)/*.exe