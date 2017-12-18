.section .data
# definicao das mensagens do programa
	titgeral: .asciz "\n*** Super Programa de Saque ***\n\n"
	titCadCliente: .asciz "\nCadastro Cliente:\n"
	titmostra: .asciz "\nRegistros Cadastrados:\n"
	titExtrato: .asciz "\n*** Extrato ***\n"
	titTransferencia: .asciz "\n*** Transferencia ***\n"
	titListaClientes: .asciz "\n***Relatório de clientes***\n"
	menu: .asciz "\nMenu:\n1 - Gerente \n2 - Cliente \n0 - Fim\n> "
	menuOpGerente: .asciz "\nGerente:\n1 - Cadastra Cliente \n2 - Repor Caixa\n3 - Adiciona saldo para o cliente\n4 - Relatório\n0 - Volta\n>"
	menuOpCliente: .asciz "\nCliente:\n1 - Sacar \n2 - Tirar extrato\n3 - Fazer transferencia\n0 - Volta\n>"
	msgerro: .asciz "\nOpcao incorreta!\n"
	msginser: .asciz "\nCliente cadastrado com sucesso!\n"
	msgVaziaCliente: .asciz "\nNao existe cliente cadastrado \n"
	msgInsereSaldo: .asciz "\nDigite o saldo que deseja inserir para o cliente:\n"
	msgSaldoSucesso: .asciz "\nSaldo inserido com sucesso\n"
	clienteNaoEncontrado: .asciz "\nCliente nao encontrado \n"


#cliente
	nome: .asciz "Nome: %s \n"
	nomeScan: .asciz "Digite o nome do cliente: "
	senhaScan: .asciz "Digite a senha do cliente: "
	agenciaScan: .asciz "Digite a agencia do cliente: "
	numContaScan: .asciz "Digite o numero da conta do cliente: "
	agencia: .asciz "Agencia: %s \n"
	senha: .asciz "Senha: %s \n"
	numConta: .asciz "Numero da conta: %s \n"
	cpf: .asciz "CPF: %s \n"
	saldo: .asciz "Saldo: \n"
	mostrasaldo: .asciz "Saldo: R$ %d\n"
	saldoAtual:  .int 0
	saldoAdicional: .int 0
	msgSaldoInsuficiente: .asciz "\nSeu saldo é insuficiente para realizar esta operação\n"
	valorTransferencia: .int 0
	msgValorTransferencia: .asciz "\nDigite o valor que deseja transferir:\n"
	msgTransferenciaSucesso: .asciz "\nTransferencia realizada com sucesso\n"
	msgSaquePar: .asciz "\nO valor do saque deve ser par\n"
	msgSaldoAtual: .asciz "\nSeu saldo atual é de: "
	dadosProcura: .space 38
	dadosProcuraPorNome: .space 72

	msgClienteOrigem: .asciz "\n----SEUS DADOS----:\n"
	msgClienteDestino: .asciz "\n----DADOS DO CLIENTE DESTINATÁRIO----\n"
	msgConfirmaTransferencia: .asciz "\nDigite 1 para confirmar a transferencia ou outro dígito para cancelar: "
	msgCancelaTransferencia: .asciz "\nTransferência cancelada com sucesso\n"
	msgTransferenciaImpossivel: .asciz "\nImpossível realizar transferência para si mesmo\n"

	nomeArqCliente: .asciz "cliente.txt"
	descritorCliente: .int 0
   	tamRegistroCliente: .int 10000
	nrClientes: .int 0
	contador: .int 0

#variaveis Cliente
	#clienteNome: .space 48  # 1 espaco para fim de string: '\0' = 0
	#clienteAgencia: .space 12     # 1 espaco para fim de string: '\0' = 0
	#clienteSenha: .space 14     # 1 espaco para fim de string: '\0' = 0
	#clinteNumConta: .space 12         # 1 espaco para fim de string: '\0' = 0
	#clienteCPF: .space 12          # 1 espaco para fim de string: '\0' = 0
	#clienteSaldo:  .space 8
	#valorUltimoSaque: .space 8
	#valorUltimaTransferencia: .space 8
	#ultimoLogin: .space 8
	#proxCliente: .int NULL
	nalocCliente: .int 122
	ptInicioCliente: .int NULL
	ptClienteAtual: .int NULL


msgrepor:         .asciz        "\nEntre com os valores a repor:"
msgsacar:         .asciz        "\nEntre com o valor a sacar:"

pede100:          .asciz     "\nQuantas notas de 100 deseja? "
pede50:           .asciz     "\nQuantas notas de 50 deseja? "
pede20:           .asciz     "\nQuantas notas de 20 deseja? "
pede10:           .asciz     "\nQuantas notas de 10 deseja? "
pede5:            .asciz     "\nQuantas notas de 5 deseja? "
pede2:            .asciz     "\nQuantas notas de 2 deseja? "
pede1:            .asciz     "\nQuantas notas de 1 deseja? "

msgindisp:        .asciz        "\nDESCULPE O TRANSTORNO: Dinheiro Indisponivel no Caixa! Etapa = %d\n"
msgdisp:          .asciz        "\nSAQUE REALIZADO:\n Foram sacadas:\n%d notas de 100\n%d notas de 50\n%d notas de 20\n%d notas de 10\n%d notas de 5\n%d notas de 2\n Total = %d\n"
    
mostranotas:      .asciz        "\nNOTAS DO CAIXA:\n Restam no caixa\n%d notas de 100\n%d notas de 50\n%d notas de 20\n%d notas de 10\n%d notas de 2\n Total = %d\n"
formato:          .asciz        "%d"
formatoChar:      .asciz        "%c"   

# quantidades disponiveis no caixa eletronico
quant100:         .int    0
quant50:          .int    0
quant20:          .int    0
quant10:          .int    0
quant5:           .int    0
quant2:           .int    0
quant1:           .int    0

nomeArqNotas: .asciz "notas.txt"
descritorNotas: .int 0
registroNotas: .space 40
tamNotas: .int 40
ptInicioNotas: .int NULL

