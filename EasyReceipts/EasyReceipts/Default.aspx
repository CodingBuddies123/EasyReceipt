<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ReceiptFriend.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />    
    <link href="Content/navbar.css" rel="stylesheet" />
    <script src="Scripts/jquery-1.9.1.js"></script>
    <script src="Scripts/jquery-1.9.1.min.js"></script>
    <script src="Scripts/jquery-1.9.1.intellisense.js"></script>
</head>
<body>

  
    <form id="form1" runat="server">
        <div class="container">

            <div class="jumbotron">
                <div class="text-center">

                    <h1>easy receipts</h1>

                </div>
            </div>
        </div>
        <div class="center-block col-lg-pull-2" style="float: none;">


            <div class="container">
                <div class="row">
                    <div class="col-md-4 col-md-offset-4">
                        <div class="panel panel-default">
                            <div class="panel-body" runat="server">
                                Login<fieldset runat="server">
                                    <br />
                                    <div class="form-group">

                                        <input class="form-control" placeholder="yourmail@example.com" name="email" type="text" size="10" />
                                    </div>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" placeholder="Password" type="password" ID="thePassword" runat="server" />
                                    </div>
                                    <div class="checkbox">
                                        <label>
                                            <input name="remember" type="checkbox" value="Remember Me" runat="server" />
                                            Remember Me
                                        </label>
                                    </div>
                                    <%--THIS IS HOW TO CREATE A BUTTON WITH BOOTSTRAP THAT TALKS TO METHOD IN C#--%>
                                    <asp:LinkButton runat="server" ID="SubmitLinkButton"
                                        CssClass="btn btn-default"
                                        OnClick="Do_Something">
                                    Log In</asp:LinkButton>



                                    <br />
                                    <br />
                                    <asp:LinkButton CssClass="btn btn-success" runat="server" ID="btn_Register">Register</asp:LinkButton>




                                </fieldset>

                                <hr />



                            </div>



                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>


</body>



</html>
