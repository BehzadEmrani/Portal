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
    public partial class EditP1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnEdit_Click(object sender, EventArgs e)

        {

            var luser = new Person();
            luser.NationalId = OldNI.Text.Trim();
            RecognisePersonAsync(luser);

        }

        private async void RecognisePersonAsync(Person luser)
        {

            HttpClient client = new HttpClient();
            client.BaseAddress = new Uri("http://localhost/api/api/PersonCTR/");
            client.DefaultRequestHeaders.Accept.Clear();
            client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));

            var response = client.GetAsync(luser.NationalId).Result;



            if (OldNI.Text.Trim() == "")
            {
                Label8.Text = "لطفا شماره ملی  کاربر مورد نظر را وارد کنید";
                Label8.Visible = true;
            }

            else if (response.IsSuccessStatusCode)
            {
                luser = await response.Content.ReadAsAsync<Person>();
                txtname.Text = luser.Name;
                txtlname.Text = luser.LastName;
                txtni.Text = luser.NationalId;
                txtage.Text = luser.Age;
                txtpc.Text = luser.PersonalCode;
                txttn.Text = luser.PhoneNumber;
                txtun.Text = luser.UserName;
                txtp.Text = luser.Password;
                Mylabel.Text = luser.Person_ID.ToString();
                if(luser.Active)
                {
                    RDB1.Items[0].Selected = true;
                }
                else
                {
                    RDB1.Items[1].Selected = true;
                }

                //Textactive.Text = luser.Active;





                Labeltozih.Visible = false;
                OldNI.Visible = false;
                btnEdit.Visible = false;


                Labeln.Visible = true;
                txtname.Visible = true;
                Labelln.Visible = true;
                txtlname.Visible = true;
                Labelni.Visible = true;
                txtni.Visible = true;
                Labelage.Visible = true;
                txtage.Visible = true;
                Labelpc.Visible = true;
                txtpc.Visible = true;
                Labeltn.Visible = true;
                txttn.Visible = true;
                Labelun.Visible = true;
                txtun.Visible = true;
                Labelp.Visible = true;
                txtp.Visible = true;
                //Labelactive.Visible = true;
                //Textactive.Visible = true;
                btnreg.Visible = true;

                RDB1.Visible = true;


            }
            else
            {
                Label8.Text = "این کاربر تاکنون ثبت نشده است.";
                Label8.Visible = true;
            }

        exit:;




        }




        protected void btnreg_Click(object sender, EventArgs e)

        {

            if (txtname.Text.Trim() == "" || txtlname.Text.Trim() == "" || txtni.Text.Trim() == "" || txtage.Text.Trim() == "" || txtpc.Text.Trim() == ""
                || txttn.Text.Trim() == "" || txtun.Text.Trim() == "" || txtp.Text.Trim() == "")
            {
                Label8.Text = "لطفا تمامی فیلدها را پر کنید";
                Label8.Visible = true;
            }


            else
            {





                var luser = new Person();

                //if (luser.UserName == "Repeated")
                //{
                //    Label8.Text = "نام کاربری یا کد ملی تکراری است.";
                //    Label8.Visible = true;
                //}

                //else
                //{
                    luser.OldNI = OldNI.Text.Trim();

                    luser.Name = txtname.Text.Trim();
                    luser.LastName = txtlname.Text.Trim();
                    luser.NationalId = txtni.Text.Trim();
                    luser.Age = txtage.Text.Trim();
                    luser.PersonalCode = txtpc.Text.Trim();
                    luser.PhoneNumber = txttn.Text.Trim();
                    luser.UserName = txtun.Text.Trim();
                    luser.Password = txtp.Text.Trim();
                luser.Person_ID = Convert.ToInt32(Mylabel.Text);
                if (RDB1.Items[0].Selected)
                { luser.Active = true;
                }
                else
                {
                    luser.Active = false;
                }

                //luser.Active = Textactive.Text.Trim();

                Recognise(luser);
                //}

            }


        }
        private async void Recognise(Person luser)
        {
            //Label8.Text = luser.OldNI;
            //Label8.Visible = true;
            //goto exit;
            HttpClient client = new HttpClient();
            client.BaseAddress = new Uri("http://localhost/api/");
            client.DefaultRequestHeaders.Accept.Clear();
            client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));

            var response = client.PutAsJsonAsync("api/PersonCTR/", luser).Result;




            if (response.IsSuccessStatusCode)
            {


                luser = await response.Content.ReadAsAsync<Person>();


                OldNI.Text = "";
                txtname.Text = "";
                txtlname.Text = "";
                txtni.Text = "";
                txtage.Text = "";
                txtpc.Text = "";
                txttn.Text = "";
                txtun.Text = "";
                txtp.Text = "";
                //Textactive.Text = "";

                Label8.Text = "ویرایش با موفقیت انجام شد";
                Label8.Visible = true;




                Labeln.Visible = false;
                txtname.Visible = false;
                Labelln.Visible = false;
                txtlname.Visible = false;
                Labelni.Visible = false;
                txtni.Visible = false;
                Labelage.Visible = false;
                txtage.Visible = false;
                Labelpc.Visible = false;
                txtpc.Visible = false;
                Labeltn.Visible = false;
                txttn.Visible = false;
                Labelun.Visible = false;
                txtun.Visible = false;
                Labelp.Visible = false;
                txtp.Visible = false;
                //Labelactive.Visible = false;
                //Textactive.Visible = false;

                RDB1.Visible = false;

                btnEdit.Visible = true;

                btnreg.Visible = false;
                OldNI.Visible = true;
                btnEdit.Visible = true;


            }
            else
            {
                Label8.Text = "خطایی رخ داده است";
            }
           
if (luser.UserName=="Repeated National Id" || luser.UserName == "Repeated UserName")
            {
        //exit:;
           Label8.Text= luser.UserName;
            Label8.Visible = true;
        }
        }







    }
}