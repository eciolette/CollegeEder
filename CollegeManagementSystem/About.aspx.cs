using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace CollegeManagementSystem
{
    public partial class NewStudents : System.Web.UI.Page
    {
        string ConnectionString = "Server=INSTRUCTORIT; Database=CollegeEder; User Id=ProfileUser; Password=ProfileUser2019";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            SqlConnection myConnection = new SqlConnection(ConnectionString);

            try
            {
                myConnection.Open();

                SqlCommand myCommand = new SqlCommand();

                string mySql = "INSERT INTO Students (FirstName, LastName, BirthDate, EmailAddr, Country)" +
        "VALUES (@FirstName, @LastName, @BirthDate, @EmailAddr, @Country)";
                myCommand.Parameters.AddWithValue("@FirstName", txtFirstName.Text);
                myCommand.Parameters.AddWithValue("@LastName", txtLastName.Text);
                myCommand.Parameters.AddWithValue("@BirthDate", txtBirthDate.Text);
                myCommand.Parameters.AddWithValue("@EmailAddr", txtEmailAddr.Text);
                myCommand.Parameters.AddWithValue("@Country", txtCountry.Text);

                myCommand.Connection = myConnection;
                myCommand.CommandText = mySql;

                myCommand.ExecuteNonQuery();


                Response.Redirect("Default.aspx");
            }
            catch (Exception ex)
            {

            }
            finally
            {
                if (myConnection.State == System.Data.ConnectionState.Open)
                {
                    myConnection.Close();
                }
            }
        }
    }
}