using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Controls;
using TravelAgency.Model;

namespace TravelAgency.Classes
{
    class Models
    {
        public static TravelAgency.Model.TravelAgencyEntities context = new TravelAgency.Model.TravelAgencyEntities(); 

        public static User User { get; set; }

        public static bool AuthUser (string login, string password)
        {
            var user = context.Users.Where(i => login == i.Login && password == i.Password);

            if (user.Count() > 0)
            {
                User = user.FirstOrDefault();
                return true; 
            }

            return false; 
            
        }

        public static void SaveEdit(Model.Client _client, string fn, string mn, string ln, string num, string pas, Model.Country country)
        {

                Model.Client client = context.Clients.Where(i => i.IdClient == _client.IdClient).FirstOrDefault();
                client.FirstName = fn;
                client.MiddleName = mn;
                client.LastName = ln;
                client.NumberPhone = num;
                client.DataPassport = pas;
                client.NationalityId = country.IdCountry;

                context.SaveChanges();
            
        }

        public static void SaveEdit(Model.Airlane _airlane, string name, string _price, Model.Country country)
        {
            decimal price = 0;
            if (Decimal.TryParse(_price, out decimal res)) price = res;           
            Model.Airlane airlane = context.Airlanes.Where(i => i.IdAirlane == _airlane.IdAirlane).FirstOrDefault();
            airlane.Name = name;
            airlane.Price = price;
            airlane.CountryId = country.IdCountry; 
            context.SaveChanges();

        }

        public static void SaveEdit(Model.Hotel _hotel, string name, string _price, Model.Country country, Model.NumStar numStar)
        {
            decimal price = 0;
            if (Decimal.TryParse(_price, out decimal res)) price = res;
            Model.Hotel hotel = context.Hotels.Where(i => i.IdHotel == _hotel.IdHotel).FirstOrDefault();
            hotel.Name = name;
            hotel.PriceOneWeek = price;
            hotel.CountryId = country.IdCountry;
            hotel.NumberOfStarsId = numStar.CountStars;
            context.SaveChanges();

        }



        public static void Remove(Model.Client _client)
        {
            Model.Client client = context.Clients.Where(i => i.IdClient == _client.IdClient).FirstOrDefault();
            context.Clients.Remove(client);
            context.SaveChanges();
        }

        public static void Remove(Model.Airlane _airlane)
        {
            Model.Airlane airlane = context.Airlanes.Where(i => i.IdAirlane == _airlane.IdAirlane).FirstOrDefault();
            context.Airlanes.Remove(airlane);
            context.SaveChanges();
        }
        public static void Remove(Model.Hotel _hotel)
        {
            Model.Hotel hotel = context.Hotels.Where(i => i.IdHotel== _hotel.IdHotel).FirstOrDefault();
            context.Hotels.Remove(hotel);
            context.SaveChanges();
        }

        public static void FillFields(Model.Airlane airlane,TextBox name, TextBox price, ComboBox countries)
        {
            name.Text = airlane.Name;
            price.Text = airlane.Price.ToString();
            countries.SelectedItem = context.Countries.Where(i => i.IdCountry == airlane.CountryId).FirstOrDefault(); 
        }
        public static void FillFields(Model.Hotel hotel, TextBox name, TextBox price, ComboBox countries, ComboBox stars)
        {
            name.Text = hotel.Name;
            price.Text = hotel.PriceOneWeek.ToString();
            countries.SelectedItem = context.Countries.Where(i => i.IdCountry == hotel.CountryId).FirstOrDefault();
            stars.SelectedItem = context.NumStars.Where(i => i.CountStars == hotel.NumberOfStarsId).FirstOrDefault();
        }



    }
}
