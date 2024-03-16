using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Threading;

namespace PRN221_ThreadWPF
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private DispatcherTimer timer;
        private TimeSpan time;
        private int initialTime;
        public MainWindow()
        {
            InitializeComponent();
        }
        private void btnStart_Click(object sender, RoutedEventArgs e)
        {
            int seconds;
            if (int.TryParse(txtTime.Text, out seconds))
            {
                initialTime = seconds;
                time = TimeSpan.FromSeconds(seconds);

                timer = new DispatcherTimer(new TimeSpan(0, 0, 1), DispatcherPriority.Normal, delegate
                {
                    lblCountdown.Content = time.ToString(@"hh\:mm\:ss");
                    if (time == TimeSpan.Zero)
                    {
                        timer.Stop();
                        HappyBirthday newWindow = new HappyBirthday();
                        newWindow.Show();
                        //this.Close();
                    }
                    time = time.Add(TimeSpan.FromSeconds(-1));
                }, Application.Current.Dispatcher);

                timer.Start();
            }
            else
            {
                MessageBox.Show("Invalid time format");
            }
        }
        private void btnStop_Click(object sender, RoutedEventArgs e)
        {
            if (timer != null)
            {
                timer.Stop();
                MessageBox.Show("The countdown has been stopped.");
            }
            else
            {
                MessageBox.Show("Countdown is not started");
            }
        }
        private void btnContinue_Click(object sender, RoutedEventArgs e)
        {
            if (timer != null && !timer.IsEnabled)
            {
                timer.Start();
            }
            else
            {
                MessageBox.Show("Countdown is not stopped");
            }
        }
        private void btnReuse_Click(object sender, RoutedEventArgs e)
        {
            if (timer != null)
            {
                timer.Stop();
                time = TimeSpan.FromSeconds(initialTime);
                lblCountdown.Content = time.ToString(@"hh\:mm\:ss");
            }
        }
        private void btnReset_Click(object sender, RoutedEventArgs e)
        {
            if (timer != null)
            {
                timer.Stop();
                time = TimeSpan.Zero;
                lblCountdown.Content = time.ToString(@"hh\:mm\:ss");
                txtTime.Text = "";
            }
        }
    }
}