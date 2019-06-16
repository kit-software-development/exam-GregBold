namespace org
{
    partial class frmMain
    {
        /// <summary>
        /// Требуется переменная конструктора.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Освободить все используемые ресурсы.
        /// </summary>
        /// <param name="disposing">истинно, если управляемый ресурс должен быть удален; иначе ложно.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Код, автоматически созданный конструктором форм Windows

        /// <summary>
        /// Обязательный метод для поддержки конструктора - не изменяйте
        /// содержимое данного метода при помощи редактора кода.
        /// </summary>
        private void InitializeComponent()
        {
            this.приходToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.расходToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.списаниеToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.опцииToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.выходToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.документыToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.остаткиНаСкладеToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.контрагентыToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.поставщикиToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.сотрудникиToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.производительToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.справочникиToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.ТоварToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.категорииToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.EnterButton = new System.Windows.Forms.Button();
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.textBox2 = new System.Windows.Forms.TextBox();
            this.menuStrip1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // приходToolStripMenuItem
            // 
            this.приходToolStripMenuItem.Name = "приходToolStripMenuItem";
            this.приходToolStripMenuItem.Size = new System.Drawing.Size(200, 22);
            this.приходToolStripMenuItem.Text = "Приходные накладные";
            this.приходToolStripMenuItem.Click += new System.EventHandler(this.приходToolStripMenuItem_Click);
            // 
            // расходToolStripMenuItem
            // 
            this.расходToolStripMenuItem.Name = "расходToolStripMenuItem";
            this.расходToolStripMenuItem.Size = new System.Drawing.Size(200, 22);
            this.расходToolStripMenuItem.Text = "Расходные накладные";
            this.расходToolStripMenuItem.Click += new System.EventHandler(this.расходToolStripMenuItem_Click);
            // 
            // списаниеToolStripMenuItem
            // 
            this.списаниеToolStripMenuItem.Name = "списаниеToolStripMenuItem";
            this.списаниеToolStripMenuItem.Size = new System.Drawing.Size(200, 22);
            this.списаниеToolStripMenuItem.Text = "Накладные списания";
            this.списаниеToolStripMenuItem.Click += new System.EventHandler(this.списаниеToolStripMenuItem_Click);
            // 
            // опцииToolStripMenuItem
            // 
            this.опцииToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.выходToolStripMenuItem});
            this.опцииToolStripMenuItem.Name = "опцииToolStripMenuItem";
            this.опцииToolStripMenuItem.Size = new System.Drawing.Size(56, 20);
            this.опцииToolStripMenuItem.Text = "Опции";
            // 
            // выходToolStripMenuItem
            // 
            this.выходToolStripMenuItem.Name = "выходToolStripMenuItem";
            this.выходToolStripMenuItem.Size = new System.Drawing.Size(108, 22);
            this.выходToolStripMenuItem.Text = "Выход";
            this.выходToolStripMenuItem.Click += new System.EventHandler(this.выходToolStripMenuItem_Click);
            // 
            // документыToolStripMenuItem
            // 
            this.документыToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.приходToolStripMenuItem,
            this.расходToolStripMenuItem,
            this.списаниеToolStripMenuItem,
            this.остаткиНаСкладеToolStripMenuItem});
            this.документыToolStripMenuItem.Name = "документыToolStripMenuItem";
            this.документыToolStripMenuItem.Size = new System.Drawing.Size(81, 20);
            this.документыToolStripMenuItem.Text = "Накладные";
            this.документыToolStripMenuItem.Visible = false;
            // 
            // остаткиНаСкладеToolStripMenuItem
            // 
            this.остаткиНаСкладеToolStripMenuItem.Name = "остаткиНаСкладеToolStripMenuItem";
            this.остаткиНаСкладеToolStripMenuItem.Size = new System.Drawing.Size(200, 22);
            this.остаткиНаСкладеToolStripMenuItem.Text = "Остатки в магазине";
            this.остаткиНаСкладеToolStripMenuItem.Click += new System.EventHandler(this.остаткиНаСкладеToolStripMenuItem_Click);
            // 
            // menuStrip1
            // 
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.контрагентыToolStripMenuItem,
            this.справочникиToolStripMenuItem,
            this.документыToolStripMenuItem,
            this.опцииToolStripMenuItem});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(468, 24);
            this.menuStrip1.TabIndex = 2;
            this.menuStrip1.Text = "menuStrip1";
            this.menuStrip1.ItemClicked += new System.Windows.Forms.ToolStripItemClickedEventHandler(this.menuStrip1_ItemClicked);
            // 
            // контрагентыToolStripMenuItem
            // 
            this.контрагентыToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.поставщикиToolStripMenuItem,
            this.сотрудникиToolStripMenuItem,
            this.производительToolStripMenuItem});
            this.контрагентыToolStripMenuItem.Name = "контрагентыToolStripMenuItem";
            this.контрагентыToolStripMenuItem.Size = new System.Drawing.Size(90, 20);
            this.контрагентыToolStripMenuItem.Text = "Контрагенты";
            this.контрагентыToolStripMenuItem.Visible = false;
            // 
            // поставщикиToolStripMenuItem
            // 
            this.поставщикиToolStripMenuItem.Name = "поставщикиToolStripMenuItem";
            this.поставщикиToolStripMenuItem.Size = new System.Drawing.Size(159, 22);
            this.поставщикиToolStripMenuItem.Text = "Поставщики";
            this.поставщикиToolStripMenuItem.Click += new System.EventHandler(this.поставщикиToolStripMenuItem_Click);
            // 
            // сотрудникиToolStripMenuItem
            // 
            this.сотрудникиToolStripMenuItem.Name = "сотрудникиToolStripMenuItem";
            this.сотрудникиToolStripMenuItem.Size = new System.Drawing.Size(159, 22);
            this.сотрудникиToolStripMenuItem.Text = "Сотрудники";
            this.сотрудникиToolStripMenuItem.Click += new System.EventHandler(this.сотрудникиToolStripMenuItem_Click);
            // 
            // производительToolStripMenuItem
            // 
            this.производительToolStripMenuItem.Name = "производительToolStripMenuItem";
            this.производительToolStripMenuItem.Size = new System.Drawing.Size(159, 22);
            this.производительToolStripMenuItem.Text = "Производитель";
            this.производительToolStripMenuItem.Click += new System.EventHandler(this.производительToolStripMenuItem_Click);
            // 
            // справочникиToolStripMenuItem
            // 
            this.справочникиToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.ТоварToolStripMenuItem,
            this.категорииToolStripMenuItem});
            this.справочникиToolStripMenuItem.Name = "справочникиToolStripMenuItem";
            this.справочникиToolStripMenuItem.Size = new System.Drawing.Size(94, 20);
            this.справочникиToolStripMenuItem.Text = "Справочники";
            this.справочникиToolStripMenuItem.Visible = false;
            // 
            // ТоварToolStripMenuItem
            // 
            this.ТоварToolStripMenuItem.Name = "ТоварToolStripMenuItem";
            this.ТоварToolStripMenuItem.Size = new System.Drawing.Size(131, 22);
            this.ТоварToolStripMenuItem.Text = "Товар";
            this.ТоварToolStripMenuItem.Click += new System.EventHandler(this.ТоварToolStripMenuItem_Click);
            // 
            // категорииToolStripMenuItem
            // 
            this.категорииToolStripMenuItem.Name = "категорииToolStripMenuItem";
            this.категорииToolStripMenuItem.Size = new System.Drawing.Size(131, 22);
            this.категорииToolStripMenuItem.Text = "Категории";
            this.категорииToolStripMenuItem.Click += new System.EventHandler(this.категорииToolStripMenuItem_Click);
            // 
            // pictureBox1
            // 
            this.pictureBox1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.pictureBox1.Image = global::org.Properties.Resources.scrivoperte02;
            this.pictureBox1.Location = new System.Drawing.Point(0, 24);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(468, 288);
            this.pictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.pictureBox1.TabIndex = 3;
            this.pictureBox1.TabStop = false;
            // 
            // EnterButton
            // 
            this.EnterButton.Location = new System.Drawing.Point(37, 88);
            this.EnterButton.Name = "EnterButton";
            this.EnterButton.Size = new System.Drawing.Size(75, 23);
            this.EnterButton.TabIndex = 4;
            this.EnterButton.Text = "Вход";
            this.EnterButton.UseVisualStyleBackColor = true;
            this.EnterButton.Click += new System.EventHandler(this.EnterButton_Click);
            // 
            // textBox1
            // 
            this.textBox1.Location = new System.Drawing.Point(12, 36);
            this.textBox1.Name = "textBox1";
            this.textBox1.Size = new System.Drawing.Size(100, 20);
            this.textBox1.TabIndex = 5;
            // 
            // textBox2
            // 
            this.textBox2.Location = new System.Drawing.Point(12, 62);
            this.textBox2.Name = "textBox2";
            this.textBox2.PasswordChar = '*';
            this.textBox2.Size = new System.Drawing.Size(100, 20);
            this.textBox2.TabIndex = 6;
            // 
            // frmMain
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(468, 312);
            this.Controls.Add(this.textBox2);
            this.Controls.Add(this.textBox1);
            this.Controls.Add(this.EnterButton);
            this.Controls.Add(this.pictureBox1);
            this.Controls.Add(this.menuStrip1);
            this.Name = "frmMain";
            this.Text = "ООО «Компания НПХ»";
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.ToolStripMenuItem приходToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem расходToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem списаниеToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem опцииToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem выходToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem документыToolStripMenuItem;
        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.ToolStripMenuItem справочникиToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem ТоварToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem категорииToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem контрагентыToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem поставщикиToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem сотрудникиToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem остаткиНаСкладеToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem производительToolStripMenuItem;
        private System.Windows.Forms.Button EnterButton;
        private System.Windows.Forms.TextBox textBox1;
        private System.Windows.Forms.TextBox textBox2;
    }
}

