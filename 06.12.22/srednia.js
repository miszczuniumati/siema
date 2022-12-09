const polak = document.getElementById('polak')
const rysik = document.getElementById('rysik')
const nowak = document.getElementById('nowak')
const button = document.getElementById('countBtn')
const result = document.getElementById('result')

function isGood(data){
    return data.length>0 && !isNaN(data)
}

button.addEventListener('click', ()=>{

    
    if(isGood(polak.value) && isGood(rysik.value) && isGood(nowak.value)){
        console.log('dobrze')
    }
    else{
        alert('WPISZ POPRAWNE DANE MŁOCIE')
    }

    let a=Number(polak.value)
    let b=Number(rysik.value)
    let c=Number(nowak.value)

    result.innerHTML=`Średnia ocen: ${a+b+c/3}`

})