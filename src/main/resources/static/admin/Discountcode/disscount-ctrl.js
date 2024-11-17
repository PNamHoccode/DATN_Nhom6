app.controller("disscount-ctrl", function($scope, $http) {
    $scope.discountCodes = [];
    $scope.cates = [];
    $scope.form = {};

    // Initialize discount codes and categories
    $scope.initialize = function() {
        $http.get("/rest/discount-codes").then(resp => {
            $scope.discountCodes = resp.data;
        });

        $http.get("/rest/categories").then(resp => {
            $scope.cates = resp.data;
        });
    };

    // Initialize the data
    $scope.initialize();

    // Reset the form
    $scope.reset = function() {
        $scope.form = {
            validFrom: new Date(),
            validUntil: new Date(),
            isActive: true
        };
    };

    // Edit discount code
    $scope.edit = function(code) {
        $scope.form = angular.copy(code);
        $(".nav-tabs a:eq(1)").tab('show');
    };

    // Create new discount code
	// Create new discount code
	$scope.create = function() {
	    var code = angular.copy($scope.form);
	    $http.post(`/rest/discount-codes`, code).then(resp => {
	        $scope.discountCodes.push(resp.data);
	        $scope.reset();
	        alert("Discount code created successfully!");
	        $scope.initialize(); // Tải lại dữ liệu sau khi tạo thành công
	    }).catch(error => {
	        alert("Error creating discount code!");
	        console.log("Error", error);
	    });
	};

	// Update discount code
	$scope.update = function() {
	    var code = angular.copy($scope.form);
	    $http.put(`/rest/discount-codes/${code.id}`, code).then(resp => {
	        var index = $scope.discountCodes.findIndex(d => d.id == code.id);
	        $scope.discountCodes[index] = code;
	        $scope.reset();
	        alert("Discount code updated successfully!");
	        $scope.initialize(); // Tải lại dữ liệu sau khi cập nhật thành công
	    }).catch(error => {
	        alert("Error updating discount code!");
	        console.log("Error", error);
	    });
	};

	// Delete discount code
	$scope.delete = function(code) {
	    $http.delete(`/rest/discount-codes/${code.id}`).then(resp => {
	        var index = $scope.discountCodes.findIndex(d => d.id == code.id);
	        $scope.discountCodes.splice(index, 1);
	        $scope.reset();
	        alert("Discount code deleted successfully!");
	        $scope.initialize(); // Tải lại dữ liệu sau khi xóa thành công
	    }).catch(error => {
	        alert("Error deleting discount code!");
	        console.log("Error", error);
	    });
	};

    // Pagination
    $scope.pager = {
        page: 0,
        size: 5,
        get items() {
            var start = this.page * this.size;
            return $scope.discountCodes.slice(start, start + this.size);
        },
        get count() {
            return Math.ceil(1.0 * $scope.discountCodes.length / this.size);
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
