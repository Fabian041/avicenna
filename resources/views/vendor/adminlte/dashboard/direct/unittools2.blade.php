@extends('layouts.app')

@section('content')
<link href="{{ asset('/css/all.css') }}" rel="stylesheet" type="text/css" />
    <div class="form-horizontal" hidden>
        <div class="row">
            <div class="form-group">
                <label class="col-sm-2 control-label"><b>@lang('avicenna/dashboard.dashboard_choose_line')</b></label>
                <div class="col-sm-2">
                    <select name="line_no" id="line_no" class="form-control">
                        <option>-- Choose --</option>
                    </select>
                </div>
                <label class="col-sm-2 control-label"><b>@lang('avicenna/dashboard.dashboard_choose_machine')</b></label>
                <div class="col-sm-2">
                    <select name="machine_no" id="machine_no" class="form-control">
                        <option>-- Choose --</option>
                    </select>
                </div>
                <button class="btn btn-default"><span class="glyphicon glyphicon-search"></span> Display Dashboard</button>
            </div>
        </div>
    </div>
    <div class="row">
        <center><h2>UNIT PLANT MACHINING TOOLS STATUS</h2></center>
    </div>
    <div class="row">
        <div class="col-sm-12">
           <div id="container" style="min-width: 200px; height: 400px;"></div>   
       </div>
   </div>
   <br/>
   <div class="row">
       <div class="col-sm-4">
       <div class="panel panel-default">
         <div class="panel-heading" style="background-color:#F5F5F5 ;"><b>OVER</b></div>
         <div class="panel-body">
           <center><h1><span id="text-over">-</span></h1></center>
         </div>
       </div>
       </div>
       <div class="col-sm-4">
       <div class="panel panel-default">
         <div class="panel-heading" style="background-color:#F5F5F5"><b>WARNING</b></div>
         <div class="panel-body">
           <center><h1><span id="text-warning">-</span></h1></center>
         </div>
       </div>
       </div>
       <div class="col-sm-4">
       <div class="panel panel-default">
         <div class="panel-heading" style="background-color:#F5F5F5"><b>NORMAL</b></div>
         <div class="panel-body">
           <center><h1><span id="text-normal">-</span></h1></center>
         </div>
       </div>
       </div>
   </div>
   
@endsection

@section('scripts')
  @parent
    <script src="{{ url('/js/highcharts/highcharts.js') }}" type="text/javascript"></script>
    <script src="{{ url('/js/highcharts/modules/exporting.js') }}" type="text/javascript"></script>
    <script type="text/javascript">
    var data = {  _token: "{{ csrf_token() }}" };   // keep csrf token for session
    $.get("{{ url('dashboard/datatools2/1') }}", data, function (dataJSON) {
        var categories   =[];
        var std          =[];
        var actual       =[];
        var myseries     =[];

        for(var i=0;i<dataJSON[0].length;i++){
           categories.push(dataJSON[0][i].tools_no);
           std.push(parseInt(dataJSON[0][i].std_life_time));
           actual.push(parseInt(dataJSON[0][i].actual_life_time));
        }

        $('#text-normal').html(dataJSON[2]);
        $('#text-warning').html(dataJSON[3]);
        $('#text-over').html(dataJSON[4]);

        $('#container').highcharts({
           chart: {
                type: 'column',
            },
            title: {
                text: 'Line No: '+ dataJSON[1]["line_no"]+' Machine No: '+dataJSON[1]['machine_name'],
                style:{
                    fontSize:'22px',
                    fontFamily:'Arial',
                    fontWeight: 'Bold'
                }
            },
            xAxis: {
                categories: categories
            },
            plotOptions: {
                column: {
                    dataLabels: {
                        enabled: true,
                        style :{
                            fontSize: "15px"
                        },
                    }
                }
            },
            series: [{
                name: 'Standard Life Time',
                data: std,
                color: '#639af2'
            }, {
                name: 'Actual Life Time',
                data: actual,
                color: '#ef8534'
            }]
            });
    });
    var i = 0;
    var x=2;

    setInterval(function(){
        $.get("{{ url('dashboard/datatools2/') }}"+"/"+x, data, function (dataJSON) {
            x=x+1;
            if (x=={{count($mesins)}}){
                x=1;
            }
            var categories   =[];
            var std          =[];
            var actual       =[];
            var myseries     =[];

            for(var i=0;i<dataJSON[0].length;i++){
               categories.push(dataJSON[0][i].tools_no);
               std.push(parseInt(dataJSON[0][i].std_life_time));
               actual.push(parseInt(dataJSON[0][i].actual_life_time));
            }

            $('#text-normal').html(dataJSON[2]);
            $('#text-warning').html(dataJSON[3]);
            $('#text-over').html(dataJSON[4]);

            $('#container').highcharts({
               chart: {
                    type: 'column',
                },
                title: {
                    text: 'Line No: '+ dataJSON[1]["line_no"]+' Machine No: '+dataJSON[1]['machine_name'],
                    style:{
                        fontSize:'22px',
                        fontFamily:'Arial',
                        fontWeight: 'Bold'
                    }
                },
                xAxis: {
                    categories: categories
                },
                plotOptions: {
                    column: {
                        dataLabels: {
                            enabled: true,
                            style :{
                                fontSize: "15px"
                            },
                        }
                    }
                },
                series: [{
                    name: 'Standard Life Time',
                    data: std,
                    //color: '#d9534f'
                    color: '#639af2'
                }, {
                    name: 'Actual Life Time',
                    data: actual,
                    // color: '#5cb85c'
                    color: '#ef8534'
                }]
                });
        });
    },10000);
        
  </script>

@endsection