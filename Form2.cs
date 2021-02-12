using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Media;

namespace Tetris
{
    public partial class FrmTetris : Form
    {
        private int xPos, yPos;
        private string currentShape;
        private int rotation;
        private int xLimitLeft, xLimitRight, yLimit;
        Random rnd = new Random();

        Button[,] btnGrid = new Button[10, 20];

        System.Media.SoundPlayer music = new System.Media.SoundPlayer();

        public FrmTetris()
        {
            InitializeComponent();
            music.SoundLocation = "Tetris.wav";
        }

        private void FrmTetris_Load(object sender, EventArgs e)
        {
            music.Play();
            DisplayGrid(btnGrid);
            NewShape();
            //TestLineClear(btnGrid);
            lblXY.Text = Convert.ToString(xPos) + "," + Convert.ToString(yPos);
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

        private void FrmTetris_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyValue == (char)Keys.D && xPos < xLimitRight)
            {
                ClearCurrentShape();
                xPos = xPos + 1;
                lblXY.Text = Convert.ToString(xPos) + "," + Convert.ToString(yPos);
                DisplayCurrentShape();
            }
            if (e.KeyValue == (char)Keys.A && xPos > xLimitLeft)
            {
                ClearCurrentShape();
                xPos = xPos - 1;
                lblXY.Text = Convert.ToString(xPos) + "," + Convert.ToString(yPos);
                DisplayCurrentShape();
            }
            if (e.KeyValue == (char)Keys.R)
            {
                RotateShape();
            }
        }
        private void DisplayCurrentShape()
        {
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
                case "Block":
                    Block(btnGrid, xPos, yPos);
                    break;
            }
        }
        private void ClearCurrentShape()
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
                case "Block":
                    ClearBlock(btnGrid, xPos, yPos);
                    break;
            }
        }
        private void RotateShape()
        {
            if (currentShape != "Block")
            {
                ClearCurrentShape();
                if (rotation != 3)
                {
                    rotation++;
                }
                else
                {
                    rotation = 0;
                }
                DisplayCurrentShape();
            }
        }

        private Boolean CheckCollision()
        {
            if (currentShape == "Z")
            {
                if (rotation == 0)
                {
                    if (btnGrid[xPos, yPos + 2].BackColor == Color.White && btnGrid[xPos + 1, yPos + 2].BackColor == Color.White && btnGrid[xPos - 1, yPos].BackColor == Color.White)
                    {
                        return true;
                    }
                }
                if (rotation == 1)
                {
                    if (btnGrid[xPos - 1, yPos + 2].BackColor == Color.White && btnGrid[xPos, yPos + 1].BackColor == Color.White)
                    {
                        return true;
                    }
                }
                if (rotation == 2)
                {
                    if (btnGrid[xPos, yPos + 2].BackColor == Color.White && btnGrid[xPos + 1, yPos + 2].BackColor == Color.White && btnGrid[xPos - 1, yPos].BackColor == Color.White)
                    {
                        return true;
                    }
                }
                if (rotation == 3)
                {
                    if (btnGrid[xPos - 1, yPos + 2].BackColor == Color.White && btnGrid[xPos, yPos + 1].BackColor == Color.White)
                    {
                        return true;
                    }

                }
            }

            if (currentShape == "T")
            {
                if (rotation == 0)
                {
                    if (btnGrid[xPos, yPos + 2].BackColor == Color.White && btnGrid[xPos - 1, yPos + 1].BackColor == Color.White && btnGrid[xPos + 1, yPos + 1].BackColor == Color.White)
                    {
                        return true;
                    }
                }
                if (rotation == 1)
                {
                    if (btnGrid[xPos, yPos + 2].BackColor == Color.White && btnGrid[xPos - 1, yPos].BackColor == Color.White)
                    {
                        return true;
                    }
                }
                if (rotation == 2)
                {
                    if (btnGrid[xPos, yPos + 1].BackColor == Color.White && btnGrid[xPos - 1, yPos + 1].BackColor == Color.White && btnGrid[xPos + 1, yPos + 1].BackColor == Color.White)
                    {
                        return true;
                    }
                }

                if (rotation == 3)
                {
                    if (btnGrid[xPos, yPos + 2].BackColor == Color.White && btnGrid[xPos + 1, yPos + 1].BackColor == Color.White)
                    {
                        return true;
                    }
                }
            }

            if (currentShape == "S")
            {
                if (rotation == 0)
                {
                    if (btnGrid[xPos, yPos + 2].BackColor == Color.White && btnGrid[xPos + 1, yPos + 1].BackColor == Color.White && btnGrid[xPos - 1, yPos + 2].BackColor == Color.White)
                    {
                        return true;
                    }
                }
                if (rotation == 1)
                {
                    if (btnGrid[xPos - 1, yPos + 1].BackColor == Color.White && btnGrid[xPos, yPos + 2].BackColor == Color.White)
                    {
                        return true;
                    }
                }
                if (rotation == 2)
                {
                    if (btnGrid[xPos, yPos + 2].BackColor == Color.White && btnGrid[xPos + 1, yPos + 1].BackColor == Color.White && btnGrid[xPos - 1, yPos + 2].BackColor == Color.White)
                    {
                        return true;
                    }
                }
                if (rotation == 3)
                {
                    if (btnGrid[xPos - 1, yPos + 1].BackColor == Color.White && btnGrid[xPos, yPos + 2].BackColor == Color.White)
                    {
                        return true;
                    }

                }


            }

            if (currentShape == "L")
            {
                if (rotation == 0)
                {
                    if (btnGrid[xPos, yPos + 1].BackColor == Color.White && btnGrid[xPos - 1, yPos + 2].BackColor == Color.White && btnGrid[xPos + 1, yPos + 1].BackColor == Color.White)
                    {
                        return true;
                    }
                }
                if (rotation == 1)
                {
                    if (btnGrid[xPos, yPos + 2].BackColor == Color.White && btnGrid[xPos - 1, yPos + 1].BackColor == Color.White)
                    {
                        return true;
                    }
                }
                if (rotation == 2)
                {
                    if (btnGrid[xPos, yPos + 1].BackColor == Color.White && btnGrid[xPos + 1, yPos + 1].BackColor == Color.White && btnGrid[xPos - 1, yPos + 1].BackColor == Color.White)
                    {
                        return true;
                    }
                }
                if (rotation == 3)
                {
                    if (btnGrid[xPos, yPos + 2].BackColor == Color.White && btnGrid[xPos + 1, yPos + 2].BackColor == Color.White)
                    {
                        return true;
                    }

                }
            }

            if (currentShape == "J")
            {
                if (rotation == 0)
                {
                    if (btnGrid[xPos - 1, yPos + 1].BackColor == Color.White && btnGrid[xPos, yPos + 1].BackColor == Color.White && btnGrid[xPos + 1, yPos + 2].BackColor == Color.White)
                    {
                        return true;
                    }
                }
                if (rotation == 1)
                {
                    if (btnGrid[xPos - 1, yPos + 2].BackColor == Color.White && btnGrid[xPos, yPos + 2].BackColor == Color.White)
                    {
                        return true;
                    }
                }
                if (rotation == 2)
                {
                    if (btnGrid[xPos, yPos + 1].BackColor == Color.White && btnGrid[xPos - 1, yPos + 1].BackColor == Color.White && btnGrid[xPos + 1, yPos + 1].BackColor == Color.White)
                    {
                        return true;
                    }
                }
                if (rotation == 3)
                {
                    if (btnGrid[xPos, yPos + 2].BackColor == Color.White && btnGrid[xPos + 1, yPos].BackColor == Color.White)
                    {
                        return true;
                    }

                }
            }

            if (currentShape == "Line")
            {
                if (rotation == 0)
                {
                    if (btnGrid[xPos - 1, yPos + 1].BackColor == Color.White && btnGrid[xPos, yPos + 1].BackColor == Color.White && btnGrid[xPos + 1, yPos + 1].BackColor == Color.White)
                    {
                        return true;
                    }
                }
                if (rotation == 1)
                {
                    if (btnGrid[xPos, yPos + 2].BackColor == Color.White)
                    {
                        return true;
                    }
                }
                if (rotation == 2)
                {
                    if (btnGrid[xPos - 1, yPos + 1].BackColor == Color.White && btnGrid[xPos, yPos + 1].BackColor == Color.White && btnGrid[xPos + 1, yPos + 1].BackColor == Color.White)
                    {
                        return true;
                    }
                }
                if (rotation == 3)
                {
                    if (btnGrid[xPos, yPos + 2].BackColor == Color.White)
                    {
                        return true;
                    }

                }
            }

            if (currentShape == "Block")
            {
                if (btnGrid[xPos, yPos + 2].BackColor == Color.White && btnGrid[xPos + 1, yPos + 2].BackColor == Color.White)
                {
                    return true;
                }
            }

            return false;
        }

        private void DropTimer_Tick(object sender, EventArgs e)
        {
            if (yPos < yLimit && CheckCollision() == true)
            {
                ClearCurrentShape();
                yPos = yPos + 1;
                lblXY.Text = Convert.ToString(xPos) + "," + Convert.ToString(yPos); //display xy on form
                DisplayCurrentShape();
            } else
            {
                NewShape();
            }
        }
        private void NewShape()
        {
            xPos = 4;
            yPos = 0;
            rotation = 0;
            int newShape = rnd.Next(0, 6);
            switch (newShape)
            {
                case 0:
                    currentShape = "Z";
                    break;
                case 1:
                    currentShape = "S";
                    break;
                case 2:
                    currentShape = "T";
                    break;
                case 3:
                    currentShape = "Line";
                    break;
                case 4:
                    currentShape = "L";
                    break;
                case 5:
                    currentShape = "J";
                    break;
                case 6:
                    currentShape = "Block";
                    break;
            }
            DisplayCurrentShape();
        }

        private void Block(Button[,] btnGrid, int x, int y)
        {
            btnGrid[x, y].BackColor = Color.Red;
            btnGrid[x + 1, y].BackColor = Color.Red;
            btnGrid[x, y + 1].BackColor = Color.Red;
            btnGrid[x + 1, y + 1].BackColor = Color.Red;

            currentShape = "Block";
            xLimitLeft = 0;
            xLimitRight = 8;
            yLimit = 18;
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

                    currentShape = "Line";
                    xLimitLeft = 1;
                    xLimitRight = 8;
                    yLimit = 19;
                    break;
                case 1: //vertical
                    if (y > 0) //if shape can rotate 
                    {
                        btnGrid[x, y].BackColor = Color.Cyan;
                        btnGrid[x, y - 1].BackColor = Color.Cyan;
                        btnGrid[x, y + 1].BackColor = Color.Cyan;

                        currentShape = "Line";
                        xLimitLeft = 0;
                        xLimitRight = 9;
                        yLimit = 18;
                    }
                    break;
                case 2: //horizontal
                    btnGrid[x, y].BackColor = Color.Cyan;
                    btnGrid[x + 1, y].BackColor = Color.Cyan;
                    btnGrid[x - 1, y].BackColor = Color.Cyan;

                    currentShape = "Line";
                    xLimitLeft = 1;
                    xLimitRight = 8;
                    yLimit = 19;
                    break;
                case 3: //vertical
                    if (y > 0) //if shape can rotate 
                    {
                        btnGrid[x, y].BackColor = Color.Cyan;
                        btnGrid[x, y - 1].BackColor = Color.Cyan;
                        btnGrid[x, y + 1].BackColor = Color.Cyan;

                        currentShape = "Line";
                        xLimitLeft = 0;
                        xLimitRight = 9;
                        yLimit = 18;
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

                    currentShape = "J";
                    xLimitLeft = 1;
                    xLimitRight = 8;
                    yLimit = 18;
                    break;
                case 1:
                    if (y > 0) //if shape can rotate 
                    {
                        btnGrid[x, y].BackColor = Color.Blue;
                        btnGrid[x , y - 1].BackColor = Color.Blue;
                        btnGrid[x, y + 1].BackColor = Color.Blue;
                        btnGrid[x - 1, y + 1].BackColor = Color.Blue;

                        currentShape = "J";
                        xLimitLeft = 1;
                        xLimitRight = 9;
                        yLimit = 18;
                    }
                    break;
                case 2:
                    if (y > 0) //if shape can rotate 
                    {
                        btnGrid[x, y].BackColor = Color.Blue;
                        btnGrid[x - 1, y - 1].BackColor = Color.Blue;
                        btnGrid[x - 1, y].BackColor = Color.Blue;
                        btnGrid[x + 1, y].BackColor = Color.Blue;

                        currentShape = "J";
                        xLimitLeft = 1;
                        xLimitRight = 8;
                        yLimit = 19;
                    }
                    break;
                case 3:
                    if (y > 0) //if shape can rotate 
                    {
                        btnGrid[x, y].BackColor = Color.Blue;
                        btnGrid[x, y - 1].BackColor = Color.Blue;
                        btnGrid[x + 1, y - 1].BackColor = Color.Blue;
                        btnGrid[x, y + 1].BackColor = Color.Blue;

                        currentShape = "J";
                        xLimitLeft = 0;
                        xLimitRight = 8;
                        yLimit = 18;
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

                    currentShape = "L";
                    xLimitLeft = 1;
                    xLimitRight = 8;
                    yLimit = 18;
                    break;
                case 1:
                    if (y > 0) //if shape can rotate 
                    {
                        btnGrid[x, y].BackColor = Color.Orange;
                        btnGrid[x, y - 1].BackColor = Color.Orange;
                        btnGrid[x, y + 1].BackColor = Color.Orange;
                        btnGrid[x + 1, y + 1].BackColor = Color.Orange;

                        currentShape = "L";
                        xLimitLeft = 0;
                        xLimitRight = 8;
                        yLimit = 18;
                    }
                    break;
                case 2:
                    if (y > 0) //if shape can rotate 
                    {
                        btnGrid[x, y].BackColor = Color.Orange;
                        btnGrid[x - 1, y].BackColor = Color.Orange;
                        btnGrid[x + 1, y].BackColor = Color.Orange;
                        btnGrid[x + 1, y - 1].BackColor = Color.Orange;

                        currentShape = "L";
                        xLimitLeft = 1;
                        xLimitRight = 8;
                        yLimit = 19;
                    }
                    break;
                case 3:
                    if (y > 0) //if shape can rotate 
                    {
                        btnGrid[x, y].BackColor = Color.Orange;
                        btnGrid[x, y + 1].BackColor = Color.Orange;
                        btnGrid[x, y - 1].BackColor = Color.Orange;
                        btnGrid[x - 1, y - 1].BackColor = Color.Orange;

                        currentShape = "L";
                        xLimitLeft = 1;
                        xLimitRight = 9;
                        yLimit = 18;
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

                    currentShape = "S";
                    xLimitLeft = 1;
                    xLimitRight = 8;
                    yLimit = 18;
                    break;
                case 1:
                    if (y > 0) //if shape can rotate 
                    {
                        btnGrid[x, y].BackColor = Color.Green;
                        btnGrid[x - 1, y - 1].BackColor = Color.Green;
                        btnGrid[x - 1, y].BackColor = Color.Green;
                        btnGrid[x, y + 1].BackColor = Color.Green;

                        currentShape = "S";
                        xLimitLeft = 1;
                        xLimitRight = 9;
                        yLimit = 18;
                    }
                    break;
                case 2:
                    btnGrid[x, y].BackColor = Color.Green;
                    btnGrid[x, y + 1].BackColor = Color.Green;
                    btnGrid[x + 1, y].BackColor = Color.Green;
                    btnGrid[x - 1, y + 1].BackColor = Color.Green;

                    currentShape = "S";
                    xLimitLeft = 1;
                    xLimitRight = 8;
                    yLimit = 18;
                    break;
                case 3:
                    if (y > 0) //if shape can rotate 
                    {
                        btnGrid[x, y].BackColor = Color.Green;
                        btnGrid[x - 1, y - 1].BackColor = Color.Green;
                        btnGrid[x - 1, y].BackColor = Color.Green;
                        btnGrid[x, y + 1].BackColor = Color.Green;

                        currentShape = "S";
                        xLimitLeft = 1;
                        xLimitRight = 9;
                        yLimit = 18;
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

                    currentShape = "T";
                    xLimitLeft = 1;
                    xLimitRight = 8;
                    yLimit = 18;
                    break;
                case 1:
                    if (y > 0) //if shape can rotate 
                    {
                        btnGrid[x, y].BackColor = Color.Purple;
                        btnGrid[x - 1, y].BackColor = Color.Purple;
                        btnGrid[x, y - 1].BackColor = Color.Purple;
                        btnGrid[x, y + 1].BackColor = Color.Purple;

                        currentShape = "T";
                        xLimitLeft = 1;
                        xLimitRight = 9;
                        yLimit = 18;
                    }
                    break;
                case 2:
                    if (y > 0) //if shape can rotate 
                    {
                        btnGrid[x, y].BackColor = Color.Purple;
                        btnGrid[x + 1, y].BackColor = Color.Purple;
                        btnGrid[x - 1, y].BackColor = Color.Purple;
                        btnGrid[x, y - 1].BackColor = Color.Purple;

                        currentShape = "T";
                        xLimitLeft = 1;
                        xLimitRight = 8;
                        yLimit = 19;
                    }
                    break;
                case 3:
                    if (y > 0) //if shape can rotate 
                    {
                        btnGrid[x, y].BackColor = Color.Purple;
                        btnGrid[x + 1, y].BackColor = Color.Purple;
                        btnGrid[x, y - 1].BackColor = Color.Purple;
                        btnGrid[x, y + 1].BackColor = Color.Purple;

                        currentShape = "T";
                        xLimitLeft = 0;
                        xLimitRight = 8;
                        yLimit = 18;
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

                    currentShape = "Z";
                    xLimitLeft = 1;
                    xLimitRight = 8;
                    yLimit = 18;
                    break;
                case 1:
                    if (y > 0) //if shape can rotate 
                    {
                        btnGrid[x, y].BackColor = Color.Yellow;
                        btnGrid[x, y - 1].BackColor = Color.Yellow;
                        btnGrid[x - 1, y].BackColor = Color.Yellow;
                        btnGrid[x - 1, y + 1].BackColor = Color.Yellow;

                        currentShape = "Z";
                        xLimitLeft = 1;
                        xLimitRight = 9;
                        yLimit = 18;
                    }
                    break;
                case 2:
                    if (y > 0) //if shape can rotate 
                    {
                        btnGrid[x, y].BackColor = Color.Yellow;
                        btnGrid[x, y + 1].BackColor = Color.Yellow;
                        btnGrid[x - 1, y].BackColor = Color.Yellow;
                        btnGrid[x + 1, y + 1].BackColor = Color.Yellow;

                        currentShape = "Z";
                        xLimitLeft = 1;
                        xLimitRight = 8;
                        yLimit = 18;
                    }
                    break;
                case 3:
                    if (y > 0) //if shape can rotate 
                    {
                        btnGrid[x, y].BackColor = Color.Yellow;
                        btnGrid[x, y - 1].BackColor = Color.Yellow;
                        btnGrid[x - 1, y].BackColor = Color.Yellow;
                        btnGrid[x - 1, y + 1].BackColor = Color.Yellow;

                        currentShape = "Z";
                        xLimitLeft = 1;
                        xLimitRight = 9;
                        yLimit = 18;
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

        private void timer1_Tick(object sender, EventArgs e)
        {
            music.Play();
        }






        //UNFINISHED

        private void CheckForLines(Button[,] btnGrid)
        {
            for (int i = 19; i > 1; i--)
            {
                int counter = 0;
                for (int j = 0; j < 10; j++)
                {
                    if (btnGrid[j,i].BackColor != Color.White)
                    {
                        counter++;
                    }
                }
                if (counter == 10)
                {
                    ClearLine(btnGrid, i);
                    for (int l = 0; l < 10; l++)
                    {
                        btnGrid[l, 0].BackColor = Color.White;
                    }
                }
            }
        }

        private void ClearLine(Button[,] btnGrid, int line)
        {
            for (int i = 0; i < 10; i++)
            {
                btnGrid[i, line].BackColor = Color.White;
            }

            for (int j = line-1; j > 0; j--)
            {
                for (int i = 0; i < 10; i++)
                {
                    Color above = btnGrid[i, line - 1].BackColor;
                    btnGrid[i, line].BackColor = above;
                }
            }

            







            /*
            for (int i = line; i > 0; i--)
            {
                for (int j = 0; j < 10; j++)
                {
                    btnGrid[j, i].BackColor = btnGrid[j, i - 1].BackColor;
                }
                i--;
            }
            for (int j = 0; j < 10; j++)
            {
                btnGrid[j, 0].BackColor = Color.White;
            }
            CheckForLines(btnGrid);
            */
        }

        private void TestLineClear(Button[,] btnGrid)
        {
            DropTimer.Enabled = false;
            for (int y = 0; y < 19;  y = y + 2)
            {
                for (int x = 0; x < 9; x++)
                {
                    btnGrid[x, y].BackColor = Color.Red;
                    btnGrid[x, y+1].BackColor = Color.Yellow;
                }
            }
            btnGrid[9, 10].BackColor = Color.Green;
            btnGrid[9, 15].BackColor = Color.Green;
            //btnGrid[9, 5].BackColor = Color.Green;

            CheckForLines(btnGrid);
        }

    }
}


