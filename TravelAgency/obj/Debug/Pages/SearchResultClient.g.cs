﻿#pragma checksum "..\..\..\Pages\SearchResultClient.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "AA346E3113D520E746DC7EEA8F377FF6A350DF23CAF1C17DB074664768EBBAD6"
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;
using TravelAgency.Pages;


namespace TravelAgency.Pages {
    
    
    /// <summary>
    /// SearchResultClient
    /// </summary>
    public partial class SearchResultClient : System.Windows.Controls.Page, System.Windows.Markup.IComponentConnector {
        
        
        #line 51 "..\..\..\Pages\SearchResultClient.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox TbxFirstName;
        
        #line default
        #line hidden
        
        
        #line 52 "..\..\..\Pages\SearchResultClient.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox TbxMiddleName;
        
        #line default
        #line hidden
        
        
        #line 53 "..\..\..\Pages\SearchResultClient.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox TbxLastName;
        
        #line default
        #line hidden
        
        
        #line 54 "..\..\..\Pages\SearchResultClient.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox TbxNumber;
        
        #line default
        #line hidden
        
        
        #line 55 "..\..\..\Pages\SearchResultClient.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox TbxLastPassport;
        
        #line default
        #line hidden
        
        
        #line 56 "..\..\..\Pages\SearchResultClient.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ComboBox CmbCountries;
        
        #line default
        #line hidden
        
        
        #line 84 "..\..\..\Pages\SearchResultClient.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.DataGrid DataGridGetOrder;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/TravelAgency;component/pages/searchresultclient.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\Pages\SearchResultClient.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            this.TbxFirstName = ((System.Windows.Controls.TextBox)(target));
            return;
            case 2:
            this.TbxMiddleName = ((System.Windows.Controls.TextBox)(target));
            return;
            case 3:
            this.TbxLastName = ((System.Windows.Controls.TextBox)(target));
            return;
            case 4:
            this.TbxNumber = ((System.Windows.Controls.TextBox)(target));
            return;
            case 5:
            this.TbxLastPassport = ((System.Windows.Controls.TextBox)(target));
            return;
            case 6:
            this.CmbCountries = ((System.Windows.Controls.ComboBox)(target));
            return;
            case 7:
            
            #line 66 "..\..\..\Pages\SearchResultClient.xaml"
            ((System.Windows.Controls.Button)(target)).Click += new System.Windows.RoutedEventHandler(this.Button_ClickBack);
            
            #line default
            #line hidden
            return;
            case 8:
            
            #line 72 "..\..\..\Pages\SearchResultClient.xaml"
            ((System.Windows.Controls.Button)(target)).Click += new System.Windows.RoutedEventHandler(this.Button_ClickSave);
            
            #line default
            #line hidden
            return;
            case 9:
            
            #line 73 "..\..\..\Pages\SearchResultClient.xaml"
            ((System.Windows.Controls.Button)(target)).Click += new System.Windows.RoutedEventHandler(this.Button_ClickRemove);
            
            #line default
            #line hidden
            return;
            case 10:
            this.DataGridGetOrder = ((System.Windows.Controls.DataGrid)(target));
            return;
            }
            this._contentLoaded = true;
        }
    }
}

