using Project.Models;
using ReactiveUI;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Diagnostics;
using System.Linq;
using System.Reactive;
using System.Reflection.PortableExecutable;
using System.Text;
using System.Threading.Tasks;

namespace Project.ViewModels
{
  public class AutorizViewModel : ViewModelBase
  {
    Autorizacia autoriz = new Autorizacia();
    DataBase dataBase = new DataBase();
    private ObservableCollection<Autorizacia> _autorizacia;
    private string _textPassword;
    private string _textLogin;
    private string _login;
    private string _password;
    public ReactiveCommand<Unit, Unit> Open { get; set; }
    public AutorizViewModel() 
    {
      _autorizacia = new ObservableCollection<Autorizacia>(dataBase.Autorizacia.ToList());
      Open = ReactiveCommand.Create(() =>
      {
        Autorizacia? autorizacia = dataBase.Autorizacia.Where(x => x.Login == TextLogin && x.Password == TextPassword).FirstOrDefault();
         if (autorizacia != null)
        {
          Navigator.GoListPatient();
        }
        else
        {
          Debug.WriteLine("Error");
        }
      });
    }
    public string TextLogin
    {
      get => _textLogin;
      set
      {
        this.RaiseAndSetIfChanged(ref _textLogin, value);
      }
    }
    public string TextPassword
    {
      get
      {
        return _textPassword;
      }
      set
      {
        this.RaiseAndSetIfChanged(ref _textPassword, value);
      }
    }

    public ObservableCollection<Autorizacia> Autorizacia
    {
      get
      {
        return _autorizacia;
      }
      set
      {
        this.RaiseAndSetIfChanged(ref _autorizacia, value);
      }
    }
    public string Login
    {
      get
      {
        return _login;
      }
      set
      {
        this.RaiseAndSetIfChanged(ref _login, value);
      }
    }

    public string Password
    {
      get
      {
        return _password;
      }
      set
      {
        this.RaiseAndSetIfChanged(ref _password, value);
      }
    }
  }
}
