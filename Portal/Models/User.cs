﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace Portal.Models
{
    public class User
    {
        [Key]
        public long User_ID { get; set; }
        public long Person_ID { get; set; }
        public string Name { get; set; }
        public string Pass { get; set; }
        public int Role1 { get; set; }
        public int Role2 { get; set; }
        public bool Active { get; set; }
    }
}