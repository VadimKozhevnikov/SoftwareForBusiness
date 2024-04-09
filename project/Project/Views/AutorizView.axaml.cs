using Avalonia.Controls;
using Project.ViewModels;

namespace Project.Views
{
    public partial class AutorizView : UserControl
    {
        public AutorizView()
        {
            InitializeComponent();
            DataContext = new AutorizViewModel();
        }
    }
}
