
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
