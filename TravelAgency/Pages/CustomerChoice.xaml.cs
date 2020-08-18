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
    /// Interaction logic for CustomerChoice.xaml
    /// </summary>
    public partial class CustomerChoice : Page
    {
        public CustomerChoice()
        {
            InitializeComponent();

            CmbClients.ItemsSource = Models.context.Clients.ToList();
            CmbCountries.ItemsSource = Models.context.Countries.ToList();
        }

        private void Button_ClickBack(object sender, RoutedEventArgs e)
        {
            NavigationService service = NavigationService.GetNavigationService(this);
            service.Navigate(new MainPage()); 
        }

        private void Button_ClickContinue(object sender, RoutedEventArgs e)
        {
            try
            {
                if (CheckFields())
                {
                    bool _isNewClient = (bool)this.checkBoxNewClient.IsChecked;
                    Model.Client client; 

                    if (_isNewClient)
                    {
                        client = CreateNewClient((Model.Country)this.CmbCountries.SelectedItem);         
                    }
                    else
                    {
                        client = (Model.Client)CmbClients.SelectedItem;
                    }

                    NavigationService service = NavigationService.GetNavigationService(this);
                    service.Navigate(new TourTripChoice(client, _isNewClient));

                }
                else
                {
                    Information.MessageBoxWarning("Все поля помеченные * - должны быть корректно заполнены");
                }
            }
            catch(Exception ex)
            {
                Information.MessageBoxError(ex.Message);
            }
            
            
        }

        #region HelperMethods
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

        private void SetModeCustomer(bool isNew)
        {
            this.TbxFirstName.IsEnabled = isNew;
            this.TbxLastName.IsEnabled = isNew;
            this.TbxLastPassport.IsEnabled = isNew;
            this.TbxNumber.IsEnabled = isNew;
            this.TbxMiddleName.IsEnabled = isNew;
            this.CmbClients.IsEnabled = !isNew;
            this.CmbCountries.IsEnabled = isNew;
            if (isNew)
            {
                this.TbxFirstName.Text = "";
                this.TbxLastName.Text = "";
                this.TbxLastPassport.Text = "";
                this.TbxNumber.Text = "";
                this.TbxMiddleName.Text = "";
                this.CmbClients.SelectedItem = null;
                this.CmbCountries.SelectedItem = null;
            }
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

        private Model.Client CreateNewClient(Model.Country country)
        {
            int _NationalityId = Models.context.Countries.Where(i => i.IdCountry == country.IdCountry).FirstOrDefault().IdCountry;
            return new Model.Client()
            {
                FirstName = this.TbxFirstName.Text,
                MiddleName = this.TbxMiddleName.Text,
                LastName = this.TbxLastName.Text,
                DataPassport = this.TbxLastPassport.Text,
                NumberPhone = this.TbxNumber.Text,
                NationalityId = _NationalityId
                };
        }

        #endregion


        private void checkBoxNewClient_Checked(object sender, RoutedEventArgs e)
        {
            
        }

        private void CmbClients_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            try
            {
                if(CmbClients.SelectedItem != null)
                {
                    this.SetValuesForCustomer((Model.Client)CmbClients.SelectedItem);
                }
                
            }
            catch (Exception ex)
            {
                Classes.Information.MessageBoxError(ex.ToString());
            }
            
        }

        private void checkBoxNewClient_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                this.SetModeCustomer((bool)this.checkBoxNewClient.IsChecked);
            }
            catch (ArgumentNullException ne)
            {
                Classes.Information.MessageBoxError(ne.Message);
            }

        }
    }
}
