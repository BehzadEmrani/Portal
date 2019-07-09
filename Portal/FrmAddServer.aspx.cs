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
    public partial class FrmAddServer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            var soft = new server();
            soft.hardware_information_id = 1;
            soft.servername = txtservername.Text;
            soft.location = txtlocation.Text;
            soft.serverrole =int.Parse( txtserverrole.Text);
            soft.serialnamber = int.Parse(txtserialnamber.Text);
            soft.assesttagnumber = int.Parse(txtassesttagnumber.Text);
            soft.datepurchased = txtdatepurchased.Text;
            soft.purchaseorder = txtpurchaseorder.Text;
            soft.techsuport = txttechsuport.Text;


            RecogniseHardwareAsync(soft);

        }

        private async void RecogniseHardwareAsync(server soft)
        {

            //           goto Exit;
            //           using (var client = new HttpClient())
            //           {
            HttpClient client = new HttpClient();
            client.BaseAddress = new Uri("http://localhost:50976/");
            client.DefaultRequestHeaders.Accept.Clear();
            client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
            var response = client.PostAsJsonAsync("api/AddServer/", soft).Result;
            //               Button1.Text = "3";
            if (response.IsSuccessStatusCode)
            {
                soft = await response.Content.ReadAsAsync<server>();

            }
            else
            {
                Button2.Text = "Failure";
            }
        }

    }
}