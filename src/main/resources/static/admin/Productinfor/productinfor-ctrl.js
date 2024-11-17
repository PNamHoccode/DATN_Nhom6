app.controller("productinfor-ctrl", function($scope, $http) {
    $scope.productInformations = [];
    $scope.products = [];
    $scope.form = {};

    // Initialize product informations and products
    $scope.initialize = function() {
        $http.get("/rest/productinformation").then(resp => {
            $scope.productInformations = resp.data;
        });

        $http.get("/rest/products").then(resp => {
            $scope.products = resp.data;
        });
    };

    // Initialize the data
    $scope.initialize();

    // Reset the form
    $scope.reset = function() {
        $scope.form = {};
    };

    // Edit product information
    $scope.edit = function(productInformation) {
        $scope.form = angular.copy(productInformation);
        $(".nav-tabs a:eq(1)").tab('show');
    };

    // Create new product information
    $scope.create = function() {
        var productInformation = angular.copy($scope.form);
        $http.post(`/rest/productinformation`, productInformation).then(resp => {
            $scope.productInformations.push(resp.data);
            $scope.reset();
            alert("Product information created successfully!");
        }).catch(error => {
            alert("Error creating product information!");
            console.log("Error", error);
        });
    };

    // Update product information
    $scope.update = function() {
        var productInformation = angular.copy($scope.form);
        $http.put(`/rest/productinformation/${productInformation.id}`, productInformation).then(resp => {
            var index = $scope.productInformations.findIndex(p => p.id == productInformation.id);
            $scope.productInformations[index] = productInformation;
            $scope.reset();
            alert("Product information updated successfully!");
        }).catch(error => {
            alert("Error updating product information!");
            console.log("Error", error);
        });
    };

    // Delete product information
    $scope.delete = function(productInformation) {
        $http.delete(`/rest/productinformation/${productInformation.id}`).then(resp => {
            var index = $scope.productInformations.findIndex(p => p.id == productInformation.id);
            $scope.productInformations.splice(index, 1);
            $scope.reset();
            alert("Product information deleted successfully!");
        }).catch(error => {
            alert("Error deleting product information!");
            console.log("Error", error);
        });
    };

    // Pagination
    $scope.pager = {
        page: 0,
        size: 4,
        get items() {
            var start = this.page * this.size;
            return $scope.productInformations.slice(start, start + this.size);
        },
        get count() {
            return Math.ceil(1.0 * $scope.productInformations.length / this.size);
        },
        first() {
            this.page = 0;
        },
        prev() {
            this.page--;
            if (this.page < 0) {
                this.last();
            }
        },
        next() {
            this.page++;
            if (this.page >= this.count) {
                this.first();
            }
        },
        last() {
            this.page = this.count - 1;
        }
    };
});
