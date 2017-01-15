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
            for (int i = 0; i < Projects_List.Count(); i++)
            {
            
    
                //OverView and Image
                html.Append("<div class='welcome' style='margin-top:20px;'><div class='welcome-main'> <div class='col-md-7 welcome-left'><div style = 'padding:10px;'><p><strong style='color: yellow; font-size: large;'> " + Projects_List[i].Name.ToString().Trim()+ "</strong></p>");
                html.Append("<p>" + Projects_List[i].Overview.ToString().Trim() + "</p>");
                html.Append("</div></div>");

                html.Append("<div class='col-md-5 welcome-left'><div style='padding:15px;'> <img class='img-thumbnail' style='max-height:350px; ' src = 'images/trekking/ThumbPic/" + Projects_List[i].BigPicInner.ToString().Trim() +"'" );
                html.Append("</div>");
                html.Append("</div>");
                html.Append("</div>");

                //Itenery Short and Long
                html.Append("<div class='trip' style='margin-bottom:10px;'>");
                html.Append(" <div class='trip-main'>");
                html.Append("<div class='col-md-6 trip-left pre-scrollable' style='padding: 20px;'>");
                html.Append("<div class='row'>");
                html.Append("<div class='col-md-12'>");
                html.Append("<p class='col-md-12 center-block'><strong style = 'color: yellow; font-size: large;'>" + "<p>Short Itinerary</p>" + "</strong></p>");
                html.Append("</div>");
                html.Append("</div>");
                html.Append("<hr />");
                if (Projects_List[i].Short_Itinerary.ToString().Trim().Length!=0)
                {
                    html.Append(Projects_List[i].Short_Itinerary.ToString().Trim());
                }else
                {
                    html.Append("<p class='col-md-12 center-block'><strong style = 'color: yellow; font-size: large;'>" + "<p>Nothing To Show.</p>" + "</strong></p>");
                }
                html.Append(Projects_List[i].ShortDescription.ToString().Trim());
                html.Append("</div>");


                html.Append("<div class='col-md-6 trip-right pre-scrollable' style='padding: 20px;'>");
                html.Append(" <p><strong style='color:black; font-size: x-large;'>The Complete Itinerary</strong></p>");
                html.Append("<div class='list-group' style='margin-top: 10px; marginbottom:10px;'>");
                html.Append(Projects_List[i].Detailed.ToString().Trim());
                html.Append("</div>");
                html.Append("</div>");
                html.Append("<div class='clearfix'></div></div></div>");

                //Image Galaary
                html.Append("<div class='nemo container nemo-main' style='font-size:0;'>");
                html.Append("<ul id='rig'>");

                html.Append("<li>");
                html.Append("<a href='images/trekking/" + Projects_List[i].ImageOne.ToString().Trim() + "' class='rig-cell'>");
                html.Append("<img class='rig-img'  src='images/trekking/" + Projects_List[i].ImageOne.ToString().Trim() + "'"); 
                html.Append("</img>");
                html.Append("</a>");
                html.Append("</li>");

                html.Append("<li>");
                html.Append("<a href='images/trekking/" + Projects_List[i].ImageTwo.ToString().Trim() + "' class='rig-cell'>");
                html.Append("<img class='rig-img'  src='images/trekking/" + Projects_List[i].ImageTwo.ToString().Trim() + "'");
                html.Append("</img>");
                html.Append("</a>");
                html.Append("</li>");

                html.Append("<li>");
                html.Append("<a href='images/trekking/" + Projects_List[i].ImageThree.ToString().Trim() + "' class='rig-cell'>");
                html.Append("<img class='rig-img'  src='images/trekking/" + Projects_List[i].ImageThree.ToString().Trim() + "'");
                html.Append("</img>");
                html.Append("</a>");
                html.Append("</li>");

                html.Append("<li>");
                html.Append("<a href='images/trekking/" + Projects_List[i].ImageFour.ToString().Trim() + "' class='rig-cell'>");
                html.Append("<img class='rig-img'  src='images/trekking/" + Projects_List[i].ImageFour.ToString().Trim() + "'");
                html.Append("</img>");
                html.Append("</a>");
                html.Append("</li>");

                html.Append("<li>");
                html.Append("<a href='images/trekking/" + Projects_List[i].ImageFive.ToString().Trim() + "' class='rig-cell'>");
                html.Append("<img class='rig-img'  src='images/trekking/" + Projects_List[i].ImageFive.ToString().Trim() + "'");
                html.Append("</img>");
                html.Append("</a>");
                html.Append("</li>");

                html.Append("<li>");
                html.Append("<a href='images/trekking/" + Projects_List[i].ImageSix.ToString().Trim() + "' class='rig-cell'>");
                html.Append("<img class='rig-img'  src='images/trekking/" + Projects_List[i].ImageSix.ToString().Trim() + "'");
                html.Append("</img>");
                html.Append("</a>");
                html.Append("</li>");


                html.Append("<li>");
                html.Append("<a href='images/trekking/" + Projects_List[i].ImageSeven.ToString().Trim() + "' class='rig-cell'>");
                html.Append("<img class='rig-img'  src='images/trekking/" + Projects_List[i].ImageSeven.ToString().Trim() + "'");
                html.Append("</img>");
                html.Append("</a>");
                html.Append("</li>");


                html.Append("<li>");
                html.Append("<a href='images/trekking/" + Projects_List[i].ImageEight.ToString().Trim() + "' class='rig-cell'>");
                html.Append("<img class='rig-img'  src='images/trekking/" + Projects_List[i].ImageEight.ToString().Trim() + "'");
                html.Append("</img>");
                html.Append("</a>");
                html.Append("</li>");

                html.Append("</ul>");
                html.Append("</div>");




                //Inclusion and Exclusion
                html.Append("<div class='nemo'>");
                html.Append("<div class='container'>");
                html.Append("<div class='nemo-main'>");
                
                html.Append("<div class='col-md-6 nemo-left ' style='padding: 10px; ' >");
                html.Append(" <p><strong style='color: darkgreen; font - size: large; '>Cost Includes</strong></p>");
                html.Append("<ul class='list-group'>");
                html.Append(Projects_List[i].Inclusion.ToString().Trim());
                html.Append("</ul></div>");

                html.Append("<div class='col-md-6 nemo-left ' style='padding: 10px; ' >");
                html.Append(" <p><strong style='color: red; font - size: large; '>Cost Excludes</strong></p>");
                html.Append("<ul class='list-group'>");
                html.Append(Projects_List[i].Exclusion.ToString().Trim());
                html.Append("</ul></div>");




                html.Append("<div class='clearfix'></div></div></div>");
                html.Append("</div>");
                html.Append("</div>");
                html.Append("</div>");









            }

            
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
                obj_Projects.ImageOne = dt.Tables[0].Rows[i]["ImageOne"].ToString();
                obj_Projects.ImageTwo = dt.Tables[0].Rows[i]["ImageTwo"].ToString();
                obj_Projects.ImageThree = dt.Tables[0].Rows[i]["ImageThree"].ToString();
                obj_Projects.ImageFour = dt.Tables[0].Rows[i]["ImageFour"].ToString();
                obj_Projects.ImageFive = dt.Tables[0].Rows[i]["ImageFive"].ToString();
                obj_Projects.ImageSix = dt.Tables[0].Rows[i]["ImageSix"].ToString();
                obj_Projects.ImageSeven = dt.Tables[0].Rows[i]["ImageSeven"].ToString();
                obj_Projects.ImageEight = dt.Tables[0].Rows[i]["ImageEight"].ToString();
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