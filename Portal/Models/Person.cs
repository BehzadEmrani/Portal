using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Portal.Models
{
    public class Person
    {

        [Key]
        public int id { get; set; }
        public string Name { get; set; }
        public string LastName { get; set; }
        public string NationalId { get; set; }
        public string Age { get; set; }
        public string PersonalCode { get; set; }
        public string PhoneNumber { get; set; }
        public string UserName { get; set; }
        public string Password { get; set; }
        public string Active { get; set; }
        public string Iflag { get; set; }

    }
}