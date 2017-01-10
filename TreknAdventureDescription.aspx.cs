using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TreknAdventureDescription : System.Web.UI.Page
{

    List<TreknAdventures> Projects_List = null;
    IEnumerable<TreknAdventures> XO = null;
    Button ButtonChange = null;
    public string ID_;
    string ID = "";


    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ID = Request.QueryString["ID"];
            Projects_List = SearchInData();
            StringBuilder html = new StringBuilder();

            html.Append("<div class='row'   runat='server' style='background - color: #FFF; margin-left: 15px; margin-right: 15px; margin-top: 15px; margin-bottom: 15px; padding: 15px; border-color: aquamarine; -moz-border-radius: 4px; -webkit-border-radius: 4px; border-radius: 4px; -webkit-box-shadow: 0 10px 10px 0 #C2C2C2; box-shadow: 0 10px 10px 0 #C2C2C2;'> ");
            for (int i = 0; i < Projects_List.Count(); i++)
            {
                html.Append("<div class='col-lg-4 col-md-4 col-sm-6 col-xs-12'> <img src = 'images/project_thumb/" + Projects_List[i].BigPicInner.ToString().Trim() + "' class='img-responsive img-thumbnail center-block' style='min-width:180px;min-height:180px;' />");
                html.Append("</div>");
                html.Append("<div class='col-lg-7 col-md-4 col-sm-6 col-xs-12' id='" + i + "' runat='server' style='background-color:#FFF;margin:5px;'> ");
                html.Append("<h2 class='text-center center-block'>" + Projects_List[i].Name.ToString().Trim() + "</h2>");
                html.Append("<h2 class='text-center center-block'>" + Projects_List[i].Detailed.ToString().Trim() + "</h2>");
                html.Append("<p class='text-center center-block'>" + Projects_List[i].Short_Itinerary.ToString().Trim() + "</p>");

                html.Append("</div>");


            }


            html.Append("</div>");
            webcontent.InnerHtml = html.ToString();
        }

    }


    public List<TreknAdventures> SearchInData()
    {


        SqlDataAdapter adp = new SqlDataAdapter("SELECT * FROM TreknAdventures WHERE ID='" + ID + "'", ConfigurationManager.ConnectionStrings["MagnaticKush"].ConnectionString);

        DataSet dt = new DataSet();
        try
        {

            adp.Fill(dt);

            // Convert DataSet to List
            Projects_List = new List<TreknAdventures>();
            TreknAdventures obj_Projects = null;
            for (int i = 0; i < dt.Tables[0].Rows.Count; i++)
            {
                obj_Projects = new TreknAdventures();
                obj_Projects.ID = dt.Tables[0].Rows[i]["ID"].ToString();
                obj_Projects.Name = dt.Tables[0].Rows[i]["Name"].ToString();
                obj_Projects.TrekType = dt.Tables[0].Rows[i]["TrekType"].ToString();
                obj_Projects.Overview = dt.Tables[0].Rows[i]["Overview"].ToString();
                obj_Projects.Short_Itinerary = dt.Tables[0].Rows[i]["Short_Itinerary"].ToString();
                obj_Projects.Detailed = dt.Tables[0].Rows[i]["Detailed"].ToString();
                obj_Projects.Inclusion = dt.Tables[0].Rows[i]["Inclusion"].ToString();
                obj_Projects.Exclusion = dt.Tables[0].Rows[i]["Exclusion"].ToString();
                obj_Projects.ThumbPic = dt.Tables[0].Rows[i]["ThumbPic"].ToString();
                obj_Projects.BigPicInner = dt.Tables[0].Rows[i]["BigPicInner"].ToString();
                obj_Projects.Short_Itinerary = dt.Tables[0].Rows[i]["Short_Itinerary"].ToString();
                obj_Projects.ShortDescription = dt.Tables[0].Rows[i]["ShortDescription"].ToString();
                Projects_List.Add(obj_Projects);
            }
        }
        catch (Exception ex)
        {
            throw ex;
        }
        finally
        {
            adp.Dispose();
        }


        return Projects_List;
    }
}