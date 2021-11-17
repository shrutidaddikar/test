using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.IO;




public partial class formdesign : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btninsert_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-VM5VF9N;Initial Catalog=record;Integrated Security=True");
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into patientinfo(name,age,dob,bloodgroup,address,mobilenumber,email,dateofappointment)values('" + txtname.Text + "','" + txtage.Text + "','" + Calendar1.SelectedDate.ToLongDateString() + "','" + ddplistbg.SelectedItem.Text + "','" + txtaddress.Text + "','" + txtmobnum.Text + "','" + txtemail.Text + "','" + Calendar2.SelectedDate.ToLongDateString() + "')", con);
        cmd.ExecuteNonQuery();
        con.Close();

    }
    protected void btnshowrecord_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-VM5VF9N;Initial Catalog=record;Integrated Security=True");
        con.Open();
        SqlCommand cmd = new SqlCommand("select name as Name,age as Age,dob as DateOfBirth,bloodgroup as BloodGroup,address as Address,mobilenumber as MobileNumber, email as Email,dateofappointment as DateofAppointment from patientinfo", con);
        SqlDataAdapter dt = new SqlDataAdapter(cmd);
        DataTable d = new DataTable();
        dt.Fill(d);
        grddata.DataSource = d;
        grddata.DataBind();
     
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-VM5VF9N;Initial Catalog=record;Integrated Security=True");
        con.Open();
        FileStream fs1 = new FileStream("e:\\myfile.txt", FileMode.OpenOrCreate, FileAccess.Write);
        StreamWriter writer =new StreamWriter(fs1);
        SqlCommand cmd = new SqlCommand("select * from patientinfo", con);
        SqlDataReader reader = cmd.ExecuteReader();
        while (reader.Read())
        {
            writer.Write(reader["name"].ToString());
            writer.Write(",");
            writer.Write(reader["age"].ToString());
            writer.Write(",");
            writer.Write(reader["dob"].ToString());
            writer.Write(",");
            writer.Write(reader["bloodgroup"].ToString());
            writer.Write(",");
            writer.Write(reader["address"].ToString());
            writer.Write(",");
            writer.Write(reader["mobilenumber"].ToString());
            writer.Write(",");
            writer.Write(reader["email"].ToString());
            writer.Write(",");
            writer.Write(reader["dateofappointment"].ToString());
            writer.WriteLine();

        }
        reader.Close();
        writer.Close();
        fs1.Close();
        con.Close();
       
           }
    }