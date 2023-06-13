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
      <main class="ml-0 sm:ml-[15rem] p-6 w-[100vw]">
        <h1 class="font-bold text-2xl">Subscription Page</h1>
        <!-- <p>Get started by editing <b>subscription.jsp</b> </p> -->
        <div class="flex justify-content flex-col items-center">
          <span class="font-medium text-3xl" style="margin-top: 100px; margin-bottom: 20px">Choose how to pay</span>
          <span class="text-xl" style="width: 400px; text-align: center"
            >Your payment is encrypted and you can change how you pay anytime.</span
          >
          <div class="my-5 flex flex-col justify-center items-center">
            <span class="text-zinc-500 text-lg">Secure for peace of mind.</span>
            <span class="text-zinc-500 text-lg">Cancel easily online.</span>
          </div>
        </div>
        <div class="flex justify-content flex-col items-center">
            <a href="/visap.jsp" class="flex items-center bg-slate-100 transition-opacity duration-500 hover:bg-opacity-10 p-5 my-6 shadow-lg rounded-lg w-[500px] h-[50px]">
            <span class="text-2xl">Credit Card</span>
            <img
              src="https://upload.wikimedia.org/wikipedia/commons/thumb/5/5e/Visa_Inc._logo.svg/2560px-Visa_Inc._logo.svg.png"
              alt=""
              class="w-[45px] h-[20px]"
            />
            <span class="text-4xl" style="margin-left: 250px">></span>
          </a>
            <a href="/momop.jsp" class="flex items-center bg-slate-100 transition-opacity duration-500 hover:bg-opacity-10 p-5 my-6 shadow-lg rounded-lg w-[500px] h-[50px]">
            <span class="text-2xl">Digital Wallet</span>
            <img src="https://upload.wikimedia.org/wikipedia/vi/f/fe/MoMo_Logo.png" alt="" class="w-[25px] h-[25px]" />
            <img
              src="https://cdn.haitrieu.com/wp-content/uploads/2022/10/Logo-ZaloPay-Square.png"
              alt=""
              class="w-[25px] h-[25px]"
            />
            <span class="text-4xl" style="margin-left: 225px">></span>
          </a>
        </div>
      </main>
    </div>
  </body>
</html>