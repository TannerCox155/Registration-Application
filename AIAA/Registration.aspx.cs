using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

namespace Cox_AIAA_Registration.AIAA
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            Page.MaintainScrollPositionOnPostBack = true;
            txtFirstName.Focus();
        }

        //References-> Microsoft ActiveX Data Objects 6.1 library (Needed for ADODB)
        protected bool AddRegistration() 
        {
            //try {

            //Connection to database
            ADODB.Connection objConnect = new ADODB.Connection();
            ADODB.Recordset objRS = new ADODB.Recordset();

            string strConnection = System.Configuration.ConfigurationManager.AppSettings["ConnectionStringProvider"];
            string SQL = "SELECT * FROM [Registrations];";

            //Open the connection
            objConnect.Open(strConnection);
            objRS.Open(SQL, objConnect, ADODB.CursorTypeEnum.adOpenStatic, ADODB.LockTypeEnum.adLockOptimistic);

            //Add Registration record
            objRS.AddNew();

            objRS.Fields["RegistrationID"].Value = Guid.NewGuid().ToString();

            objRS.Fields["First_Name"].Value = txtFirstName.Text;
            objRS.Fields["Last_Name"].Value = txtLastName.Text;

            objRS.Fields["Job_Title"].Value = txtJobTitle.Text;
            objRS.Fields["Company_Name"].Value = txtCompanyName.Text;

            objRS.Fields["Address"].Value = txtAddress.Text;
            objRS.Fields["City"].Value = txtCity.Text;
            objRS.Fields["State"].Value = txtState.Text;
            objRS.Fields["Zip"].Value = txtZip.Text;

            objRS.Fields["Phone_Number"].Value = txtPhone.Text;
            objRS.Fields["Email"].Value = txtEmail.Text;

            objRS.Fields["Conference_Rate"].Value = optRegOptions.SelectedValue; //Store the rate
            //objRS.Fields["Conference_Workshop"].Value =optRegOptions.SelectedItem.ToString(); //Store event item/string

            //objRS.Fields["Activities_Rate"].Value = optActivities.SelectedValue.ToString(); //Store the rate
            //objRS.Fields["Activities_Event"].Value = optActivities.SelectedItem.ToString(); //Store the event chosen

            //objRS.Fields["total_Amount_Due"].Value = getTotal();

            //objRS.Fields["Dietary_Request"].Value = lstLunch.SelectedValue.ToString();

            //objRS.Fields["Food_Allergy"].Value = txtAllergy.Text;
            //objRS.Fields["DateTimeCreated"].Value = DateTime.Now;

            //Save record to the database
            objRS.Update();

            //Close the connection to the database
            objRS.Close();
            objConnect.Close();

            //Destroy objects
            objRS = null;
            objConnect = null;

            return true;
            //}

            //catch {return false;}
        }

        protected int getTotal() //if no activities are chosen default value is 0 else add to total
        {
            //Conference Fee
            string confValue = optRegOptions.SelectedValue;
            int confFee = int.Parse(confValue);

            if (optActivities == null)
            {
                return confFee;
            }

            else
            {
                //Activity Fee
                string actValue = optActivities.SelectedValue;
                int actFee = int.Parse(actValue);

                return confFee + actFee;
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                
                if(AddRegistration() == true)
                {
                    Response.Redirect("ThankYou.aspx");
                }

                else
                {
                    Response.Redirect("Error.aspx");
                }
            }
        }
    }
}