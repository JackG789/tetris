
namespace Tetris
{
    partial class FrmTetris
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.lblXY = new System.Windows.Forms.Label();
            this.DropTimer = new System.Windows.Forms.Timer(this.components);
            this.SuspendLayout();
            // 
            // lblXY
            // 
            this.lblXY.AutoSize = true;
            this.lblXY.Location = new System.Drawing.Point(497, 26);
            this.lblXY.Name = "lblXY";
            this.lblXY.Size = new System.Drawing.Size(0, 13);
            this.lblXY.TabIndex = 0;
            // 
            // DropTimer
            // 
            this.DropTimer.Interval = 500;
            this.DropTimer.Tick += new System.EventHandler(this.DropTimer_Tick);
            // 
            // FrmTetris
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(564, 701);
            this.Controls.Add(this.lblXY);
            this.Name = "FrmTetris";
            this.Text = "Tetris";
            this.Load += new System.EventHandler(this.FrmTetris_Load);
            this.KeyDown += new System.Windows.Forms.KeyEventHandler(this.FrmTetris_KeyDown);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label lblXY;
        private System.Windows.Forms.Timer DropTimer;
    }
}