# quantidades a serem repassadas ao cliente
notas100:         .int    0
notas50:          .int    0
notas20:          .int    0
notas10:          .int    0
notas5:           .int    0
notas2:           .int    0
notas1:           .int    0

# valores constantes
cem:              .int    100
cinquenta:        .int    50
vinte:            .int    20
dez:              .int    10
cinco:            .int    5
dois:             .int    2
um:              .int    1

    
quant:            .int    0
valorsaque:       .int    0
valorsaqueaux:    .int    0
valorsaqueantigo:  .int    0
totalcaixa:       .int    0
totalcaixaux:     .int    0

etapa:            .int    0

desaloca:         .int    0    
	


	
#strings comuns
	formach: .asciz "%c"
	formanum: .asciz "%d"
	formaFloat: .asciz "%lf"
	pulalinha: .asciz "\n"
	NULL: .int 0
	opcao: .int 0
	cortaLinha: .asciz "------------------------------------\n"

	SYS_READ:  .int 3
	SYS_WRITE: .int 4
	SYS_OPEN:  .int 5
	SYS_CLOSE: .int 6
	O_WRONLY:  .int 0x0001 # somente escrita
	O_RDONLY:  .int 0x0000 # somente leitura
	O_RDWR:    .int 0x0002 # leitura e escrita
	O_CREAT:   .int 0x0040 # cria o arquivo na abertura, caso ele não exista
	O_APPEND:  .int 0x0400 # posiciona o cursor do arquivo no final, para adição
	O_TRUNC:   .int 0x0200 # reseta o arquivo aberto, deixando com tamanho 0 (zero)
	S_IRWXU:  .int 0x01C0 # user (file owner) has read, write and execute permission
	S_IRUSR: .int 0x0100 # user has read permission
	S_IWUSR: .int 0x0080 # user has write permission

.section .bss
.lcomm strRegistroCliente, 10000
.lcomm strRegistroNotas, 40



.section .text
.globl _start

_start:


jmp main

# ---------------------------------------------------------- LÊ DADOS CLIENTE ---------------------------------------------------

#esta função realiza a leitura dos dados do cliente para o cadastro
leDadosCliente:

	pushl %edi # endereco inicial do registro
	pushl $nome
	call printf
	addl $4, %esp
	call gets  # o nome deve ter tamanho máximo de 47 caracteres
	popl %edi # recupera %edi
	addl $48, %edi  # avanca para o proximo campo

	pushl %edi # endereco inicial do registro
	pushl $cpf
	call printf
	addl $4, %esp
	call gets # o cpf deve ter tamanho máximo de 11 caracteres
	popl %edi # recupera %edi
	addl $12, %edi  # avanca para o proximo campo

	pushl %edi # endereco inicial do registro
	pushl $senha
	call printf
	addl $4, %esp
	call gets # a senha deve ter tamanho máximo de 13 caracteres
	popl %edi # recupera %edi
	addl $14, %edi  # avanca para o proximo campo

	pushl %edi # endereco inicial do registro
	pushl $agencia
	call printf
	addl $4, %esp
	call gets # a agencia deve ter tamanho máximo de 11 caracteres
	popl %edi # recupera %edi
	addl $12, %edi  # avanca para o proximo campo

	pushl %edi # endereco inicial do registro
	pushl $numConta
	call printf
	addl $4, %esp
	call gets # o número da conta deve ter tamanho máximo de 11 caracteres
	popl %edi # recupera %edi
	addl $12, %edi  # avanca para o proximo campo

	pushl %edi # endereco inicial do registro
	pushl $saldo
	call printf
	addl $4, %esp
	pushl $formanum
	call scanf  # o saldo deve ser de no máximo de 8 dígitos
	addl $4, %esp
	popl %edi
	addl $8, %edi

	pushl %edi

	pushl $formach
	call scanf
	addl $4, %esp

	popl %edi

	#os 3 campos abaixo foram colocados para o caso de se querer colocar informações do histórico de transações do cliente
	movl $NULL, (%edi)
	addl $4, %edi  # avanca para o proximo campo

	movl $NULL, (%edi)
	addl $4, %edi  # avanca para o proximo campo

	movl $NULL, (%edi)
	addl $4, %edi  # avanca para o proximo campo

	movl $NULL, (%edi) #campo que aponta para o próximo registro

	subl $118,%edi    # deixa %edi tal como estava no inicio
RET

# --------------------------------------------------------------- LÊ DADOS CLIENTE --------------------------------------------------------





# --------------------------------------------------------------------- INSERE CLIENTE ----------------------------------------------------------------
insereCliente:
	pushl $titCadCliente
	call printf
	movl nalocCliente, %ecx
	pushl %ecx
	call malloc
	movl %eax, %edi
	addl  $8, %esp
	call leDadosCliente
	movl ptInicioCliente, %esi
	cmpl $NULL, %esi
	je inserePrimeiroCliente

	call achaPosicaoCliente

	cmpl $NULL, %esi
	je insereClienteInicio

	movl 118(%esi), %ecx
	movl %ecx, 118(%edi)
	movl %edi, 118(%esi)
	pushl $msginser
	call printf
	addl $4, %esp
	call gravaClientes
jmp menuGerente


inserePrimeiroCliente:
	movl %edi, ptInicioCliente
	pushl $msginser
	call printf
	addl $4, %esp
	call gravaClientes
	jmp menuGerente


achaPosicaoCliente:
	movl ptInicioCliente, %esi
	pushl %edi
	pushl %esi
	call strcmp
	popl %esi
	popl %edi
	jl continuaCliente
	movl $NULL, %esi
RET


voltaComparacaoCliente:
	pushl %edi
	pushl %esi
	call strcmp
	pop %esi
	pop %edi
	jl continuaClienteAux
	pop %esi
RET


continuaClienteAux:
	addl $4, %esp

continuaCliente:
	movl 118(%esi),%ecx
	cmpl $NULL, %ecx
	jne avancaCliente
