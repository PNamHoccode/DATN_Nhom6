var app = angular.module("admin-app", ["ngRoute"]);

app.config(function($routeProvider) {
	$routeProvider
		.when("/product", {
			templateUrl: "/admin/product/index.html",
			controller: "product-ctrl"
		})
		.when("/category", {
			templateUrl: "/admin/category/index.html",
			controller: "category-ctrl"
		})
		.when("/statust", {
			templateUrl: "/admin/statust/index.html",
			controller: "statust-ctrl"
		})
		.when("/Historychat", {
			templateUrl: "/admin/Historychat/chatbox.html",

		})
		.when("/Discountcode", {
			templateUrl: "/admin/Discountcode/index.html",
			controller: "disscount-ctrl"

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
			redirectTo: "/authorize"
		});
})
