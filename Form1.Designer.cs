namespace Actividad_1._1_Lenguaje_III
{
    partial class Form1
    {
        /// <summary>
        /// Variable del diseñador necesaria.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Limpiar los recursos que se estén usando.
        /// </summary>
        /// <param name="disposing">true si los recursos administrados se deben desechar; false en caso contrario.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Código generado por el Diseñador de Windows Forms

        /// <summary>
        /// Método necesario para admitir el Diseñador. No se puede modificar
        /// el contenido de este método con el editor de código.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Form1));
            this.Nombre = new System.Windows.Forms.Label();
            this.fechaNac = new System.Windows.Forms.Label();
            this.Direccion = new System.Windows.Forms.Label();
            this.CTnombre = new System.Windows.Forms.TextBox();
            this.CTfechaNac = new System.Windows.Forms.TextBox();
            this.CTdireccion = new System.Windows.Forms.TextBox();
            this.Datos = new System.Windows.Forms.GroupBox();
            this.Estados = new System.Windows.Forms.ListBox();
            this.Horarios = new System.Windows.Forms.GroupBox();
            this.Matutino = new System.Windows.Forms.RadioButton();
            this.Vespertino = new System.Windows.Forms.RadioButton();
            this.Guardar = new System.Windows.Forms.Button();
            this.Datos.SuspendLayout();
            this.Horarios.SuspendLayout();
            this.SuspendLayout();
            // 
            // Nombre
            // 
            this.Nombre.AutoSize = true;
            this.Nombre.BackColor = System.Drawing.Color.White;
            this.Nombre.Font = new System.Drawing.Font("Century Gothic", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Nombre.Location = new System.Drawing.Point(30, 20);
            this.Nombre.Name = "Nombre";
            this.Nombre.Size = new System.Drawing.Size(153, 21);
            this.Nombre.TabIndex = 0;
            this.Nombre.Text = "Nombre completo";
            // 
            // fechaNac
            // 
            this.fechaNac.AutoSize = true;
            this.fechaNac.BackColor = System.Drawing.Color.White;
            this.fechaNac.Font = new System.Drawing.Font("Century Gothic", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.fechaNac.Location = new System.Drawing.Point(6, 56);
            this.fechaNac.Name = "fechaNac";
            this.fechaNac.Size = new System.Drawing.Size(177, 21);
            this.fechaNac.TabIndex = 1;
            this.fechaNac.Text = "Fecha de nacimiento";
            // 
            // Direccion
            // 
            this.Direccion.AutoSize = true;
            this.Direccion.Font = new System.Drawing.Font("Century Gothic", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Direccion.Location = new System.Drawing.Point(99, 91);
            this.Direccion.Name = "Direccion";
            this.Direccion.Size = new System.Drawing.Size(83, 21);
            this.Direccion.TabIndex = 2;
            this.Direccion.Text = "Dirección";
            // 
            // CTnombre
            // 
            this.CTnombre.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(192)))), ((int)(((byte)(192)))));
            this.CTnombre.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.CTnombre.ForeColor = System.Drawing.Color.Firebrick;
            this.CTnombre.Location = new System.Drawing.Point(197, 26);
            this.CTnombre.Name = "CTnombre";
            this.CTnombre.Size = new System.Drawing.Size(187, 14);
            this.CTnombre.TabIndex = 3;
            // 
            // CTfechaNac
            // 
            this.CTfechaNac.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(192)))), ((int)(((byte)(192)))));
            this.CTfechaNac.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.CTfechaNac.ForeColor = System.Drawing.Color.Firebrick;
            this.CTfechaNac.Location = new System.Drawing.Point(197, 61);
            this.CTfechaNac.Name = "CTfechaNac";
            this.CTfechaNac.Size = new System.Drawing.Size(187, 14);
            this.CTfechaNac.TabIndex = 4;
            // 
            // CTdireccion
            // 
            this.CTdireccion.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(192)))), ((int)(((byte)(192)))));
            this.CTdireccion.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.CTdireccion.ForeColor = System.Drawing.Color.Firebrick;
            this.CTdireccion.Location = new System.Drawing.Point(197, 96);
            this.CTdireccion.Name = "CTdireccion";
            this.CTdireccion.Size = new System.Drawing.Size(187, 14);
            this.CTdireccion.TabIndex = 5;
            // 
            // Datos
            // 
            this.Datos.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None;
            this.Datos.Controls.Add(this.Direccion);
            this.Datos.Controls.Add(this.CTdireccion);
            this.Datos.Controls.Add(this.fechaNac);
            this.Datos.Controls.Add(this.CTfechaNac);
            this.Datos.Controls.Add(this.Nombre);
            this.Datos.Controls.Add(this.CTnombre);
            this.Datos.Font = new System.Drawing.Font("Century Gothic", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Datos.ForeColor = System.Drawing.Color.IndianRed;
            this.Datos.Location = new System.Drawing.Point(9, 9);
            this.Datos.Name = "Datos";
            this.Datos.Size = new System.Drawing.Size(390, 131);
            this.Datos.TabIndex = 6;
            this.Datos.TabStop = false;
            this.Datos.Text = "Datos";
            // 
            // Estados
            // 
            this.Estados.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.Estados.Font = new System.Drawing.Font("Century Gothic", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Estados.ForeColor = System.Drawing.Color.IndianRed;
            this.Estados.FormattingEnabled = true;
            this.Estados.ItemHeight = 17;
            this.Estados.Items.AddRange(new object[] {
            "Aguascalientes",
            "Baja California",
            "Baja California Sur",
            "Campeche",
            "Coahuila",
            "Colima",
            "Chiapas",
            "Chihuahua",
            "Durango",
            "Distrito Federal",
            "Guanajuato",
            "Guerrero",
            "Hidalgo",
            "Jalisco",
            "México",
            "Michoacán",
            "Morelos",
            "Nayarit",
            "Nuevo León",
            "Oaxaca",
            "Puebla",
            "Querétaro",
            "Quintana Roo",
            "San Luis Potosí",
            "Sinaloa",
            "Sonora",
            "Tabasco",
            "Tamaulipas",
            "Tlaxcala",
            "Veracruz",
            "Yucatán",
            "Zacatecas"});
            this.Estados.Location = new System.Drawing.Point(9, 146);
            this.Estados.Name = "Estados";
            this.Estados.Size = new System.Drawing.Size(197, 204);
            this.Estados.TabIndex = 7;
            this.Estados.SelectedIndexChanged += new System.EventHandler(this.Estado_SelectedIndexChanged);
            // 
            // Horarios
            // 
            this.Horarios.Controls.Add(this.Vespertino);
            this.Horarios.Controls.Add(this.Matutino);
            this.Horarios.Font = new System.Drawing.Font("Century Gothic", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Horarios.ForeColor = System.Drawing.Color.IndianRed;
            this.Horarios.Location = new System.Drawing.Point(222, 146);
            this.Horarios.Name = "Horarios";
            this.Horarios.Size = new System.Drawing.Size(177, 143);
            this.Horarios.TabIndex = 8;
            this.Horarios.TabStop = false;
            this.Horarios.Text = "Horarios";
            // 
            // Matutino
            // 
            this.Matutino.AutoSize = true;
            this.Matutino.Font = new System.Drawing.Font("Century Gothic", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Matutino.Location = new System.Drawing.Point(6, 31);
            this.Matutino.Name = "Matutino";
            this.Matutino.Size = new System.Drawing.Size(84, 21);
            this.Matutino.TabIndex = 0;
            this.Matutino.TabStop = true;
            this.Matutino.Text = "Matutino";
            this.Matutino.UseVisualStyleBackColor = true;
            // 
            // Vespertino
            // 
            this.Vespertino.AutoSize = true;
            this.Vespertino.Font = new System.Drawing.Font("Century Gothic", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Vespertino.Location = new System.Drawing.Point(6, 57);
            this.Vespertino.Name = "Vespertino";
            this.Vespertino.Size = new System.Drawing.Size(94, 21);
            this.Vespertino.TabIndex = 1;
            this.Vespertino.TabStop = true;
            this.Vespertino.Text = "Vespertino";
            this.Vespertino.UseVisualStyleBackColor = true;
            // 
            // Guardar
            // 
            this.Guardar.BackColor = System.Drawing.Color.IndianRed;
            this.Guardar.Font = new System.Drawing.Font("Century Gothic", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Guardar.ForeColor = System.Drawing.Color.White;
            this.Guardar.Location = new System.Drawing.Point(272, 315);
            this.Guardar.Name = "Guardar";
            this.Guardar.Size = new System.Drawing.Size(111, 35);
            this.Guardar.TabIndex = 9;
            this.Guardar.Text = "Guardar";
            this.Guardar.UseVisualStyleBackColor = false;
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.White;
            this.ClientSize = new System.Drawing.Size(421, 371);
            this.Controls.Add(this.Guardar);
            this.Controls.Add(this.Horarios);
            this.Controls.Add(this.Estados);
            this.Controls.Add(this.Datos);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "Form1";
            this.Text = "Expediente de Alumno";
            this.Datos.ResumeLayout(false);
            this.Datos.PerformLayout();
            this.Horarios.ResumeLayout(false);
            this.Horarios.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Label Nombre;
        private System.Windows.Forms.Label fechaNac;
        private System.Windows.Forms.Label Direccion;
        private System.Windows.Forms.TextBox CTnombre;
        private System.Windows.Forms.TextBox CTfechaNac;
        private System.Windows.Forms.TextBox CTdireccion;
        private System.Windows.Forms.GroupBox Datos;
        private System.Windows.Forms.ListBox Estados;
        private System.Windows.Forms.GroupBox Horarios;
        private System.Windows.Forms.RadioButton Vespertino;
        private System.Windows.Forms.RadioButton Matutino;
        private System.Windows.Forms.Button Guardar;
    }
}

