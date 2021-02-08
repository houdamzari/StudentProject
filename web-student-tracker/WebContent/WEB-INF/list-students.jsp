<%@ page import="java.util.*, com.luv2code.web.jdbc.*" %>
<!DOCTYPE html>
<html>

<head>
	<title>Student Tracker App</title>	
</head>
<style>

.nput{
  display:block;
  position:relative;
  width:50%;
  height: 50%;
    margin-bottom:5%;
text-align:left;
  padding: 10px 0;
  font-size: 16px;
  color: black;
  margin-bottom: 30px;
  border: none;
  border-bottom: 1px solid #ffcc5f;
  outline: none;
  background: transparent;
  left:25%;
  padding-top:70px;
}
.input {
  display:block;
  position:relative;
  width:50%;
  height: 50%;
    margin-bottom:5%;
text-align:left;
  padding: 10px 0;
  font-size: 16px;
  color: black;
  margin-bottom: 30px;
  border: none;
  border-bottom: 1px solid #ffcc5f;
  outline: none;
  background: transparent;
  left:25%;
  
}
::placeholder { /* Chrome, Firefox, Opera, Safari 10.1+ */
  color: #707070;
  opacity: 1; /* Firefox */
}
.container{
  width:1500px;
  background-color:#f9f9f9;
  justify-content:center;
  text-align:center;
  box-shadow: rgb(38, 57, 77) 0px 20px 30px -10px;
  border-radius:5%;
  display:flex;
  gap:20px;
  
}
    .vertical { 
            border-left: 1px solid black; 
            height: 490px; 
            position:absolute; 
            left: 43%; 
            
        } 

span{
  font-size:20px;
  font-weight:lighter;  
}
.check{
  margin-bottom:0px;
  color:#707070;
  margin-left:30px;

}
.checkbox {

  position: absolute;
  display: block;
  left: 23%;
  bottom: 10.5%;
  color: #ffcc5f;
  
}
.checkbox1 {
    position: absolute;
  color: #ffcc5f;
  display: block;
  left: 6.9%;
  bottom: 10.5%;
}
h4{
  font-size:25px;
  display:inline;
  width:15px;
  position:relative;
  padding-bottom:20%;
  bottom:20px;
  right:10%;
  font-family:sans-serif;
  font-weight:lighter;
}
h1{
  color:#eaf6f6;
  padding-top:15px;
  font-size:30px;
    font-weight:lighter;
  font-family: sans-serif;
}

button{
    position: relative;
  display: block;
  padding: 10px 20px;
  color: #202020;
  font-size: 16px;
  text-decoration: none;
  text-transform: uppercase;
  overflow: hidden;
  background-color:rgba(255,255,255,0);
  transition: .5s;
  letter-spacing: 4px;
  border:2px solid rgba(255,255,255,0);
  left:37%;
  margin-top:7%;
  bottom:19px;
}

