﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace org
{
    public partial class frmExpense : Form
    {
        public frmExpense()
        {
            InitializeComponent();
        }

        private void frmExpense_Load(object sender, EventArgs e)
        {
            // TODO: данная строка кода позволяет загрузить данные в таблицу "orgDataSet.Остаток". При необходимости она может быть перемещена или удалена.
            this.остатокTableAdapter.Fill(this.orgDataSet.Остаток);
            // TODO: данная строка кода позволяет загрузить данные в таблицу "orgDataSet.Сотрудник". При необходимости она может быть перемещена или удалена.
            this.сотрудникTableAdapter.Fill(this.orgDataSet.Сотрудник);

            // TODO: данная строка кода позволяет загрузить данные в таблицу "orgDataSet.СоставРасхода". При необходимости она может быть перемещена или удалена.
            this.составРасходаTableAdapter.Fill(this.orgDataSet.СоставРасхода);
            // TODO: данная строка кода позволяет загрузить данные в таблицу "orgDataSet.Расход". При необходимости она может быть перемещена или удалена.
            this.расходTableAdapter.Fill(this.orgDataSet.Расход);
            dataGridView1_Click(sender, e);

        }

        private void button7_Click(object sender, EventArgs e)
        {
            составРасходаBindingSource.AddNew();
            DataRowView drw = составРасходаBindingSource.Current as DataRowView;
            drw["РасходНомер"] = dataGridView1.Rows[dataGridView1.CurrentRow.Index].Cells[0].Value;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            расходTableAdapter.Update(orgDataSet.Расход);
            button4_Click(sender, e);
        }

        private void button4_Click(object sender, EventArgs e)
        {
            this.расходTableAdapter.Fill(this.orgDataSet.Расход);
            dataGridView1_Click(sender, e);
        }

        private void button5_Click(object sender, EventArgs e)
        {
            this.составРасходаTableAdapter.Fill(this.orgDataSet.СоставРасхода);
        }

        private void button8_Click(object sender, EventArgs e)
        {
            DataRowView drw = составРасходаBindingSource.Current as DataRowView;
            drw["РасходНомер"] = dataGridView1.Rows[dataGridView1.CurrentRow.Index].Cells[0].Value;
            составРасходаTableAdapter.Update(orgDataSet.СоставРасхода);
            button5_Click(sender, e);
        }

        private void button3_Click(object sender, EventArgs e)
        {
            DialogResult result = MessageBox.Show("Удалить запись?", "Диалог удаления записи", MessageBoxButtons.YesNo, MessageBoxIcon.Question);

            if (result == DialogResult.Yes) //Если нажал Да
            {
                расходBindingSource.RemoveCurrent();
            }
        }

        private void button6_Click(object sender, EventArgs e)
        {
            DialogResult result = MessageBox.Show("Удалить запись?", "Диалог удаления записи", MessageBoxButtons.YesNo, MessageBoxIcon.Question);

            if (result == DialogResult.Yes) //Если нажал Да
            {
                составРасходаBindingSource.RemoveCurrent();
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            расходBindingSource.AddNew();
            dataGridView1.Rows[dataGridView1.CurrentRow.Index].Cells[1].Value = DateTime.Today;
            dataGridView1.Rows[dataGridView1.CurrentRow.Index].Cells[3].Value = 0;
            dataGridView1.Rows[dataGridView1.CurrentRow.Index].Cells[4].Value = "Нет";
        }

        private void dataGridView1_Click(object sender, EventArgs e)
        {
            if (dataGridView1.CurrentRow != null)
            {
                составРасходаBindingSource.Filter = "РасходНомер=" + (dataGridView1.Rows[dataGridView1.CurrentRow.Index].Cells[0].Value);
                if (dataGridView1.Rows[dataGridView1.CurrentRow.Index].Cells[4].Value.ToString() == "Да")
                {
                    dataGridView2.Enabled = false;
                    button9.Enabled = false;
                    button7.Enabled = false;
                    button6.Enabled = false;
                    button8.Enabled = false;
                    button5.Enabled = false;
                }
                else
                {
                    dataGridView2.Enabled = true;
                    button9.Enabled = true;
                    button7.Enabled = true;
                    button6.Enabled = true;
                    button8.Enabled = true;
                    button5.Enabled = true;

                }
            }
        }

        private void button9_Click(object sender, EventArgs e)
        {
            dataGridView1.Rows[dataGridView1.CurrentRow.Index].Cells[4].Value = "Да";
            Validate();
            расходBindingSource.EndEdit();
            расходTableAdapter.Update(orgDataSet.Расход);
            расходTableAdapter.UPD_EXPSUM((int) dataGridView1.Rows[dataGridView1.CurrentRow.Index].Cells[0].Value);


            int i, CountRow, IdStore, CountStore;

            CountRow = dataGridView2.RowCount-1;
            for (i = 0; i < CountRow; i++)
            {
                IdStore = (int) dataGridView2.Rows[i].Cells[1].Value;
                CountStore = (int) dataGridView2.Rows[i].Cells[3].Value;
                остатокTableAdapter.UPD_STORE(CountStore, IdStore);
            }

            расходTableAdapter.Fill(this.orgDataSet.Расход);
            dataGridView1_Click(sender, e);
        }

        private void button10_Click(object sender, EventArgs e)
        {
            {// создаем приложение Excel 
                Microsoft.Office.Interop.Excel._Application app = new Microsoft.Office.Interop.Excel.Application();
                // создаем новую книгу 
                Microsoft.Office.Interop.Excel._Workbook workbook = app.Workbooks.Add(Type.Missing);
                // создаем новый лист 
                Microsoft.Office.Interop.Excel._Worksheet worksheet = null;
                // приложение видимо 
                app.Visible = true;
                // связь с листом 
                worksheet = workbook.ActiveSheet;
                // переименование листа 
                worksheet.Name = "Расходная накладная №" + dataGridView1.Rows[dataGridView1.CurrentRow.Index].Cells[0].FormattedValue.ToString();

                worksheet.Cells[2, 1] = "Расходная накладная №" + dataGridView1.Rows[dataGridView1.CurrentRow.Index].Cells[0].FormattedValue.ToString();

                worksheet.Cells[4, 1] = "Дата:";
                worksheet.Cells[4, 2] = dataGridView1.Rows[dataGridView1.CurrentRow.Index].Cells[1].FormattedValue.ToString();
                worksheet.Cells[5, 1] = "Сотрудник:";
                worksheet.Cells[5, 2] = dataGridView1.Rows[dataGridView1.CurrentRow.Index].Cells[2].FormattedValue.ToString();
                worksheet.Cells[6, 1] = "Сумма:";
                worksheet.Cells[6, 2] = dataGridView1.Rows[dataGridView1.CurrentRow.Index].Cells[3].FormattedValue.ToString();
                worksheet.Cells[7, 1] = "Проведено:";
                worksheet.Cells[7, 2] = dataGridView1.Rows[dataGridView1.CurrentRow.Index].Cells[4].FormattedValue.ToString();


                worksheet.Cells[2, 4] = "Товары накладной:";
                worksheet.Cells[4, 4] = "Товар";
                worksheet.Cells[4, 5] = "Цена";
                worksheet.Cells[4, 6] = "Количество";

                int i, rowcount;
                rowcount = dataGridView2.RowCount - 1;

                for (i = 0; i < rowcount; i++)
                {
                    worksheet.Cells[i + 5, 4] = dataGridView2.Rows[i].Cells[1].FormattedValue.ToString();
                    worksheet.Cells[i + 5, 5] = dataGridView2.Rows[i].Cells[2].FormattedValue.ToString();
                    worksheet.Cells[i + 5, 6] = dataGridView2.Rows[i].Cells[3].FormattedValue.ToString();
                }

                worksheet.Range["A4:B8"].Borders.LineStyle = 1;
                worksheet.Range["D4:F" + (4 + rowcount).ToString()].Borders.LineStyle = 1;

                // устанавливаем жирный шрифт для заголовков 
                (worksheet.Rows[2, Type.Missing]).Font.Bold = true;
                (worksheet.Columns[1, Type.Missing]).Font.Bold = true;
                // авто-размер столбцов 
                worksheet.Columns.AutoFit();

                // сохранение файла 
                workbook.SaveAs("Расходная накладная №" + dataGridView1.Rows[dataGridView1.CurrentRow.Index].Cells[0].FormattedValue.ToString() + ".xlsx", Type.Missing, Type.Missing, Type.Missing, Type.Missing, Type.Missing, Microsoft.Office.Interop.Excel.XlSaveAsAccessMode.xlExclusive, Type.Missing, Type.Missing, Type.Missing, Type.Missing);

            }
        }
    }
}
