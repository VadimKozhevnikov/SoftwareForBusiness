using Microsoft.EntityFrameworkCore;
using ReactiveUI;
using System.Collections.ObjectModel;
using System.Diagnostics;
using System.Linq;
using System.Net.Http.Headers;
using System.Reactive.Linq;
using TestDB.Models;

namespace TestDB.ViewModels;

public class MainViewModel : ViewModelBase
{
    DataBase dataBase = new DataBase();
    Patient patient = new Patient();
    private ObservableCollection<Patient> _patient;
    private string _id;
    public ObservableCollection<Patient> Patient
    {
        get
        {
            return _patient;
        }
        set
        {
            this.RaiseAndSetIfChanged(ref _patient, value);
        }
    }

    public string Id
    {
        get 
        {
            return patient.ToString();
        }
        set 
        {
            this.RaiseAndSetIfChanged(ref _id, value);
        }
    }

    public MainViewModel()
    {
        _patient = new ObservableCollection<Patient>(dataBase.Patient.ToList());
    }
}
