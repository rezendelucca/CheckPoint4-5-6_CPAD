# 🎯 Focus Flow

> **Encontre seu método. Mantenha seu foco.**

O **Focus Flow** é um aplicativo voltado para estudantes que desejam melhorar o foco, a produtividade e a organização durante suas sessões de estudo.

A proposta é reunir diferentes métodos de estudo em um único ambiente, permitindo que o usuário conheça cada técnica, escolha a mais adequada para sua necessidade e realize sessões de estudo de maneira simples e organizada.

O projeto foi desenvolvido utilizando **Flutter e Dart**, com integração ao **Supabase** para armazenamento dos dados das sessões de estudo.

---

# 🔗 Links do projeto

### 🎨 Protótipo e Identidade Visual — Figma

[🔗 Acessar o projeto FocusFlow no Figma](https://www.figma.com/design/NpZ4CHYicY21IuoGD829oa/CheckPoint_cpad?node-id=0-1&p=f&t=1id8naTyvHdnJTyU-0)

O Figma contém a identidade visual desenvolvida para o projeto, o logo, as telas planejadas e a prototipação das principais interações do aplicativo.

---

# 📚 Sobre o projeto

O **Focus Flow** foi desenvolvido como uma ferramenta para auxiliar estudantes na organização de suas sessões de estudo.

Em vez de disponibilizar apenas um cronômetro genérico, o aplicativo apresenta diferentes metodologias de estudo, explicando suas propostas e oferecendo tempos de estudo e pausa adequados para cada uma delas.

Na etapa atual, o protótipo funcional permite:

* Conhecer diferentes métodos de estudo;
* Escolher uma técnica;
* Iniciar uma sessão de estudo;
* Pausar o cronômetro;
* Concluir uma sessão;
* Salvar a sessão no banco de dados;
* Consultar o histórico de estudos;
* Visualizar estatísticas;
* Utilizar recursos Premium;
* Simular a remoção de anúncios através do Premium.

O projeto utiliza **Flutter e Dart** para o desenvolvimento da aplicação, **Supabase** para persistência dos dados e **Figma** para identidade visual e prototipação.

---

# ❗ Problema

Muitos estudantes enfrentam dificuldades para manter o foco durante os estudos, organizar adequadamente o tempo e escolher uma metodologia adequada para diferentes tipos de conteúdo.

Além disso, métodos como **Pomodoro, Feynman, Active Recall e Sistema Leitner** possuem propostas diferentes e muitas vezes são encontrados ou utilizados separadamente.

O **Focus Flow** busca centralizar essas técnicas em uma única aplicação, facilitando o acesso aos métodos e permitindo que o estudante escolha a estratégia mais adequada para sua necessidade.

---

# 🎯 Público-alvo

O Focus Flow é direcionado principalmente para:

* Estudantes do ensino médio;
* Estudantes universitários;
* Pessoas que estudam para vestibulares e concursos;
* Pessoas que desejam melhorar sua produtividade durante os estudos;
* Usuários interessados em técnicas de foco e aprendizagem.

---

# 💜 Proposta de valor

> **Diferentes formas de estudar. Um único ponto para manter o foco.**

O Focus Flow busca tornar diferentes métodos de estudo mais acessíveis, reunindo técnicas de aprendizagem e foco em uma experiência simples e centralizada.

O estudante pode conhecer diferentes estratégias, selecionar aquela que melhor se adapta ao seu objetivo e realizar uma sessão de estudo utilizando um cronômetro integrado.

---

# ⚙️ Funcionalidades implementadas — CP5

Nesta etapa, o protótipo foi evoluído para uma aplicação funcional.

### 📚 Métodos de estudo

* Visualização dos métodos disponíveis;
* Descrição de cada técnica;
* Exibição dos benefícios de cada método;
* Tempo de estudo específico;
* Tempo de pausa recomendado.

### ⏱️ Sessões de estudo

* Cronômetro funcional;
* Contagem regressiva;
* Botão para iniciar a sessão;
* Botão para pausar a sessão;
* Continuação da sessão após pausa;
* Identificação do método utilizado;
* Notificação ao finalizar uma sessão.

### ☁️ Banco de dados

* Integração com Supabase;
* Armazenamento das sessões concluídas;
* Registro do método utilizado;
* Registro da duração da sessão;
* Registro da data e horário da conclusão.

### 📊 Estatísticas

Usuários Premium podem visualizar:

* Quantidade total de sessões;
* Tempo total de estudo;
* Método mais utilizado.

### 🕘 Histórico

Usuários Premium podem consultar:

* Sessões concluídas;
* Método utilizado;
* Duração da sessão;
* Data e horário da conclusão.

### ⭐ Modelo Freemium

O protótipo possui uma simulação de modelo Freemium:

**Versão gratuita:**

* Métodos de estudo;
* Cronômetro;
* Sessões de estudo;
* Anúncios simulados.

**Versão Premium:**

* Sem anúncios;
* Histórico de estudos;
* Estatísticas;
* Recursos avançados.

A ativação do Premium é **simulada para fins de prototipação**, não envolvendo uma cobrança financeira real.

---

# 📖 Métodos de estudo

## 🍅 Técnica Pomodoro

A Técnica Pomodoro utiliza períodos de foco de **25 minutos**, seguidos por pausas curtas de **5 minutos**.

**Benefício:** combate a procrastinação e ajuda a prevenir a fadiga mental.

**Tempo de estudo:** 25 minutos
**Pausa:** 5 minutos

---

## 🧠 Técnica Feynman

Método baseado no estudo ativo, no qual o estudante tenta explicar o assunto utilizando palavras simples.

**Benefício:** ajuda a identificar lacunas reais no aprendizado e facilita a compreensão de conceitos complexos.

**Tempo de estudo:** 45 minutos
**Pausa:** 10 minutos

---

## 🔄 Active Recall — Evocação Ativa

Método baseado em testar a memória tentando recuperar uma informação sem consultar imediatamente o material estudado.

**Benefício:** fortalece a retenção do conteúdo e favorece a aprendizagem de longo prazo.

**Tempo de estudo:** 30 minutos
**Pausa:** 5 minutos

---

## 🗂️ Sistema Leitner — Flashcards

Sistema de revisão espaçada utilizando cartões organizados de acordo com o nível de dificuldade do conteúdo.

**Benefício:** permite priorizar os conteúdos mais difíceis e otimizar o tempo utilizado durante as revisões.

**Tempo de estudo:** 40 minutos
**Pausa:** 10 minutos

---

## 📚 Método de Estudo Livre

Sessão de estudo flexível para revisar conteúdos no próprio ritmo do estudante.

**Benefício:** permite adaptar o tempo de estudo às necessidades individuais.

**Tempo de estudo:** 50 minutos
**Pausa:** 10 minutos

---

# 🏷️ Desenvolvimento da marca

## 🎯 Nome — Focus Flow

O nome **Focus Flow** representa a ideia de entrar em um estado contínuo de concentração durante os estudos.

* **Focus:** representa foco, concentração e produtividade;
* **Flow:** representa fluidez, continuidade e imersão na atividade.

A união dos termos representa a proposta do aplicativo de ajudar o estudante a manter uma rotina de estudos focada e organizada.

---

# 💭 Naming Rationale

O nome foi escolhido buscando representar de maneira simples a principal proposta do aplicativo.

O **Focus Flow** funciona como uma ferramenta para auxiliar o estudante a entrar e permanecer em um fluxo de concentração, utilizando diferentes metodologias de estudo.

O nome também busca transmitir uma sensação de movimento, continuidade e produtividade.

---

# 🗣️ Tom de voz

A comunicação do Focus Flow busca ser:

* **Simples:** informações apresentadas sem complexidade desnecessária;
* **Direta:** instruções e informações objetivas;
* **Motivadora:** incentivar o usuário durante os estudos;
* **Acessível:** linguagem fácil de compreender;
* **Informativa:** explicar de maneira resumida os métodos disponíveis.

A proposta é apresentar diferentes técnicas de estudo sem tornar a experiência complicada ou excessivamente técnica.

---

# 🎨 Identidade visual

A identidade visual do **Focus Flow** foi desenvolvida utilizando o **Figma** e posteriormente aplicada à interface Flutter.

Na evolução para o protótipo funcional, a paleta de cores foi revisada para melhorar a legibilidade, o contraste e a percepção de organização da aplicação.

A interface utiliza:

* Cards com cantos arredondados;
* Cabeçalhos destacados;
* Botões de ação;
* Ícones;
* Hierarquia visual;
* Espaçamentos padronizados;
* Cores de destaque para ações importantes;
* Elementos visuais específicos para os recursos Premium.

---

# 🎨 Nova paleta de cores

Durante o desenvolvimento do protótipo funcional, a paleta de cores original foi modificada para proporcionar uma identidade mais moderna e melhorar a legibilidade da aplicação.

A nova identidade utiliza principalmente tons de **azul-petróleo e verde**, transmitindo uma sensação de foco, tranquilidade, tecnologia e produtividade.

| Cor                       | Código HEX | Aplicação                                            |
| ------------------------- | ---------- | ---------------------------------------------------- |
| 🔵 Azul-petróleo          | `#164E63`  | Cor principal, AppBar, botões e elementos principais |
| 🟢 Verde-petróleo         | `#0F766E`  | Cor secundária e ações de destaque                   |
| 🟢 Verde-menta            | `#14B8A6`  | Destaques, Premium e elementos de atenção            |
| 🔵 Fundo azul-acinzentado | `#EAF1F3`  | Fundo geral da aplicação                             |
| ⚪ Branco                  | `#FFFFFF`  | Cards, superfícies e áreas de contraste              |
| ⚫ Azul escuro             | `#172B3A`  | Textos principais                                    |
| 🔘 Cinza azulado          | `#455A64`  | Textos secundários                                   |
| 🟢 Verde sucesso          | `#2E7D32`  | Mensagens e indicadores de sucesso                   |

### Justificativa da mudança

A paleta anterior apresentava maior quantidade de cores fortes e contrastantes.

Na implementação do protótipo funcional, a paleta foi simplificada para criar uma experiência visual mais consistente.

O **azul-petróleo** passou a representar a identidade principal do aplicativo, enquanto os tons de **verde** são utilizados para destacar ações, benefícios e funcionalidades Premium.

O fundo recebeu um tom azul-acinzentado claro, evitando o uso de branco puro em toda a tela e proporcionando maior diferenciação entre o fundo e os cards.

Os textos utilizam tons escuros de azul e cinza para garantir melhor legibilidade.

---

# ✏️ Tipografia

A tipografia escolhida para a identidade visual do **Focus Flow** foi a fonte **Inter**, utilizando principalmente pesos regulares e **Bold**.

### Fonte principal

**Família tipográfica:** Inter

**Aplicação:**

* Títulos;
* Subtítulos;
* Botões;
* Informações de destaque;
* Textos da interface.

A escolha da Inter busca proporcionar boa legibilidade em interfaces digitais e contribuir para uma aparência moderna, simples e objetiva.

---

# 🖼️ Logo

O logo do **Focus Flow** foi desenvolvido como parte da identidade visual do projeto e pode ser visualizado no arquivo do Figma.

[🔗 Visualizar identidade visual no Figma](https://www.figma.com/design/NpZ4CHYicY21IuoGD829oa/CheckPoint_cpad?node-id=0-1&p=f&t=1id8naTyvHdnJTyU-0)

---

# 🖥️ Protótipo funcional

Na CP5, o projeto deixou de ser apenas uma prototipação visual e passou a possuir um **protótipo funcional desenvolvido em Flutter**.

O fluxo principal implementado é:

```text
Tela inicial
     ↓
Escolha do método
     ↓
Tela de sessão
     ↓
Iniciar cronômetro
     ↓
Pausar / continuar
     ↓
Conclusão da sessão
     ↓
Salvar no Supabase
     ↓
Histórico / Estatísticas
```

Os recursos de **Histórico** e **Estatísticas** são disponibilizados somente para usuários Premium.

---

# ☁️ Integração com Supabase

O Focus Flow utiliza o **Supabase** como banco de dados para armazenar as sessões de estudo concluídas.

A integração foi realizada utilizando o pacote `supabase_flutter`.

O aplicativo inicializa o cliente Supabase e realiza operações de leitura e inserção diretamente na tabela de sessões. A documentação oficial do Supabase apresenta o uso do `supabase_flutter` para integração entre Flutter e banco de dados.

### Tabela `study_sessions`

A estrutura utilizada contém:

| Campo              | Tipo      | Descrição                   |
| ------------------ | --------- | --------------------------- |
| `id`               | bigint    | Identificador da sessão     |
| `method_name`      | text      | Método utilizado            |
| `duration_minutes` | integer   | Duração da sessão           |
| `completed_at`     | timestamp | Data e horário da conclusão |

### Fluxo de armazenamento

Quando o cronômetro chega ao final, o aplicativo registra a sessão no banco de dados contendo:

* Nome do método;
* Duração da sessão;
* Data e horário da conclusão.

O histórico e as estatísticas posteriormente consultam esses dados para apresentar as informações ao usuário.

---

# 🔐 Segurança do banco de dados

A tabela `study_sessions` utiliza **Row Level Security (RLS)** no Supabase.

Para o protótipo da CP5 foram configuradas políticas permitindo a leitura e inserção das sessões necessárias para o funcionamento da aplicação.

Essa configuração foi utilizada com objetivo de permitir a demonstração do protótipo funcional.

Em uma versão de produção, seria necessário implementar autenticação e políticas específicas por usuário, permitindo que cada estudante visualize somente suas próprias sessões.

---

# ⭐ Modelo de negócio — Freemium

O Focus Flow utiliza no protótipo uma proposta de modelo **Freemium**.

A ideia é oferecer uma versão gratuita com os recursos essenciais e disponibilizar funcionalidades avançadas através do Premium.

### 🆓 Versão gratuita

Inclui:

* Métodos de estudo;
* Cronômetro;
* Sessões de estudo;
* Pausar e continuar sessões;
* Anúncios simulados.

### ⭐ Versão Premium

Inclui:

* Experiência sem anúncios;
* Histórico de sessões;
* Estatísticas de estudo;
* Recursos avançados.

### 💳 Assinatura

Para a CP5, o processo de assinatura é **simulado**.

Ao selecionar **"Assinar Premium"**, o aplicativo altera o estado do usuário para Premium e libera os recursos correspondentes.

Não existe cobrança financeira real no protótipo atual.

Uma futura versão poderia integrar um sistema real de pagamentos e gerenciamento de assinaturas.

---

# 📢 Sistema de anúncios

Para representar o modelo Freemium, foi desenvolvido um componente visual de anúncio.

Na versão gratuita, um espaço de anúncio é exibido na tela principal.

Após a ativação do Premium, o componente de anúncio deixa de ser exibido.

O anúncio utilizado na CP5 é **simulado**, servindo para demonstrar a lógica de monetização do aplicativo.

Uma versão futura poderia utilizar uma plataforma real de publicidade.

---

# 📊 Estatísticas Premium

A tela de estatísticas foi desenvolvida para apresentar informações obtidas diretamente do banco de dados.

São exibidos:

* Total de sessões concluídas;
* Tempo total de estudo;
* Método de estudo mais utilizado.

O recurso é protegido pela lógica do aplicativo e fica disponível somente quando o estado Premium está ativo.

---

# 🕘 Histórico Premium

O histórico permite visualizar as sessões de estudo registradas no Supabase.

Cada registro apresenta:

* Método utilizado;
* Duração da sessão;
* Data da conclusão.

Usuários gratuitos não possuem acesso ao histórico. Ao tentar acessar o recurso, o aplicativo apresenta uma mensagem informando que a funcionalidade é exclusiva do Premium.

---

# 🧩 Decisões técnicas

Durante a evolução do projeto foram tomadas algumas decisões técnicas para atender aos requisitos do protótipo funcional.

### Flutter

O Flutter foi utilizado para permitir a construção da interface e do fluxo funcional utilizando uma única base de código.

### Supabase

O Supabase foi escolhido para fornecer persistência dos dados das sessões de estudo e permitir que o aplicativo demonstre uma integração real com banco de dados.

### Estado Premium

Para a CP5, o estado Premium é controlado pelo aplicativo e alterado através de uma simulação de assinatura.

Essa abordagem permite demonstrar o funcionamento do modelo Freemium sem a necessidade de implementar um sistema financeiro real.

### Componentização

Alguns elementos foram separados em arquivos próprios para facilitar a organização do projeto, como:

* Métodos de estudo;
* Tela de sessão;
* Tela Premium;
* Histórico;
* Estatísticas;
* Componente de anúncio;
* Tema visual.

---

# 🛠️ Tecnologias utilizadas

| Tecnologia         | Utilização                             |
| ------------------ | -------------------------------------- |
| Flutter            | Desenvolvimento da aplicação           |
| Dart               | Linguagem utilizada pelo Flutter       |
| Supabase           | Banco de dados e persistência          |
| PostgreSQL         | Banco de dados utilizado pelo Supabase |
| Figma              | Identidade visual e prototipação       |
| Git                | Controle de versão                     |
| GitHub             | Repositório e documentação             |
| Visual Studio Code | Ambiente de desenvolvimento            |
| Google Chrome      | Ambiente de testes                     |

---

# 🧪 Ambiente de testes

Durante a CP5, o aplicativo foi configurado e testado utilizando o **Flutter Web no Google Chrome**.

O ambiente utilizado permite executar e demonstrar o protótipo funcional sem a necessidade de um dispositivo físico.

### Verificar o ambiente Flutter

```bash
flutter doctor -v
```

### Verificar dispositivos disponíveis

```bash
flutter devices
```

### Instalar as dependências

```bash
flutter pub get
```

### Executar no Chrome

```bash
flutter run -d chrome
```

Também é possível executar utilizando o servidor web do Flutter:

```bash
flutter run -d web-server
```

---

# ▶️ Executando o projeto

Primeiramente, é necessário possuir o Flutter instalado e configurado.

Clone o repositório:

```bash
git clone COLE_AQUI_A_URL_DO_SEU_REPOSITORIO
```

Acesse a pasta do projeto:

```bash
cd focus_flow
```

Instale as dependências:

```bash
flutter pub get
```

Verifique os dispositivos disponíveis:

```bash
flutter devices
```

Execute o projeto:

```bash
flutter run -d chrome
```

O aplicativo será executado no navegador e poderá ser utilizado para demonstrar o fluxo principal do protótipo.

---

# 📂 Estrutura do projeto

A estrutura principal do projeto foi organizada da seguinte maneira:

```text
focus_flow/
│
├── lib/
│   ├── main.dart
│   │
│   ├── models/
│   │   └── study_method.dart
│   │
│   ├── screens/
│   │   ├── home_screen.dart
│   │   ├── study_screen.dart
│   │   ├── premium_screen.dart
│   │   ├── history_screen.dart
│   │   ├── stats_screen.dart
│   │   └── ad_banner.dart
│   │
│   └── theme/
│       └── app_theme.dart
│
├── android/
├── ios/
├── web/
├── windows/
├── test/
├── pubspec.yaml
└── README.md
```

---

# 📋 Status do projeto

## Checkpoint 4 — Idealização do App

* [x] Definição da ideia do aplicativo;
* [x] Definição do problema;
* [x] Definição do público-alvo;
* [x] Definição das funcionalidades;
* [x] Desenvolvimento do nome e conceito da marca;
* [x] Naming rationale;
* [x] Definição do tom de voz;
* [x] Desenvolvimento do logo;
* [x] Desenvolvimento da identidade visual;
* [x] Definição da paleta de cores;
* [x] Definição da tipografia;
* [x] Desenvolvimento das telas no Figma;
* [x] Desenvolvimento do protótipo no Figma;
* [x] Definição da proposta de valor;
* [x] Definição do diferencial competitivo;
* [x] Definição inicial do modelo de negócio;
* [x] Projeto Flutter inicial criado.

---

# 🚀 Checkpoint 5 — Protótipo Funcional

* [x] Aplicação funcional em Flutter;
* [x] Navegação entre telas;
* [x] Métodos de estudo implementados;
* [x] Cronômetro funcional;
* [x] Iniciar sessão;
* [x] Pausar sessão;
* [x] Continuar sessão;
* [x] Identificação do método utilizado;
* [x] Conclusão da sessão;
* [x] Integração com Supabase;
* [x] Banco de dados `study_sessions`;
* [x] Salvamento das sessões concluídas;
* [x] Tela de histórico;
* [x] Tela de estatísticas;
* [x] Controle de acesso aos recursos Premium;
* [x] Modelo Freemium implementado;
* [x] Simulação de assinatura Premium;
* [x] Anúncio simulado para usuários gratuitos;
* [x] Remoção do anúncio após ativação do Premium;
* [x] Nova paleta de cores;
* [x] Aplicação de tema centralizado;
* [x] Ambiente de testes configurado;
* [x] Execução no Google Chrome;
* [x] README atualizado com decisões técnicas.

---

# 🔮 Próximas etapas

Apesar de o protótipo funcional atender aos principais requisitos da CP5, algumas funcionalidades podem ser desenvolvidas futuramente:

* Implementação de autenticação de usuários;
* Separação dos dados por usuário;
* Políticas RLS específicas para cada usuário;
* Sistema real de pagamentos;
* Integração com plataforma de anúncios;
* Personalização dos tempos de estudo;
* Planejamento de estudos;
* Novos métodos de estudo;
* Temas personalizados;
* Sincronização entre dispositivos;
* Melhorias nas estatísticas;
* Gráficos de desempenho;
* Notificações e lembretes;
* Versão mobile publicada nas lojas.

---

# 💡 Pitch

Estudar não significa apenas passar horas lendo um conteúdo. Diferentes situações podem exigir diferentes estratégias de aprendizagem.

O **Focus Flow** nasce com a proposta de reunir diferentes métodos de estudo em um único lugar.

Em vez de utilizar apenas um cronômetro ou depender de diferentes ferramentas para aplicar cada técnica, o estudante encontra no Focus Flow métodos como **Pomodoro, Feynman, Active Recall e Sistema Leitner**.

Além disso, o aplicativo permite realizar sessões de estudo, registrar o desempenho e acompanhar a evolução através do histórico e das estatísticas Premium.

> **Focus Flow: diferentes formas de estudar, em um único fluxo para manter o foco.**

---

# 🚀 Diferencial competitivo

Existem diversas ferramentas de produtividade que oferecem cronômetros, especialmente baseados na Técnica Pomodoro.

O diferencial proposto pelo **Focus Flow** é reunir **diferentes metodologias de estudo em uma única aplicação**, combinando técnicas de aprendizagem com ferramentas de acompanhamento.

O aplicativo não busca oferecer somente uma contagem regressiva, mas apresentar diferentes estratégias e permitir que o estudante escolha uma técnica de acordo com sua necessidade.

Além disso, a integração com banco de dados permite registrar as sessões e oferecer recursos de histórico e estatísticas através do modelo Premium.

Assim, o Focus Flow busca funcionar como um **hub de métodos de estudo e foco**, evitando que o usuário precise recorrer a diferentes ferramentas para aplicar técnicas diferentes.

---

# 👥 Integrantes

| RM         | Nome                                         |
| ---------- | -------------------------------------------- |
| **562242** | Pedro Gabriel Mendes Soares Leite            |
| **565564** | Leonardo Augusto Bacelar da Cunha            |
| **563346** | Alexandre Campão Fernandes Schneider Bertini |
| **563981** | Guilherme Verrillo Peres                     |
| **564180** | Lucca Rosseto Rezende                        |
| **561779** | Massayoshi Bando Fogaça e Silva              |

---

# 🎯 Focus Flow

### Encontre seu método. Mantenha seu foco.

**Checkpoint 5 — Protótipo Funcional**
