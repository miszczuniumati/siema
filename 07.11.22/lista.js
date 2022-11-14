

let imgList = ['sf1.jfif', 'sf2,jfif', 'sf3,jfif']

let kolekcja=document.getElementById('kolekcja');

for(let imgname of imgList){
    let img=document.createElement('img');
    img.src=imgname;
    kolekcja.appendChild(img);
}