RET


avancaCliente:
	pushl %esi
	movl %ecx, %esi
jmp voltaComparacaoCliente


insereClienteInicio:
	movl ptInicioCliente, %esi
	movl %esi, 118(%edi)
	movl %edi, ptInicioCliente
	call gravaClientes
jmp menuGerente

# --------------------------------------------------------------------- INSERE CLIENTE ----------------------------------------------------------------







# --------------------------------------------------------------------- PROCURA CLIENTE ----------------------------------------------------------------

procuraCliente:
	
	movl dadosProcura, %esi

	pushl %esi
	pushl $senhaScan
	call printf
	addl $4, %esp
	call gets
	popl %esi
	addl $14, %esi


	pushl %esi
	pushl $agenciaScan
	call printf
	addl $4, %esp
	call gets
	popl %esi
	addl $12, %esi


	pushl %esi
	pushl $numContaScan
	call printf
	addl $4, %esp
	call gets
	pop %esi
	addl $12, %esi


	pushl $cortaLinha
	call printf
	addl $4, %esp


	subl $38, %esi

	movl ptInicioCliente, %edi
	movl ptInicioCliente, %ecx


comparacaoProcuraCliente:
	
	cmpl $NULL, %edi
	je listaClienteVazia
	addl $60, %edi

	pushl %esi
	pushl %edi
	call strcmp
	popl %edi
	popl %esi
	je comparaAgencia
	movl 58(%edi),%ecx
	cmpl $NULL, %ecx
	jne avancaClienteProcura
	pushl $clienteNaoEncontrado
	call printf
jmp menuop

comparaAgencia:

	addl $14, %edi
	addl $14, %esi
	pushl %esi
	pushl %edi
	call strcmp
	popl %edi
	popl %esi
	je comparaConta
	subl $14, %esi
	movl 44(%edi),%ecx
	cmpl $NULL, %ecx
	jne avancaClienteProcura
	pushl $clienteNaoEncontrado
	call printf
	jmp menuop

comparaConta:

	addl $12, %edi
	addl $12, %esi
	pushl %esi
	pushl %edi
	call strcmp
	popl %edi
	popl %esi
	je menuClienteProcura
	subl $26, %esi
	movl 32(%edi),%ecx
	cmpl $NULL, %ecx
	jne avancaClienteProcura
	pushl $clienteNaoEncontrado
	call printf
	jmp menuop	


avancaClienteProcura:
	movl %ecx, %edi
jmp comparacaoProcuraCliente

listaClienteVazia:
	pushl $msgVaziaCliente
	call printf
	addl $4, %esp
jmp menuop

menuClienteProcura:
	
	subl $86, %edi
 	movl 98(%edi), %eax
 	movl %eax, saldoAtual
 	movl %edi, ptClienteAtual

	pushl $menuOpCliente
	call printf
	pushl $opcao
	pushl $formanum
	call scanf
	addl $12, %esp
	pushl $formach   # para remover o enter
	call scanf
	addl $4, %esp
	cmpl $1, opcao
	jz sacar
	cmpl $2, opcao
	jz chamaMostraDadosCliente
	cmpl $3, opcao
	jz procuraTransferencia
	cmpl $0, opcao
	jz menuop
	pushl $msgerro
	call printf
	addl $4, %esp
jmp menuClienteProcura

# --------------------------------------------------------------------- PROCURA CLIENTE ----------------------------------------------------------------








# --------------------------------------------------------------------- MOSTRA DADOS CLIENTE ----------------------------------------------------------------
chamaMostraDadosCliente:
	call mostraDadosCliente
jmp menuCliente

mostraDadosCliente:

	pushl $cortaLinha
	call printf
	addl $4, %esp

	pushl $titExtrato
	call printf
	addl $4, %esp

	pushl %edi  # endereco incial do registro, contendo todos os campos
	pushl $nome
	call printf
	addl $4, %esp
	popl %edi    # recupera %edi
	addl $48, %edi  # avanca para o proximo campo

	pushl %edi # endereco inicial do registro
	pushl $cpf
	call printf
	addl $4, %esp
	popl %edi # recupera %edi
	addl $12, %edi  # avanca para o proximo campo

	
	addl $14, %edi  # avanca para o proximo campo, a senha não é exibida

	pushl %edi # endereco inicial do registro
	pushl $agencia
	call printf
	addl $4, %esp
	popl %edi # recupera %edi
	addl $12, %edi  # avanca para o proximo campo

	pushl %edi # endereco inicial do registro
	pushl $numConta
	call printf
	addl $4, %esp
	popl %edi # recupera %edi
	addl $12, %edi  # avanca para o proximo campo

	
	movl saldoAtual, %eax
	pushl %eax
	pushl $mostrasaldo
	call printf
	addl $8, %esp
	
	subl $98,%edi    # deixa %edi tal como estava no inicio

	pushl $cortaLinha
	call printf
	addl $4, %esp
RET
# --------------------------------------------------------------------- MOSTRA DADOS CLIENTE ----------------------------------------------------------------




# --------------------------------------------------------------------- MENU PRINCIPAL ----------------------------------------------------------------------
menuop:
	pushl $menu
	call printf
	pushl $opcao
	pushl $formanum
	call scanf
	addl $12, %esp
	pushl $formach   # para remover o enter
	call scanf
	addl $4, %esp
	cmpl $1, opcao
	jz menuGerente
	cmpl $2, opcao
	jz procuraCliente
	cmpl $0, opcao
	jz fim
	pushl $msgerro
	call printf
	addl $4, %esp
jmp menuop
# --------------------------------------------------------------------- MENU PRINCIPAL ----------------------------------------------------------------------




# --------------------------------------------------------------------- MENU CLIENTE ------------------------------------------------------------------------
menuCliente:
	pushl $menuOpCliente
	call printf
	pushl $opcao
	pushl $formanum
	call scanf
	addl $12, %esp
	pushl $formach   # para remover o enter
	call scanf
	addl $4, %esp
	cmpl $1, opcao
	jz sacar
	cmpl $2, opcao
	jz chamaMostraDadosCliente
	cmpl $3, opcao
	jz procuraTransferencia
	cmpl $0, opcao
	jz menuop
	pushl $msgerro
	call printf
	addl $4, %esp
