using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Module1Exercise1
{
    public partial class Exercise4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            // Check if all validations pass
            if (Page.IsValid)
            {
                string FullNameValue = fullName.Text;
                string EmailValue = email.Text;
                string confirmEmailValue = confirmEmail.Text;
                string AgeValue = age.Text;
                result.Text = $"Full Name: {FullNameValue}<br />Age: {AgeValue}<br />Email: {EmailValue}<br />Confirm Email: {confirmEmailValue}";
            }
        }
    }

    
    
}