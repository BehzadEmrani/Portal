using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Portal.Models
{
    public class server
    {
        [Key]
        public int id { get; set; }
        public int hardware_information_id { get; set; }
        public string servername { get; set; }
        public string location { get; set; }
        public int serverrole { get; set; }
        public string model { get; set; }
        public int serialnamber { get; set; }
        public int assesttagnumber { get; set; }
        public string datepurchased { get; set; }
        public string purchaseorder { get; set; }
        public string techsuport { get; set; }

    }
}