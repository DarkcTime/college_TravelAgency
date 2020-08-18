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
using System.Windows.Threading;
using TravelAgency.Classes;
using TravelAgency.Model;

namespace TravelAgency.Pages
{
    /// <summary>
    /// Interaction logic for MainPage.xaml
    /// </summary>
    public partial class MainPage : Page
    {
        DispatcherTimer dispatcherTimer; 

        public MainPage()
        {
            InitializeComponent();
            this.SetDateTime(); 
            this.CreateTimer();
           
        }


        private void ClickBtnStatick(object sender, RoutedEventArgs e)
        {
            OpenNewPage(new Pages.Statistics()); 
        }

        private void ClickBtnTour(object sender, RoutedEventArgs e)
        {
            OpenNewPage(new Pages.CustomerChoice());    
        }

        private void ClickBtnSearch(object sender, RoutedEventArgs e)
        {
            try
            {
                switch (this.CmbSelectType.SelectedIndex)
                {
                    case 1:
                        if (this.CmbList.SelectedItem != null)
                        {
                            this.OpenNewPage(new SearchResultClient((Model.Client)this.CmbList.SelectedItem));
                        }
                        else
                        {
                            Information.MessageBoxWarning("Выберите клиента в ComboBox");
                        }
                        break;
                    case 2:
                        if (this.CmbList.SelectedItem != null)
                        {
                            this.OpenNewPage(new SearchResultHotel((Model.Hotel)this.CmbList.SelectedItem));
                        }
                        else
                        {
                            Information.MessageBoxWarning("Выберите отель в ComboBox");
                        }
                        break;
                    case 3:
                        if (this.CmbList.SelectedItem != null)
                        {
                            this.OpenNewPage(new SearchResultAirlane((Model.Airlane)this.CmbList.SelectedItem));
                        }
                        else
                        {
                            Information.MessageBoxWarning("Выберите авиалинию в ComboBox");
                        }
                        break;
                }
            }
            catch (Exception ex)
            {
                Information.MessageBoxError(ex.ToString());
            }
            
                
        }

        private void OpenNewPage(object page)
        {
            NavigationService service = NavigationService.GetNavigationService(this);
            service.Navigate(page); 

        }


        #region Timer
        private void CreateTimer()
        {
            dispatcherTimer = new DispatcherTimer();
            dispatcherTimer.Interval = new TimeSpan(0, 0, 1);
            dispatcherTimer.Tick += timerTick;
            dispatcherTimer.Start();
        }

        private void timerTick(object sender, EventArgs e)
        {
            SetDateTime();
        }

        private void SetDateTime()
        {
            this.TxtTime.Text = this.GetTime();
            this.TxtDate.Text = this.GetDate();
        }

        private string GetTime()
        {
            return DateTime.Now.ToLongTimeString(); 
        }

        private string GetDate()
        {
            return DateTime.Now.ToShortDateString(); 
        }



        #endregion

        private void CmbSelectType_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if(this.CmbSelectType.SelectedIndex.Equals(1))
            {

                this.CmbList.IsEnabled = true;
                this.CmbList.ItemsSource = Models.context.Clients.ToList();
                this.CmbList.DisplayMemberPath = "FirstName";
                
                
            }
            else if (this.CmbSelectType.SelectedIndex.Equals(2))
            {
                this.CmbList.IsEnabled = true;
                this.CmbList.ItemsSource = Models.context.Hotels.ToList();
                this.CmbList.DisplayMemberPath = "Name";
            }
            else if (this.CmbSelectType.SelectedIndex.Equals(3))
            {
                this.CmbList.IsEnabled = true;
                this.CmbList.ItemsSource = Models.context.Airlanes.ToList();
                this.CmbList.DisplayMemberPath = "Name";
            }
            else
            {
                return; 
            }

        }


    }
}
