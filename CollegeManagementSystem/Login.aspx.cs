﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CollegeManagementSystem
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {

        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
        }

        protected void Login1_Authenticate1(object sender, AuthenticateEventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}