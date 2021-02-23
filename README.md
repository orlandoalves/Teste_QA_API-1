# Teste_QA_API-1

1. Clique no link, faça o download da última versão estável e instale o Ruby na máquina: https://rubyinstaller.org/downloads/
2. Instale o bundler: gem install bundler
3. Clone o projeto em uma pasta do PC/Notebook de sua preferência: git clone https://github.com/orlandoalves/Teste_QA_API-1.git
4. Navegue até o diretório do projeto
5. Execute o comando no terminal: bundle install
6. Execute o comando no terminal: cucumber (no windows) ou bundle exec cucumber(no linux/Mac)
7. Para executar somente cenários especificos, use o comando cucumber -t + a tag do cenário. Ex.: cucumber -t @cep_invalido
