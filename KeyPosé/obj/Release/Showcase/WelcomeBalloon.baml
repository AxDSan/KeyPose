   M S B A M L   `   `   `  ����   KeyPosé    KeyPose.WelcomeBalloon   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     /tb http://www.hardcodet.net/taskbar     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     -     >�Name$  me��$	��130��$	��283�� � 	Resources    FadeInAndOut g� 	BeginTime �� 
TargetName �� TargetProperty O� KeyTime O� Value��%�   &	        �� .��U� $ 00:00:00X�$
 grid��$ (UIElement.Opacity)�.\��� $ 00:00:00��$ 0Q��� $ 00:00:01��$ 0.895Q��� $ 00:00:10��$ 0.895Q��� $ 00:00:11.6000000��$ 0Q� � Triggers :�  :� RoutedEvent$# tb:TaskbarIcon.BalloonShowing��.[��� -   	 ��Name$"	 FadeInAndOut_BeginStoryboard��#��[  .��� -   
 �Name$

 grid��.+��� -    ��Name$ border�� �� CornerRadius$ 10,10,10,10��$��0,0,5,5q�����  �� EndPoint$ 0.5,1&� �� 
StartPoint$ 0.5,0&�.���  � Color$ 	#FFEEFFFF�� � Offset$ 1Q�� $ 	#FFFB6B42��$ 0Q� J� Effect 3  -System.Windows.Media.Effects.DropShadowEffect  �� $��
10,10,15,0q�$	��Top=�$��14(�$
��Bold"�$
��Wrap=�$��Center=��� $)�#WPF NotifyIcon - Sample Application�� � Language$ de-ch��� $��10,38.62,10,0q�$	��Top=�$
��Wrap=�$
��Left=��� $3�-You should see this icon in your system tray:�� �� $� �� �� .F��� $��16��$��16������  �� Path$ 
IconSource��� �� $�This is your NotifyIcon.���� �� $� ���� �� $��10(�$��Italic$�$X�RYou can change the displayed icon by selecting another image in the sample window.��