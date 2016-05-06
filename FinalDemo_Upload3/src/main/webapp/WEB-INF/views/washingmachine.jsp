<!DOCTYPE html>
<html>
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <link rel="stylesheet" href= "https://cdn.datatables.net/1.10.11/css/dataTables.bootstrap.min.css">
 <link rel="stylesheet" href="https://cdn.datatables.net/responsive/2.0.2/css/responsive.bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.2/angular.js"></script>
<body>
<div ng-app="ProductsApp" ng-controller="ProdCtrl" width="50%">
 <input type="text" ng-model="searchProduct"/>
<table border="1" id="example" class="table table-stripped table-bordered dt-responsive nowrap" cellspacoing="0">
<thead>
<tr>
<td>PROD ID</td>
<td>PROD NAME</td>
<td>MODEL NUMBER</td>
<td>Quantity</td>
<td>Price</td>
</tr>
</thead>
<tbody>
 <tr ng-repeat="x in prod |filter:searchProduct">
        <td>{{x.ProductID}}</td>
        <td>{{x.ProductName}}</td>
        <td>{{x.ModelNo}}</td>
        <td>{{x.Quantity}}</td>
        <td>{{x.Price}}</td>
      </tr>
      </tbody>
</table>
</div>

<script>
var app = angular.module('ProductsApp', []);
app.controller('ProdCtrl', function($scope,$http) {
	$scope.searchProduct='';
	 $http.get("resources/JSONFiles/washingmachine.json").success(function(data)
		  		{
		  	
		  	$scope.prod = data;}
		  );
});

</script>

</body>
</html>