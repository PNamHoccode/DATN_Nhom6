const app = angular.module("shopping-cart-app", []);

app.controller("shopping-cart-ctrl", function($scope, $http){
	
	$scope.cart = {
		items: [],
		add(id){ // thêm sản phẩm vào giỏ hàng
        	var item = this.items.find(item => item.id == id);
            if(item){
                item.qty++;
                this.saveToLocalStorage();
            }
            else{
            	$http.get(`/rest/products/${id}`).then(resp => {
            		resp.data.qty = 1;
            		resp.data.image = `/img/${resp.data.image}`;
            		this.items.push(resp.data);
            		this.saveToLocalStorage();
            	})
            }
        },
        
        remove(id){ //Xóa sản phẩm khỏi giỏ hàng
			var index = this.items.findIndex(item => item.id == id);
			this.items.splice(index, 1);
			this.saveToLocalStorage();
		},
		
		clear(){
			this.items = []
			this.saveToLocalStorage();
		},
        
        get count(){ //Tính tổng số lượng các mặt hàng trong giỏ
			return this.items
			.map(item => item.qty)
			.reduce((total, qty) => total += qty, 0);
		},
		
		get amount(){ //Tổng thành tiền các mặt hàng trong giỏ
			return this.items
			.map(item => item.qty * item.price)
			.reduce((total, qty) => total += qty, 0);
		},
		
		saveToLocalStorage(){ // lưu giỏ hàng vào local storage
        	var json = JSON.stringify(angular.copy(this.items));
            localStorage.setItem("cart", json);
        },
        
        loadFromLocalStorage(){
			var json = localStorage.getItem("cart");
			this.items = json ? JSON.parse(json) : [];
		}
	}
	
	$scope.cart.loadFromLocalStorage();


	$scope.order = {
		account: {username: $("#username").text()},
		createDate: new Date(),
		address: "",
      
		get orderDetails(){
			return $scope.cart.items.map(item => {
				return {
					product:{id: item.id},
					price: item.price,
					quantity: item.qty
				}
			});
		},
		purchase(){
				var order = angular.copy(this);
				
			  
				// Thực hiện đặt hàng
				$http.post("/rest/order",order).then(resp => {
					
					alert("Đặt hàng thành công!");
					$scope.cart.clear();
					
					location.href = "/order/detail/" + resp.data.id;
				}).catch(error => {
					alert("Đặt hàng thất bại!");
					console.log(error)
				})
				
		}
	}
})