button:hover {
  background: #ffcc5f;
  color: #fff;
  border-radius: 5px;
  box-shadow: 0 0 5px #202020,
              0 0 25px #202020,
              0 0 50px #202020,
              0 0 100px #202020;
}
button span {
  position: absolute;
  display: block;
}
button span:nth-child(1) {
  top: 0;
  left: -100%;
  width: 100%;
  height: 2px;
  background: linear-gradient(90deg, transparent, #202020);
  animation: btn-anim1 1s linear infinite;
}
@keyframes btn-anim1 {
  0% {
    left: -100%;
  }
  50%,100% {
    left: 100%;
  }
}
button span:nth-child(2) {
  top: -100%;
  right: 0;
  width: 2px;
  height: 100%;
  background: linear-gradient(180deg, transparent, #202020);
  animation: btn-anim2 1s linear infinite;
  animation-delay: .25s
}
@keyframes btn-anim2 {
  0% {
    top: -100%;
  }
  50%,100% {
    top: 100%;
  }
}

button span:nth-child(3) {
  bottom: 0;
  right: -100%;
  width: 100%;
  height: 2px;
  background: linear-gradient(270deg, transparent, #202020);
  animation: btn-anim3 1s linear infinite;
  animation-delay: .5s
}

@keyframes btn-anim3 {
  0% {
    right: -100%;
  }
  50%,100% {
    right: 100%;
  }
}

button span:nth-child(4) {
  bottom: -100%;
  left: 0;
  width: 2px;
  height: 100%;
  background: linear-gradient(360deg, transparent, #202020);
  animation: btn-anim4 1s linear infinite;
  animation-delay: .75s
}

@keyframes btn-anim4 {
  0% {
    bottom: -100%;
  }
  50%,100% {
    bottom: 100%;
  }
}
.container2 {
  width: 500px;
  margin-left: 0;
  margin-right: auto;
  padding-left: 0px;
  padding-right: 10px;
}

h2 {
  font-size: 26px;
  margin: 20px 0;
  text-align: center;
  small {
    font-size: 0.5em;
  }
}

.responsive-table {
  li {
    border-radius: 3px;
    padding: 25px 30px;
    display: flex;
    justify-content: space-between;
    margin-bottom: 25px;
  }
  .table-header {
    background-color: #fff5c4;
    font-size: 14px;
    text-transform: uppercase;
    letter-spacing: 0.03em;
  }
  .table-row {
    background-color: #ffffff;
    box-shadow: 0px 0px 9px 0px rgba(0,0,0,0.1);
  }
  .col-1 {
    flex-basis: 10%;
  }
  .col-2 {
    flex-basis: 40%;
  }
  .col-3 {
    flex-basis: 25%;
  }
  .col-4 {
    flex-basis: 25%;
  }
  
  @media all and (max-width: 767px) {
    .table-header {
      display: none;
    }
    .table-row{
      
    }
    li {
      display: block;
    }
    .col {
      
      flex-basis: 100%;
      
    }
    .col {
      display: flex;
      padding: 10px 0;
      &:before {
        color: #6C7A89;
        padding-right: 10px;
        content: attr(data-f);
        flex-basis: 50%;
        text-align: right;
      }
    }
  }
}


.container2 {
  width: 2000px;
  margin-left: auto;
  margin-right: auto;
  padding-left: 10px;
  padding-right: 10px;
}
.container1 {
  width: 1000px;
}

h2 {
  font-size: 26px;
  margin: 20px 0;
  text-align: center;
}
h2 small {
  font-size: 0.5em;
}

.responsive-table li {
  border-radius: 3px;
  padding: 25px 30px;
  display: flex;
  justify-content: space-between;
  margin-bottom: 25px;
}
.responsive-table .table-header {
  background-color:  #ffe066;
  font-size: 14px;
  text-transform: uppercase;
  letter-spacing: 0.03em;
}
.responsive-table .table-row {
  background-color: #ffffff;
  box-shadow: 0px 0px 9px 0px rgba(0, 0, 0, 0.1);
}
.responsive-table .col-1 {
  flex-basis: 10%;
}
.responsive-table .col-2 {
  flex-basis: 40%;
}
.responsive-table .col-3 {
  flex-basis: 25%;
}
.responsive-table .col-4 {
  flex-basis: 25%;
}
@media all and (max-width: 767px) {
  .responsive-table .table-header {
    display: none;
  }
  .responsive-table li {
    display: block;
  }
  .responsive-table .col {
    flex-basis: 100%;
  }
  .responsive-table .col {
    display: flex;
    padding: 10px 0;
  }
  .responsive-table .col:before {
    color: #6C7A89;
    padding-right: 10px;
    content: attr(data-label);
    flex-basis: 50%;
    text-align: right;
  }
}
body {
  font-family: 'lato', sans-serif;
}
.container3 {
  width: 300px;
  margin-left: 1300px;
}




.responsive-table {
  li {
    border-radius: 3px;
    padding: 25px 30px;
    display: flex;
    justify-content: space-between;
    margin-bottom: 25px;
  }
  .table-header {
    background-color: #fff5c4;
    font-size: 14px;
    text-transform: uppercase;
    letter-spacing: 0.03em;
  }
  .table-roww {
    background-color: #ffffff;
    box-shadow: 0px 0px 9px 0px rgba(0,0,0,0.1);
  }
  .col-1 {
    flex-basis: 10%;
  }
  
  @media all and (max-width: 767px) {
    .table-header {
      display: none;
    }
    .table-roww{
      
    }
    li {
      display: block;
    }
    .col {
      
      flex-basis: 100%;
      
    }
    }
  }
}




</style>
<%
	// get the students from the request object (sent by servlet)
	List<Student> theStudents = (List<Student>)request.getAttribute("STUDENT_LIST");
%>

<body>

	<div id="wrapper">
		<div id="header">
			<h2>ENSATE University</h2>
		</div>
	</div>

	<div id="container">
	<div class="container">
  <div class = "container1">
  <!--<h1 class="title">Completez le formulaire suivant:</h1>-->
  <br>
 <form action="<%= request.getContextPath() %>/StudentControllerServlet" method="post">
    <input class="nput"type="text" placeholder="CODE_DAPOGEE"/>
    <input class="input"type="text" placeholder="NOM_COMPLET"/>
    <input class="input"type="text" placeholder="CIN"/>
   <input class="input"type="email" placeholder="Address@mail.com"/>
   

    <br>
    <h4 class="label"> Documment demandé: </h4>
    <br>
    <input type="checkbox" name= "checkbox1" value="Attestation Scolaire" class="checkbox1"><span class="check">Attestation scolaire</span>
    
    <input type="checkbox" name= "checkbox2" checked value= "Relevé de Notes"  class="checkbox"/><span class="check">Relevé de notes</span>
    
    <button type="submit">
      <span></span>
      <span></span>
      <span></span>
      <span></span>
      Submit</button>
    
  </form>
  </div>
  <div class= "vertical"></div>
  <div class = "container2">
  	<ul class="responsive-table">
    <li class="table-header">
      <div class="col col-1">CODE_DAPOGEE</div>
      <div class="col col-2">NOM_COMPLET</div>
      <div class="col col-3">CIN</div>
      <div class="col col-4">EMAIL_ADDRESS</div>
      
    </li>
     <div class="container3" >
  <ul class="responsive-table">
    <li class="table-roww">
      //<div  ></div>
    </li>
    <li class="table-roww">
      <div  ></div>
    </li>
    <li class="table-roww">
      <div  ></div>
    </li>
    <li class="table-roww">
      <div  ></div>
    </li>
  </ul>
</div>
    <% for (Student tempStudent : theStudents) { %>
    <li class="table-row">
      <div class="col col-1" > <%= tempStudent.getCODE_DAPOGEE() %> </div>
      <div class="col col-2" > <%= tempStudent.getNOM_COMPLET() %> </div>
      <div class="col col-3" > <%= tempStudent.getCIN()%> </div>
      <div class="col col-4" > <%= tempStudent.getEMAIL_ADDRESS() %> </div>
    </li>
<% } %>
  	</ul>
  </div>
		</div>
		</div>
		
	
	
</body>


</html>








