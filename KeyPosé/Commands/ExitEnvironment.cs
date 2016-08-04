using System.Windows.Input;
using System.Windows;
using System;

namespace KeyPose.Commands
{
    public class ExitEnvironment : CommandBase<ExitEnvironment>
    {

        public override void Execute(object parameter)
        {
            Exit();
        }

        public void Exit()
        {
            if (System.Windows.Forms.Application.MessageLoop)
            {
                // WinForms app
                Application app = new Application();
                app.Shutdown();
            }
            else
            {
                // Console app
                System.Environment.Exit(1);
            }
            CommandManager.InvalidateRequerySuggested();
        }

        //public override void Execute(object parameter)
        //{
        //    MainWindow mainWindow = new MainWindow();
        //    mainWindow.Close();
        //    CommandManager.InvalidateRequerySuggested();
        //}

        //public override bool CanExecute(object parameter)
        //{
        //    Window win = GetTaskbarWindow(parameter);
        //    return win != null;
        //}
    }
}
