   M S B A M L   `   `   `  ����   KeyPosé    KeyPose.FancyToolTip   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     /tb http://www.hardcodet.net/taskbar     -     >�Name$  me��$	��285��$	��136�� � 	Resources  
  FadeIn g� 	BeginTime �� 
TargetName �� TargetProperty O� KeyTime O� Value �� 	KeySpline  FadeOut��%  &	        &	 
    �� .��U� $ 00:00:00X�$ border��$ (UIElement.Opacity)�.\��� $ 00:00:00��$ 0Q��� $ 00:00:01��$ 1Q�$ 0,0,0.46,0.969��U� $ 00:00:00X�$ image��$ (UIElement.Opacity)�.\��� $ 00:00:00��$	 0.6Q��� $ 00:00:01��$ 1Q��� .��U� $ 00:00:00X�$ border��$ (UIElement.Opacity)�.\��� $ 00:00:00��$ 1Q��� $ 00:00:01��$
 0.25Q�U� $ 00:00:00X�$ image��$ (UIElement.Opacity)�.\��� $ 00:00:00��$ 1Q��� $ 00:00:01��$	 0.6Q� � Triggers :� 	 :� RoutedEvent$"	 tb:TaskbarIcon.ToolTipOpened��.[��� -   
 ��Name$
 FadeIn_BeginStoryboard��#��[  :� $!	 tb:TaskbarIcon.ToolTipClose��.[��� -   $
 FadeOut_BeginStoryboard��#��[ .��� -    �Name$ 
LayoutRoot��$
��Auto��.+��� -    ��Name$ border��$��Stretch=�$��Stretch=�$
��Auto��$
��Auto�� �� CornerRadius$ 6,6,6,6��$��3,3,3,3q�$��0,0,5,5q� J� Effect 3  -System.Windows.Media.Effects.DropShadowEffect     Color$ 	#FF7A7A7A������  �� EndPoint$ 0.5,1&� �� 
StartPoint$ 0.5,0&�.���  � Color$ 	#FFFFD283�� � Offset$ 0Q�� $ 	#FFFFFFFF��$ 1Q��� -    ��Name$ image��$
��Left=�$��
10,10,0,26q�$��72��$��/Images/Info.png��$
��Fill=�$	��Top=� J� RenderTransformOrigin$ 0.792,0.486&�$��72��z�V� .~���  �� ScaleX$ 1Q� �� ScaleY$ 1Q���  �� AngleX$ 0Q� �� AngleY$ 0Q���  �� Angle$ 0Q�T�  T� X$ 0Q� T� Y$ 0Q��� $��
82,10,20,0q�$
��Wrap=�$��32��$	��Top=�$��16(�$
��Bold"����	#FF575757�� $�KeyPose�� � Language$ de-ch��� -    ��Name$ txtToolTipDetail��$��12(�$
��Bold"����	#FF141414$
��Wrap=�$��
10,0,20,19q�$��Bottom=�����  �� ElementName$ me��  �� Path$  InfoText��� -   $ txtToolTipDetail_Copy��$��12(�$��Normal"����	#FF141414$
��Wrap=�$��82,42,20,44.96q��� $�KeyPose is running...��$ en-us