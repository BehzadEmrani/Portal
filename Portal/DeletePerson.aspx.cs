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
    public partial class DeletePerson : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }


        protected void Editbtn_Click(object sender, EventArgs e)
        {

            var luser = new Person();
            luser.NationalId = txtni.Text.Trim();

            RecognisePersonAsync(luser);

        }
        private  void RecognisePersonAsync(Person luser)
        {

            HttpClient client = new HttpClient();
            client.BaseAddress = new Uri("http://localhost/api/api/PersonCTR/");
            client.DefaultRequestHeaders.Accept.Clear();
            client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
            var response = client.DeleteAsync(luser.NationalId).Result;



            if (response.IsSuccessStatusCode)
            {

                txtni.Text = "";

                lbl8.Visible = true;

            }

            else
            {
                lbl8.Text = "این کاربر تاکنون ثبت نشده است.";
                lbl8.Visible = true;
            }

        //exit:;

        }

    }
}