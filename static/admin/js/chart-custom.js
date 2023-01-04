function doughnutPieData(data, labels){
    var doughnutPieData = {
        datasets: [{
          data: data,
          backgroundColor: [
            'rgba(255, 99, 132, 0.5)',
            'rgba(54, 162, 235, 0.5)',
            'rgba(255, 206, 86, 0.5)',
            'rgba(75, 192, 192, 0.5)',
            'rgba(153, 102, 255, 0.5)',
            'rgba(255, 159, 64, 0.5)'
          ],
          borderColor: [
            'rgba(255,99,132,1)',
            'rgba(54, 162, 235, 1)',
            'rgba(255, 206, 86, 1)',
            'rgba(75, 192, 192, 1)',
            'rgba(153, 102, 255, 1)',
            'rgba(255, 159, 64, 1)'
          ],
        }],
    
        // These labels appear in the legend and in the tooltips when hovering different arcs
        labels: labels
      };
      return doughnutPieData;
}
function areaData(context, labels, type){
    var datasets = [];
    var colors = [
        '#4747A1',
        '#F09397',
        'rgba(255, 206, 86, 0.5)',
        'rgba(75, 192, 192, 0.5)',
        'rgba(153, 102, 255, 0.5)',
        'rgba(255, 159, 64, 0.5)'
    ];
    var k = 0
    for (let i=0; i<context.length; i++){
        if (k>colors.length){ 
            k = 0; 
        }
        datasets.push({
            data : context[i].map(({ number }) => number),
            borderColor: [
                colors[k]
            ],
            borderWidth: 2,
            fill: false,
            label: context[i][0][type]
        });
        k++;
    }
    var areaData = {
      labels: labels,
      datasets: datasets
    };
    return areaData
}
function areaOptions(step,max){
    var areaOptions = {
      responsive: true,
      maintainAspectRatio: true,
      plugins: {
        filler: {
          propagate: false
        }
      },
      scales: {
        xAxes: [{
          display: true,
          ticks: {
            display: true,
            padding: 10,
            fontColor:"#6C7383"
          },
          gridLines: {
            display: false,
            drawBorder: false,
            color: 'transparent',
            zeroLineColor: '#eeeeee'
          }
        }],
        yAxes: [{
          display: true,
          ticks: {
            display: true,
            autoSkip: false,
            maxRotation: 0,
            stepSize: step,
            min: 0,
            max: max,
            padding: 18,
            fontColor:"#6C7383"
          },
          gridLines: {
            display: true,
            color:"#f2f2f2",
            drawBorder: false
          }
        }]
      },
      legend: {
        display: true
      },
      tooltips: {
        enabled: true
      },
      elements: {
        line: {
          tension: .35
        },
        point: {
          radius: 0
        }
      }
    }
    return areaOptions;
}
function barChartData(context, labels, type, year){
  var datasets = [];
    var colors = [
        '#4747A1',
        '#F09397',
        'rgba(255, 206, 86, 0.5)',
        'rgba(75, 192, 192, 0.5)',
        'rgba(153, 102, 255, 0.5)',
        'rgba(255, 159, 64, 0.5)'
    ];
    var k = 0
    for (let i=0; i<context.length; i++){
        if (k>colors.length){ 
            k = 0; 
        }
        datasets.push({
            data : context[i].map(({ number }) => number),
            backgroundColor: colors[k],
            label: context[i][0][type]+" in "+year
        });
        k++;
    }
    
  var barChartData = {
    labels: labels,
    datasets: datasets
  };
  return barChartData;
}
var barChartOptions = {
  responsive: true,
  scales: {
    yAxes: [{
      ticks: {
        display: true,
        beginAtZero: true
      }
    }]
  },
  legend: {
    display: true
  },
  elements: {
    point: {
      radius: 0
    }
  }

};
var barChartActivity = null;
var barChartPublication = null;
$(function() {
  /* ChartJS
   * -------
   * Data and config for chartjs
   */
  'use strict';
  var doughnutPieOptions = {
    responsive: true,
    animation: {
      animateScale: true,
      animateRotate: true
    }
  };
  
  
  if ($("#pieChartActivity").length) {
      var context = $("#pieChartActivity").data("context");
      const labels = context.map(({ idtypeactivity__type_en }) => idtypeactivity__type_en);
      const numbers = context.map(({ number }) => number);
      
    var pieChartCanvas = $("#pieChartActivity").get(0).getContext("2d");
    var pieChart = new Chart(pieChartCanvas, {
      type: 'pie',
      data: doughnutPieData(numbers, labels),
      options: doughnutPieOptions
    });
  }
  if ($("#pieChartPublication").length) {
      
      var context = $("#pieChartPublication").data("context");
      const labels = context.map(({ idtype__type_en }) => idtype__type_en);
      const numbers = context.map(({ number }) => number);

      var pieChartCanvas = $("#pieChartPublication").get(0).getContext("2d");
      var pieChart = new Chart(pieChartCanvas, {
        type: 'pie',
        data: doughnutPieData(numbers, labels),
        options: doughnutPieOptions
      });
    }

  if ($("#activityPerYear").length) {
      var context = $("#activityPerYear").data("context");
      var labels = context[0].map(({ date__year }) => date__year);
      
      var revenueChartCanvas = $("#activityPerYear").get(0).getContext("2d");
      var revenueChart = new Chart(revenueChartCanvas, {
      type: 'line',
      data: areaData(context,labels,'idtypeactivity__type_en'),
      options: areaOptions($("#activityPerYear").data("step"),$("#activityPerYear").data("max"))
      });
  }
  if ($("#publicationPerYear").length) {
      var context = $("#publicationPerYear").data("context");
      var labels = context[0].map(({ date__year }) => date__year);
      
      var revenueChartCanvas = $("#publicationPerYear").get(0).getContext("2d");
      var revenueChart = new Chart(revenueChartCanvas, {
      type: 'line',
      data: areaData(context,labels,'idtype__type_en'),
      options: areaOptions($("#publicationPerYear").data("step"),$("#publicationPerYear").data("max"))
      });
  }

  
  if ($("#barChartActivity").length) {
    var barChartCanvas = $("#barChartActivity").get(0).getContext("2d");
    var context = $("#barChartActivity").data("context");
    var labels = [];
      if (context.length==0){
        for (let m=1; m<13; m++){
          labels.push(m);
        }
      }else{
        labels = context[0].map(({ date__month }) => date__month);
      }
      // This will get the first returned node in the jQuery collection.
    barChartActivity = new Chart(barChartCanvas, {
      type: 'bar',
      data: barChartData(context,labels,'idtypeactivity__type_en',2022),
      options: barChartOptions
    });
  }
  if ($("#barChartPublication").length) {
    var barChartCanvas = $("#barChartPublication").get(0).getContext("2d");
    var context = $("#barChartPublication").data("context");
    var labels = [];
      if (context.length==0){
        for (let m=1; m<13; m++){
          labels.push(m);
        }
      }else{
        labels = context[0].map(({ date__month }) => date__month);
      }
    // This will get the first returned node in the jQuery collection.
    barChartPublication = new Chart(barChartCanvas, {
      type: 'bar',
      data: barChartData(context,labels,'idtype__type_en',2022),
      options: barChartOptions
    });
  }
})

