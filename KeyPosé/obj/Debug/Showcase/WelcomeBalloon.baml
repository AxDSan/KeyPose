   M S B A M L   `   `   `  ����  KeyPosé    KeyPose.WelcomeBalloon   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      \ XHardcodet.Wpf.TaskbarNotification, Version=1.0.5.0, Culture=neutral, PublicKeyToken=null)tb http://www.hardcodet.net/taskbar  5      :d2http://schemas.microsoft.com/expression/blend/2008  5      Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006  5	      -   5          >�Name$  me��5      $	��130��5      $	��283��5       � 	Resources 5         FadeInAndOut g� 	BeginTime �� 
TargetName �� TargetProperty O� KeyTime O� Value��%y  &	        �� 5   
   .��5      U� $ 00:00:00X�5      $
 grid��5      $ (UIElement.Opacity)�5      .\�5      �� $ 00:00:00��5      $ 0Q�5      �� 5      $ 00:00:01��5      $ 0.895Q�5      �� 5      $ 00:00:10��5      $ 0.895Q�5      �� 5      $ 00:00:11.6000000��5      $ 0Q�5      5      5       5!       � Triggers 5"      :� 5#   
    :� RoutedEvent$# tb:TaskbarIcon.BalloonShowing��5$      .[�5%      �� -   5        	 ��Name$"	 FadeInAndOut_BeginStoryboard��5'      #��[  5&      5'      5(      .��5*      � -   5        
 �Name$

 grid��5+   	   .+�5-   
   �� -   5         ��Name$ border��5.       �� CornerRadius$ 10,10,10,10��5/      $��0,0,5,5q�50      ��51      �� 52       �� EndPoint$ 0.5,1&�53       �� 
StartPoint$ 0.5,0&�54      .��55      �  � Color$ 	#FFEEFFFF��56       � Offset$ 1Q�57      � 58      $ 	#FFFB6B42��59      $ 0Q�5:      5;       J� Effect 5=      3  -System.Windows.Media.Effects.DropShadowEffect  5>      5@      �� 5A   
   $��
10,10,15,0q�5B      $	��Top=�5C      $��14(�5D      $
��Bold"�5E      $
��Wrap=�5F      $��Center=�5G      �� 5H      $)�#WPF NotifyIcon - Sample Application��5I       � Language$ de-ch�5J      5K      �� 5L   
   $��10,38.62,10,0q�5M      $	��Top=�5N      $
��Wrap=�5O      $
��Left=�5P      �� 5Q      $3�-You should see this icon in your system tray:��5R       �� 5S      $� ��5T       �� 5U      .F�5V      �� $��16��5X      $��16��5Y      ��5W      ��  �� Path$ 
IconSource�5Y      5Z      �� 5[      �� 5\      $�This is your NotifyIcon.��5]      �� 5^      �� 5_      $� ��5`      �� 5a      �� 5b      $��10(�5c      $��Italic$�5d      $X�RYou can change the displayed icon by selecting another image in the sample window.��5e      5f      5h      5i      