using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CheckBoxProject
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cmdEnviar_Click(object sender, EventArgs e)
        {
            //exemplo do aluno
            List<string> selecionados = new List<string>();

            foreach (ListItem listItem in chkLinguagem.Items)
            {
                if (listItem.Selected)
                {
                    selecionados.Add(listItem.Text);
                }
            }

            //exibir na tela
            //for (int i = 0; i < selecionados.Count; i++)
            //{
            //    Response.Write(selecionados[i].ToString());
            //}

            //string _str = string.Join(";", selecionados.ToArray());
            //Response.Write(_str);
        }

        protected void chkLinguagem_SelectedIndexChanged(object sender, EventArgs e)
        {
            Response.Write(chkLinguagem.SelectedValue.ToString());
        }

        protected void chkAceito_CheckedChanged(object sender, EventArgs e)
        {
            if (chkAceito.Checked)
                cmdGravar.Visible = true;
            else
                cmdGravar.Visible = false;
        }
    }
}