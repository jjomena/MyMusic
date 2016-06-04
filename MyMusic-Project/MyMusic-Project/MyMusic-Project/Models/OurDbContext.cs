using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace MyMusic_Project.Models
{
    public class OurDbContext:DbContext
    {
        public DbSet<UserAccount> userAccount { get; set; }
    }
}