using Portal.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Portal
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_Click(object sender, EventArgs e)
        {

            var luser = new Person();


            luser.Name = txtName.Text.Trim();
            luser.LastName = txtLastName.Text.Trim();
            luser.NationalId = txtNi.Text.Trim();
            luser.Age = txtAge.Text.Trim();
            luser.PersonalCode = txtPersonId.Text.Trim();
            luser.PhoneNumber = txtTel.Text.Trim();
            luser.UserName = txtUserName.Text.Trim();
            luser.Password = txtPassword.Text.Trim();



            RecognisePersonAsync(luser);


        }
        private async void RecognisePersonAsync(Person luser)
        {


            HttpClient client = new HttpClient();
            client.BaseAddress = new Uri("http://localhost/api/");
            client.DefaultRequestHeaders.Accept.Clear();
            client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
            var response = client.PostAsJsonAsync("api/PersonCTR/", luser).Result;





            if (response.IsSuccessStatusCode)
            {


                luser = await response.Content.ReadAsAsync<Person>();
                //Label9.Text = luser.NationalId;
                //Label9.Visible = true;
                //goto exit;
                if (luser.UserName == "Repeated")
                {


                    Label8.Text = "نام کاربری تکراری";
                    Label8.Visible = true;
                    goto exit;
                }


                if (luser.NationalId == "Registerd")
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

                Label8.Visible = true;
                //txtLastName.Text = luser.LastName;
                //txtName.Text = luser.Name;

            }
            else
            {
                Label8.Text = "لطفا صحت اطلاعات شخصی خود را مجددا چک کنید";
                Label8.Visible = true;

            }


        exit:;

        }


    }
}
