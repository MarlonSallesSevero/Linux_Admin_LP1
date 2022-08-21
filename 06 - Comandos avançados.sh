06 - Comandos avançados

lsblk : usabo para listar os dispositivos de armazenamento.

dd (muito diferente do cp): utilizado para copias e conversao. Utilizado principalmente para
gerenciamento de dispositivos de armazenamento.

    if : input file (arquivo de entrada)
    of : output file (arquivo de saida)

    dd if=/dev/sda1 of=/tmp/boot.img bs=1M count=10

    Ps. podemos realizar um backup do boot e upar se corrompido.

    dd if=/tmp/boot.img of=/dev/sda1 
    dd if=/tmp/sda of=/dev/sdb

    ps2. podemos criar pendrive bootavel

    dd if=/tmp/kali.iso of=dev/sdc 




zero : utlizado para gerar zeros. 
    
    ex. criando um arquivo com 20 megas.

    dd if=/dev/zero of=/var/swapfile bs=1M count=2OM
    
    Podemos fazer isso para sobreescrever HD's.
    Podemos sobreescrever varias vezes para nao conseguir recuperar.

    ex.
    dd if=/dev/zero of=/tmp/imagem.iso bs=100M count=1 (criando um arquivo de 100M) 

    split : podemos dividir o arquivo em pedacoes, quando o arquivo é muito grande utilizando split.
        ex. split -b 20M -d /tmp/imagem.iso /opt/img
                            |--------------|---------|
                tamanho|numerico|arquivo original novos arquivos fragmentados
        "juntando os arquivos" (precisa ser na sequencia)
        >> cat /opt/img0* > /tmp/novoimagem.iso 

    diff: utilizado para comparar arquivos dois arquivos
    
    free -h : exibi a quantidade de memoria.

    shalsum : utilizado para comparacao de numeros / para arquivos

Swap : igual os arquivos de paginacao do windows, é utilizado para armazenamento temporario
        para quando a memoria ram é insuficiente.

arquivo swap: podemos criar uma particao ou um arquivo.

    criando um arquivo como swap:
        
    (make swap)  : mkswap /var/swapfile
    (ativando o swap) : swapon /var/swapfile
    (desativando o swap) : swapoff /var/swapfile

ps: ativacao temporaria dessa maneira. Pelo arquivo, precisando dar um swapon ao inicializar um sistema.
Muito utilizado para manutençoes onde o servico nao pode parar.

