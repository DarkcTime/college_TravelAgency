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
    /// Interaction logic for SearchResultHotel.xaml
    /// </summary>
    public partial class SearchResultHotel : Page
    {

        private Model.Hotel Hotel { get; set; }
        public SearchResultHotel(Model.Hotel _hotel)
        {
            InitializeComponent();
            Hotel = _hotel; 
            this.CmbCountries.ItemsSource = Models.context.Countries.ToList();
            this.CmbStars.ItemsSource = Models.context.NumStars.ToList();
            this.DataGridGetOrder.ItemsSource = Models.context.TouristTrips.Where(i => i.HotelId == Hotel.IdHotel).ToList();
            Models.FillFields(Hotel, this.TbxName, this.TbxPrice, 
                this.CmbCountries, this.CmbStars);
        }

        private void Button_ClickBack(object sender, RoutedEventArgs e)
        {
            HelperClass.OpenNewPage(this, new MainPage());
        }
        private void Button_ClickSave(object sender, RoutedEventArgs e)
        {
            try
            {
                if (HelperClass.CheckFields(this.TbxName.Text, this.TbxPrice.Text))
                {
                    Models.SaveEdit(Hotel, this.TbxName.Text, this.TbxPrice.Text
                        ,(Model.Country)this.CmbCountries.SelectedItem
                        ,(Model.NumStar)this.CmbStars.SelectedItem);
                    Information.MessageBoxInformation("Данные об отеле успешно изменены");
                    HelperClass.OpenNewPage(this, new MainPage());
                }
                else
                {
                    Information.MessageBoxWarning("Все поля содержание * должны быть коррентно заполнены");
                }
                    
            }
            catch (Exception ex)
            {
                Information.MessageBoxError(ex);
            }

        }
        private void Button_ClickRemove(object sender, RoutedEventArgs e)
        {
            try
            {
                Models.Remove(Hotel);
                Information.MessageBoxInformation("Выбранный отель успешно удален");
                HelperClass.OpenNewPage(this, new MainPage());
            }
            catch (Exception ex)
            {
                Information.MessageBoxError(ex);
            }
        }
    }
}
