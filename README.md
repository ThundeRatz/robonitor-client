# Robonitor-client

Esse repositório contém uma biblioteca para integração de projetos usando o [SPBTLE](https://github.com/ThundeRatz/SPBTLE) com o aplicativo Robonitor.

Adiciona serviço BLE com características que identificam a lista de estratégias e a estratégia selecionada para o robô de sumô.

Essa biblioteca foi feita para ser utilizada como submódulo no [STM32ProjectTemplate](https://github.com/ThundeRatz/STM32ProjectTemplate).

## Utilizando a biblioteca

Primeiramente, defina o identificador do projeto (1 byte), que fará parte do endereço MAC do dispositivo Bluetooth:

```C
#define BOARD_BDADDR <identificador>
```

Inicialize o dispositivo com a seguinte função, sendo ```name``` o nome do dispositivo, ```led_on``` uma função que mantém o LED identificador do Blutooth aceso e ```led_toggle``` a que faz esse LED piscar:

```C
tBleStatus ble_init(char* name, led_function_t led_on, led_function_t led_toggle);
```

Adicione a lista de estratégias do robô com a função:

```C
tBleStatus add_strategy_list(char* strategies[], uint8_t strategy_count);
```

## Adicionando o submódulo ao projeto

Crie um diretório chamado `lib`, caso não exista:

```bash
mkdir lib
```

E adicione o submódulo fazendo:

* Com HTTPS:

```bash
git submodule add --name robonitor-client https://github.com/ThundeRatz/robonitor-client.git lib/robonitor-client
```

* Com SSH:

```bash
git submodule add --name robonitor-client git@github.com:ThundeRatz/robonitor-client.git lib/robonitor-client
```

Um exemplo pode ser encontrado em [freitas-renato/SPBTLE](https://github.com/freitas-renato/spbtle).

---------------------

Equipe ThundeRatz de Robótica
