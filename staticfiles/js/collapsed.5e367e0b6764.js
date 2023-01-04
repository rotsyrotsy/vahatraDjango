var x = window.matchMedia("(max-width: 820px)")
// myFunction(x) // Call listener function at run time
// x.addListener(myFunction) // Attach listener function on state changes

function openNav(typevisit, lieu, visits) {
    var textscroll = document.getElementById('textscroll');
    textscroll.classList.remove('d-none');
    textscroll.classList.add('d-block');
    
    var map = document.getElementById("divmap");
    let mysidebar = document.getElementById("mySidebar");
    var parentDiv = mysidebar.parentNode
    if (x.matches) {
      parentDiv.classList.remove('col-md-3');
      parentDiv.classList.add('col-md-12');
      parentDiv.classList.remove('col-lg-3');
      parentDiv.classList.add('col-lg-12');
    }else{
      map.classList.remove('col-md-12');
      map.classList.add('col-md-9');
      map.classList.remove('col-lg-12');
      map.classList.add('col-lg-9');
    }

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
        fs = visits[i]['fs'];
        var ulfs = document.createElement("ul");
        for (let ii = 0; ii< fs.length; ii++){
            ulfs.innerHTML += "<li>"+fs[ii]+"</li>";
            
        } 
        eventinfo.appendChild(ulfs);

        
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
    let mysidebar = document.getElementById("mySidebar");
    var parentDiv = mysidebar.parentNode
    if (x.matches) {
      parentDiv.classList.remove('col-md-3');
      parentDiv.classList.add('col-md-12');
      parentDiv.classList.remove('col-lg-3');
      parentDiv.classList.add('col-lg-12');
    }else{
      map.classList.remove('col-md-12');
      map.classList.add('col-md-9');
      map.classList.remove('col-lg-12');
      map.classList.add('col-lg-9');
    }
    document.getElementById("mySidebar").style.width = "0";
  }

  
x.addListener(openNav) // Attach listener function on state changes
x.addListener(closeNav) // Attach listener function on state changes