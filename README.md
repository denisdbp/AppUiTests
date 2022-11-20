# AppUiTests

App feito para estudo de testes de UI e de Snapshot

Utilizado para testes de Snapshot a framework SnapshotTesting que esta em https://github.com/pointfreeco/swift-snapshot-testing
Ela foi instalada via SPM (Swift Package Manager)

O app foi feito em ViewCode, onde tem apenas 2 telas, uma simulando um Login e a outra a Home.
Quando o teste de UI é executado o mesmo executa o App.
Entra na HomeViewController, da um tap no emailTextField, digita um texto e verifica se ele existe.
E da um tap em senhaTextField, digita um texto e verifica se ele existe.
Depois da um tap no botão Acessar e verificar se existe o texto Ola, mundo na tela HomeViewController.

Referente ao teste de Snapshot para ele poder ser executado deve apagar a imagem de referencia na pasta 
AppSnapshotTestingUITests/_Snapshots_/AppSnapshotTestingUITests/testSnapshot.1.png.

Depois abrir a classe AppSnapshotTestingUITests e executar o teste para ele dar um erro e assim criar uma novo referencia da tela.
Depois disso se houver qualquer alteraçao na UI e executar o teste novamente um erro ira acontecer, pois a nova imagem não está em conformidade com a 
referencia.

Para acompanhar onde deu o erro, basta ir na aba Show the Report navigator do lado esquerdo, clicar em Test e podera ver o que foi alterado,
pois ele dara a imagem de referencia, a que foi alterada e a diferença.

Definindo o record:True depois de iphoneX poderá criar um nova referencia e se quiser criar uma nova referencia para mais testes 
podera definir isRecording:true no escopo da função de teste.

Obs: Para teste de UI os componentes da tela precisam estar com a propriedade isAccessibilityElement como true e definir um identificador pela propriedade accessibilityIdentifier com uma String.
