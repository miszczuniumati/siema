const guests = document.getElementById('guests')
const improvement = document.getElementById('improvement')
const button = document.getElementById('calcBtn')
const result = document.getElementById('result')

    button.addEventListener('click',()=>{

        
        if(isNaN(guests.value) || (guests.value<=0)){
            alert("Podaj liczbę gości")
        }
        else{
            console.log ("dobrze")

            if(improvement.checked){
                price=(guests.value*100)*1.3
            }
            else{
                price=guests.value*100
            }
            
            result.innerHTML = `Koszt Twojego wesela to ${price} złotych`
    
    }})