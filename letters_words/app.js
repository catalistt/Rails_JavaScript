
//////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////PARTE 1///////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////

function letterCounting(){

  //Se crea el alfabeto a recorrer
  var alphabet = ["a","b", "c", "d", "e", "f", "g", "h", "i", "j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"];
  
  //Se aisla el texto del elemento html y se "limpia" 
  var str = document.querySelector("#texto-entrada").textContent.toLowerCase().replace(/[\W_]+/g," ");
  
  //Se crea un div "invocando" al elemento ya existente en el html
  //Es el único que se crea, porque el resto de elemento que están dentro se agregan antes como contenido
  var div = document.getElementById("resultados")
  
  //Se realiza una búsqueda por cada elemento existente en el alfabeto
  for (letter of alphabet){

    //RegExp se utiliza para crear el patrón de búsqueda que pide 'match'
    var aux = new RegExp("[" + letter + "]", "g")

    //Se cuenta la cantidad de veces que aparece la palabra en el contenido de la variable str
    var search = str.match(aux); 

    //Si es que existen coincidencias, se crean elementos html
    //El párrafo contendrá un strong(letra en negrita) y un span(cantidad).
    //Luego, se agregó el párrafo al div 'resultados' (ya existente en el html).
    if (search){
      var count = search.length
      var parragraph = document.createElement("p");
      var strong = document.createElement("strong");
      var span = document.createElement("span");

      //el innerHTML le agrega contenido al elemento
      strong.innerHTML = letter + ": ";
      span.innerHTML = count

      //el appendChild le 'adjunta' nuevo contenido al elemento llamado
      parragraph.appendChild(strong);
      parragraph.appendChild(span);
      div.appendChild(parragraph);
    }

  }
}

letterCounting()

//////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////PARTE 2///////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////


function wordCounting(){

  var words = document.querySelector("#texto-entrada").textContent.toLowerCase().replace(/[\W_]+/g," ").split(' ') ;
  var div = document.getElementById("resultados")
  var search = [];

  //función para contar la cantidad de repeticiones por palabra y asociarla al elemento
  words.forEach(function(word){
    if(search[word]){ 
      search[word] += 1;
    } 
    else {
      search[word] = 1;
    }
  })

  //función para iterar el arreglo e ir creando los elementos html correspondientes
  for(elem in search){
    var paragraph = document.createElement('p')
    var strong = document.createElement('strong')
    var span = document.createElement('span')
    paragraph.appendChild(strong)
    paragraph.appendChild(span)
    //el innerHTML le agrega contenido al elemento
    strong.innerHTML = elem + ": ";
    span.innerHTML = search[elem]

    //el appendChild le 'adjunta' nuevo contenido al elemento llamado
    paragraph.appendChild(strong);
    paragraph.appendChild(span);
    div.appendChild(paragraph);   
    
    document.getElementById('resultados').appendChild(paragraph)

    }
}


wordCounting()
