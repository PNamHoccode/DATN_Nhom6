app.controller("statust-ctrl", function($scope, $http){
	
	$scope.items = [];
	$scope.cates = [];
	$scope.acc =[];
	$scope.form = {};
	
	$scope.initialize = function(){
		//load order
		$http.get("/rest/order").then(resp => {
			$scope.items = resp.data;
			$scope.items.forEach(item => {
				item.createDate = new Date(item.createDate)
			})
		});
		//load status
		$http.get("/rest/statust").then(resp => {
			$scope.cates = resp.data;
		});
		//load statust
		$http.get("/rest/rest/accounts").then(resp => {
			$scope.acc = resp.data;
		});
	}
	 $scope.initialize();
	 
	//Hiển thị lên form
	$scope.edit = function(item){
		$scope.form = angular.copy(item);
		$(".nav-tabs a:eq(1)").tab('show');
	}
	

	

	
	//Cập nhật sản phẩm
	$scope.update = function(){
		var item = angular.copy($scope.form);
        $http.put(`/rest/order/${item.id}`,item).then(resp => {
            var index = $scope.items.findIndex(p => p.id == item.id);
          
            $scope.items[index] = item;
            $scope.reset();
            alert("Cập nhật sản phẩm thành công!");
        }).catch(error => {
            alert("Cập nhật sản phẩm thành công!");
            console.log("Error",error);
        });
	}
	
	
	
	
	
	//phan trang
    $scope.pager = {
        page: 0,
        size: 12,
        get items(){
            var start = this.page * this.size;
            return $scope.items.slice(start,start + this.size);
        },
        //Số trang
        get count(){
			return Math.ceil(1.0 * $scope.items.length / this.size);
		},
		//Về đầu trang
		first(){
			this.page = 0;
		},
		//Trở lại trang
		prev(){
			this.page--;
			if(this.page < 0){
				this.last();
			}
		},
		//Trang tiếp theo
		next(){
			this.page++;
			if(this.page >= this.count){
				this.first();
			}
		},
		//Trang cuối cùng
		last(){
			this.page = this.count - 1;
		}
	}
});