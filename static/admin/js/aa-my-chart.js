
var doughnutPieOptions = {
    responsive: true,
    animation: {
    animateScale: true,
    animateRotate: true
    }
};

  var areaOptions = {
    plugins: {
      filler: {
        propagate: true
      }
    }
  }
    
function setChartData(data,labels,label){
    var chartData = {
        labels: labels,
        datasets: [{
          label: label,
          data: data,
          backgroundColor: [
            'rgba(255, 99, 132, 0.2)',
            'rgba(54, 162, 235, 0.2)',
            'rgba(255, 206, 86, 0.2)',
            'rgba(75, 192, 192, 0.2)',
            'rgba(153, 102, 255, 0.2)',
            'rgba(255, 159, 64, 0.2)'
          ],
          borderColor: [
            'rgba(255,99,132,1)',
            'rgba(54, 162, 235, 1)',
            'rgba(255, 206, 86, 1)',
            'rgba(75, 192, 192, 1)',
            'rgba(153, 102, 255, 1)',
            'rgba(255, 159, 64, 1)'
          ],
          borderWidth: 1,
          fill: true, // 3: no fill
        }]
      };
      return chartData;
}

function pieChart(element, data,labels){
    var doughnutPieData = setChartData(data,labels,null)
    if (element.length) {
        var pieChartCanvas = element.get(0).getContext("2d");
        new Chart(pieChartCanvas, {
          type: 'pie',
          data: doughnutPieData,
          options: doughnutPieOptions
        });
      }
}

function areaChart(element, data,labels,label){
    var areaData = setChartData(data,labels,label)
    if (element.length) {
        var areaChartCanvas = element.get(0).getContext("2d");
        var areaChart = new Chart(areaChartCanvas, {
          type: 'line',
          data: areaData,
          options: areaOptions
        });
      }
}

function compareChart(element,data){
    
    if (element.length) {
        var datasets =  []
        var labellist = [];
        borderColor= [
            'rgba(255,99,132,1)',
            'rgba(54, 162, 235, 1)',
            'rgba(255, 206, 86, 1)',
            'rgba(75, 192, 192, 1)',
            'rgba(153, 102, 255, 1)',
            'rgba(255, 159, 64, 1)'
          ];

        for (let i=0; i<data.length; i++){
            var datalist = [];
           
            for (let ii=0; ii<data[i].length ;ii++){
                datalist.push(parseInt(data[i][ii].count))
                labellist.push(data[i][ii].year);
            }
            console.log(data[i]);
            datasets.push(
                {
                    data: datalist,
                    borderColor: borderColor[i],
                    borderWidth: 2,
                    fill: false,
                    label: data[i][0].type
                  }
            );
        }
        
          

        var areaData = {
          labels:labellist,
          datasets:datasets
        };

        var areaOptions = {
          responsive: true,
          maintainAspectRatio: true,
          plugins: {
            filler: {
              propagate: false
            }
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
        var revenueChartCanvas = element.get(0).getContext("2d");
        var revenueChart = new Chart(revenueChartCanvas, {
          type: 'line',
          data: areaData,
          options: areaOptions
        });
      }
}
