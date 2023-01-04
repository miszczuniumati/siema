const x = document.getElementById('x')
const y = document.getElementById('y')
const calc = document.getElementById('calcbtn')
const result = document.getElementById('result')


calc.addEventListener('click', ()=>{



    let area=x.value*y.value

    result.innerHTML = `Koszt malowania: ${area*8}zł`

})

