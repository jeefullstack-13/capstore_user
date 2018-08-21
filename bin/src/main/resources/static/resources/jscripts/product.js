function add(ths,sno){

for (var i=1;i<=sno;i++){
var cur=document.getElementById("star"+i)
document.getElementById("stars"+i).checked = true;

if(cur.className=="fa fa-star")
{
cur.className="fa fa-star checked"
}
}
for (var i=sno+1;i<=6;i++){
	var dur=document.getElementById("star"+i)
	if(dur.className=="fa fa-star checked")
	{
		dur.classList.remove("checked");
	}
}

} 
 
