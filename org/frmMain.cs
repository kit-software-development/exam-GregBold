using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace org
{
    public partial class frmMain : Form
    {
        public frmMain()
        {
            InitializeComponent();
        }

        private void поставщикиToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmCaterer newForm = new frmCaterer();
            newForm.Text = "Поставщики";
            newForm.Show();
        }

        private void сотрудникиToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmWorker newForm = new frmWorker();
            newForm.Text = "Сотрудники";
            newForm.Show();
        }

        private void ТоварToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmMerch newForm = new frmMerch();
            newForm.Text = "Товары";
            newForm.Show();
        }

        private void категорииToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmCategory newForm = new frmCategory();
            newForm.Text = "Категории";
            newForm.Show();
        }

        private void подразделенияToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void приходToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmIncome newForm = new frmIncome();
            newForm.Text = "Приходные накладные";
            newForm.Show();
        }

        private void расходToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmExpense newForm = new frmExpense();
            newForm.Text = "Расходные накладные";
            newForm.Show();
        }

        private void списаниеToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmDeduction newForm = new frmDeduction();
            newForm.Text = "Накладные списания";
            newForm.Show();
        }

        private void выходToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void количествоЗакупленныхТоваровToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void остаткиНаСкладеToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmStore newForm = new frmStore();
            newForm.Text = "Остатки";
            newForm.Show();
        }

        private void суммаЗакупленныхТоваровToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void количествоПереданныхТоваровПоПодразделениямToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void menuStrip1_ItemClicked(object sender, ToolStripItemClickedEventArgs e)
        {

        }

        private void производительToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmProducer newForm = new frmProducer();
            newForm.Text = "Производитель";
            newForm.Show();
        }

        private void EnterButton_Click(object sender, EventArgs e)
        {
            if ((textBox1.Text == "admin") && (textBox2.Text == "master"))
            {
                контрагентыToolStripMenuItem.Visible = true;
                справочникиToolStripMenuItem.Visible = true;
                документыToolStripMenuItem.Visible = true;
                textBox1.Hide();
                textBox2.Hide();
                EnterButton.Hide();
            }
            else
                MessageBox.Show("Введена не верная пара логин/пароль");

            textBox1.Clear();
            textBox2.Clear();

        }
    }
}
