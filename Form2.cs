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
    public partial class FrmTetris : Form
    {
        private int xPos;
        private int yPos;
        Button[,] btnGrid = new Button[10, 20];

        public FrmTetris()
        {
            InitializeComponent();
        }

        private void FrmTetris_Load(object sender, EventArgs e)
        {
            DisplayGrid(btnGrid);
            xPos = 4;
            yPos = 0;
            lblXY.Text = Convert.ToString(xPos) + "," + Convert.ToString(yPos);
            TestDisplayShape(btnGrid, xPos, yPos);
            DropTimer.Enabled = true;
        }

        private void DisplayGrid(Button[,] btnGrid)
        {
            int width = 30;
            int height = 30;

            for (int y = 0; y < 20; y++)
            {
                for (int x = 0; x < 10; x++)
                {
                    btnGrid[x, y] = new Button();
                    btnGrid[x, y].SetBounds(130 + (width * x), 40 + (height * y), width, height);
                    btnGrid[x, y].BackColor = Color.White;
                    btnGrid[x, y].TabStop = false;
                    Controls.Add(btnGrid[x, y]);
                }
            }
        }

        private void TestDisplayShape(Button[,] btnGrid, int x, int y)
        {
            btnGrid[x, y].BackColor = Color.Red;
        }

        private void TestClearShape(Button[,] btnGrid, int x, int y)
        {
            btnGrid[x, y].BackColor = Color.White;
        }

        private void FrmTetris_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyValue == (char)Keys.D && xPos < 9)
            {
                TestClearShape(btnGrid, xPos, yPos);
                xPos = xPos + 1;
                lblXY.Text = Convert.ToString(xPos) + "," + Convert.ToString(yPos);
                TestDisplayShape(btnGrid, xPos, yPos);
            }
            if (e.KeyValue == (char)Keys.A && xPos > 0)
            {
                TestClearShape(btnGrid, xPos, yPos);
                xPos = xPos - 1;
                lblXY.Text = Convert.ToString(xPos) + "," + Convert.ToString(yPos);
                TestDisplayShape(btnGrid, xPos, yPos);
            }
        }

        private void DropTimer_Tick(object sender, EventArgs e)
        {
            if (yPos < 19)
            {
                TestClearShape(btnGrid, xPos, yPos);
                yPos = yPos + 1;
                lblXY.Text = Convert.ToString(xPos) + "," + Convert.ToString(yPos);
                TestDisplayShape(btnGrid, xPos, yPos);
            }
        }
    }
}
