app.controller("category-ctrl", function($scope, $http) {
    // Khởi tạo các biến cần thiết
    $scope.cates = [];  // Danh sách các danh mục
    $scope.form = {};   // Dữ liệu của form (dành cho thêm/sửa danh mục)
    $scope.pager = {    // Phân trang
        page: 0,
        count: 1,
        items: []
    };

    // Hàm khởi tạo, tải danh sách danh mục từ API
    $scope.initialize = function() {
        $http.get("/rest/categories").then(resp => {
            $scope.cates = resp.data;
            $scope.pager.items = $scope.cates.slice($scope.pager.page * 5, ($scope.pager.page + 1) * 5);
            $scope.pager.count = Math.ceil($scope.cates.length / 5); // Giả sử mỗi trang có 5 mục
        }).catch(function(error) {
            console.log("Error loading categories:", error);
        });
    };

    // Gọi hàm khởi tạo ngay khi controller được gọi
    $scope.initialize();

    // Khởi tạo form khi thêm mới
    $scope.reset = function() {
        $scope.form = {
            createDate: new Date(),
            imgcategories: 'default.jpg',
            name: '' 
        };
    };
    $scope.reset();

    // Chỉnh sửa danh mục
    $scope.editCategory = function(item) {
        $scope.form = angular.copy(item);
        $(".nav-tabs a:eq(1)").tab('show');
    };

    // Thêm mới danh mục
    $scope.createCategory = function() {
        var item = angular.copy($scope.form);
        $http.post("/rest/categories", item).then(function(resp) {
            // Gọi lại hàm initialize để tải lại danh sách danh mục
            $scope.initialize(); 
            $scope.reset();
            alert("Thêm mới danh mục thành công!");
        }).catch(function(error) {
            alert("Lỗi khi thêm mới danh mục!");
            console.log("Error", error);
        });
    };

    // Cập nhật danh mục
    $scope.updateCategory = function() {
        var item = angular.copy($scope.form);
        $http.put("/rest/categories/" + item.id, item).then(function(resp) {
            // Gọi lại hàm initialize để tải lại danh sách danh mục
            $scope.initialize();
            $scope.reset();
            alert("Cập nhật danh mục thành công!");
        }).catch(function(error) {
            alert("Lỗi khi cập nhật danh mục!");
            console.log("Error", error);
        });
    };

    // Xóa danh mục
    $scope.deleteCategory = function(item) {
        $http.delete("/rest/categories/" + item.id).then(function(resp) {
            // Gọi lại hàm initialize để tải lại danh sách danh mục
            $scope.initialize();
            alert("Xóa danh mục thành công!");
        }).catch(function(error) {
            alert("Lỗi khi xóa danh mục!");
            console.log("Error", error);
        });
    };

    // Xử lý ảnh
    $scope.imageChanged = function(files) {
        var data = new FormData();
        data.append('file', files[0]);
        $http.post('/rest/upload/img', data, {
            transformRequest: angular.identity,
            headers: {'Content-Type': undefined}
        }).then(function(resp) {
            $scope.form.imgcategories = resp.data.name;
        }).catch(function(error) {
            alert("Lỗi khi tải ảnh lên!");
            console.log("Error", error);
        });
    };

    // Chuyển trang
    $scope.changePage = function(page) {
        $scope.pager.page = page;
        $scope.pager.items = $scope.cates.slice(page * 5, (page + 1) * 5);  // Cập nhật danh sách theo trang
    };
});
