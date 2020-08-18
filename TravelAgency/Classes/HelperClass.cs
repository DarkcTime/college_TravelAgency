using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Controls;
using System.Windows.Navigation;

namespace TravelAgency.Classes
{
    class HelperClass
    {
        /// <summary>
        /// Осуществляет переход между страницами
        /// </summary>
        /// <param name="obj">объект текущего окна</param>
        /// <param name="page">страница для перехода</param>
        public static void OpenNewPage(System.Windows.DependencyObject obj, Page page)
        {
            NavigationService service = NavigationService.GetNavigationService(obj);
            service.Navigate(page);
        }

        public static bool CheckFields(string name,string price, Model.Country country)
        {
            if (String.IsNullOrWhiteSpace(name) || String.IsNullOrWhiteSpace(price)
                || country == null) return false;
            return true; 
        }
        public static bool CheckFields(string name, string price)
        {
            if (String.IsNullOrWhiteSpace(name) || String.IsNullOrWhiteSpace(price)) return false;
            return true;
        }
    }
}
