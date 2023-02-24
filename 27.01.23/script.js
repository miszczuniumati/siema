document.addEventListener('DOMContentLoaded',()=>{
const task = document.getElementById('task');
const color = document.getElementById('color');
const date = document.getElementById('date');
const form = document.querySelector('#form');
const main = document.querySelector('main')

form.addEventListener('submit',(event)=>{
    event.preventDefault()
    console.log(task.value)
    console.log(color.value)
    console.log(date.value)

    const div = document.createElement('div');
    main.appendChild(div);
    div.style=`background-color: ${color.value}`;
    const h6=document.createElement('h6');
    h6.innerHTML = task.value;
    div.appendChild(h6);
    main.appendChild(div);

    const date=document.createElement('date')
    date.innerHTML=date.value;
    div.appendChild(date);

})



});