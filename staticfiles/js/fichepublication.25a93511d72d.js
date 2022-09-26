
$('.volume-btn').on('click', function () {
    $('#content').empty();
    $('#titrePub').empty();
    var model = $('.contact-form-model-wrap');
    var pub_id = $(this).attr("data-id");
    var staticpdf = $(this).attr("data-staticpdf")+"/";
    var static = $(this).attr("data-static")+"/";
    var url = $(this).attr("data-url");
        $.ajax({
            url : url,
            dataType: 'JSON',
            type:"GET",
            data:{pub_id:pub_id},
            success:function(data){
                var pub = JSON.parse(data["publication"])[0];
                var details = JSON.parse(data["details"]);
                var authors = JSON.parse(data["authors"]);
                var type = JSON.parse(data['typepublication'])[0];
                
                if (details.length == 1){
                    if (details[0]['fields']['name']== null && details[0]['fields']['pdf']!== null){
                        window.location.href = staticpdf+details[0]['fields']['pdf'];
                        return false;
                    }
                }
                
                titrepub = "<span>"+type['fields']['type']+"</span><h3>"+pub['fields']['title']+"</h3>";
                $('#titrePub').append(titrepub);
                
                var img = '<div  class="row">';

                if (pub['fields']['imageback']){
                    img += '<div class="col-md-12 col-sm-12 col-lg-12 text-center">\
                        <img src="'+static+pub['fields']['imageback']+'" alt="">\
                    </div>';
                }else{
                    img += '<div class="col-md-12 col-sm-12 col-lg-12 text-center">\
                        <img src="'+static+pub['fields']['imagefront']+'" alt="">\
                    </div>';
                }
                img += '</div>';
                $('#content').append(img);

                descriPub = '<div>';
                descriPub += '<p>'+pub['fields']['description']+'</p>';

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