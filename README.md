# Flutter Experience Lab Clinicas

Este projeto baseia-se no curso de treinamento em Flutter, promovido pela Academia do Flutter e conduzido pelo instrutor Rodrigo Rahman, reconhecido como expert Flutter e Dart pela Google (GDE).
O projeto aborda a criação de um sistema para uma clínica de exames, abordando as plataformas Mobile, Desktop e Web.

**- Projetos Interligados:**
- fe_lab_clinicas_api - arquivo datebase.json.
- fe_lab_clinicas_core - arquivos restClient interceptors, local storage, e theme, utilizados em todos os projetos.
- fe_lab_clinicas_self_service - plataforma Mobile. 
- fe_lab_clinicas_adm - plataforma Desktop.
- fe_lab_clinicas_painel - plataforma Web.


## Projeto Core

O módulo fe_lab_clinicas_core é uma parte central e compartilhada entre todos os projetos relacionados a Lab Clinicas. Este módulo fornece funcionalidades essenciais, como restClient - interceptors (DIO), contastante local storage onde contém a chave token de acesso , mensagens de sucesso, erro ou informação (mixin) e configuração do theme, otimizando a consistência e reutilização de código em todos os projetos associados.
