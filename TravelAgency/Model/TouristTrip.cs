//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace TravelAgency.Model
{
    using System;
    using System.Collections.Generic;
    
    public partial class TouristTrip
    {
        public int IdTourTrip { get; set; }
        public int ClientId { get; set; }
        public int AirlineId { get; set; }
        public string TimeTravelId { get; set; }
        public int HotelId { get; set; }
        public decimal FullPrice { get; set; }
    
        public virtual Airlane Airlane { get; set; }
        public virtual Client Client { get; set; }
        public virtual Hotel Hotel { get; set; }
        public virtual TimeTravel TimeTravel { get; set; }
    }
}
