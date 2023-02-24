const area = document.getElementById('area')
const button = document.getElementById('btn')
const price = document.getElementById('price')

button.addEventListener('click',()=>{

    let surface = Number(area.value)
    let result = ceil(surface/4)
    price.innerHTML = `liczba jednolitrowych puszek farby potrzebnych`

})