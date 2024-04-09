using Project.Models;
using ReactiveUI;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reactive;
using System.Text;
using System.Threading.Tasks;

namespace Project.ViewModels
{
    public class MainPageViewModel : ViewModelBase
    {
        public MainPageViewModel() 
        {
            GospitalOpen = ReactiveCommand.Create(() =>
            {
                Navigator.GoGospitalPage();
            });

            PatientOpen = ReactiveCommand.Create(() =>
            {
                Navigator.GoPatientPage();
            });

            AutorizOpen = ReactiveCommand.Create(() =>
            {
                Navigator.GoListPatient();
            });
        }
        public ReactiveCommand<Unit, Unit> GospitalOpen { get; set; }
        public ReactiveCommand<Unit, Unit> PatientOpen { get; set; }
        public ReactiveCommand<Unit, Unit> TestBtn { get; set; }
        public ReactiveCommand<Unit, Unit> AutorizOpen { get; set; }

        DataBase dataBase = new DataBase();
    }
}
