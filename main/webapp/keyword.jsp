<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">

    <title>Hello, world!</title>
  </head>
  <body>
    <main class="container">
        <div class="row">
            <div class="col">
                <form action="/Keywordservlet" method="get">
                    <div class="form-group">
                      <input type="text" name="keyword" id="keyword"> <button class="btn btn-primary" formaction="">Search</button>
                      
                    </div>
                    
                </form>
                <table class="table table-bordered">
                      <thead>
                        <tr>
                          <td scope="col"> ID</td>
                          <td scope="col">Title</td>
                          <td scope="col">Views</td>
                          <td scope="col">Active</td>                          
                        </tr>
                      </thead>
                      <tbody>
                      <c:forEach var="item" items="${video}">
                        <tr>
                        <td>${item.videoID}</td>		  
			     		<td>${item.title}</td>
						<td>${item.views}</td>
						<td>${item.active}</td>		
                          
                        </tr>
                        </c:forEach>
                      </tbody>
                    </table>
                  
              </div>
          </div>
        
        
    </main>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>

    
  </body>
</html>