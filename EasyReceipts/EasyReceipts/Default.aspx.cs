﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EasyReceipts.Data;
using System.Data.SqlClient;
using System.Web.DataAccess;

namespace ReceiptFriend
{
    public partial class Default : System.Web.UI.Page
    {

       //test

        
          
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void Do_Something(object sender, EventArgs e)
        {
            string userName = user.Value;
            string pwd = thePassword.Text;

        

            string connectionToDB = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\20904\Documents\GitHub\EasyReceipt\EasyReceipts\EasyReceipts\App_Data\testDB.mdf;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework";

            dbStoredProc createUser = new dbStoredProc(new SqlConnection(connectionToDB));
            
            createUser.Set_COMMAND("prLoginCreate");
            createUser.ADD_INPUT_PARAMATER("@user",System.Data.SqlDbType.VarChar,userName,-1);
            createUser.ADD_INPUT_PARAMATER("@password", System.Data.SqlDbType.VarChar, pwd, -1);
            createUser.ADD_INPUT_PARAMATER("@id", System.Data.SqlDbType.Int, 3);
            createUser.EXECUTE_COMMAND();
          

            

               
           
        }

    }
}