jmp menuCliente
# --------------------------------------------------------------------- MENU CLIENTE ------------------------------------------------------------------------



# --------------------------------------------------------------------- MENU GERENTE ------------------------------------------------------------------------
menuGerente:
	pushl $menuOpGerente
	call printf
	pushl $opcao
	pushl $formanum
	call scanf
	addl $12, %esp
	pushl $formach   # para remover o enter
	call scanf
	addl $4, %esp
	cmpl $1, opcao
	jz insereCliente
	cmpl $2, opcao
	jz repor
	cmpl $3, opcao
	jz colocaSaldo
	cmpl $4, opcao
	jz relatorio
	cmpl $0, opcao
	jz menuop
	pushl $msgerro
	call printf
	addl $4, %esp
jmp menuGerente
# --------------------------------------------------------------------- MENU GERENTE ------------------------------------------------------------------------





# --------------------------------------------------------------------- ADICIONA SALDO PARA O CLIENTE -------------------------------------------------------
colocaSaldo:
	movl dadosProcuraPorNome, %esi

	pushl %esi
	pushl $nomeScan
	call printf
	addl $4, %esp
	call gets
	popl %esi
	addl $48, %esi


	pushl %esi
	pushl $agenciaScan
	call printf
	addl $4, %esp
	call gets
	popl %esi
	addl $12, %esi


	pushl %esi
	pushl $numContaScan
	call printf
	addl $4, %esp
	call gets
	pop %esi
	addl $12, %esi


	pushl $cortaLinha
	call printf
	addl $4, %esp

	subl $72, %esi

	movl ptInicioCliente, %edi


comparacaoProcuraClienteSaldo:
	
	cmpl $NULL, %edi
	je listaClienteVaziaSaldo
	#addl $60, %edi

	pushl %esi
	pushl %edi
	call strcmp
	popl %edi
	popl %esi
	je comparaAgenciaSaldo
	movl 118(%edi),%ecx
	cmpl $NULL, %ecx
	jne avancaClienteProcuraSaldo
	pushl $clienteNaoEncontrado
	call printf
jmp menuGerente

comparaAgenciaSaldo:

	addl $74, %edi
	addl $48, %esi
	pushl %esi
	pushl %edi
	call strcmp
	popl %edi
	popl %esi
	je comparaContaSaldo
	subl $48, %esi
	movl 44(%edi),%ecx
	cmpl $NULL, %ecx
	jne avancaClienteProcuraSaldo
	pushl $clienteNaoEncontrado
	call printf
	jmp menuGerente

comparaContaSaldo:

	addl $12, %edi
	addl $12, %esi
	pushl %esi
	pushl %edi
	call strcmp
	popl %edi
	popl %esi
	je insereSaldo
	subl $60, %esi
	movl 32(%edi),%ecx
	cmpl $NULL, %ecx
	jne avancaClienteProcuraSaldo
	pushl $clienteNaoEncontrado
	call printf
	jmp menuGerente


avancaClienteProcuraSaldo:
	movl %ecx, %edi
jmp comparacaoProcuraClienteSaldo

listaClienteVaziaSaldo:
	pushl $msgVaziaCliente
	call printf
	addl $4, %esp
jmp menuGerente


insereSaldo:

	pushl $msgInsereSaldo
	call printf
	addl $4, %esp

	subl $86, %edi

	pushl $saldoAdicional
	pushl $formanum
	call scanf
	addl $8, %esp
	pushl $formach   # para remover o enter
	call scanf
	addl $4, %esp


	movl saldoAdicional, %eax
	addl %eax, 98(%edi)



	pushl $msgSaldoSucesso
	call printf
	addl $4, %esp

	jmp menuGerente

# --------------------------------------------------------------------- ADICIONA SALDO PARA O CLIENTE -------------------------------------------------------





# --------------------------------------------------------------------- REALIZA TRANSFEÊNCIA ----------------------------------------------------------------
procuraTransferencia:

	pushl $cortaLinha
	call printf
	addl $4, %esp

	pushl $titTransferencia
	call printf
	addl $4, %esp

	movl dadosProcuraPorNome, %esi

	pushl %esi
	pushl $nomeScan
	call printf
	addl $4, %esp
	call gets
	popl %esi
	addl $48, %esi


	pushl %esi
	pushl $agenciaScan
	call printf
	addl $4, %esp
	call gets
	popl %esi
	addl $12, %esi


	pushl %esi
	pushl $numContaScan
	call printf
	addl $4, %esp
	call gets
	pop %esi
	addl $12, %esi


	pushl $cortaLinha
	call printf
	addl $4, %esp

	subl $72, %esi

	movl ptInicioCliente, %edi


comparacaoProcuraClienteTransferencia:
	
	cmpl $NULL, %edi
	je listaClienteVaziaTransferencia
	#addl $60, %edi

	pushl %esi
	pushl %edi
	call strcmp
	popl %edi
	popl %esi
	je comparaAgenciaTransferencia
	movl 118(%edi),%ecx
	cmpl $NULL, %ecx
	jne avancaClienteProcuraTransferencia
	pushl $clienteNaoEncontrado
	call printf
jmp menuCliente

comparaAgenciaTransferencia:

	addl $74, %edi
	addl $48, %esi
	pushl %esi
	pushl %edi
	call strcmp
	popl %edi
	popl %esi
	je comparaContaTransferencia
	subl $48, %esi
	movl 44(%edi),%ecx
	cmpl $NULL, %ecx
	jne avancaClienteProcuraTransferencia
	pushl $clienteNaoEncontrado
	call printf
	jmp menuCliente

