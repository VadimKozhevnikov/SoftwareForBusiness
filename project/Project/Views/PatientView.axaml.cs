using Avalonia.Controls;
using Project.ViewModels;

namespace Project.Views
{
    public partial class PatientView : UserControl
    {
        public PatientView()
        {
            InitializeComponent();
            DataContext = new PatientViewModel();
        }
    }
}
