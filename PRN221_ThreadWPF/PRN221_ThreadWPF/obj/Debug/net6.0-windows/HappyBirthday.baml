   M S B A M L   `   `   `  ����K  GPRN221_ThreadWPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:PRN221_ThreadWPFPRN221_ThreadWPF  5   	   $    PRN221_ThreadWPF.HappyBirthday   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   0localclr-namespace:PRN221_ThreadWPF     5   	     � WindowStartupLocation$  CenterScreen=�5   	    � Title$ Happy Birthday!��5	   	   $	��450��6!   $	��800��6.   .��5
      � 
����ح�.+�5   
   �� $��Happy Birthday!��6   $��50(�6+   $
��Bold"�69   $��Center=�6K   $��Center=�6h   ��5      �� 5      -   5        	textColor�� �� Color$ White��5   5   z�5      �� 5      -   5        rotateTransform��5   "    � Triggers 5      :� 5       :� RoutedEvent$ TextBlock.Loaded��6   .[�5      �� .��5      �� .��5      W�  �� TargetProperty$ Opacity�6.    W� From 1.05   *   	 W� To 0.065    g� Duration$ 0:0:1D�5   *   	 g� AutoReverse$
	 True��5   *   
 g� RepeatBehavior$
 Forever��5   *   W� 5       �� 
TargetName$ rotateTransform��6.   $ Angle�5   *    05   *    36063   $ 0:0:5D�5   *   $
 Forever��5   *   �� 5       $ 	textColor��6-   $ Color�5!   )    �� From	 White5"   )   	 �� To Red66   $ 0:0:2D�5#   )   $
	 True��5$   )   $
 Forever��5%   )   5&      5'      5(      5*      5+      5,      