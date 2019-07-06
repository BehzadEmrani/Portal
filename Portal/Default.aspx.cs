using Portal.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Security.Cryptography;

namespace Portal
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            var luser = new User();
            Label1.Visible = false;
            luser.Name = Text1.Text.Trim();
            luser.Pass = ComputeSha256Hash(Text1.Text.Trim() + Text2.Text.Trim());
            RecogniseUserAsync(luser);
            //Text1.Text = luser.Role1.ToString() + "????" + luser.Name;
        }
        private async void RecogniseUserAsync(User luser)
        {

            //           goto Exit;
            //           using (var client = new HttpClient())
            //           {
            HttpClient client = new HttpClient();
            client.BaseAddress = new Uri("http://localhost/api/");
            client.DefaultRequestHeaders.Accept.Clear();
            client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
            var response = client.PostAsJsonAsync("api/SiteUser/", luser).Result;
            //               Button1.Text = "3";
            if (response.IsSuccessStatusCode)
            {
                luser = await response.Content.ReadAsAsync<User>();
                //                    Button1.Text = luser.Role1.ToString();// JsonConvert.DeserializeObject(data).ToString();
            }
            else
            {
                Button1.Text = "Login Failed";
            }
     //   Exit:;
            switch (luser.Role1)
            {
                case 0:
                    Label1.Visible = true;
                    Text1.Text = "";
                    break;
                case 1:
                    Panel1.Visible = false;
                    Panel2.Visible = true;
                    switch (luser.Role2)
                    {
                        case 0:
                            MenuItem a = new MenuItem();
                            a.Text = "سرورها";
                            Menu1.Items.Add(a);
                            Iframe1.Src = "Default.aspx";
                            break;
                        case 1:
                            break;
                        default:
                            break;
                    }

                    break;
                default:
                    break;
            }
        }
        static string ComputeSha256Hash(string rawData)
        {
            // Create a SHA256   
            using (SHA256 sha256Hash = SHA256.Create())
            {
                // ComputeHash - returns byte array  
                byte[] bytes = sha256Hash.ComputeHash(Encoding.UTF8.GetBytes(rawData));

                // Convert byte array to a string   
                StringBuilder builder = new StringBuilder();
                for (int i = 0; i < bytes.Length; i++)
                {
                    builder.Append(bytes[i].ToString("x2"));
                }
                return builder.ToString();
            }
        }
    }
}