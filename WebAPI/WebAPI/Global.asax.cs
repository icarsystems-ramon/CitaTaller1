﻿using System;

namespace CitaTaller
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
            new CitaTallerApp().Init();
        }
    }
}