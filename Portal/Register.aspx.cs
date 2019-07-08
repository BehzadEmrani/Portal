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
            luser.NationalId = txtNi.Text.Trim();
            luser.Age =  txtAge.Text.Trim();
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

          //  Label8.Visible = true;


            if (response.IsSuccessStatusCode)
            {
                luser = await response.Content.ReadAsAsync<Person>();

               // Label8.Visible = true;
              //  Label8.Text = "OK";
            }
            else
            {
                Button.Text = "Failure";

            }
   
            
        }


    }
}