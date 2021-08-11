/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function pagger(pageindex,totalpage,gap,id_container)
{
    var container = document.getElementById(id_container);
    container.setAttribute('class', 'pagger');

    if(pageindex - gap > 1)
    {
        container.innerHTML+= "<a href='products?page=1#portfolio'>First </a>";
    }
    
    for(var i = pageindex - gap;i<pageindex;i++)
    {
        if(i > 0)
        {
            container.innerHTML+= "<a href='products?page="+i+"#portfolio'>" +i+ "</a>";
        }
    }
    
    container.innerHTML+= "<span>"+pageindex+"</span>";

    for(var i = pageindex +1 ;i<=pageindex + gap;i++)
    {
        if(i < totalpage)
        {
            container.innerHTML+= "<a href='products?page="+i+"#portfolio'>" +i+ "</a>";
        }
    }
    
    if(pageindex + gap < totalpage)
    {
        container.innerHTML+= "<a href='products?page="+totalpage+"#portfolio'> Last</a>";
    }
    
}

