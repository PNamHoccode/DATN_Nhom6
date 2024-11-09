app = angular.module("admin-app", ["ngRoute"]);

app.config(function ($routeProvider){
	$routeProvider
	.when("/product", {
		templateUrl: "/admin/product/index.html",
		controller: "product-ctrl"
	})
	.when("/statust", {
		templateUrl: "/admin/statust/index.html",
		controller: "statust-ctrl"
	})
	.when("/authorize",{
		templateUrl: "/admin/authority/index.html",
		controller: "authority-ctrl"
	})
	.when("/unauthorized", {
		templateUrl: "/admin/authority/uanuthorized.html",
		controller: "authority-ctrl"
	})
	.otherwise({
		template: "<h1 class='text-center mt-5'>Welcome Administration</h1>"
	})
})