comparaContaTransferencia:

	addl $12, %edi
	addl $12, %esi
	pushl %esi
	pushl %edi
	call strcmp
	popl %edi
	popl %esi
	je fazTransferencia
	subl $60, %esi
	movl 32(%edi),%ecx
	cmpl $NULL, %ecx
	jne avancaClienteProcuraTransferencia
	pushl $clienteNaoEncontrado
	call printf
	jmp menuCliente


avancaClienteProcuraTransferencia:
	movl %ecx, %edi
jmp comparacaoProcuraClienteTransferencia

listaClienteVaziaTransferencia:
	pushl $msgVaziaCliente
	call printf
	addl $4, %esp
jmp menuCliente


fazTransferencia:

	pushl $msgValorTransferencia
	call printf
	addl $4, %esp

	subl $86, %edi

	pushl $valorTransferencia
	pushl $formanum
	call scanf
	addl $8, %esp
	pushl $formach   # para remover o enter
	call scanf
	addl $4, %esp

	movl ptClienteAtual, %esi


	movl valorTransferencia, %eax
	cmpl %eax, 98(%esi)
	jl saldoInsuficiente

	pushl %esi
	pushl %edi
	call strcmp
	popl %edi
	popl %esi
	jz transferenciaImpossivel

	#-#-#-#-#-#-#-#-#-#-#-#-#-#-#

	# imprime dados cliente origem
	pushl $cortaLinha
	call printf
	addl $4, %esp

	pushl $msgClienteOrigem
	call printf
	addl $4, %esp

	pushl %esi  # endereco incial do registro, contendo todos os campos
	pushl $nome
	call printf
	addl $4, %esp
	popl %esi    # recupera %edi
	addl $48, %esi  # avanca para o proximo campo

	pushl %esi # endereco inicial do registro
	pushl $cpf
	call printf
	addl $4, %esp
	popl %esi # recupera %edi
	addl $12, %esi  # avanca para o proximo campo

	
	addl $14, %esi  # avanca para o proximo campo, a senha não é exibida

	pushl %esi # endereco inicial do registro
	pushl $agencia
	call printf
	addl $4, %esp
	popl %esi # recupera %edi
	addl $12, %esi  # avanca para o proximo campo

	pushl %esi # endereco inicial do registro
	pushl $numConta
	call printf
	addl $4, %esp
	popl %esi # recupera %edi
	addl $12, %esi  # avanca para o proximo campo

	
	movl saldoAtual, %eax
	pushl %eax
	pushl $mostrasaldo
	call printf
	addl $8, %esp
	
	subl $98, %esi    # deixa %edi tal como estava no inicio

	pushl $cortaLinha
	call printf
	addl $4, %esp

	#-#-#-#-#-#-#-#-#-#-#-#-#-#-#


	#-#-#-#-#-#-#-#-#-#-#-#-#-#-#

	#imprime dados do cliente destino
	pushl $cortaLinha
	call printf
	addl $4, %esp

	pushl $msgClienteDestino
	call printf
	addl $4, %esp

	pushl %edi  # endereco incial do registro, contendo todos os campos
	pushl $nome
	call printf
	addl $4, %esp
	popl %edi    # recupera %edi
	addl $48, %edi  # avanca para o proximo campo

	pushl %edi # endereco inicial do registro
	pushl $cpf
	call printf
	addl $4, %esp
	popl %edi # recupera %edi
	addl $12, %edi  # avanca para o proximo campo

	
	addl $14, %edi  # avanca para o proximo campo, a senha não é exibida

	pushl %edi # endereco inicial do registro
	pushl $agencia
	call printf
	addl $4, %esp
	popl %edi # recupera %edi
	addl $12, %edi  # avanca para o proximo campo

	pushl %edi # endereco inicial do registro
	pushl $numConta
	call printf
	addl $4, %esp
	popl %edi # recupera %edi
	addl $12, %edi  # avanca para o proximo campo

	
	addl $8, %esp
	
	subl $98, %edi    # deixa %edi tal como estava no inicio

	#-#-#-#-#-#-#-#-#-#-#-#-#-#-#

	pushl $cortaLinha
	call printf
	addl $4, %esp


	pushl $msgConfirmaTransferencia
	call printf
	addl $4, %esp

	pushl $opcao
	pushl $formanum
	call scanf
	addl $8, %esp
	pushl $formach   # para remover o enter
	call scanf
	addl $4, %esp
	cmpl $1, opcao
	jnz cancelaTransferencia

	movl valorTransferencia, %eax
	subl %eax, 98(%esi)
	movl 98(%esi), %ebx
	movl %ebx, saldoAtual

	addl %eax, 98(%edi)

	pushl $msgTransferenciaSucesso
	call printf
	addl $4, %esp

	movl ptClienteAtual, %edi

	pushl $cortaLinha
	call printf
	addl $4, %esp

	jmp menuCliente



cancelaTransferencia:
	
	pushl $msgCancelaTransferencia
	call printf
	addl $4, %esp

	movl ptClienteAtual, %edi

	pushl $cortaLinha
	call printf
	addl $4, %esp

	jmp menuCliente


transferenciaImpossivel:
	pushl $msgTransferenciaImpossivel
	call printf
	add $4, %esp

	movl ptClienteAtual, %edi

	pushl $cortaLinha
	call printf
	addl $4, %esp

	jmp menuCliente	


# --------------------------------------------------------------------- REALIZA TRANSFEÊNCIA ----------------------------------------------------------------






# --------------------------------------------------------------------- RELATÓRIO: LISTA DE CLIENTES --------------------------------------------------------

relatorio:
	movl ptInicioCliente, %edi
	cmpl $NULL, %edi
	je listaClienteVaziaR

	pushl $titListaClientes
	call printf
	addl $4, %esp

