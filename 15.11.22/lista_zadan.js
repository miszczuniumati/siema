function addToShoppingList(){
    const product = document.getElementById('product')
    const productList = document.getElementById('productList')


let li=document.createElement('li')
li.innerHTML=product.value
productList.appendChild(li)

}