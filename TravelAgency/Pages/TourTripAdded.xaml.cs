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

namespace TravelAgency.Pages
{
    /// <summary>
    /// Interaction logic for TourTripAdded.xaml
    /// </summary>
    public partial class TourTripAdded : Page
    {
        public TourTripAdded()
        {
            InitializeComponent();
        }
            
        private void Button_Click(object sender, RoutedEventArgs e)
        {
            NavigationService service = NavigationService.GetNavigationService(this);
            service.Navigate(new MainPage());
        }
    }
}
