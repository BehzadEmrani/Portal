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
    public partial class DeleteUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Button_Click(object sender, EventArgs e)
        {

            var luser = new Person();

            luser.NationalId = txtNi.Text.Trim();
         

            RecognisePersonAsync(luser);


        }
        private async void RecognisePersonAsync(Person luser)
        {


            HttpClient client = new HttpClient();
            client.BaseAddress = new Uri("http://localhost/api/");
            client.DefaultRequestHeaders.Accept.Clear();
            client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
            var response = client.PostAsJsonAsync("api/Delctrl/", luser).Result;




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

                txtNi.Text = "";

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