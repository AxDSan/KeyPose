using Gma.System.MouseKeyHook;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Runtime.InteropServices;
using System.Windows;
using System.Windows.Forms;
using System.Windows.Input;
using System.Windows.Interop;
using System.Windows.Media.Animation;
using System.Windows.Threading;

namespace KeyPose
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public static class WindowsServices
        {
            const int WS_EX_TRANSPARENT = 0x00000020;
            const int GWL_EXSTYLE = (-20);

            [DllImport("user32.dll")]
            static extern int GetWindowLong(IntPtr hwnd, int index);

            [DllImport("user32.dll")]
            static extern int SetWindowLong(IntPtr hwnd, int index, int newStyle);

            public static void SetWindowExTransparent(IntPtr hwnd)
            {
                var extendedStyle = GetWindowLong(hwnd, GWL_EXSTYLE);
                SetWindowLong(hwnd, GWL_EXSTYLE, extendedStyle | WS_EX_TRANSPARENT);
            }
        }

        protected override void OnSourceInitialized(EventArgs e)
        {
            base.OnSourceInitialized(e);
            var hwnd = new WindowInteropHelper(this).Handle;
            WindowsServices.SetWindowExTransparent(hwnd);
        }

        private IKeyboardMouseEvents m_GlobalHook;
        private DispatcherTimer _timer;
        private int _counter;
        private bool typing = false;
        private List<string> keychar = new List<string>();
        private List<long> keytime = new List<long>();
        private string KeyPressed;
        private string KeyPressed2;
        public Keys CTLR;

        public static bool RectActive = false;

        public MainWindow()
        {
            _timer = new DispatcherTimer();
            _timer.Tick += MyTimerTick;
            _timer.Interval = new TimeSpan(0, 0, 0, 0,500);

            InitializeComponent();
            Subscribe();
        }

        public int Counter
        {
            get { return _counter; }
            set
            {
                _counter = value;
                OnPropertyChanged("Counter");
            }
        }

        private void MyTimerTick(object sender, EventArgs e)
        {
            Counter++;
            removeKeys();
            if (Counter == 100)
            {
                if (typing == true)
                {
                    Console.WriteLine("elementzd");
                    ElementFlowSelectionChanged();
                }
                else
                {
                    ExitAnimRectangleWindow();
                    //textBlock.Text = "Reached the 2 seconds countdown!";
                    //ElementFlowSelectionChanged();
                }
            }
        }

        private void removeKeys() {
            Console.WriteLine("clear");
            long milliseconds = DateTime.Now.Ticks / TimeSpan.TicksPerMillisecond;
            int i = 0;
            while (i < keytime.Count)
            {
                if (keytime[i] + 1000 < milliseconds)
                {
                    keytime.RemoveAt(i);
                    keychar.RemoveAt(i);
                }
                else i++;
            }
            textBlock.Text = getKeys();
        }

        private void ElementFlowSelectionChanged()
        {
            _counter = 0;
            typing = false;
            _timer.Start();
            //_timer.Interval = new TimeSpan(0, 0, 0, 1);
            //_timer.Start();
            // bonjour je suis un commentaire incroyable xd qqqqqq
        }

        public event PropertyChangedEventHandler PropertyChanged;
        protected virtual void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }

        private void Window_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            //DragMove();
            //e.Handled = true;
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            textBlock.Text = "";
            var desktopWorkingArea = SystemParameters.WorkArea;
            //Left = desktopWorkingArea.Right / Width;
            Top = desktopWorkingArea.Bottom - Height;

            var showcaseWindow = new ShowcaseWindow();
            showcaseWindow.showBalloonTip_Handler("KeyPose v1.0", "KeyPose is running, you can now type and keys will display!");
        }

        protected override void OnTextInput(TextCompositionEventArgs e)
        {
            //TODO
        }

        public void Subscribe()
        {
            // Note: for the application hook, use the Hook.AppEvents() instead
            m_GlobalHook = Hook.GlobalEvents();

            m_GlobalHook.MouseDownExt += GlobalHookMouseDownExt;
            m_GlobalHook.KeyPress += GlobalHookKeyPress;
            m_GlobalHook.KeyDown += GlobalHookKeyDown;
            
        }

        private void GlobalHookKeyDown(object sender, System.Windows.Forms.KeyEventArgs e)
        {
            if ((Control.ModifierKeys & Keys.Control & e.KeyCode) == Keys.Control)
            {
                //textBlock.Text = string.Format("CTRL + ", e.KeyValue);
                Console.WriteLine("CTRL:" + e.KeyValue);
            }
        }

        private void EnterAnimRectangleWindow()
        {
            if(rectangle1.Opacity == 0)
            {
                DoubleAnimation da = new DoubleAnimation();
                da.From = 0;
                da.To = 1;
                da.Duration = new Duration(TimeSpan.FromMilliseconds(250));
                //da.RepeatBehavior=new RepeatBehavior(3);
                textBlock.BeginAnimation(OpacityProperty, da);
                rectangle1.BeginAnimation(OpacityProperty, da);
                RectActive = true;
            }
        }

        private void ExitAnimRectangleWindow()
        {
                DoubleAnimation da = new DoubleAnimation();
                da.From = 1;
                da.To = 0;
                da.Duration = new Duration(TimeSpan.FromSeconds(1));
                //da.RepeatBehavior=new RepeatBehavior(3);
                rectangle1.BeginAnimation(OpacityProperty, da);
                textBlock.BeginAnimation(OpacityProperty, da);
                RectActive = false;
        }

        private void GlobalHookKeyPress(object sender, KeyPressEventArgs e)
        {
            Console.WriteLine("EVENT:" + e.ToString());
            typing = true;
            ElementFlowSelectionChanged();
            EnterAnimRectangleWindow();
            KeyPressed = handleKeyPressed(e);
            int key = Convert.ToInt32(e.KeyChar);
            Console.WriteLine("Keycode: " + key);
            switch (key)
            {
                case 13:
                    addKey("↵");
                    break;

                case 27:
                    addKey("ESC");
                    break;

                case 9:
                    addKey("↹");
                    break;

                case 32:
                    addKey("⎵");
                    break;

                case 8:
                    addKey("←");
                    break;

                default:
                    if (key <= 26)
                    {
                        char c = (char)(key + 96);
                        Console.WriteLine("C:" + c);
                        addKey("Ctrl+" + c);
                    }
                    else if (key == 28)
                    {
                        Environment.Exit(0);
                    }
                    else
                    {
                        addKey(KeyPressed);
                    }
                    break;
            }
            typing = false;

        }

        private void addKey(String s)
        {
            long milliseconds = DateTime.Now.Ticks / TimeSpan.TicksPerMillisecond;
            keytime.Add(milliseconds);
            keychar.Add(s);
            textBlock.Text = getKeys();
        }

        private string getKeys()
        {
            String s = "";
            foreach (var k in keychar)
            {
                s += k;
            }
            return s;
        }

        private string handleKeyPressed(KeyPressEventArgs e)
        {
            Console.WriteLine("HANDLE:" + e.ToString());
            string tmp = e.KeyChar.ToString();
            Console.WriteLine("TMP:" + e.KeyChar.ToString());
            return tmp;
        }

        private void GlobalHookMouseDownExt(object sender, MouseEventExtArgs e)
        {
            //CAPTURE MOUSE EVENTS
            //textBlock.Text = string.Format("MouseDown: {0}; System Timestamp: {1}", e.Button, e.Timestamp);

            // uncommenting the following line will suppress the middle mouse button click
            // if (e.Button == MouseButtons.Middle) { e.Handled = true; }
        }

        public void Unsubscribe()
        {
            m_GlobalHook.MouseDownExt -= GlobalHookMouseDownExt;
            m_GlobalHook.KeyPress -= GlobalHookKeyPress;
            m_GlobalHook.KeyDown -= GlobalHookKeyDown;

            //It is recommened to dispose it
            m_GlobalHook.Dispose();
        }

        private void Window_Activated(object sender, EventArgs e)
        {
            
        }
        

        private void Window_KeyDown(object sender, System.Windows.Input.KeyEventArgs e)
        {
            KeyPressed2 = e.Key.ToString();
            Console.WriteLine("je suis la");
            Console.WriteLine("p2:" + KeyPressed2);
            //if ((Keyboard.Modifiers & ModifierKeys.Control) == ModifierKeys.Control)
            //{
            //    KeyPressed2 = e.Key.ToString();
            //}else
            //{
            //    //KeyPressed2 = "";
            //}

        }

        private void Window_KeyUp(object sender, System.Windows.Input.KeyEventArgs e)
        {
            
        }
    }
}
