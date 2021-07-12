let imagensHtml = document.querySelector("#imagem");
let imagem = document.querySelector("#img-slide");
let imagens  = ["coletorDeCasadas.jpg", "oeste.jpg", "prestiigio.jpg", "thresh_liberto.jpg"]
let primeiraVez = true;
let idx = 0;

function carrossel(primeiraVez=false){

    imagem.setAttribute('src', "./images/images-thresh/" + imagens[idx]);

    if (primeiraVez == false){
        idx += 1;
    }

    if (idx == imagens.length){
        idx = 0;
    }
};

function getPrevious(){
    if (idx == 0) {
        idx = imagens.length-1;
    }else {
        idx = idx -1;
    }
    imagem.setAttribute('src', "./images/images-thresh/" + imagens[idx]);

}

function getNext(){
    carrossel();
}

carrossel(true);
setInterval(carrossel, 3000);