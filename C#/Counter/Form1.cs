using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Counter
{
    public partial class Counter : Form
    {

        int count = 0;

        public Counter()
        {
            InitializeComponent();
        }

        private void button1Pos_Click(object sender, EventArgs e) /* When the +1 is clicked */
        {
            count++;
            textBox1.Text = count.ToString();
        }

        private void button1Neg_Click(object sender, EventArgs e)
        {
            count--;
            textBox1.Text = count.ToString();
        }


        private void button5Pos_Click(object sender, EventArgs e)
        {
            count += 5;
            textBox1.Text = count.ToString();
        }

        private void button5Neg_Click(object sender, EventArgs e)
        {
            count -= 5;
            textBox1.Text = count.ToString();
        }

        private void button10Pos_Click(object sender, EventArgs e)
        {
            count += 10;
            textBox1.Text = count.ToString();
        }

        private void button10Neg_Click(object sender, EventArgs e)
        {
            count -= 10;
            textBox1.Text = count.ToString();
        }
    }
}
