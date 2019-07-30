using Portal.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Security.Cryptography;
using System.Text;

namespace Portal
{
    public partial class Register : System.Web.UI.Page
    {



        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Button_Click(object sender, EventArgs e)
        {


            if (txtName.Text.Trim() == "" || txtLastName.Text.Trim() == "" || txtNi.Text.Trim() == "" || txtAge.Text.Trim() == "" || txtPersonId.Text.Trim() == "" || txtTel.Text.Trim() == ""
                || txtUserName.Text.Trim() == "" || txtPassword.Text.Trim() == "")
            {
                Label8.Text = "لطفا تمامی فیلدها را پر کنید";
                Label8.Visible = true;
            }



            var luser = new Person();


            luser.Name = txtName.Text.Trim();
            luser.LastName = txtLastName.Text.Trim();
            luser.NationalId = txtNi.Text.Trim();
            luser.Age = txtAge.Text.Trim();
            luser.PersonalCode = txtPersonId.Text.Trim();
            luser.PhoneNumber = txtTel.Text.Trim();
            luser.UserName = txtUserName.Text.Trim();
            luser.Password = txtPassword.Text.Trim();
            ////////luser.Password = ComputeSha256Hash(txtPassword.Text.Trim());


            RecognisePersonAsync(luser);


        }
        private async void RecognisePersonAsync(Person luser)
        {


            HttpClient client = new HttpClient();
            client.BaseAddress = new Uri("http://localhost/api/");
            client.DefaultRequestHeaders.Accept.Clear();
            client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
            var response = client.PostAsJsonAsync("api/PersonCTR/", luser).Result;


            if (txtName.Text.Trim() == "" || txtLastName.Text.Trim() == "" || txtNi.Text.Trim() == "" || txtAge.Text.Trim() == "" || txtPersonId.Text.Trim() == "" || txtTel.Text.Trim() == ""
                || txtUserName.Text.Trim() == "" || txtPassword.Text.Trim() == "")
            {
                Label8.Text = "لطفا تمامی فیلدها را پر کنید";
                Label8.Visible = true;
            }

         else   if (response.IsSuccessStatusCode)
            {


                luser = await response.Content.ReadAsAsync<Person>();

                if (luser.UserName == "Repeated")
                {


                    Label8.Text = "نام کاربری تکراری";
                    Label8.Visible = true;
                    goto exit;
                }


                if (luser.UserName == "Registered")
                {

                    Label8.Text = "این کاربر قبلا ثبت شده است";
                    Label8.Visible = true;
                    goto exit;
                }

                txtName.Text = "";
                txtLastName.Text = "";
                txtNi.Text = "";
                txtAge.Text = "";
                txtPersonId.Text = "";
                txtTel.Text = "";
                txtUserName.Text = "";
                txtPassword.Text = "";

                Label8.Text = "ثبت نام با موفقیت انجام شد";
                Label8.Visible = true;


            }


            else
            {
                Label8.Text = "لطفا صحت اطلاعات شخصی خود را مجددا چک کنید";
                Label8.Visible = true;

            }


        exit:;

        }

        //////////static string ComputeSha256Hash(string rawData)
        //////////{
        //////////    // Create a SHA256   
        //////////    using (SHA256 sha256Hash = SHA256.Create())
        //////////    {
        //////////        // ComputeHash - returns byte array  
        //////////        byte[] bytes = sha256Hash.ComputeHash(Encoding.UTF8.GetBytes(rawData));

        //////////        // Convert byte array to a string   
        //////////        StringBuilder builder = new StringBuilder();
        //////////        for (int i = 0; i < bytes.Length; i++)
        //////////        {
        //////////            builder.Append(bytes[i].ToString("x2"));
        //////////        }
        //////////        return builder.ToString();
        //////////    }
        //////////}


    }
}