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
    /// Interaction logic for SearchResultAirlane.xaml
    /// </summary>
    public partial class SearchResultAirlane : Page
    {
        private Model.Airlane Airlane { get; set; }

        public SearchResultAirlane(Model.Airlane _airlane)
        {
            InitializeComponent();
            Airlane = _airlane;
            this.CmbCountries.ItemsSource = Models.context.Countries.ToList();
            this.DataGridGetOrder.ItemsSource = Models.context.TouristTrips.Where(i =>
            i.AirlineId == Airlane.IdAirlane).ToList();
            Models.FillFields(Airlane, this.TbxName, this.TbxPrice, this.CmbCountries);
            
        }



        private void Button_ClickBack(object sender, RoutedEventArgs e)
        {
            HelperClass.OpenNewPage(this, new MainPage());
        }
        private void Button_ClickSave(object sender, RoutedEventArgs e)
        {
            try
            {
                if (HelperClass.CheckFields(this.TbxName.Text, this.TbxPrice.Text, 
                    (Model.Country)this.CmbCountries.SelectedItem))
                {
                    Models.SaveEdit(Airlane, this.TbxName.Text, this.TbxPrice.Text, 
                        (Model.Country)this.CmbCountries.SelectedItem);
                    Information.MessageBoxInformation("Данные о авиалинии успешно изменены");
                    HelperClass.OpenNewPage(this, new MainPage());
                }
                else
                {
                    Information.MessageBoxWarning("Все поля содержащие * должны быть корректно заполнены");
                }
            }
            catch (Exception ex)
            {
                Information.MessageBoxError(ex.ToString());
            }
            
        }
        private void Button_ClickRemove(object sender, RoutedEventArgs e)
        {
            try
            {
                Models.Remove(Airlane);
                Information.MessageBoxInformation("Авиалиния успешно удалена из базы данных");
                HelperClass.OpenNewPage(this, new MainPage());
            }
            catch (Exception ex)
            {
                Information.MessageBoxError(ex);
            }
        }
    }
}
