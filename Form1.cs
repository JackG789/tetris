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
            createDisplayGrid();
        }

        private void createDisplayGrid()
        {
            int width = 30;
            int height = 30;
            Button[,] btnGrid = new Button[10, 20];

            for (int y = 0; y < 20; y++)
            {
                for (int x = 0; x < 10; x++)
                {
                    btnGrid[x, y] = new Button();
                    btnGrid[x, y].SetBounds(80 + (width*x), 40 + (height *y), width, height);
                    Controls.Add(btnGrid[x, y]);
                }
            }
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }
    }
}
