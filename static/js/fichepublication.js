
$('.volume-btn').on('click', function () {
    $('#content').empty();
    $('#titrePub').empty();
    var model = $('.contact-form-model-wrap');
    var staticpdf = $(this).attr("data-staticpdf")+"/";
    // var static = $(this).attr("data-static")+"/";
    var pub = $(this).attr("data-pub")
    var url = $(this).attr("data-url");
    pub = JSON.parse(pub);
    console.log(pub)
        $.ajax({
            url : url,
            dataType: 'JSON',
            type:"GET",
            data:{pub_id:pub.id},
            success:function(data){
                var details = JSON.parse(data["details"]);
                var authors = JSON.parse(data["authors"]);
                var type = JSON.parse(data['typepublication'])[0];
                
                if (details.length == 1){
                    if (details[0]['fields']['name']== null && details[0]['fields']['pdf']!== null){
                        window.location.href = staticpdf+details[0]['fields']['pdf'];
                        return false;
                    }
                }
                
                titrepub = "<span>"+type['fields']['type']+"</span><h3>"+pub.title+"</h3>";
                $('#titrePub').append(titrepub);
                
                var img = '<div  class="row">';

                if (pub.imageback != "/static/images/publication/" ){
                    img += '<div class="col-md-12 col-sm-12 col-lg-12 text-center">\
                        <img src="'+pub.imageback+'" alt="">\
                    </div>';
                }else{
                    img += '<div class="col-md-12 col-sm-12 col-lg-12 text-center">\
                        <img src="'+pub.imagefront+'" alt="">\
                    </div>';
                }
                img += '</div>';
                $('#content').append(img);

                descriPub = '<div>';
                if (pub.decription!= null) {
                    descriPub += '<p>'+pub.decription+'</p>';
                }
                

                var ul = "<ul>";
                for (let i = 0; i < details.length; i++) {
                    if (details[i]['fields']['pdf']==null){
                        ul += "<div class='horizontal_dotted_line'><div><li>"+details[i]['fields']['name']+"</li></div><div class='dotted'></div></div>";
                    }else{
                        ul += "<div class='horizontal_dotted_line'><div><li>"+details[i]['fields']['name']+"</li></div><div class='dotted'></div>\
                        <div><a class='btn btn-inverse-info btn-icon' title='"+details[i]['fields']['name']+"' href='"+staticpdf+details[i]['fields']['pdf']+"'><i class=\"ti-printer btn-icon-append\"></i> PDF</a></div></div>";
                    }
                }
                ul += "</ul>";
                descriPub += ul;

                descriPub += '</div>';
                $('#content').append(descriPub);

                par_authors = '<p><i class="fa fa-user-o thm-clr"></i> <strong>Authors</strong></p><p>';
                for (let i = 0; i < authors.length; i++) {
                    par_authors += authors[i]['fields']['name']+" "+authors[i]['fields']['username']+", ";
                }
                par_authors +='</p>'
                $('#content').append(par_authors);
                
                model.addClass('active');
            },  
            error:function(data){
                console.log('error')
                console.log(data)
            }
            });

    return false;
  });
  $('.model-close').on('click', function () {
    $('.contact-form-model-wrap').removeClass('active');
    return false;
  });