function changeActivityYear(year,url,csrf_token){
  $.ajax({
      url : url,
      dataType: 'JSON',
      type:"POST",
      data: {
          'year': year,
          'csrfmiddlewaretoken': csrf_token,
      },
      success:function(data){
        var barChartCanvas = $("#barChartActivity").get(0).getContext("2d");
        $("#rangeyear").html(data['year']);
        $("#barChartActivity").data("context",data['activitiesPerM']);
        var context = data['activitiesPerM'];
        var labels = [];
        if (context.length==0){
          for (let m=1; m<13; m++){
            labels.push(m);
          }
        }else{
          labels = context[0].map(({ date__month }) => date__month);
        }
        // This will get the first returned node in the jQuery collection.
        barChartActivity.data = barChartData(context,labels,'idtypeactivity__type_en',data['year']);
        barChartActivity.update();

      },
      error:function(data){
        //   console.log('error')
        //   console.log(data)
      }
    });    
}

function changePublicationYear(year,url,csrf_token){
  $.ajax({
      url : url,
      dataType: 'JSON',
      type:"POST",
      data: {
          'year': year,
          'csrfmiddlewaretoken': csrf_token,
      },
      success:function(data){
        var barChartCanvas = $("#barChartPublication").get(0).getContext("2d");
        $("#rangeyearpub").html(data['year']);
        $("#barChartPublication").data("context",data['publicationsPerM']);
        var context = data['publicationsPerM'];
        var labels = [];
        if (context.length==0){
          for (let m=1; m<13; m++){
            labels.push(m);
          }
        }else{
          labels = context[0].map(({ date__month }) => date__month);
        }
        barChartPublication.data = barChartData(context,labels,'idtype__type_en',data['year']),
        barChartPublication.update();

        
      },
      error:function(data){
        //   console.log('error')
        //   console.log(data)
      }
    });    
}
