using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using TravelAgency.Classes;

namespace TravelAgency.Windows
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class Auth : Window
    {
        public Auth()
        {
            InitializeComponent();
        }

        //открывает главное окно в случае удачной авторизации
        private void ClickBtnSing(object sender, RoutedEventArgs e)
        {
            try
            {
                if (Models.AuthUser(this.TxbLogin.Text, this.PsbPassword.Password))
                {
                    this.OpenMainWindow(); 
                }
                else
                {
                    Information.MessageBoxWarning("Неправильный логин или пароль");
                }
            }
            catch (Exception ex)
            {
                Information.MessageBoxError(ex.Message); 
            }

        }

        //закрывает приложение
        private void ClickBtnExit(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown(); 
        }

        private void OpenMainWindow()
        {
            Windows.MainWindow mainWindow = new Windows.MainWindow();
            mainWindow.Show();
            this.Close();
        }

    }
}
