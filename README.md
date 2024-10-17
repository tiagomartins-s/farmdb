# FIAP - Faculdade de Informática e Administração Paulista

<p align="center">
<a href= "https://www.fiap.com.br/"><img src="assets/logo-fiap.png" alt="FIAP - Faculdade de Informática e Admnistração Paulista" border="0" width=40% height=40%></a>
</p>

<br>

# Farm Sense

## IARS

## 👨‍🎓 Integrantes: 
- <a href="https://www.linkedin.com/company/inova-fusca">Tiago Martins</a>
- <a href="https://www.linkedin.com/in/lucas-castro-32263bb5 ">Lucas Costa dos Santos Castro</a>
- <a href="https://www.linkedin.com/in/mauricio-cortes-5488a61a9/">Mauricio Cortes</a> 

## 👩‍🏫 Professores:
### Tutor(a) 
- <a href="https://www.linkedin.com/in/lucas-gomes-moreira-15a8452a/">Lucas Gomes Moreira</a>
### Coordenador(a)
- <a href="https://www.linkedin.com/in/profandregodoi/">André Godoi</a>


## 📜 Descrição

Tabelas e Relações
T_AMBIENTE
Chave Primária: id_ambiente
Descrição: Representa diferentes ambientes monitorados. Cada ambiente tem um identificador único.
 
T_COLETA
Chave Primária: id_coleta
Chave Estrangeira: id_ambiente (FK que refere-se a T_AMBIENTE)
Descrição: Registra as coletas de dados realizadas em ambientes. Cada coleta está ligada a um único ambiente.
 
T_NIVEL_CONFORTO
Chave Primária: id_conforto
Chave Estrangeira: id_coleta (FK que refere-se a T_COLETA)
Descrição: Armazena informações sobre o nível de conforto durante as coletas. Cada registro de conforto está vinculado a uma única coleta.
Relações
Um ambiente pode ter várias coletas (1).
Uma coleta pode ter vários níveis de conforto (1).
 
T_AMBIENTE (1) <--- (N) T_COLETA (1) <--- (N) T_NIVEL_CONFORTO

## 🗃 Histórico de lançamentos

* 1.0 - 15/10/2024


