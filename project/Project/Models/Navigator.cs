using Avalonia.Controls;
using Project.ViewModels;
using Project.Views;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Project.Models
{
    public static class Navigator
    {
        public static UserControl mainPage = new MainPageView();
        public static UserControl gospitalPage = new GospitalView();
        public static UserControl patientPage = new PatientView();
        public static UserControl listPatient = new ListPatientView();
    public static MainViewModel MainViewModel { get; set; } = null!;
        public static void GoMainPage()
        {
            MainViewModel.Page = mainPage;
        }
        public static void GoGospitalPage()
        {
            MainViewModel.Page = gospitalPage;
        }
        public static void GoPatientPage()
        {
            MainViewModel.Page = patientPage;
        }
        public static void GoListPatient()
        {
            MainViewModel.Page = listPatient;
        }
    }
}
