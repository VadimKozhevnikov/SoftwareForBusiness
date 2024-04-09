using Avalonia.Controls;
using Project.ViewModels;

namespace Project.Views
{
  public partial class ListPatientView : UserControl
  {
    public ListPatientView()
    {
      InitializeComponent();
      DataContext = new ListPatientViewModel();
    }
  }
}