listaClientes:

	pushl $cortaLinha
	call printf
	addl $4, %esp


	pushl %edi  # endereco incial do registro, contendo todos os campos
	pushl $nome
	call printf
	addl $4, %esp
	popl %edi    # recupera %edi
	addl $48, %edi  # avanca para o proximo campo

	pushl %edi # endereco inicial do registro
	pushl $cpf
	call printf
	addl $4, %esp
	popl %edi # recupera %edi
	addl $12, %edi  # avanca para o proximo campo

	
	addl $14, %edi  # avanca para o proximo campo, a senha não é exibida

	pushl %edi # endereco inicial do registro
	pushl $agencia
	call printf
	addl $4, %esp
	popl %edi # recupera %edi
	addl $12, %edi  # avanca para o proximo campo

	pushl %edi # endereco inicial do registro
	pushl $numConta
	call printf
	addl $4, %esp
	popl %edi # recupera %edi
	addl $12, %edi  # avanca para o proximo campo

	subl $98,%edi    # deixa %edi tal como estava no inicio
	
	movl 98(%edi), %eax
	pushl %eax
	pushl $mostrasaldo
	call printf
	addl $8, %esp
	
	pushl $cortaLinha
	call printf
	addl $4, %esp

	movl 118(%edi),%ecx
	cmpl $NULL, %ecx
	jne avancaClienteProcuraR

	pushl $titListaClientes
	call printf
	addl $4, %esp

jmp menuGerente

avancaClienteProcuraR:
	movl %ecx, %edi
jmp listaClientes

listaClienteVaziaR:
	pushl $msgVaziaCliente
	call printf
	addl $4, %esp
jmp menuGerente

# --------------------------------------------------------------------- RELATÓRIO: LISTA DE CLIENTES --------------------------------------------------------





main:

	
	pusha
		call abreArqCliente
		call leArqCliente
		call fechaArqCliente
	popa

	pusha
		call abreArqNotas
		call leArqNotas
		call fechaArqNotas
	popa	

	pushl $titgeral
	call  printf

	movl $38, %ecx
	pushl %ecx
	call malloc
	movl %eax, dadosProcura
	addl  $4, %esp

	movl $72, %ecx
	pushl %ecx
	call malloc
	movl %eax, dadosProcuraPorNome
	addl  $4, %esp

jmp  menuop



# --------------------------------------------------------------------- REPOR NOTAS DO CAIXA ----------------------------------------------------------------
repor:

    # Pede notas de 100
    pushl    $pede100
    call    printf
    pushl    $quant
    pushl    $formato
    call    scanf
    
    movl    quant100, %eax
    addl    quant, %eax
    movl    %eax, quant100

    movl    quant100, %eax
    movl    $0, %edx
    mull    cem
    addl    totalcaixa, %eax
    movl    %eax, totalcaixa

    # Pede notas de 50
    pushl    $pede50
    call    printf
    pushl    $quant
    pushl    $formato
    call    scanf
    
    movl    quant50, %eax
    addl    quant, %eax
    movl    %eax, quant50

    movl    quant50, %eax
    movl    $0, %edx
    mull    cinquenta
    addl    totalcaixa, %eax
    movl    %eax, totalcaixa

    # Pede notas de 20
    pushl    $pede20
    call    printf
    pushl    $quant
    pushl    $formato
    call    scanf
    
    movl    quant20, %eax
    addl    quant, %eax
    movl    %eax, quant20

    movl    quant20, %eax
    movl    $0, %edx
    mull    vinte
    addl    totalcaixa, %eax
    movl    %eax, totalcaixa

    # Pede notas de 10
    pushl    $pede10
    call    printf
    pushl    $quant
    pushl    $formato
    call    scanf
    
    movl    quant10, %eax
    addl    quant, %eax
    movl    %eax, quant10

    movl    quant10, %eax
    movl    $0, %edx
    mull    dez
    addl    totalcaixa, %eax
    movl    %eax, totalcaixa


    # Pede notas de 2
    pushl    $pede2
    call    printf
    pushl    $quant
    pushl    $formato
    call    scanf
    
    movl    quant2, %eax
    addl    quant, %eax
    movl    %eax, quant2

    movl    quant2, %eax
    movl    $0, %edx
    mull    dois
    addl    totalcaixa, %eax
    movl    %eax, totalcaixa

    
    movl    totalcaixa, %eax
    pushl    %eax
    movl    quant2, %eax
    pushl    %eax
    movl    quant10, %eax
    pushl    %eax
    movl    quant20, %eax
    pushl    %eax
    movl    quant50, %eax
    pushl    %eax
    movl    quant100, %eax
    pushl    %eax
    pushl    $mostranotas
    call    printf

    addl    $96, %esp

    jmp    menuGerente
# --------------------------------------------------------------------- REPOR NOTAS DO CAIXA ----------------------------------------------------------------



# --------------------------------------------------------------------- REALIZAR SAQUE ----------------------------------------------------------------------
 sacar:

	
	pushl	$msgsacar
	call	printf

	pushl	$valorsaque
	pushl	$formato
	call	scanf

	addl $12, %esp

	movl saldoAtual, %ebx

	pushl $msgSaldoAtual
	call printf
	addl $4, %esp

 	pushl %ebx
 	pushl $formanum
 	call printf
 	addl $8, %esp

 	movl	valorsaque, %eax 
 	cmpl %eax, %ebx      #verifica o saldo atual com o valor do saque
 	jle saldoInsuficiente

 	movl	valorsaque, %eax

 	movl $0, %edx
	divl	dois
	cmpl $0,%edx
	jnz saquePar

	movl	valorsaque, %eax
	movl	%eax, valorsaqueaux

	movl	totalcaixa, %ebx
	movl	%ebx, totalcaixaux

	# tenta pagar com notas de 100

	movl	$100, etapa

	cmpl	%ebx, %eax
	jg	indisponivel
	
	movl $0, %edx
	divl	cem

	cmpl	quant100, %eax
	jle	pagar100
	movl	quant100, %eax

