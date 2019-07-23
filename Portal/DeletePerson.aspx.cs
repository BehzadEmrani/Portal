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


            //luser.Name = txtn.Text.Trim();
            //luser.LastName = txtln.Text.Trim();
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


                //luser = await response.Content.ReadAsAsync<Person>();
                lblt.Text = luser.NationalId;// luser.NationalId;
                lblt.Visible = true;
                ////goto exit;
                if (luser.NationalId == "UnKnown")
                {


                    lbl8.Text = "این شخص وجود ندارد";
                    lbl8.Visible = true;
                    goto exit;
                }


                if (luser.NationalId == "UnKnowni")
                {

                    lbl8.Text = "این کاربر قبلا ثبت شده است";
                    lbl8.Visible = true;
                    goto exit;
                }

              
                txtni.Text =luser.Active+"????";

                lbl8.Visible = true;
               

            }
            else
            {
                lbl8.Text = "لطفا صحت اطلاعات شخصی خود را مجددا چک کنید";
                lbl8.Visible = true;

            }


        exit:;

        }


    }
}