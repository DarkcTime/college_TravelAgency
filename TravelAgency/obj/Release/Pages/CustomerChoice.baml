   M S B A M L   `   `   `  ���� G  CTravelAgency, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:TravelAgency.PagesTravelAgency.Pages  '    !TravelAgency.Pages.CustomerChoice   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     2local clr-namespace:TravelAgency.Pages       N� Title$  CustomerChoice��.���  � RowDefinitions �� �� $��3* ��� .+��  � ColumnDefinitions �� $
��0.5* ��� .+���  Данные о клиенте�� $��1��$��10q����	#FFF09608$��Тип клиента��.���  �� $
��0.5* ��� $
��0.2* ��� $
��0.5* ��� .+��� 
Новый�� -   $��checkBoxNewClient�� d� 	IsChecked$
 TrueY�$��1��$��Center=�$��Center=��� $��2��Выбрать�� -   $��
CmbClients��$��3��{�.   �� DisplayMemberPath$ 	FirstName�����	#FFEA992D����  �� EndPoint$	 0,1&� �� 
StartPoint$	 0,0&�.���  � Color$ 	#FFF0F0F0�� � Offset$ 0Q�� $ 	#FFEA992D��$ 1Q�� $��1�� �� $
��0.5* ��� �� $
��0.5* ���  �� �� �� .+��� $��0��	Имя*�� $��1��Фамилия*�� $��2��Отчество�� $��0��$��2��Номер*�� $��1��$��2��Страна*�� $��2��$��2��Серия и номер�� паспорта*�� (10 символов)�� -   $��TbxFirstName��$��1���� -   $��TbxMiddleName��$��1��$��1���� -   $��TbxLastName��$��1��$��2���� -   $��	TbxNumber��$��3��$��0���� -   $��TbxLastPassport��$��3��$��2��	 �� 	MaxLength$	 10���� -   $��CmbCountries��$��3��$
 Name��$��1��� $��2�� �� �� �� .+��� -	   .��
Назад�� -
   $��2��.��Продолжить