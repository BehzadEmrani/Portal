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
    public partial class Edit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnEdit_Click(object sender, EventArgs e)



        {


            if(txtname.Text.Trim()=="" || txtlname.Text.Trim()=="" || txtni.Text.Trim() == "" || txtage.Text.Trim() == "" || txtpc.Text.Trim() == ""
                || txttn.Text.Trim() == "" || txtun.Text.Trim() == "" || txtp.Text.Trim()=="" || Textactive.Text.Trim()=="")
            {
                Label8.Text = "لطفا تمامی فیلدها را پر کنید";
                Label8.Visible = true;

            }



            else
            {

            
            var luser = new Person();

            

            luser.OldNI = OldNI.Text.Trim();

            luser.Name = txtname.Text.Trim();
            luser.LastName = txtlname.Text.Trim();
            luser.NationalId = txtni.Text.Trim();
            luser.Age = txtage.Text.Trim();
            luser.PersonalCode = txtpc.Text.Trim();
            luser.PhoneNumber = txttn.Text.Trim();
            luser.UserName = txtun.Text.Trim();
            luser.Password = txtp.Text.Trim();
            luser.Active = Textactive.Text.Trim();


                //if (Rdb_active.Checked == true)
                //{

                //    luser.Active = "true";

                //}

                //if (rdb_deactive.IsChecked == true)
                //{
                //    SearchString += SearchString += " And useractive=0";
                //}



                RecognisePersonAsync(luser);

            }


        }
        private async void RecognisePersonAsync(Person luser)
        {

            HttpClient client = new HttpClient();
            client.BaseAddress = new Uri("http://localhost/api/api/PersonCTR/");
            client.DefaultRequestHeaders.Accept.Clear();
            client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
            //var response = client.PutAsync(luser.NationalId).Result;

            var response = client.PutAsJsonAsync(luser.NationalId, luser).Result;




            if (response.IsSuccessStatusCode)
            {


                //  luser = await response.Content.ReadAsAsync<Person>();
                txtname.Text = luser.NationalId;


                OldNI.Text = "";
                txtname.Text = "";
                txtlname.Text = "";
                txtni.Text = "";
                txtage.Text = "";
                txtpc.Text = "";
                txttn.Text = "";
                txtun.Text = "";
                txtp.Text = "";
                Textactive.Text = "";

                Label8.Text = "ویرایش با موفقیت انجام شد";
                Label8.Visible = true;


            }
            else if(luser.UserName == "Repeated")
            {
                Label8.Text = "کاربر";
            }
            else
            {
                Label8.Text = "کاربر مورد نظر یافت نشد!";
                Label8.Visible = true;

            }


        exit:;

        }


    }
}