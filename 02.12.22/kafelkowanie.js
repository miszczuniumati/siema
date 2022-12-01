    function calc(){
        const square=document.getElementById('square')
        const rectangle=document.getElementById('rectangle')
        const area=document.getElementById('area')

        if(square.checked){
            price=70*area.value
        }
        else{
            price=80*area.value
        }

        result.innerHTML = `koszt kafelkowania ${price} zł`
    }