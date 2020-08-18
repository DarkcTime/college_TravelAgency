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

namespace TravelAgency.Pages
{
    /// <summary>
    /// Interaction logic for Statistics.xaml
    /// </summary>
    public partial class Statistics : Page
    {
        public Statistics()
        {
            InitializeComponent();
            this.DataGridGetOrder.ItemsSource = Models.context.TouristTrips.ToList(); 
            this.TxtCountTours.Text = $"Количество оформленных туров: {Models.context.TouristTrips.Count()}";
            decimal fullPrice = 0;
            foreach (Model.TouristTrip tour in Models.context.TouristTrips.ToList())
            {
                fullPrice += tour.FullPrice; 
            }
            
            this.TxtFullSum.Text = $"Общая стоимость путевок: {fullPrice}";
            this.TxtCountHotels.Text = $"Отели партнеры: {Models.context.Hotels.Count()}";
            this.TxtCountAirlanes.Text = $"Авиалинии партнёры: {Models.context.Airlanes.Count()}";
            
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            NavigationService service = NavigationService.GetNavigationService(this);
            service.Navigate(new Pages.MainPage());
        }


    }
}
