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
    /// Interaction logic for SearchResultClient.xaml
    /// </summary>
    public partial class SearchResultClient : Page
    {
        private Model.Client Client { get; set; }

        public SearchResultClient(Model.Client _client)
        {
            InitializeComponent();
            Client = _client;
            SetValuesForCustomer(Client);
            this.DataGridGetOrder.ItemsSource = Models.context.TouristTrips.Where(i => i.ClientId == Client.IdClient).ToList();
            this.CmbCountries.ItemsSource = Models.context.Countries.ToList();
        }


        private bool CheckFields()
        {
            if (String.IsNullOrWhiteSpace(this.TbxFirstName.Text) || String.IsNullOrWhiteSpace(this.TbxMiddleName.Text)
                || String.IsNullOrWhiteSpace(this.TbxNumber.Text)
                || String.IsNullOrWhiteSpace(this.TbxLastPassport.Text)
                || TbxLastPassport.Text.Length != 10
                || CmbCountries.SelectedItem == null)
            {
                return false;
            }
            return true;
        }

        private void SetValuesForCustomer(Model.Client client)
        {
            this.TbxFirstName.Text = client.FirstName;
            this.TbxMiddleName.Text = client.MiddleName;
            this.TbxLastName.Text = client.LastName;
            this.TbxNumber.Text = client.NumberPhone;
            this.TbxLastPassport.Text = client.DataPassport;
            Model.Country country = Models.context.Countries.Where(i => i.IdCountry == client.NationalityId).FirstOrDefault();
            this.CmbCountries.SelectedItem = country;
        }



        private void Button_ClickSave(object sender, RoutedEventArgs e)
        {
            if (CheckFields())
            {
                try
                {
                    Models.SaveEdit(Client, this.TbxFirstName.Text, this.TbxMiddleName.Text, this.TbxLastName.Text,
                    this.TbxNumber.Text, this.TbxLastPassport.Text, (Model.Country)this.CmbCountries.SelectedItem);
                    Information.MessageBoxInformation("Данные о клиенте успешно изменены");
                    HelperClass.OpenNewPage(this, new MainPage());
                }
                catch (Exception ex)
                {
                    Information.MessageBoxError(ex.Message);
                }
                 
            }
            else
            {
                Information.MessageBoxWarning("Все поля содержащие * должны быть корректно заполнены");
            }
        }

        private void Button_ClickRemove(object sender, RoutedEventArgs e)
        {
            try
            {
                Models.Remove(Client);
                Information.MessageBoxInformation("Клиент успешно удален из БД");
                HelperClass.OpenNewPage(this, new MainPage());

            }
            catch(Exception ex)
            {
                Information.MessageBoxError(ex.Message);
            }
        }

        private void Button_ClickBack(object sender, RoutedEventArgs e)
        {
            HelperClass.OpenNewPage(this, new MainPage());
        }


    }
}
