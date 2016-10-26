<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'index.jsp' starting page</title>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
    <script type="text/javascript" src="script/exporting.js"></script>
    <script type="text/javascript" src="script/highcharts.js"></script>
    <script type="text/javascript" src="script/jquery-1.5.1.js"></script>
  </head>
  <script language="javascript" type="text/javascript">
    var chart;
    $(document).ready(function () {
        chart = new Highcharts.Chart({
            chart: {
                renderTo: 'container',
                defaultSeriesType: 'line', //type:line,spline,area,areaspline,bar,column等
                marginRight: 130,
                marginBottom: 25
            },
            title: {
                text: 'Monthly Average Temperature', //first title
                x: -20 //center
            },
            subtitle: {
                text: 'Source: WorldClimate.com', //second
                x: -20
            },
            xAxis: {
                categories: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
            'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']//x axis
            },
            yAxis: {
                title: {
                    text: 'Temperature ()' //y axis title
                },
                plotLines: [{
                    value: 0,
                    width: 1,
                    color: '#808080'
                }]
            },
            tooltip: {
                formatter: function () {
                    return '<b>' + this.series.name + '</b><br/>' +
               this.x + ': ' + this.y + '';  //show message when put mouse on value point
                }
            },
            legend: {
                layout: 'vertical',
                align: 'right', //set description textleft/right/top/
                verticalAlign: 'top',
                x: -10,
                y: 100,
                borderWidth: 0
            },
            exporting: {
                enabled: true, //set print ot export button
                url: "http://localhost:49394/highcharts_export.aspx" 
            },
            plotOptions: {
                line: {
                    dataLabels: {
                        enabled: true //show every points value
                    },
                    enableMouseTracking: false
                }
            },
            series: [{
                name: 'Tokyo', //every lines title
                data: [7.0, 6.9, 9.5, 14.5, 18.2, 21.5, 25.2, 26.5, 23.3, 18.3, 13.9, 9.6]//lines value
            }, {
                name: 'New York',
                data: [-0.2, 0.8, 5.7, 11.3, 17.0, 22.0, 24.8, 24.1, 20.1, 14.1, 8.6, 2.5]
            }, {
                name: 'Berlin',
                data: [-0.9, 0.6, 3.5, 8.4, 13.5, 17.0, 18.6, 17.9, 14.3, 9.0, 3.9, 1.0]
            }, {
                name: 'London',
                data: [3.9, 4.2, 5.7, 8.5, 11.9, 15.2, 17.0, 16.6, 14.2, 10.3, 6.6, 4.8]
            }]
        });

    });
    </script> 
  <body>
    <form id="form1">
    <div id="container" style="width: 900px;">
    </div>
    </form>
  </body> 
</html>
