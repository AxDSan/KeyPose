   M S B A M L   `   `   `  ����  KeyPosé    KeyPose.FancyToolTip   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      \ XHardcodet.Wpf.TaskbarNotification, Version=1.0.5.0, Culture=neutral, PublicKeyToken=null)tb http://www.hardcodet.net/taskbar  5      -   5          >�Name$  me��5	      $	��285��5
      $	��136��5       � 	Resources 5       
  FadeIn g� 	BeginTime �� 
TargetName �� TargetProperty O� KeyTime O� Value �� 	KeySpline  FadeOut��%[  &	        &	 �    �� 5      .��5      U� $ 00:00:00X�6#   $ border��68   $ (UIElement.Opacity)�6W   .\�5      �� $ 00:00:00��6   $ 0Q�6.   �� 5      $ 00:00:01��6   $ 1Q�6.   $ 0,0,0.46,0.969��68   5      U� 5      $ 00:00:00X�6#   $ image��68   $ (UIElement.Opacity)�6V   .\�5      �� $ 00:00:00��6   $	 0.6Q�6.   �� 5      $ 00:00:01��6   $ 1Q�6.   5      5      �� 5      .��5      U� $ 00:00:00X�6#   $ border��68   $ (UIElement.Opacity)�6W   .\�5      �� $ 00:00:00��6   $ 1Q�6.   �� 5      $ 00:00:01��6   $
 0.25Q�6.   5      U� 5      $ 00:00:00X�6#   $ image��68   $ (UIElement.Opacity)�6V   .\�5      �� $ 00:00:00��6   $ 1Q�6.   �� 5      $ 00:00:01��6   $	 0.6Q�6.   5      5       5!       � Triggers 5"      :� 5#      	 :� RoutedEvent$"	 tb:TaskbarIcon.ToolTipOpened��6   .[�5$      �� -   5        
 ��Name$
 FadeIn_BeginStoryboard��5$   :   #��[  6   6:   5%      :� 5&      $!	 tb:TaskbarIcon.ToolTipClose��6   .[�5'      �� -   5        $
 FadeOut_BeginStoryboard��5'   >   #��[ 6   6>   5(      .��5+      � -   5         �Name$ 
LayoutRoot��5,      $
��Auto��6   .+�5-      �� -   5         ��Name$ border��54      $��Stretch=�5.      $��Stretch=�5/      $
��Auto��50      $
��Auto��51       �� CornerRadius$ 6,6,6,6��52      $��3,3,3,3q�53      $��0,0,5,5q�54       J� Effect 55      3  -System.Windows.Media.Effects.DropShadowEffect  56   
      Color$ 	#FF7A7A7A��57      ��59      �� 5:   
    �� EndPoint$ 0.5,1&�5;       �� 
StartPoint$ 0.5,0&�5<      .��5=      �  � Color$ 	#FFFFD283��5>       � Offset$ 0Q�5?      � 5@      $ 	#FFFFFFFF��5A      $ 1Q�5B      5C      5E      �� 5F      -   5         ��Name$ image��5M   +   $
��Left=�5G      $��
10,10,0,26q�5H      $��72��5I      $��/Images/Info.png��5J      $
��Fill=�5K      $	��Top=�5L       J� RenderTransformOrigin$ 0.792,0.486&�5M      $��72��6:   z�5N      V� 5O      .~�5P   	   ��  �� ScaleX$ 1Q�6    �� ScaleY$ 1Q�6#   �� 5Q   	    �� AngleX$ 0Q�6    �� AngleY$ 0Q�6"   �� 5R   	    �� Angle$ 0Q�6   T� 5S   	    T� X$ 0Q�6    T� Y$ 0Q�6"   5T   	   5V      �� 5W      $��
82,10,20,0q�5X      $
��Wrap=�5Y      $��32��5Z      $	��Top=�5[      $��16(�5\      $
��Bold"�5]      ���	#FF575757�� 5^      $�KeyPose��5_   	    � Language$ de-ch�5`   	   6   �� 5a      -   5         ��Name$ txtToolTipDetail��5i      $��12(�5b      $
��Bold"�5c      ���	#FF141414$
��Wrap=�5e      $��
10,0,20,19q�5f      $��Bottom=�5g      ��5h      ��  �� ElementName$ me��  �� Path$  InfoText�5i      �� 5j      -   5        $ txtToolTipDetail_Copy��5p      $��12(�5k      $��Normal"�5l      ���	#FF141414$
��Wrap=�5n      $��82,42,20,44.96q�5o      �� 5p   '   $�KeyPose is running...��6+   $ en-us�6H   6\   5q      5r      