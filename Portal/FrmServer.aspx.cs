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
    public partial class FrmServer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            var software = new hardware_information();
            software.number =int.Parse( txtnumber.Text);
            software.model = txtmodel.Text;
            software.purchasedate = txttolid.Text;
            software.purchaseorder = txtsefaresh.Text;
            software.model = txtmodel.Text;
            software.warrantyexpirationdate = txtengheza.Text;
            software.techsuportinfo = txtposhtibani.Text;
            software.os = txtos.Text;
            software.ram = txtram.Text;
            software.cpu = txtcpu.Text;
            software.cpuspeed =int.Parse( txtspeedcpu.Text);
            software.harddrive = txthard.Text;
            software.videocard = txtvideocard.Text;
            software.soundgraphic = txtvoisecard.Text;
            software.monitor = txtmonitor.Text;



            RecogniseHardwareAsync(software);
           
        }

        private async void RecogniseHardwareAsync(hardware_information software)
        {

            //           goto Exit;
            //           using (var client = new HttpClient())
            //           {
            HttpClient client = new HttpClient();
            client.BaseAddress = new Uri("http://localhost:50976/");
            client.DefaultRequestHeaders.Accept.Clear();
            client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
            var response = client.PostAsJsonAsync("api/AddHardware/", software).Result;
            //               Button1.Text = "3";
            if (response.IsSuccessStatusCode)
            {
                software = await response.Content.ReadAsAsync<hardware_information>();
               
            }
            else
            {
                Button2.Text = "Failure";
            }     
        }

      

    }
}