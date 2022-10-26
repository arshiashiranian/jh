    <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="JacobHew.admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>JACOB HEW ADMIN</title>
    <link rel="stylesheet" href="styles/admin.css" type="text/css" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="scripts/admin.js" type="text/javascript"></script>
    <script src="https://kit.fontawesome.com/1bf5bf7ba9.js" crossorigin="anonymous"></script>
</head>
<body onload="f()">
    <form id="form1" runat="server"> 
        <div>
            <section class="section">
                <h1 style="margin-top: 50px;" class="headertext">JACOB<span style="color: white"> HEW</span> ADMIN</h1>
                <p id="p1" name="p1" runat="server" class="text">
                </p>
                <p class="text">GOOD DAY AT WORK, HAH ?</p>
                <p class="text">CLICK <a class="headertext" href="Default.aspx">HERE</a> TO GO TO THE MAIN WEBSITE.</p>
                <div class="line"></div>
                <h1 class="headertext">BOOKED APPOINTMENTS TABLE</h1>
                <table class="table" id="table" name="table" runat="server">
                    <tr>
                        <th style="border-top-left-radius: 25px;">Code</th>
                        <th>Service</th>
                        <th>Name</th>
                        <th>Number</th>
                        <th>Date</th>
                        <th>Time</th>
                        <th style="border-top-right-radius: 25px;">Note</th>
                    </tr>
                </table>
                <div class="line"></div>
                <h1 class="headertext">REQUESTED APPOINTMENTS TABLE</h1>
                <table class="table" id="table1" name="table1" runat="server">
                    <tr>
                        <th style="border-top-left-radius: 25px;">Code</th>
                        <th>Service</th>
                        <th>Name</th>
                        <th>Number</th>
                        <th>Date</th>
                        <th>Time</th>
                        <th style="border-top-right-radius: 25px;">Note</th>
                    </tr>
                </table>
                <div class="line"></div>
                <h1 class="headertext">ACCEPT APPOINTMENT REQUEST</h1>
                <select class="select" id="codecombo3" name="codecombo3" runat="server">
                    <option>Code</option>
                </select>
                <a class="menuitem" onclick="acceptappointment()">ACCEPT</a>
                <div class="line"></div>
                <h1 class="headertext">AVAILABLE APPOINTMENTS TABLE</h1>
                <table class="table" id="table2" name="table2" runat="server">
                    <tr>
                        <th style="border-top-left-radius: 25px;">Code</th>
                        <th>Date</th>
                        <th style="border-top-right-radius: 25px;">Time</th>
                    </tr>
                </table>
                <div class="line"></div>
                <h1 class="headertext">ADD AVAILABLE APPOINTMENT TIME</h1>
                <input class="select" type="text" placeholder="DATE (MM/DD/YYYY)" id="adddate" name="adddate" runat="server" />
                <input class="select" type="text" placeholder="TIME" id="addtime" name="addtime" runat="server" />
                <a class="menuitem" onclick="addappointment()">ADD</a>
                <div class="line"></div>
                <h1 class="headertext">REMOVE AVAILABLE APPOINTMENT TIME</h1>
                <select class="select" id="codecombo2" name="codecombo2" runat="server">
                    <option>Code</option>
                </select>
                <a class="menuitem" onclick="removeavailable()">REMOVE</a>
            </section>
        </div>
    </form>
</body>
</html>
