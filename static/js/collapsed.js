

function openNav(typevisit, lieu, visits) {
    var map = document.getElementById("divmap");
    map.classList.remove('col-md-12');
    map.classList.add('col-md-9');
    map.classList.remove('col-lg-12');
    map.classList.add('col-lg-9');
  
    let mysidebar = document.getElementById("mySidebar");

    var eventinfo = mysidebar.getElementsByClassName("event-info")[0];
    
    while (eventinfo.firstChild) {
      eventinfo.removeChild(eventinfo.firstChild);
    }

    var h4 = document.createElement("h4");
    var a = document.createElement("a");
    a.textContent = lieu;
    h4.appendChild(a);
    
    eventinfo.appendChild(h4);
    imagevisit = document.getElementById("imagevisit");
    while (imagevisit.firstChild) {
      imagevisit.removeChild(imagevisit.firstChild);
    };
    
    
    var countIndex=0;
    for (let i = 0; i < visits.length; i++) {

      try {
        images = JSON.parse(visits[i]['images']);
        
        static = imagevisit.getAttribute('data-url');

        
        for (let ii = 0; ii< images.length; ii++){
          
            var aimg = document.createElement("div");
            aimg.classList.add("col-md-12" ,"col-sm-12", "col-lg-12","p-0");
            var href = document.createElement("a");
            href.href = static+images[ii]['fields']['image'];
            href.setAttribute('data-fancybox','gallery');

            
            var img = document.createElement("img");
            img.src = static+images[ii]['fields']['image'];

            
            if (ii == 0 && countIndex==0){
              countIndex += 1;
            }else{
              img.style.display = "none";
            }
            
            href.appendChild(img);
            aimg.appendChild(href);
            imagevisit.appendChild(aimg);
        } 
      }
      catch(e) {

      }
     
      
      try {
        activity = JSON.parse(visits[i]['activity'])[0];
        visit = JSON.parse(visits[i]['visit'])[0];
        let date = activity['fields']['date'];
        let datefin = visit['fields']['dateend'];
        let description = activity['fields']['description'];

        if (description!==null){
          var par = document.createElement("p");
          par.innerText= description;
          eventinfo.appendChild(par);
        }
        try {
          fs = JSON.parse(visits[i]['fs']);
          for (let ii = 0; ii< fs.length; ii++){
              var par = document.createElement("p");
              par.innerText= fs[ii]['fields']['intervenant'];
              eventinfo.appendChild(par);
          } 
        }
        catch(e) {
          fs = visits[i]['fs'];
        }

        
        var ul = document.createElement("ul");
        ul.classList.add('event-mta');
  
        if (date!==null){
          let d1 = new Date(date);
          date =  d1.toLocaleString('default', { month: 'long' })+", "+d1.getFullYear();
          if (datefin !==null){
            let d2 = new Date(datefin);
            datefin =  d2.toLocaleString('default', { month: 'long' })+", "+d2.getFullYear();
            ul.innerHTML += "<li><i class=\"flaticon-clock\"></i>"+date+" - "+datefin+"</li>";
          }else{
            ul.innerHTML += "<li><i class=\"flaticon-clock\"></i>"+date+"</li>";
          } 
        }
        ul.innerHTML += "<li><i class=\"fa fa-map-marker\"></i>"+typevisit+"</li>";
        var hr = document.createElement("hr");
  
        eventinfo.appendChild(ul);
        eventinfo.appendChild(hr);

      } catch(e) {
        visit = visits[i]['visit'];
      }
      
    } 
    
    mysidebar.style.width = "100%";

    
  }
  
  function closeNav() {
    var map = document.getElementById("divmap");
    map.classList.remove('col-md-9');
    map.classList.add('col-md-12');
    map.classList.remove('col-lg-9');
    map.classList.add('col-lg-12');

    document.getElementById("mySidebar").style.width = "0";
  }