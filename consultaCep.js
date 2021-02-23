function consultaCep(){
  var $cep = document.getElementById("cep").value.replace(/\D/g, '');
  var url = 'https://viacep.com.br/ws/' + $cep + '/json/';
  var request = new XMLHttpRequest (); 

  request.open('GET', url);
  request.onerror = function (e) {
    document.getElementById('return').innerHTML = 'API OFF OU CEP INVALIDO'
  }
  request.onload = () => {
    var response = JSON.parse(request.responseText);
    if (response.erro === true) {
      document.getElementById('return').innerHTML = 'CEP NAO ENCONTRADO';
    }else{
      document.getElementById('return').innerHTML = 'CEP: ' + response.cep + '<br>' +
                                                    'logradouro: ' + response.logradouro + '<br>'+
                                                    'Bairro: ' + response.bairro + '<br>' +
                                                    'Cidade - UF: ' + response.localidade + '-' + response.uf;
    }
  }
  request.send();
}