pagar100:	

	movl	%eax, notas100
	movl	$0, %edx
	mull	cem	
	
	movl	valorsaqueaux, %ebx
	subl	%eax, %ebx
	movl	%ebx, valorsaqueaux

	movl	totalcaixaux, %ebx
	subl	%eax, %ebx
	movl	%ebx, totalcaixaux

	# tenta pagar com notas de 50

	movl	$50, etapa

	movl	valorsaqueaux, %eax
	movl	totalcaixaux, %ebx
	cmpl	%ebx, %eax
	jg	indisponivel
	
	movl $0, %edx
	divl	cinquenta

	cmpl	quant50, %eax
	jle	pagar50
	movl	quant50, %eax

pagar50:	

	movl	%eax, notas50
	movl	$0, %edx
	mull	cinquenta	
	
	movl	valorsaqueaux, %ebx
	subl	%eax, %ebx
	movl	%ebx, valorsaqueaux

	movl	totalcaixaux, %ebx
	subl	%eax, %ebx
	movl	%ebx, totalcaixaux

	# tenta pagar com notas de 20

	movl	$20, etapa

	movl	valorsaqueaux, %eax
	movl	totalcaixaux, %ebx
	cmpl	%ebx, %eax
	jg	indisponivel
	
	movl $0, %edx
	divl	vinte

	cmpl	quant20, %eax
	jle	pagar20
	movl	quant20, %eax

pagar20:	

	movl	%eax, notas20
	movl	$0, %edx
	mull	vinte	
	
	movl	valorsaqueaux, %ebx
	subl	%eax, %ebx
	movl	%ebx, valorsaqueaux

	movl	totalcaixaux, %ebx
	subl	%eax, %ebx
	movl	%ebx, totalcaixaux

	# tenta pagar com notas de 10

	movl	$10, etapa

	movl	valorsaqueaux, %eax
	movl	totalcaixaux, %ebx
	cmpl	%ebx, %eax
	jg	indisponivel
	
	movl $0, %edx
	divl	dez

	cmpl	quant10, %eax
	jle	pagar10
	movl	quant10, %eax

pagar10:	

	movl	%eax, notas10
	movl	$0, %edx
	mull	dez	
	
	movl	valorsaqueaux, %ebx
	subl	%eax, %ebx
	movl	%ebx, valorsaqueaux

	movl	totalcaixaux, %ebx
	subl	%eax, %ebx
	movl	%ebx, totalcaixaux


	# tenta pagar com notas de 2

	movl	$2, etapa

	movl	valorsaqueaux, %eax
	movl	totalcaixaux, %ebx
	cmpl	%ebx, %eax
	jg	indisponivel
	
	movl $0, %edx
	divl	dois

	cmpl	quant2, %eax
	jle	pagar2
	movl	quant2, %eax

pagar2:	

	movl	%eax, notas2
	movl	$0, %edx
	mull	dois	
	
	movl	valorsaqueaux, %ebx
	subl	%eax, %ebx
	movl	%ebx, valorsaqueaux

	movl	totalcaixaux, %ebx
	subl	%eax, %ebx
	movl	%ebx, totalcaixaux

	jmp finalizaSaque


finalizaSaque:

	movl	valorsaqueaux, %eax
	cmpl	$0, %eax
	jne	indisponivel

	movl	totalcaixa, %eax
	subl	valorsaque, %eax
	movl	%eax, totalcaixa

	movl	quant100, %eax
	subl	notas100, %eax
	movl	%eax, quant100

	movl	quant50, %eax
	subl	notas50, %eax
	movl	%eax, quant50

	movl	quant20, %eax
	subl	notas20, %eax
	movl	%eax, quant20

	movl	quant10, %eax
	subl	notas10, %eax
	movl	%eax, quant10

	movl	quant5, %eax
	subl	notas5, %eax
	movl	%eax, quant5

	movl	quant2, %eax
	subl	notas2, %eax
	movl	%eax, quant2



	# mostra situacao do saque

	
	movl valorsaque, %eax
	movl saldoAtual, %ebx
	subl %eax, %ebx
	movl %ebx, saldoAtual
	movl %ebx, 98(%edi)

	movl	valorsaque, %eax
	pushl	%eax

	movl	notas2, %eax
	pushl	%eax
	movl	notas5, %eax
	pushl	%eax
	movl	notas10, %eax
	pushl	%eax
	movl	notas20, %eax
	pushl	%eax
	movl	notas50, %eax
	pushl	%eax
	movl	notas100, %eax
	pushl	%eax
	pushl	$msgdisp
	call	printf
	
	# mostra situacao do caixa

	movl	totalcaixa, %eax
	pushl	%eax

	movl	quant2, %eax
	pushl	%eax
	movl	quant5, %eax
	pushl	%eax
	movl	quant10, %eax
	pushl	%eax
	movl	quant20, %eax
	pushl	%eax
	movl	quant50, %eax
	pushl	%eax
	movl	quant100, %eax
	pushl	%eax
	pushl	$mostranotas
	call	printf

	jmp menuCliente

indisponivel:
	
	movl	etapa, %eax
	pushl	%eax
	pushl	$msgindisp
	call	printf
	addl $8, %esp
	jmp	menuCliente


saquePar:

	pushl $msgSaquePar
	call printf
	addl $4, %esp
	jmp menuCliente

saldoInsuficiente:

	pushl $msgSaldoInsuficiente
	call printf
	addl $4, %esp
	jmp menuCliente
# --------------------------------------------------------------------- REALIZAR SAQUE ----------------------------------------------------------------------




#-----------------------------------------------------------------------MANIPULAÇÃO DE ARQUIVOS---------------------------------------------------------------
abreArqCliente:
	movl SYS_OPEN, %eax 
	movl $nomeArqCliente, %ebx
	movl O_RDWR, %ecx
	orl  O_CREAT, %ecx
	orl  O_APPEND, %ecx
	movl S_IRWXU, %edx
	int  $0x80
	movl %eax, descritorCliente
ret

leArqCliente:
	movl SYS_READ, %eax
	movl descritorCliente, %ebx
	movl $strRegistroCliente, %ecx
	movl tamRegistroCliente, %edx
	int  $0x80 # le registro do arquivo

	cmpl $0, %eax
	jz funcaoRET


	movl $0, %edx # evita estouro no %eax quando executando divl	
	pushl %ebx
	movl $122, %ebx
	divl %ebx
	popl %ebx
	movl %eax, %ecx
	
	movl $strRegistroCliente, %eax

