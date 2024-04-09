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
    public class GospitalViewModel : ViewModelBase
    {
        public GospitalViewModel() 
        {
            HomeOpen = ReactiveCommand.Create(() =>
            {
                Navigator.GoListPatient();
            });
        }

        public ReactiveCommand<Unit, Unit> HomeOpen { get; set; }
    }
}