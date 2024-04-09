using Avalonia.Metadata;
using Project.Models;
using ReactiveUI;
using ReactiveUI.Fody.Helpers;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Reactive;
using System.Text;
using System.Threading.Tasks;

namespace Project.ViewModels
{
  public class ListPatientViewModel : ViewModelBase
  {
    public ListPatientViewModel()
    {
      _info = "ФИО: " + SurName;
      //_imageURL = new ObservableCollection<ImageTab>(dataBase.ImageTab.Where(x => x.Image == "C:\\Users\\Вадим\\OneDrive\\Рабочий стол").FirstOrDefault());
      ImageTab? imageTab = dataBase.ImageTab.Where(x => x.Image == "C:\\Users\\Вадим\\OneDrive\\Рабочий стол").FirstOrDefault();
      _patient = new ObservableCollection<Patient>(dataBase.Patient.ToList());
      
      Main = ReactiveCommand.Create(() =>
      {
        Navigator.GoListPatient();
      });
      Gospital = ReactiveCommand.Create(() =>
      {
        Navigator.GoGospitalPage();
      });
      PatientPage = ReactiveCommand.Create(() =>
      {
        Navigator.GoPatientPage();
      });

      BtnSearch = ReactiveCommand.Create(() =>
      {
        _patient.Clear();
        _patient = new ObservableCollection<Patient>(dataBase.Patient.Where(x => x.FirstName == Search).ToList());
        _patient.Where(x => x.FirstName == Search);
      });
    }

    #region variables
    private ObservableCollection<Patient> _patient;
    private ObservableCollection<ImageTab> _imageURL;
    private string _info;
    #endregion

    #region object
    DataBase dataBase = new DataBase();
    Patient patient = new Patient();
    #endregion
    #region command
    public ReactiveCommand<Unit, Unit> Main { get; set; }
    public ReactiveCommand<Unit, Unit> Gospital { get; set; }
    public ReactiveCommand<Unit, Unit> PatientPage { get; set; }
    public ReactiveCommand<Unit, Unit> BtnSearch { get; set; }
    #endregion
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
    [Reactive]
    public int Id { get; set; }

    [Reactive]
    public string FirstName { get; set; }

    public string Info
    {
      get => _info;
      set => this.RaiseAndSetIfChanged(ref _info, value);
    }

    [Reactive]
    public string SurName { get; set; }

    public ObservableCollection<ImageTab> ImageURL
    {
      get => _imageURL;
      set => this.RaiseAndSetIfChanged(ref _imageURL, value);
    }
    [Reactive]
    public string Search { get; set; }
  }
}
