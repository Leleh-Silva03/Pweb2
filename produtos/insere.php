<?php
require '../controle/conexao.php';
$pdo = Conexao::conectar();
$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
if ($_SERVER['REQUEST_METHOD']=='POST'){
//*proid //*http://localhost/pweb2/produtos/insere.php
$nome = strtoupper (filter_input (INPUT_POST, 'edtnome'));
$descricao = strtoupper(filter_input(INPUT_POST, 'edtdescricao'));
$provalorcusto = filter_input (INPUT_POST, 'edtvlcusto');
$provalorvenda = filter_input (INPUT_POST, 'edtvlvenda');
$proquantidade = filter_input (INPUT_POST, 'edtquantidade');
$prosubid = filter_input (INPUT_POST, 'edtsubid');
$sqlpro = "";
$prppro = $pdo-> prepare($sqlpro);
$prppro->execute();
}

?>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../node_modules/bootstrap/dist/css/bootstrap.min.css">
    <title>Cadastro de Produtos</title>
</head>
<body>

    <div class ="container mt-3" >
        <form action="" method="post">
            <div class="form-group">
                <label for="edtnome">NOME</label>
                <input type="text"
                name="edtnome" id="edtnome"
                class="form-control">
            </div>

    <div class="form-group mt-2">
                <label for="edtdescricao">DESCRIÇÃO</label>
                <input type="text"
                name="edtdescricao" id="edtdescricao"
                class="form-control">
            </div>

             <div class="form-group mt-2">
                <label for="edtvlcusto">CUSTO</label>
                <input type="text"
                name="edtvlcusto" id="edtvlcusto"
                class="form-control">
            </div>

             <div class="form-group mt-2">
                <label for="edtvlvenda">VALOR DE VENDA</label>
                <input type="text"
                name="edtvlvenda" id="edtvlvenda"
                class="form-control">
            </div>

             <div class="form-group mt-2">
                <label for="edtquantidade">QUANTIDADE</label>
                <input type="number"
                name="edtquantidade" id="edtquantidade"
                class="form-control">
            </div>
            
             <div class="form-group">
                <label for="edtsubcategoria">SUBCATEGORIA</label>
                <input type="text"
                name="edtsubcategoria" id="edtsubcategoria"
                class="form-control mb-1" readonly> 
                 <input type="text"
                name="edtsubcategoria" id="edtsubcategoria"
                class="form-control">
            </div>

</form>

    </div>
    
</body>
</html>