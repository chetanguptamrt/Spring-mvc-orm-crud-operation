<%-- 
    Document   : home
    Created on : 01-Sep-2021, 11:00:45 AM
    Author     : chetan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="./base.jsp" %>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha512-SfTiTlX6kk+qitfevl/7LibUOeJWlt9rbyDn92a1DqWOw9vWG2MFoays0sgObmWazO5BQPiFucnnEAjpAB+/Sw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    </head>
    <body>
        <div class="bg-image"></div>
        <div class="container mt-3" style="position: fixed; left: 0; right: 0; z-index: 9999;">
            <div class="row">
                <div class="col-md-12">
                    <h1 class="text-center mb-3 text-light">Welcome to Product App</h1>
                    <div class="table-responsive">
                        <table class="table">
                            <thead class="thead-dark">
                                <tr>
                                    <th scope="col">S. No.</th>
                                    <th scope="col">Product Name</th>
                                    <th scope="col">Description</th>
                                    <th scope="col">Price</th>
                                    <th scope="col">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${products}" var="product" >
                                    <tr>
                                        <th class="text-light" scope="row">${product.id}</th>
                                        <td class="text-light font-weight-bold">${product.name}</td>
                                        <td class="text-light">${product.description}</td>
                                        <td class="font-weight-bold text-light ">&#x20B9 ${product.price}</td>
                                        <td>
                                            <a class="text-danger" href="delete/${product.id}">
                                                <i class="fa fa-trash" style="font-size: 25px" aria-hidden="true"></i>
                                            </a>
                                            <a class="text-primary ml-4" href="update/${product.id}">
                                                <i class="fa fa-pencil" style="font-size: 25px" aria-hidden="true"></i>
                                            </a>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                    <div class="mt-3 mb-5 text-center">
                        <a href="add" class="btn btn-outline-success" >Add Product</a>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
