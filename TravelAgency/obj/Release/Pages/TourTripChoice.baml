   M S B A M L   `   `   `  ���� G  CTravelAgency, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:TravelAgency.PagesTravelAgency.Pages  '    !TravelAgency.Pages.TourTripChoice   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     2local clr-namespace:TravelAgency.Pages       N� Title$  TourTripChoice��.���  � RowDefinitions �� �� $��3* ��� .+��� %#Оформление путевки� $��1�� � ColumnDefinitions �� �� .+��  �� �� $
��1.5* � �� �� �� �� .+��� Клиент:�� $��1��Кол-во недель:�� $��2��
Отель�� $��3��Авиалинии�� -   $��	TxtClient��$��1���� $��1��$��1�� �� Orientation$ 
Horizontal=�$��Center=�.+��� -   $��40��$��0,0,30,0q�.��-�� -   $��
TxtNumWeek��$��0,0,30,0q��� -   $��40��.��+�� -   $��	CmbHotels��$��2�� �� DisplayMemberPath$
 Name��$��1���� -   $��CmbAirlanes��$��3��$
 Name��$��1��� $��1�� �� �� �� .+��� $ 
Horizontal=�$��Center=�.+��� $��20(� Стоимость отеля:�� (в неделю)�� -   $��TxtPriceHotel��$��20(�$
��Bold"��� $��1��$ 
Horizontal=�$��Center=�.+��� $��20(�&$Стоимость перелёта:�� -   $��TxtPriceAirlane��$��20(�$
��Bold"��� $��2��$ 
Horizontal=�$��Center=�.+��� $��20(� Полная стоимось:�� -	   $��TxtPrice��$��20(�$
��Bold"�� $��3�� �� �� �� .+��� -
   .��
Назад�� -   $��2��.��Оформить