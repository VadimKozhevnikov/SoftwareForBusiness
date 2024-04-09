using Avalonia.Controls;
using Project.ViewModels;

namespace Project.Views
{
    public partial class MainPageView : UserControl
    {
        public MainPageView()
        {
            InitializeComponent();
            DataContext = new MainPageViewModel();
        }
    }
}
