const doskonale = document.getElementById('doskonale')
const srednie = document.getElementById('srednie')
const slabe = document.getElementById('slabe')
const result = document.getElementById('result')
const button = document.getElementById('btn')

button.addEventListener('click',()=>{

if(doskonale.checked){
    result.innerHTML = `Twoje zdanie na ten temat to doskonale`
}
if(srednie.checked){
    result.innerHTML = `Twoje zdanie na ten temat to srednie`
}
if(slabe.checked){
    result.innerHTML = `Twoje zdanie na ten temat to slabe`
}

})
