using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Tetris
{
    public partial class frmTetris : Form
    {
        public frmTetris()
        {
            InitializeComponent();
            Button[,] btnGrid = new Button[10, 20];
            int currentX = 4;
            int currentY = 0;
            displayGrid(btnGrid);
            testDisplayShape(btnGrid);

        }
        private void displayGrid(Button[,] btnGrid)
        {
            int width = 30;
            int height = 30;

            for (int y = 0; y < 20; y++)
            {
                for (int x = 0; x < 10; x++)
                {
                    btnGrid[x, y] = new Button();
                    btnGrid[x, y].SetBounds(130 + (width * x), 40 + (height * y), width, height);
                    Controls.Add(btnGrid[x, y]);
                }
            }
        }

        private void testDisplayShape(Button[,] btnGrid)
        {
            btnGrid[4, 0].BackColor = Color.Red;
        }


        private void Form1_Load(object sender, EventArgs e)
        {
        }

        private void frmTetris_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyValue == (char)Keys.D)
            {
                //currentX = 
            }
        }

        private void timer1_Tick(object sender, EventArgs e)
        {

        }
    }
}
