
$('.volume-btn').on('click', function () {
    $('#content').empty();
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
                
                if (details.length == 1){
                    if (details[0]['fields']['name']== null && details[0]['fields']['pdf']!== null){
                        window.location.href = staticpdf+details[0]['fields']['pdf'];
                        return false;
                    }
                }
                
                $('#titrePub').text(pub['fields']['title']);
                
                var img = '<div  class="row">';
                var front = pub['fields']['imagefront']
                if (pub['fields']['imageback']){
                    var back = pub['fields']['imageback'];
                    if (pub['fields']['idtype']==2){
                            img += '<div class="col-md-12 col-sm-12 col-lg-12 text-center">\
                                <img src="'+static+back+'" alt="">\
                            </div>\
                            ';
                    }else{
                            img += '<div class="col-md-6 col-sm-12 col-lg-6">\
                                <img src="'+static+front+'" alt="">\
                            </div>\
                            ';

                            img += '<div class="col-md-6 col-sm-12 col-lg-6">\
                                <img src="'+static+back+'" alt="">\
                            </div>\
                            ';
                    }
                }else{
                    img += '<div class="col-md-12 col-sm-12 col-lg-12 text-center">\
                        <img src="'+static+front+'" alt="">\
                    </div>\
                    ';
                }
                img += '</div>';
                $('#content').append(img);

                descriPub = '<div>';
                descriPub += '<p>'+pub['fields']['description']+'</p>';

                var ul = "<ul>";
                for (let i = 0; i < details.length; i++) {
                    if (details[i]['fields']['pdf']==null){
                        ul += "<li>"+details[i]['fields']['name']+"</li>";
                    }else{
                        ul += "<li><a title=\"export to pdf\" href='"+staticpdf+details[i]['fields']['pdf']+"'>"+details[i]['fields']['name']+"</a></li>";
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