<%-- 
    Document   : forgotpass
    Created on : Jun 13, 2023, 7:20:12 AM
    Author     : Quan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html class="h-full">
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
      referrerpolicy="no-referrer"/>
  </head>
  <!-- header -->
  <header class="w-screen">
    <div class="block container px-6 py-6">
      <div class="items-center">
       <a href="index.jps"><img src="img/favicon.png" alt="Logo" class="h-12"></a>
      </div>
    </div>
  </header>  
    <!-- MAIN CONTENT -->
  <body class="flex flex-col items-center justify-center h-full">
    <div class="flex-grow">
      <div class="w-full flex justify-center items-center mt-28">
    <h1 class="block text-8xl font-light mb-8 mt-28 px-3 ">Welcome to </h1>
    <div>
      <h2 class="flex bg-blue-500 rounded text-7xl text-white font-light pb-2 mb- mt-28 px-3">NetClick</h2>
    </div>
  </div>
  <div class="block -mb-3">
    <h3 class="flex items-center justify-center text-2xl font-light">Explore unlimited movies, TV shows anywhere, anytime
    </h3>
  </div>
      <div class="w-full max-w-md mx-auto">
        <div class="w-full">
            <div class="w-full max-w-md">
              <!-- login form -->
              <form class="bg-slate-100 shadow-md rounded px-8 pt-6 pb-8 mb-12 mt-28 m-4">
                  <div>
                    <!-- user -->
                  <label class="inline-block px-1 bg-gray-300 rounded text-gray-700 text-2xl font-bold mb-4" for="username">Username:</label> 
                  <input
                      class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                      id="username" type="text" placeholder="Enter your username">
                  </div>
                  <div class="mb-4">
                    <!-- password -->
                  <label class="inline-block px-1 bg-gray-300 rounded text-gray-700 text-2xl font-bold mb-4 mt-4" for="password">Password:</label>
                  <input
                      class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 mb-3 leading-tight focus:outline-none focus:shadow-outline"
                      id="password" type="password" placeholder="Enter your password">
                  </div>
                      <!-- button -->
    <div class="flex items-center justify-between">
      <button
          class="bg-gray-50 hover:bg-gray-200 text-black font-thin py-2 px-14 rounded border-black border-solid border-2"
          type="button">
          Login
      </button>
      <button class="bg-gray-300 hover:bg-gray-600 hover:text-white text-black font-thin py-2 px-14 rounded focus:outline-none border-black border-solid border-2" href="#">
          Sign in 
      </button>
      </div>
      <h1 class="flex items-center justify-center mt-3 text-gray-900 opacity-100 hover:opacity-50">
        <a href="#">Forgot password?</a></h1>
      <!-- end button -->
                </div>          
              </div>
            </form>
        </div>
        </div>
        <!-- end form -->
        <!-- footer -->
        <footer class="inline-block w-full bg-gray-800 sticky bottom-0">
          <div class="flex items-center justify-center mt-4 mb-2">
              <a href="#" class="inline-block w-8 h-8 bg-white bg-opacity-20 rounded-full flex items-center justify-center mr-2 transition-opacity duration-300 hover:bg-opacity-50">
                <i class="fa-brands fa-instagram text-white"></i>  
              </a>
              <a href="#" class="inline-block w-8 h-8 bg-white bg-opacity-20 rounded-full flex items-center justify-center mr-2 transition-opacity duration-300 hover:bg-opacity-50">
                <i class="fa-brands fa-twitter text-white"></i>
              </a>
              <a href="#" class="inline-block w-8 h-8 bg-white bg-opacity-20 rounded-full flex items-center justify-center mr-2 transition-opacity duration-300 hover:bg-opacity-50">
                <i class="fa-brands fa-facebook text-white"></i>
              </a>
          </div>
          <ul class="list-none flex justify-center">
              <li class="mx-2"><a href="#" class="text-white opacity-80 hover:opacity-100">Home</a></li>
              <li class="mx-2"><a href="#" class="text-white opacity-80 hover:opacity-100">Services</a></li>
              <li class="mx-2"><a href="#" class="text-white opacity-80 hover:opacity-100">About</a></li>
              <li class="mx-2"><a href="#" class="text-white opacity-80 hover:opacity-100">Terms</a></li>
              <li class="mx-2"><a href="#" class="text-white opacity-80 hover:opacity-100">Privacy Policy</a></li>
          </ul>
          <p class="text-center text-gray-500 text-xs mt-6">NetClick ©2023</p>
      </footer>
      
  </body>
  
</html>