loopRegClientes:
	pushl %ecx
		pushl %eax
			movl nalocCliente, %ecx
			pushl %ecx
			call malloc
			movl %eax, %edi
			addl  $4, %esp
		popl %eax

		call leRegCliente
		pushl %eax
			movl ptInicioCliente, %esi
			cmpl $NULL, %esi
			je inserePrimeiroClienteLeitura

			
			call achaPosicaoCliente

			movl 118(%esi), %ecx
			movl %ecx, 118(%edi)
			movl %edi, 118(%esi)
sucessoPrimeiroCliente:
		popl %eax
	popl %ecx
loop loopRegClientes
ret

inserePrimeiroClienteLeitura:
	movl %edi, ptInicioCliente
jmp sucessoPrimeiroCliente

leRegCliente:
	movl $61, %ecx #percorre o registro 61 vezes, andando de 2 em 2 bytes, chegando assim até o final do registro na posição 122
copiaByteCliente:
	movl %eax, %edi
	addl $2, %eax
	addl $2, %edi
loop copiaByteCliente
	subl $4, %edi # retorna 4 bytes no registro para definir o ponteiro para o próximo registro

	movl $NULL, (%edi)
	subl $118,%edi
ret


fechaArqCliente:
	movl SYS_CLOSE, %eax
	movl descritorCliente, %ebx # recupera o descritor
	int  $0x80
ret

gravaClientes:

	call preparaGravacaoCliente

	movl ptInicioCliente, %edi
	cmpl $NULL, %edi
	jnz continuaGravaCliente
jmp funcaoRET

continuaGravaCliente:
	call abreArqCliente
	cmpl $NULL, %edi
	jz funcaoRET
	pushl %edi
	call gravaRegCliente
	popl %edi
	movl 118(%edi), %edi
	call fechaArqCliente
jmp continuaGravaCliente

preparaGravacaoCliente:
	movl SYS_OPEN, %eax 
	movl $nomeArqCliente, %ebx
	movl O_WRONLY, %ecx
	orl  O_TRUNC, %ecx
	int  $0x80
	movl %eax, descritorCliente
	movl SYS_WRITE, %eax
	movl descritorCliente, %ebx 
	int  $0x80
ret

gravaRegCliente:
	movl SYS_WRITE, %eax
	movl descritorCliente, %ebx 
	movl %edi, %ecx
	movl nalocCliente, %edx
	int  $0x80
ret

abreArqNotas:
	movl SYS_OPEN, %eax 
	movl $nomeArqNotas, %ebx
	movl O_RDWR, %ecx
	orl  O_CREAT, %ecx
	orl  O_APPEND, %ecx
	movl S_IRWXU, %edx
	int  $0x80
	movl %eax, descritorNotas
ret

leArqNotas:
	movl SYS_READ, %eax
	movl descritorNotas, %ebx
	movl $strRegistroCliente, %ecx
	movl tamRegistroCliente, %edx
	int  $0x80 # le registro do arquivo

	movl $0, %edx # evita estouro no %eax quando executando divl	
	pushl %ebx
	movl $40, %ebx
	divl %ebx
	popl %ebx
	movl %eax, %ecx

	cmpl $0, %eax
	je funcaoRET

	movl $strRegistroCliente, %eax

	pushl %ecx

		pushl %eax
			movl $40, %ecx
			pushl %ecx
			call malloc
			movl %eax, %edi
			addl  $4, %esp
		popl %eax

		call leRegNotas

		pushl %eax
			call insereNotas

		movl (%edi), %ebx
		addl %ebx, quant100

		movl 8(%edi), %ebx
		addl %ebx, quant50

		movl 16(%edi), %ebx
		addl %ebx, quant20

		movl 24(%edi), %ebx
		movl %ebx, quant10

		movl 32(%edi), %ebx
		movl %ebx, quant2

		popl %eax    
	popl %ecx

ret

leRegNotas:
	movl $10, %ecx #percorre o registro 61 vezes, andando de 2 em 2 bytes, chegando assim até o final do registro na posição 122
copiaByteNota:
	movl %eax, %edi
	addl $4, %eax
	addl $4, %edi
loop copiaByteNota
	subl $40, %edi # retorna 4 bytes no registro para definir o ponteiro para o próximo registro
ret

insereNotas:
	movl %edi, ptInicioNotas
ret

fechaArqNotas:
	movl SYS_CLOSE, %eax
	movl descritorNotas, %ebx # recupera o descritor
	int  $0x80
ret

gravaNotas:

	call preparaGravacaoNotas

	movl ptInicioNotas, %edi

	call abreArqNotas
	movl quant100, %ebx
	movl %ebx, (%edi)
	movl quant50, %ebx
	movl %ebx, 8(%edi)
	movl quant20, %ebx
	movl %ebx, 16(%edi)
	movl quant10, %ebx
	movl %ebx, 24(%edi)
	movl quant2, %ebx
	movl %ebx, 32(%edi)


	pushl %edi
	call gravaRegNotas
	popl %edi
	call fechaArqNotas
ret

preparaGravacaoNotas:
	movl SYS_OPEN, %eax 
	movl $nomeArqNotas, %ebx
	movl O_WRONLY, %ecx
	orl  O_TRUNC, %ecx
	int  $0x80
	movl %eax, descritorNotas
	movl SYS_WRITE, %eax
	movl descritorNotas, %ebx 
	int  $0x80
ret

gravaRegNotas:
	movl SYS_WRITE, %eax
	movl descritorNotas, %ebx 
	movl %edi, %ecx
	movl $40, %edx
	int  $0x80
ret




ret



#-----------------------------------------------------------------------MANIPULAÇÃO DE ARQUIVOS---------------------------------------------------------------


funcaoRET:
RET


fim:
	call gravaNotas
	pushl $0
	call exit
