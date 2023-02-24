const result=document.getElementById('result')
const errorName=document.getElementById('error-name')
const formUser=document.getElementById('form-user')
formUser.addEventListener('submit', (event )=>{
    event.preventDefault()
    const inputName=document.getElementById('input-name')
    const inputEmail=document.getElementById('input-email')
    const inputPostal=document.getElementById('input-postal-code')
    const inputAddress=document.getElementById('input-address')

    let userData='Podales dane: <br>'

    if(inputName.value.length>=3){
        userData+=inputName.value + "br"
        errorName.innerHTML=""
        inputName.classList.remove('input-error')
    }
    else{
        inputName.classList.add("input-error")
        errorName.innerHTML = "Nazwisko za krótkie!"
    }

    const regEmail=/^.{4,}@staszic\.eu$/i

    if(inputEmail.value.length>=6 && regEmail.test)
    
    result.innerHTML=userData;
})