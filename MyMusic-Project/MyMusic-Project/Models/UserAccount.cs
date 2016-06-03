using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace MyMusic_Project.Models
{
    public class UserAccount
    {
        [Key]
        public int UserID { get; set; }

        [Required(ErrorMessage = "First Name is requiered.")]
        public string FirstName { get; set; }

        [Required(ErrorMessage = "Last Name is requiered.")]
        public string LastName { get; set; }

        [Required(ErrorMessage = "Email is requiered.")]
        public string Email { get; set; }

        [Required(ErrorMessage = "Username is requiered.")]
        public string Username { get; set; }

        [Required(ErrorMessage = "Password is requiered.")]
        [DataType(DataType.Password)]
        public string Password { get; set; }

        [Compare("Password", ErrorMessage = "Please confirm your password")]
        [DataType(DataType.Password)]
        public string ConfirmPassword { get; set; }
    }

}