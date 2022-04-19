using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace LabAss3
{
    public partial class frmCustomerPreview : Form
    {
        public frmCustomerPreview()
        {
            InitializeComponent();
        }
        public void SetValues(string name, string Country, string Gender,
            string Hobby, string Status);
        {
        lblName.Text = name;
        lblCountry.Text = Country;
        lblGender.Text = Gender;
        lblHobby.Text = Hobby;
        lblStatus.Text = Status;

        }
    }
}
