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
        private string currentShape;
        private int rotation;
        
        Button[,] btnGrid = new Button[10, 20];

        public FrmTetris()
        {
            InitializeComponent();
        }

        private void FrmTetris_Load(object sender, EventArgs e)
        {
            DisplayGrid(btnGrid);
            xPos = 4;
            yPos = 10; //changed to test shape rotation, should be 0
            rotation = 0;
            lblXY.Text = Convert.ToString(xPos) + "," + Convert.ToString(yPos);
            //DropTimer.Enabled = true;
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
            if (e.KeyValue == (char)Keys.R)
            {
                RotateShape();
            }
        }

        private void RotateShape()
        {
            switch (currentShape)
            {
                case "Z":
                    ClearZBlock(btnGrid, xPos, yPos);
                    break;
                case "S":
                    ClearSBlock(btnGrid, xPos, yPos);
                    break;
                case "T":
                    ClearTBlock(btnGrid, xPos, yPos);
                    break;
                case "Line":
                    ClearLine(btnGrid, xPos, yPos);
                    break;
                case "L":
                    ClearLBlock(btnGrid, xPos, yPos);
                    break;
                case "J":
                    ClearJBlock(btnGrid, xPos, yPos);
                    break;
            }

            if (rotation != 3)
            {
                rotation++;
            } else {
                rotation = 0;
            }

            switch (currentShape)
            {
                case "Z":
                    ZBlock(btnGrid, xPos, yPos);
                    break;
                case "S":
                    SBlock(btnGrid, xPos, yPos);
                    break;
                case "T":
                    TBlock(btnGrid, xPos, yPos);
                    break;
                case "Line":
                    Line(btnGrid, xPos, yPos);
                    break;
                case "L":
                    LBlock(btnGrid, xPos, yPos);
                    break;
                case "J":
                    JBlock(btnGrid, xPos, yPos);
                    break;
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

        private void Block(Button[,] btnGrid, int x, int y)
        {
            btnGrid[x, y].BackColor = Color.Red;
            btnGrid[x + 1, y].BackColor = Color.Red;
            btnGrid[x, y + 1].BackColor = Color.Red;
            btnGrid[x + 1, y + 1].BackColor = Color.Red;

        }

        private void ClearBlock(Button[,] btnGrid, int x, int y)
        {
            btnGrid[x, y].BackColor = Color.White;
            btnGrid[x + 1, y].BackColor = Color.White;
            btnGrid[x, y + 1].BackColor = Color.White;
            btnGrid[x + 1, y + 1].BackColor = Color.White;

        }

        private void Line(Button[,] btnGrid, int x, int y)
        {

            switch (rotation)
            {
                case 0: //horizontal
                    btnGrid[x, y].BackColor = Color.Cyan;
                    btnGrid[x + 1, y].BackColor = Color.Cyan;
                    btnGrid[x - 1, y].BackColor = Color.Cyan;
                    break;
                case 1: //vertical
                    if (y > 0) //if shape can rotate 
                    {
                        btnGrid[x, y].BackColor = Color.Cyan;
                        btnGrid[x, y - 1].BackColor = Color.Cyan;
                        btnGrid[x, y + 1].BackColor = Color.Cyan;
                    }
                    break;
                case 2: //horizontal
                    btnGrid[x, y].BackColor = Color.Cyan;
                    btnGrid[x + 1, y].BackColor = Color.Cyan;
                    btnGrid[x - 1, y].BackColor = Color.Cyan;
                    break;
                case 3: //vertical
                    if (y > 0) //if shape can rotate 
                    {
                        btnGrid[x, y].BackColor = Color.Cyan;
                        btnGrid[x, y - 1].BackColor = Color.Cyan;
                        btnGrid[x, y + 1].BackColor = Color.Cyan;
                    }
                    break;
            }
        }

        private void ClearLine(Button[,] btnGrid, int x, int y)
        {

            switch (rotation)
            {
                case 0: //horizontal
                    btnGrid[x, y].BackColor = Color.White;
                    btnGrid[x + 1, y].BackColor = Color.White;
                    btnGrid[x - 1, y].BackColor = Color.White;
                    break;
                case 1: //vertical
                    if (y > 0) //if shape can rotate 
                    {
                        btnGrid[x, y].BackColor = Color.White;
                        btnGrid[x, y - 1].BackColor = Color.White;
                        btnGrid[x, y + 1].BackColor = Color.White;
                    }
                    break;
                case 2: //horizontal
                    btnGrid[x, y].BackColor = Color.White;
                    btnGrid[x + 1, y].BackColor = Color.White;
                    btnGrid[x - 1, y].BackColor = Color.White;
                    break;
                case 3: //vertical
                    if (y > 0) //if shape can rotate 
                    {
                        btnGrid[x, y].BackColor = Color.White;
                        btnGrid[x, y - 1].BackColor = Color.White;
                        btnGrid[x, y + 1].BackColor = Color.White;
                    }
                    break;
            }
        }

        private void JBlock(Button[,] btnGrid, int x, int y)
        {

            switch (rotation)
            {
                case 0:
                    btnGrid[x, y].BackColor = Color.Blue;
                    btnGrid[x - 1, y].BackColor = Color.Blue;
                    btnGrid[x + 1, y].BackColor = Color.Blue;
                    btnGrid[x + 1, y + 1].BackColor = Color.Blue;
                    break;
                case 1:
                    if (y > 0) //if shape can rotate 
                    {
                        btnGrid[x, y].BackColor = Color.Blue;
                        btnGrid[x , y - 1].BackColor = Color.Blue;
                        btnGrid[x, y + 1].BackColor = Color.Blue;
                        btnGrid[x - 1, y + 1].BackColor = Color.Blue;
                    }
                    break;
                case 2:
                    if (y > 0) //if shape can rotate 
                    {
                        btnGrid[x, y].BackColor = Color.Blue;
                        btnGrid[x - 1, y - 1].BackColor = Color.Blue;
                        btnGrid[x - 1, y].BackColor = Color.Blue;
                        btnGrid[x + 1, y].BackColor = Color.Blue;
                    }
                    break;
                case 3:
                    if (y > 0) //if shape can rotate 
                    {
                        btnGrid[x, y].BackColor = Color.Blue;
                        btnGrid[x, y - 1].BackColor = Color.Blue;
                        btnGrid[x + 1, y - 1].BackColor = Color.Blue;
                        btnGrid[x, y + 1].BackColor = Color.Blue;
                    }
                    break;
            }
        }

        private void ClearJBlock(Button[,] btnGrid, int x, int y)
        {

            switch (rotation)
            {
                case 0:
                    btnGrid[x, y].BackColor = Color.White;
                    btnGrid[x - 1, y].BackColor = Color.White;
                    btnGrid[x + 1, y].BackColor = Color.White;
                    btnGrid[x + 1, y + 1].BackColor = Color.White;
                    break;
                case 1:
                    if (y > 0) //if shape can rotate 
                    {
                        btnGrid[x, y].BackColor = Color.White;
                        btnGrid[x, y - 1].BackColor = Color.White;
                        btnGrid[x, y + 1].BackColor = Color.White;
                        btnGrid[x - 1, y + 1].BackColor = Color.White;
                    }
                    break;
                case 2:
                    if (y > 0) //if shape can rotate 
                    {
                        btnGrid[x, y].BackColor = Color.White;
                        btnGrid[x - 1, y - 1].BackColor = Color.White;
                        btnGrid[x - 1, y].BackColor = Color.White;
                        btnGrid[x + 1, y].BackColor = Color.White;
                    }
                    break;
                case 3:
                    if (y > 0) //if shape can rotate 
                    {
                        btnGrid[x, y].BackColor = Color.White;
                        btnGrid[x, y - 1].BackColor = Color.White;
                        btnGrid[x + 1, y - 1].BackColor = Color.White;
                        btnGrid[x, y + 1].BackColor = Color.White;
                    }
                    break;
            }
        }

        private void LBlock(Button[,] btnGrid, int x, int y)
        {

            switch (rotation)
            {
                case 0:
                    btnGrid[x, y].BackColor = Color.Orange;
                    btnGrid[x + 1, y].BackColor = Color.Orange;
                    btnGrid[x - 1, y].BackColor = Color.Orange;
                    btnGrid[x - 1, y + 1].BackColor = Color.Orange;
                    break;
                case 1:
                    if (y > 0) //if shape can rotate 
                    {
                        btnGrid[x, y].BackColor = Color.Orange;
                        btnGrid[x, y - 1].BackColor = Color.Orange;
                        btnGrid[x, y + 1].BackColor = Color.Orange;
                        btnGrid[x + 1, y + 1].BackColor = Color.Orange;
                    }
                    break;
                case 2:
                    if (y > 0) //if shape can rotate 
                    {
                        btnGrid[x, y].BackColor = Color.Orange;
                        btnGrid[x - 1, y].BackColor = Color.Orange;
                        btnGrid[x + 1, y].BackColor = Color.Orange;
                        btnGrid[x + 1, y - 1].BackColor = Color.Orange;
                    }
                    break;
                case 3:
                    if (y > 0) //if shape can rotate 
                    {
                        btnGrid[x, y].BackColor = Color.Orange;
                        btnGrid[x, y + 1].BackColor = Color.Orange;
                        btnGrid[x, y - 1].BackColor = Color.Orange;
                        btnGrid[x - 1, y - 1].BackColor = Color.Orange;
                    }
                    break;
            }
        }

        private void ClearLBlock(Button[,] btnGrid, int x, int y)
        {

            switch (rotation)
            {
                case 0:
                    btnGrid[x, y].BackColor = Color.White;
                    btnGrid[x + 1, y].BackColor = Color.White;
                    btnGrid[x - 1, y].BackColor = Color.White;
                    btnGrid[x - 1, y + 1].BackColor = Color.White;
                    break;
                case 1:
                    if (y > 0) //if shape can rotate 
                    {
                        btnGrid[x, y].BackColor = Color.White;
                        btnGrid[x, y - 1].BackColor = Color.White;
                        btnGrid[x, y + 1].BackColor = Color.White;
                        btnGrid[x + 1, y + 1].BackColor = Color.White;
                    }
                    break;
                case 2:
                    if (y > 0) //if shape can rotate 
                    {
                        btnGrid[x, y].BackColor = Color.White;
                        btnGrid[x - 1, y].BackColor = Color.White;
                        btnGrid[x + 1, y].BackColor = Color.White;
                        btnGrid[x + 1, y - 1].BackColor = Color.White;
                    }
                    break;
                case 3:
                    if (y > 0) //if shape can rotate 
                    {
                        btnGrid[x, y].BackColor = Color.White;
                        btnGrid[x, y + 1].BackColor = Color.White;
                        btnGrid[x, y - 1].BackColor = Color.White;
                        btnGrid[x - 1, y - 1].BackColor = Color.White;
                    }
                    break;
            }
        }


        private void SBlock(Button[,] btnGrid, int x, int y)
        {

            switch (rotation)
            {
                case 0:
                    btnGrid[x, y].BackColor = Color.Green;
                    btnGrid[x, y + 1].BackColor = Color.Green;
                    btnGrid[x + 1, y].BackColor = Color.Green;
                    btnGrid[x - 1, y + 1].BackColor = Color.Green;
                    break;
                case 1:
                    if (y > 0) //if shape can rotate 
                    {
                        btnGrid[x, y].BackColor = Color.Green;
                        btnGrid[x - 1, y - 1].BackColor = Color.Green;
                        btnGrid[x - 1, y].BackColor = Color.Green;
                        btnGrid[x, y + 1].BackColor = Color.Green;
                    }
                    break;
                case 2:
                    btnGrid[x, y].BackColor = Color.Green;
                    btnGrid[x, y + 1].BackColor = Color.Green;
                    btnGrid[x + 1, y].BackColor = Color.Green;
                    btnGrid[x - 1, y + 1].BackColor = Color.Green;
                    break;
                case 3:
                    if (y > 0) //if shape can rotate 
                    {
                        btnGrid[x, y].BackColor = Color.Green;
                        btnGrid[x - 1, y - 1].BackColor = Color.Green;
                        btnGrid[x - 1, y].BackColor = Color.Green;
                        btnGrid[x, y + 1].BackColor = Color.Green;
                    }
                    break;
            }
        }

        private void ClearSBlock(Button[,] btnGrid, int x, int y)
        {

            switch (rotation)
            {
                case 0:
                    btnGrid[x, y].BackColor = Color.White;
                    btnGrid[x, y + 1].BackColor = Color.White;
                    btnGrid[x + 1, y].BackColor = Color.White;
                    btnGrid[x - 1, y + 1].BackColor = Color.White;
                    break;
                case 1:
                    if (y > 0) //if shape can rotate 
                    {
                        btnGrid[x, y].BackColor = Color.White;
                        btnGrid[x - 1, y - 1].BackColor = Color.White;
                        btnGrid[x - 1, y].BackColor = Color.White;
                        btnGrid[x, y + 1].BackColor = Color.White;
                    }
                    break;
                case 2:
                    btnGrid[x, y].BackColor = Color.White;
                    btnGrid[x, y + 1].BackColor = Color.White;
                    btnGrid[x + 1, y].BackColor = Color.White;
                    btnGrid[x - 1, y + 1].BackColor = Color.White;
                    break;
                case 3:
                    if (y > 0) //if shape can rotate 
                    {
                        btnGrid[x, y].BackColor = Color.White;
                        btnGrid[x - 1, y - 1].BackColor = Color.White;
                        btnGrid[x - 1, y].BackColor = Color.White;
                        btnGrid[x, y + 1].BackColor = Color.White;
                    }
                    break;
            }
        }

        private void TBlock(Button[,] btnGrid, int x, int y)
        {

            switch (rotation)
            {
                case 0:
                    btnGrid[x, y].BackColor = Color.Purple;
                    btnGrid[x + 1, y].BackColor = Color.Purple;
                    btnGrid[x - 1, y].BackColor = Color.Purple;
                    btnGrid[x, y + 1].BackColor = Color.Purple;
                    break;
                case 1:
                    if (y > 0) //if shape can rotate 
                    {
                        btnGrid[x, y].BackColor = Color.Purple;
                        btnGrid[x - 1, y].BackColor = Color.Purple;
                        btnGrid[x, y - 1].BackColor = Color.Purple;
                        btnGrid[x, y + 1].BackColor = Color.Purple;
                    }
                    break;
                case 2:
                    if (y > 0) //if shape can rotate 
                    {
                        btnGrid[x, y].BackColor = Color.Purple;
                        btnGrid[x + 1, y].BackColor = Color.Purple;
                        btnGrid[x - 1, y].BackColor = Color.Purple;
                        btnGrid[x, y - 1].BackColor = Color.Purple;
                    }
                    break;
                case 3:
                    if (y > 0) //if shape can rotate 
                    {
                        btnGrid[x, y].BackColor = Color.Purple;
                        btnGrid[x + 1, y].BackColor = Color.Purple;
                        btnGrid[x, y - 1].BackColor = Color.Purple;
                        btnGrid[x, y + 1].BackColor = Color.Purple;
                    }
                    break;
            }
        }

        private void ClearTBlock(Button[,] btnGrid, int x, int y)
        {

            switch (rotation)
            {
                case 0:
                    btnGrid[x, y].BackColor = Color.White;
                    btnGrid[x + 1, y].BackColor = Color.White;
                    btnGrid[x - 1, y].BackColor = Color.White;
                    btnGrid[x, y + 1].BackColor = Color.White;
                    break;
                case 1:
                    if (y > 0) //if shape can rotate 
                    {
                        btnGrid[x, y].BackColor = Color.White;
                        btnGrid[x - 1, y].BackColor = Color.White;
                        btnGrid[x, y - 1].BackColor = Color.White;
                        btnGrid[x, y + 1].BackColor = Color.White;
                    }
                    break;
                case 2:
                    if (y > 0) //if shape can rotate 
                    {
                        btnGrid[x, y].BackColor = Color.White;
                        btnGrid[x + 1, y].BackColor = Color.White;
                        btnGrid[x - 1, y].BackColor = Color.White;
                        btnGrid[x, y - 1].BackColor = Color.White;
                    }
                    break;
                case 3:
                    if (y > 0) //if shape can rotate 
                    {
                        btnGrid[x, y].BackColor = Color.White;
                        btnGrid[x + 1, y].BackColor = Color.White;
                        btnGrid[x, y - 1].BackColor = Color.White;
                        btnGrid[x, y + 1].BackColor = Color.White;
                    }
                    break;
            }
        }

        private void ZBlock(Button[,] btnGrid, int x, int y)
        {

            switch (rotation)
            {
                case 0:
                    btnGrid[x, y].BackColor = Color.Yellow;
                    btnGrid[x, y + 1].BackColor = Color.Yellow;
                    btnGrid[x - 1, y].BackColor = Color.Yellow;
                    btnGrid[x + 1, y + 1].BackColor = Color.Yellow;
                    break;
                case 1:
                    if (y > 0) //if shape can rotate 
                    {
                        btnGrid[x, y].BackColor = Color.Yellow;
                        btnGrid[x, y - 1].BackColor = Color.Yellow;
                        btnGrid[x - 1, y].BackColor = Color.Yellow;
                        btnGrid[x - 1, y + 1].BackColor = Color.Yellow;
                    }
                    break;
                case 2:
                    if (y > 0) //if shape can rotate 
                    {
                        btnGrid[x, y].BackColor = Color.Yellow;
                        btnGrid[x, y + 1].BackColor = Color.Yellow;
                        btnGrid[x - 1, y].BackColor = Color.Yellow;
                        btnGrid[x + 1, y + 1].BackColor = Color.Yellow;
                    }
                    break;
                case 3:
                    if (y > 0) //if shape can rotate 
                    {
                        btnGrid[x, y].BackColor = Color.Yellow;
                        btnGrid[x, y - 1].BackColor = Color.Yellow;
                        btnGrid[x - 1, y].BackColor = Color.Yellow;
                        btnGrid[x - 1, y + 1].BackColor = Color.Yellow;
                    }
                    break;
            }
        }

        private void ClearZBlock(Button[,] btnGrid, int x, int y)
        {

            switch (rotation)
            {
                case 0:
                    btnGrid[x, y].BackColor = Color.White;
                    btnGrid[x, y + 1].BackColor = Color.White;
                    btnGrid[x - 1, y].BackColor = Color.White;
                    btnGrid[x + 1, y + 1].BackColor = Color.White;
                    break;
                case 1:
                    if (y > 0) //if shape can rotate 
                    {
                        btnGrid[x, y].BackColor = Color.White;
                        btnGrid[x, y - 1].BackColor = Color.White;
                        btnGrid[x - 1, y].BackColor = Color.White;
                        btnGrid[x - 1, y + 1].BackColor = Color.White;
                    }
                    break;
                case 2:
                    if (y > 0) //if shape can rotate 
                    {
                        btnGrid[x, y].BackColor = Color.White;
                        btnGrid[x, y + 1].BackColor = Color.White;
                        btnGrid[x - 1, y].BackColor = Color.White;
                        btnGrid[x + 1, y + 1].BackColor = Color.White;
                    }
                    break;
                case 3:
                    if (y > 0) //if shape can rotate 
                    {
                        btnGrid[x, y].BackColor = Color.White;
                        btnGrid[x, y - 1].BackColor = Color.White;
                        btnGrid[x - 1, y].BackColor = Color.White;
                        btnGrid[x - 1, y + 1].BackColor = Color.White;
                    }
                    break;
            }
        }






        //UNFINISHED

        private void CheckForLines(Button[,] btnGrid)
        {
            for (int i = 19; i > 1; i--)
            {
                int counter = 0;
                for (int j = 0; j < 9; j++)
                {
                    if (btnGrid[j,i].BackColor != Color.White)
                    {
                        counter++;
                    }
                }
                if (counter == 10)
                {
                    ClearLine(btnGrid, i);
                }
            }
        }

        private void ClearLine(Button[,] btnGrid, int line)
        {
            for (int i = line; i > 0; i--)
            {
                for (int j = 0; j < 9; j++)
                {
                    btnGrid[j, i].BackColor = btnGrid[j, i - 1].BackColor;
                }
                i--;
            }
        }

        private void TestLineClear(Button[,] btnGrid)
        {
            DropTimer.Enabled = false;
            for (int y = 0; y < 20; y++)
            {
                for (int x = 0; x < 9; x++)
                {
                    btnGrid[x, y].BackColor = Color.Red;
                }
            }
            btnGrid[9, 10].BackColor = Color.Green;

            CheckForLines(btnGrid);
        }

    }
}
