using Avalonia.Controls;
using Project.Views;
using ReactiveUI.Fody.Helpers;

namespace Project.ViewModels;

public class MainViewModel : ViewModelBase
{
    [Reactive]
    public UserControl Page { get; set; } = new ListPatientView();
}
