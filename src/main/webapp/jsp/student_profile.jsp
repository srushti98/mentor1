<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>new profile</title>

    <meta name="viewport" content="width=device-width,initial-scale=1.0"/>
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <script src="../js/bootstrap.js"></script>

    <style>
        .top-nav{
            overflow: hidden;
            background-color: #2f28d6;


        }
        .top-nav a {
            float: right;
            color: white;
            text-align: center;
            padding: 14px 16px;
            font-size: 30px;
            text-decoration: none;
        }

        .top-nav a:hover{
            background-color: #221b94;

        }
        .navbar-text {
            color: white;
            margin-left: 20px;
        }
        #profile_pic{
            padding: 10px;
            width: 200px;
            height: 200px;
            margin-left: 120px;
            align-self: center;
        }
        .list-group-item {
            height: 80px;
            font-size: 25px;
        }
        .list-group a:hover {
            color: #2f28d6;
        }
    </style>

</head>
<body>
<div class="top-nav sticky-top">
    <span class="navbar-text"><h1>Mentor System</h1></span>
    <%
        if (session.getAttribute("stud_name")==null)
            response.sendRedirect("/index.jsp");
        String stud_name = (String)session.getAttribute("stud_name");
        %>
    <a class="active" href="../LogoutServlet">LogOut</a>
    <a href="#"><%=stud_name%></a>
</div>
<div class="row">
    <div class="col-md-3 col-sm3 col-xs-12">
        <img src="img/blank_profile.png" id="profile_pic" class="img">
        <div class="list-group" id="list-tab" role="tablist">
            <a class="list-group-item list-group-item-action" data-toggle="list" href="#list-home" >Home</a>
            <a class="list-group-item list-group-item-action" data-toggle="list" href="../forms/mentor_form.jsp" >Edit Profile</a>
            <a class="list-group-item list-group-item-action" data-toggle="list" href="#list-settings" >Minutes of meetings</a>
            <a class="list-group-item list-group-item-action" data-toggle="list" href="../forms/leave_app.jsp" target="profile_display" >Leave Application</a>
            <a class="list-group-item list-group-item-action" data-toggle="list" href="#list-settings" >Meet Mentor</a>
            <a class="list-group-item list-group-item-action" data-toggle="list" href="#list-settings" >Submit Undertaking</a>

        </div>
    </div>
    <div class="col-md-9 col-sm-9 col-xs-12 no-gutters">
        <iframe name="profile_display" style="height: 900px; width: 1400px;margin-left: 0px; margin-top: 10px; border: none">

        </iframe>
    </div>
</div>
</body>
</html>