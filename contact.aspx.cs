using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void sendmail(object sender, EventArgs e)
    {
        try
        {
            SendMail(email.Text.ToString(), message.Text.ToString(), subject.Text.ToString(), name.Text.ToString() , phone.Text.ToString());
        }
        catch (Exception ex) { };
    }
    private void SendMail(string emailid, string message, string Subject, string Name , string Phone)
    {
        MailMessage mail = new MailMessage();

        //set the addresses 
        mail.From = new MailAddress("postmaster@tsolaadventures.com"); //IMPORTANT: This must be same as your smtp authentication address.
        mail.To.Add("kushkumardhawan@gmail.com");  //postmaster@mapncompasstravel.com mapncompasstravel@gmail.com

        //set the content 
        mail.Subject = Subject;
        mail.Body = "\n \t Name:- " + Name + "\n \t Phone:- "+ Phone + "\n \t" + "Email From:" + "\t" + emailid + "\t \n \n \t" + message;
        //send the message 
        SmtpClient smtp = new SmtpClient("mail.tsolaadventures.com");

        //IMPORANT:  Your smtp login email MUST be same as your FROM address. 
        NetworkCredential Credentials = new NetworkCredential("postmaster@tsolaadventures.com", "Lebronjames_06");
        smtp.Credentials = Credentials;

        try
        {
            smtp.Send(mail);
            ScriptManager.RegisterStartupScript(this, GetType(), "TSOLA", "alert('Message Sent');", true);
        }
        catch (Exception er)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "TSOLA", "alert('" + er.Message.ToString() + "');", true);
        }
    }






}