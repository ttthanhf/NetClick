<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>NetClick</title>
    <!-- Tailwind -->
    <script src="https://cdn.tailwindcss.com"></script>
    <!-- Font awesome -->
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
      integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />
  </head>
  <body>
    <div class="flex">
      <%@ include file="components/sidebar.jsp" %>

      <!-- MAIN CONTENT -->
      <main class="p-6">
        <ul class="flex text-gray-400 font-semibold mb-6">
          <li class="mx-3"><a href="/tags?tag=movie">Movie</a></li>
          <li class="mx-3"><a href="/tags?tag=adventure">Adventure</a></li>
          <li class="mx-3"><a href="/tags?tag=classic">Classic</a></li>
          <li class="mx-3"><a href="/tags?tag=comedes">Comedies</a></li>
          <li class="mx-3">
            <a href="/tags?tag=documentaries">Documetaries</a>
          </li>
          <li class="mx-3"><a href="/tags?tag=dramas">Dramas</a></li>
          <li class="mx-3"><a href="/tags?tag=horror">Horror</a></li>
        </ul>
          
        <h1 class="font-bold text-2xl">Tag Page - ${param.tag.toUpperCase()}</h1>
        <p>Get started by editing <b>tag.jsp</b> </p>
        <%-- YOUR CODE HERE --%>
      </main>

    </div>
  </body>
</html>