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

public partial class Trekking : System.Web.UI.Page
{

    List<TreknAdventures> TreknAdventures_List = null;
    IEnumerable<TreknAdventures> TreknAdventures_List_XO = null;
    Button ButtonChange = null;
    public string ID_;
    string ID = "";


    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            TreknAdventures_List = SearchInData();
            StringBuilder html = new StringBuilder();
            TreknAdventureListUI.DataSource = TreknAdventures_List;
            TreknAdventureListUI.DataBind();

        }

    }

    public List<TreknAdventures> SearchInData()
    {


        SqlDataAdapter adp = new SqlDataAdapter("SELECT * FROM TreknAdventures", ConfigurationManager.ConnectionStrings["MagnaticKush"].ConnectionString);

        DataSet dt = new DataSet();
        try
        {
            adp.Fill(dt);
            // Convert DataSet to List
            TreknAdventures_List = new List<TreknAdventures>();
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
                obj_Projects.ShortDescription = dt.Tables[0].Rows[i]["ShortDescription"].ToString();
                TreknAdventures_List.Add(obj_Projects);
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


        return TreknAdventures_List;
    }
}