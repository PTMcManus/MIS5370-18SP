using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace MIS5370_18SP
{
    public partial class G2Inventory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click1(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection("Data Source=mis5370.database.windows.net;Initial Catalog=mis5370;Persist Security Info=False;User ID=sp18mis5370web;Password=***********");
                con.Open();
                string insert = "insert into Inventory(Room_Number, Inventory_Quantity, Inventory_Status, Recommended_Amt, Urgency_Indicator) values(@Room_Number, @Inventory_Quantity, @Inventory_Status, @Recommended_Amt, @Urgency_Indicator)";
                SqlCommand cmd = new SqlCommand(insert, con);
                cmd.Parameters.AddWithValue("@Room_Number", roomNum.Text);
                cmd.Parameters.AddWithValue("@Inventory_Quantity", inventoryQuantity.Text);
                cmd.Parameters.AddWithValue("@Inventory_Status", inventoryStat.Text);
                cmd.Parameters.AddWithValue("@Recommended_Amt", recommendAmt.Text);
                cmd.Parameters.AddWithValue("@Urgency_Indicator", radioUrgency.SelectedItem.Value);
                cmd.ExecuteNonQuery();
                Response.Redirect("G2Home.aspx");
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex);
            }
        }

        protected void RadioButtonList1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
    }
}