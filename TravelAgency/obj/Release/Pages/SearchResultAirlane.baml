   M S B A M L   `   `   `  ���� G  CTravelAgency, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:TravelAgency.PagesTravelAgency.Pages  ,    &TravelAgency.Pages.SearchResultAirlane   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     2local clr-namespace:TravelAgency.Pages       N� Title$  SearchResultAirlane��.���  � ColumnDefinitions �� �� .+��  � RowDefinitions �� �� $
��0.5* �.+��� $��5q�.���  �� $��80 ��� $��80 ��� $��80 ��� $��80 ��� $��80 ��� $��80 � �� $
��0.5* ��� .+��� $��0��Название*�� $��1��Стоимость*�� $��2��Страна*�� -   $��TbxName��$��1���� -   $��TbxPrice��$��1��$��1���� -   $��CmbCountries��$��1�� �� DisplayMemberPath$
 Name��$��2��� $��1�� �� �� .+��� -   .��
Назад� $��1�� �� �� .+��� -   .��Сохранить�� -   $��1��.��Удалить� $��1�� �� $
��0.2* ��� .+��� 0.Список оформленных туров&   System.Windows.Controls.DataGrid  -   $��DataGridGetOrder��$��1��   
IsReadOnly .    AlternatingRowBackground
 ��� �$��10q�   AutoGenerateColumns .     Columns 0  *System.Windows.Controls.DataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn   Width5  /System.Windows.Controls.DataGridLengthConverter$ * 	   Header$	 Клиент��1  +System.Windows.Controls.DataGridBoundColumn
   Binding
 �� *Client.FirstName+  $ * $	 Авиалиния��
 �� *Airlane.Name+  $ * $	 Кол-во недель��
 �� *TimeTravelId+  $ * $	 
Отель��
 �� *
Hotel.Name+  $ * $	 
Сумма��
 �� *	FullPrice+