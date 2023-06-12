<%@page contentType="text/html" pageEncoding="UTF-8"%> <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>NetClick</title>
    <%@ include file="components/imports.jsp" %>
  </head>
  <body>
    <div class="flex">
      <%@ include file="components/sidebar.jsp" %>
      
      <!-- MAIN CONTENT -->
      <main class="p-6 w-[60rem] border-r-2">
        <%@ include file="components/navbar.jsp" %>
        
        <img
          src="https://collider.com/wp-content/uploads/the-avengers-movie-poster-banners-04.jpg"
          alt="Banner"
          class="w-full h-80"
        />

        <div class="my-2">
          <h2 class="text-gray-400 font-bold my-5 text-xl">Recommended</h2>
          <ul class="flex justify-between flex-wrap">
            <c:forEach begin="1" end="5">
              <%@ include file="components/movie.jsp" %>
            </c:forEach>
          </ul>
        </div>
      </main>

      <%@ include file="components/cta.jsp" %>
    </div>
  </body>
</html>
