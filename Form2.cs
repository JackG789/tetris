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
            TBlock(btnGrid, xPos, yPos);
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

        private void Block(Button[,] btnGrid, int x, int y)
        {
            btnGrid[x, y].BackColor = Color.Red;
            btnGrid[x+1, y].BackColor = Color.Red;
            btnGrid[x, y+1].BackColor = Color.Red;
            btnGrid[x+1, y+1].BackColor = Color.Red;

        }

        private void ClearBlock(Button[,] btnGrid, int x, int y)
        {
            btnGrid[x, y].BackColor = Color.White;
            btnGrid[x+1, y].BackColor = Color.White;
            btnGrid[x, y+1].BackColor = Color.White;
            btnGrid[x+1, y+1].BackColor = Color.White;

        }

        private void Line(Button[,] btnGrid, int x, int y)
        {
            btnGrid[x, y].BackColor = Color.Cyan;
            btnGrid[x+1, y].BackColor = Color.Cyan;
            btnGrid[x+2, y].BackColor = Color.Cyan;

        }

        private void ClearLine(Button[,] btnGrid, int x, int y)
        {
            btnGrid[x, y].BackColor = Color.White;
            btnGrid[x+1, y].BackColor = Color.White;
            btnGrid[x+2, y].BackColor = Color.White;
           
        }

         private void JBlock(Button[,] btnGrid, int x, int y)
        {
            btnGrid[x, y].BackColor = Color.Blue;
            btnGrid[x+1, y].BackColor = Color.Blue;
            btnGrid[x+2, y].BackColor = Color.Blue;
            btnGrid[x+2, y+1].BackColor = Color.Blue;

        }

        private void ClearJBlock(Button[,] btnGrid, int x, int y)
        {
             btnGrid[x, y].BackColor = Color.White;
            btnGrid[x+1, y].BackColor = Color.White;
            btnGrid[x+2, y].BackColor = Color.White;
            btnGrid[x+2, y+1].BackColor = Color.White;
           
        }

        private void LBlock(Button[,] btnGrid, int x, int y)
        {
            btnGrid[x, y].BackColor = Color.Orange;
            btnGrid[x+1, y].BackColor = Color.Orange;
            btnGrid[x+2, y].BackColor = Color.Orange;
            btnGrid[x, y+1].BackColor = Color.Orange;

        }

        private void ClearLBlock(Button[,] btnGrid, int x, int y)
        {
            btnGrid[x, y].BackColor = Color.White;
            btnGrid[x+1, y].BackColor = Color.White;
            btnGrid[x+2, y].BackColor = Color.White;
            btnGrid[x, y+1].BackColor = Color.White;
           
        }


        private void SBlock(Button[,] btnGrid, int x, int y)
        {
            btnGrid[x, y].BackColor = Color.Green;
            btnGrid[x, y+1].BackColor = Color.Green;
            btnGrid[x+1, y].BackColor = Color.Green;
            btnGrid[x-1, y+1].BackColor = Color.Green;
        }

        private void ClearSBlock(Button[,] btnGrid, int x, int y)
        {
            btnGrid[x, y].BackColor = Color.White;
            btnGrid[x, y+1].BackColor = Color.White;
            btnGrid[x+1, y].BackColor = Color.White;
            btnGrid[x-1, y+1].BackColor = Color.White;
        }

         private void TBlock(Button[,] btnGrid, int x, int y)
        {
            btnGrid[x, y].BackColor = Color.Purple;
            btnGrid[x+1, y].BackColor = Color.Purple;
            btnGrid[x-1, y].BackColor = Color.Purple;
            btnGrid[x, y+1].BackColor = Color.Purple;
        }

        private void ClearTBlock(Button[,] btnGrid, int x, int y)
        {
            btnGrid[x, y].BackColor = Color.White;
            btnGrid[x+1, y].BackColor = Color.White;
            btnGrid[x-1, y].BackColor = Color.White;
            btnGrid[x, y+1].BackColor = Color.White;
        }


        private void ZBlock(Button[,] btnGrid, int x, int y)
        {
            btnGrid[x, y].BackColor = Color.Yellow;
            btnGrid[x, y+1].BackColor = Color.Yellow;
            btnGrid[x-1, y].BackColor = Color.Yellow;
            btnGrid[x+1, y+1].BackColor = Color.Yellow;
        }

        private void ClearZBlock(Button[,] btnGrid, int x, int y)
        {
            btnGrid[x, y].BackColor = Color.White;
            btnGrid[x, y+1].BackColor = Color.White;
            btnGrid[x-1, y].BackColor = Color.White;
            btnGrid[x+1, y+1].BackColor = Color.White;
        }



        private void FrmTetris_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyValue == (char)Keys.D && xPos < 8)
            {
                ClearTBlock(btnGrid, xPos, yPos);
                xPos = xPos + 1;
                lblXY.Text = Convert.ToString(xPos) + "," + Convert.ToString(yPos);
                TBlock(btnGrid, xPos, yPos);
            }
            if (e.KeyValue == (char)Keys.A && xPos > 0)
            {
                ClearTBlock(btnGrid, xPos, yPos);
                xPos = xPos - 1;
                lblXY.Text = Convert.ToString(xPos) + "," + Convert.ToString(yPos);
                TBlock(btnGrid, xPos, yPos);
            }
        }

        private void DropTimer_Tick(object sender, EventArgs e)
        {
            if (yPos < 18)
            {
                ClearTBlock(btnGrid, xPos, yPos);
                yPos = yPos + 1;
                lblXY.Text = Convert.ToString(xPos) + "," + Convert.ToString(yPos);
                TBlock(btnGrid, xPos, yPos);
            }
        }
    }
}
