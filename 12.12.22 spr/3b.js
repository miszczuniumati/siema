const number = document.getElementById('coffee_num')
const weight = document.getElementById('weight')
const button = document.getElementById('btn')
const result = document.getElementById('result')

button.addEventListener('click', ()=>{

    if(number.value=1){
        result.innerHTML = `Koszt zamówienia wynosi ${weight*5}zl`
    }

    if(number.value=2){
        result.innerHTML = `Koszt zamówienia wynosi ${weight*7}zl`
    }

    if(number.value=3){
        result.innerHTML = `Koszt zamówienia wynosi ${weight*6}zl`
    }



})