<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="JacobHew.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>JACOB HEW</title>
    <link rel="stylesheet" href="styles/default.css" type="text/css" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="scripts/default.js" type="text/javascript"></script>
    <script src="https://kit.fontawesome.com/1bf5bf7ba9.js" crossorigin="anonymous"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="section">
                <header class="header">
                    <div class="headeritems">
                        <h1 class="headertext" onclick="location.reload()" style="cursor: pointer">JACOB <span style="color: white">HEW</span></h1>
                        <div class="menucontainer">
                            <a class="menuitem" href="#appointment">APPOINTMENT</a>
                            <a class="menuitem" href="#announcement">ANNOUNCEMENTS</a>
                            <a class="menuitem" href="#social">SOCIAL</a>
                        </div>
                    </div>
                    <img class="image" src="styles/1.jpg" />
                    <div class="hiddenmenucontainer">
                        <a class="menuitem" href="#appointment">APPOINTMENT</a>
                        <a class="menuitem" href="#announcement">ANNOUNCEMENTS</a>
                        <a class="menuitem" href="#social">SOCIAL</a>
                    </div>
                </header>
                <header class="header2">
                    <nav class="navbar">

                        <a href="#Default.aspx" class="nav-branding">JACOB <span style="color: rgba(233,158,91,255)">HEW</span></a>

                        <ul id="nav-menu" class="nav-menu">

                            <li class="nav-item">
                                <a href="#appointment" class="nav-link">APPOINTMENT</a>
                            </li>

                            <li class="nav-item">
                                <a href="#announcement" class="nav-link">ANNOUNCEMENTS</a>
                            </li>

                            <li class="nav-item">
                                <a href="#social" class="nav-link">SOCIAL</a>
                            </li>

                        </ul>

                        <div id="hamburger" class="hamburger" onclick="f()">

                            <span class="bar"></span>
                            <span class="bar"></span>
                            <span class="bar"></span>

                        </div>

                    </nav>
                </header>
                <img class="image2" src="styles/1.jpg" />
                <h1 id="appointment" style="margin-top: 50px; margin-bottom: 10px;" class="headertext">APPOINTMENTS</h1>

                <div class="appointment">
                    <table class="table" id="table" name="table" runat="server">
                        <tr>
                            <th style="border-top-left-radius: 25px;">Code</th>
                            <th>Date</th>
                            <th style="border-top-right-radius: 25px;">Time</th>
                        </tr>
                    </table>

                    <div class="selectcontainer">
                        <select class="select" id="servicecombo" name="servicecombo" runat="server">
                            <option>SELECT A SERVICE</option>
                            <option>Haircut Only ($30.00, 1hr)</option>
                            <option>Haircut & Beard (Price Varies, 1hr)</option>
                            <option>Full Package ($40.00, 3hrs)</option>
                        </select>
                        <select class="select" id="codecombo" name="codecombo" runat="server">
                            <option>APPOINTMENT CODE</option>
                        </select>
                        <input type="text" class="select" placeholder="Fullname" id="nametxt" name="nametxt" runat="server" />
                        <input style="padding-right: 40px;" type="text" class="select" placeholder="Phone Number" id="numbertxt" name="numbertxt" runat="server" />
                        <input style="padding-right: 40px;" type="text" class="select" placeholder="Notes (Optional)" id="notestxt" name="notestxt" runat="server" />
                    </div>
                </div>
                <div style="display: flex; align-items: center; justify-content: center;" class="buttoncontainer">
                    <a style="margin-top: 40px;" class="menuitem" onclick="submit()">Submit</a>
                </div>
                <h1 id="announcement" style="margin-top: 50px; margin-bottom: 10px;" class="headertext">ANNOUNCEMENTS</h1>
                <div class="announcements">
                    <p class="text">NEW VIDEO OUT NOW.</p>
                    <div class="line"></div>
                    <p class="text">NEW VIDEO OUT SOON.</p>
                    <div class="line"></div>
                    <p class="text">SOMETHING HUGE IS COMING. STAY TUNED.</p>
                </div>
                <h1 id="social" style="margin-top: 50px; margin-bottom: 10px;" class="headertext">SOCIAL</h1>
                <div class="social">
                    <a class="menuitem" href="https://www.instagram.com/hewskifades/"><i class="fa-brands fa-instagram"></i>&nbsp INSTAGRAM</a>
                    <a class="menuitem" href="https://open.spotify.com/user/8pzci8upzzq46tq2tc1v7mqiy?si=WHyoe8R8SGeMmL_qPVnQrw&nd=1"><i class="fa-brands fa-spotify"></i>&nbsp SPOTIFY</a>
                    <a class="menuitem" href="http://www.tiktok.com/@hewskifades"><i class="fa-brands fa-tiktok"></i>&nbsp TIKTOK</a>
                    <a class="menuitem" href="https://www.snapchat.com/add/hewjacob?share_id=QzE1QTdB&locale=en_CA"><i class="fa-brands fa-snapchat"></i>&nbsp SNAPCHAT</a>
                </div>
            </div>
            <footer class="footer">
                <p class="text" style="font-size: 25px;">THIS PAGE IS JUST A SAMPLE AND NOT JACOB HEW' OFFICIAL WEBSITE.</p>
            </footer>
        </div>
    </form>
</body>
</html>
