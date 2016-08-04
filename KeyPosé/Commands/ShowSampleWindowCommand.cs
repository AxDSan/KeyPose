using System.Windows;
using System.Windows.Input;

namespace KeyPose.Commands
{
    /// <summary>
    /// Shows the main window.
    /// </summary>
    public class ShowSampleWindowCommand : CommandBase<ShowSampleWindowCommand>
    {
        public override void Execute(object parameter)
        {
            MainWindow mainWindow = new MainWindow();
            mainWindow.Close();
            CommandManager.InvalidateRequerySuggested();
        }


        public override bool CanExecute(object parameter)
        {
            Window win = (MainWindow)GetTaskbarWindow(parameter);
            return win != null && !win.IsVisible;
        }
    }
}