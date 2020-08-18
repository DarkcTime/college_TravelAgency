using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Navigation;

namespace TravelAgency.Classes
{
    class Information
    {
        public static void MessageBoxError(string message)
        {
            MessageBox.Show(message, "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error); 
        }

        public static void MessageBoxError(Exception ex)
        {
            MessageBox.Show(ex.Message, "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
        }

        public static void MessageBoxWarning(string message)
        {
            MessageBox.Show(message, "Попробуйте еще раз", MessageBoxButton.OK, MessageBoxImage.Warning);
        }
        public static void MessageBoxInformation(string message)
        {
            MessageBox.Show(message, "Попробуйте еще раз", MessageBoxButton.OK, MessageBoxImage.Information);
        }

        

    }
}
