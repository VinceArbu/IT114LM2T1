using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Module1Exercise1
{
    public partial class Exercise3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // TODO 3.3 Set the text value of the finalGrade label to "Submit your grade percentage to see your final grade!". Watch out for post backs
            if (!IsPostBack)
            {
                TxtfinalGrade.Text = "Please click submit to view your final grade";
            }
            else
            {
                TxtfinalGrade.Text = "Your Final Grade is: ";
            }
        }

        protected void CalculateButton_Click(object sender, EventArgs e)
        {
            double percentageGradeValue = double.Parse(percentageGrade.Text);

            // Check if the grade is 1.00
            if (percentageGradeValue == 100)
            {
                // Display a JavaScript alert with a congratulatory message
                string script = "alert('Congratulations! You scored a perfect grade!');";
                ClientScript.RegisterStartupScript(this.GetType(), "CongratulationsAlert", script, true);
            }
            else if (percentageGradeValue >= 96.00)
            {
                percentageGradeValue = 1.00;
            }
            else if (percentageGradeValue >= 91.51)
            {
                percentageGradeValue = 1.25;
            }
            else if (percentageGradeValue >= 87.01 && percentageGradeValue <= 91.50)
            {
                percentageGradeValue = 1.50;
            }
            else if (percentageGradeValue >= 82.51 && percentageGradeValue <= 87.00)
            {
                percentageGradeValue = 1.75;
            }
            else if (percentageGradeValue >= 78.01 && percentageGradeValue <= 82.50)
            {
                percentageGradeValue = 2.00;
            }
            else if (percentageGradeValue >= 73.51 && percentageGradeValue <= 78.00)
            {
                percentageGradeValue = 2.25;
            }
            else if (percentageGradeValue >= 69.01 && percentageGradeValue <= 73.50)
            {
                percentageGradeValue = 2.50;
            }
            else if (percentageGradeValue >= 64.51 && percentageGradeValue <= 69.00)
            {
                percentageGradeValue = 2.75;
            }
            else if (percentageGradeValue >= 60.00 && percentageGradeValue <= 64.50)
            {
                percentageGradeValue = 3.00;
            }
            else
            {
                percentageGradeValue = 5.00;
            }

            finalGrade.Text = percentageGradeValue.ToString();

        }
    }
}