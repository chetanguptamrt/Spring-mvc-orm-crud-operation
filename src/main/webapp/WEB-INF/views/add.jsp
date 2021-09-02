<%-- 
    Document   : add
    Created on : 01-Sep-2021, 11:54:39 AM
    Author     : chetan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="./base.jsp" %>
    </head>
    <body>
        <div class="bg-image"></div>
        <div class="container mt-5 text-light" style="position: fixed; left: 0; right: 0; z-index: 9999;">
            <div class="row">
                <div class="col-md-6 offset-md-3">
                    <h1 class="text-center mb-3">Fill the product detail</h1>
                    <form action="productAdd" method="post">
                        <div class="form-group">
                            <label for="name" >Product Name</label>
                            <input type="text" class="form-control" id="name" name="name" placeholder="Enter the product name here" />
                            <label class="mt-3" for="description">Product Description</label>
                            <textarea class="form-control" id="description" name="description" placeholder="Enter the product description" rows="5"></textarea>
                            <label class="mt-3" for="price" >Product Price</label>
                            <input type="text" class="form-control" id="price" name="Price" placeholder="Enter the product price here" />
                        </div>
                        <div class="text-center">
                            <a href="${pageContext.request.contextPath}/" class="btn btn-danger" >Back</a>
                            <button class="btn btn-primary ml-5" type="submit" >Add Product</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
