<%-- 
    Document   : update
    Created on : 01-Sep-2021, 9:29:13 PM
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
                    <h1 class="text-center mb-3">Change product detail</h1>
                    <form action="../productAdd" method="post">
                        <div class="form-group">
                            <input value="${product.id}" name="id" hidden />
                            <label for="name" >Product Name</label>
                            <input type="text" class="form-control" id="name" name="name" placeholder="Enter the product name here" value="${product.name}" />
                            <label class="mt-3" for="description">Product Description</label>
                            <textarea class="form-control" id="description" name="description" placeholder="Enter the product description" rows="5">${product.description}</textarea>
                            <label class="mt-3" for="price" >Product Price</label>
                            <input type="text" class="form-control" id="price" name="Price" placeholder="Enter the product price here" value="${product.price}" />
                        </div>
                        <div class="text-center">
                            <a href="${pageContext.request.contextPath}/" class="btn btn-danger" >Back</a>
                            <button class="btn btn-primary ml-5" type="submit" >Update Product</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
