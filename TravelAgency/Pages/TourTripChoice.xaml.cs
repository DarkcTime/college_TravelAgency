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
    /// Interaction logic for TourTripChoice.xaml
    /// </summary>
    public partial class TourTripChoice : Page
    {
        private Model.Client Client { get; set; }

        private bool isNewClient { get; set; }

        private byte NumberWeek { get; set; }

        private decimal Price { get; set; }

        public TourTripChoice(Model.Client _client, bool _isNewClient)
        {
            InitializeComponent();
            Client = _client;
            this.TxtClient.Text = $"{Client.FirstName} {Client.MiddleName} {Client.LastName}";
            isNewClient = _isNewClient;

            CmbAirlanes.ItemsSource = Models.context.Airlanes.ToList();
            CmbHotels.ItemsSource = Models.context.Hotels.ToList();
            CmbAirlanes.SelectedItem = Models.context.Airlanes.FirstOrDefault();
            CmbHotels.SelectedItem = Models.context.Hotels.FirstOrDefault();


            NumberWeek = 1;
            SetTxtPrice();
            this.TxtNumWeek.Text = NumberWeek.ToString();


        }

        private void UpdateNumberWeek(bool isPlus)
        {

            if (isPlus)
            {
                if (NumberWeek == 4) return;
                NumberWeek++; 
            }
            else
            {
                if (NumberWeek == 1) return;
                NumberWeek--; 
            }
            this.TxtNumWeek.Text = NumberWeek.ToString(); 

        }

        private decimal UpdatePrice()
        {
            if(CmbAirlanes.SelectedItem != null && CmbHotels.SelectedItem != null)
            {
                Model.Airlane airlane = (Model.Airlane)this.CmbAirlanes.SelectedItem;
                this.TxtPriceAirlane.Text = airlane.Price.ToString(); 
                Model.Hotel hotel = (Model.Hotel)this.CmbHotels.SelectedItem;
                this.TxtPriceHotel.Text = hotel.PriceOneWeek.ToString();
                return (NumberWeek * hotel.PriceOneWeek) + airlane.Price;
            }
            return 0; 
 
        }

        private void SetTxtPrice()
        {
            Price = UpdatePrice();
            this.TxtPrice.Text = $"{Price}$"; 
        }

        private void Button_ClickMinus(object sender, RoutedEventArgs e)
        {
            UpdateNumberWeek(false);
            SetTxtPrice();
        }

        private void Button_ClickPlus(object sender, RoutedEventArgs e)
        {
            UpdateNumberWeek(true);
            SetTxtPrice();
        }

        private void CmbHotels_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            SetTxtPrice();
        }

        private void CmbAirlanes_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            SetTxtPrice();
        }

        //открывает окно с выбором клиента
        private void Button_ClickBack(object sender, RoutedEventArgs e)
        {
            NavigationService service = NavigationService.GetNavigationService(this);
            service.Navigate(new Pages.CustomerChoice()); 
        }

        private void CreateNewTouristTrip(Model.Hotel hotel, Model.Airlane airlane)
        {
            if (isNewClient)
            {
                Models.context.Clients.Add(Client);
                Models.context.SaveChanges();
                Client = Models.context.Clients.Where(i => i.IdClient == Client.IdClient).FirstOrDefault();
            }
            
            var tourTrip = new Model.TouristTrip()
            {
                ClientId = Client.IdClient,
                FullPrice = Price,
                HotelId = hotel.IdHotel,
                AirlineId = airlane.IdAirlane,
                TimeTravelId = NumberWeek.ToString()
            };
            Models.context.TouristTrips.Add(tourTrip);
            Models.context.SaveChanges();
        }

        private void Button_ClickAgree(object sender, RoutedEventArgs e)
        {
            try
            {

                CreateNewTouristTrip((Model.Hotel)this.CmbHotels.SelectedItem, (Model.Airlane)this.CmbAirlanes.SelectedItem);

                NavigationService service = NavigationService.GetNavigationService(this);
                service.Navigate(new Pages.TourTripAdded()); 
            }
            catch (Exception ex)
            {
                Information.MessageBoxError(ex.Message);
            }
        }
    }
}
