using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace Portal.Models
{
    public class DataContext : DbContext
    {
        public DbSet<User> People { get; set; }




        public DataContext() : base("DataContext")
        {

        }
    }
}