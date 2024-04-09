using Avalonia.Controls;
using Project.ViewModels;

namespace Project.Views
{
    public partial class GospitalView : UserControl
    {
        public GospitalView()
        {
            InitializeComponent();
            DataContext = new GospitalViewModel();
        }
    }
}
