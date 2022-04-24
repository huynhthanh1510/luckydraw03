using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Configuration;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;

namespace Lucky_Draw_Promotion.Controllers
{
    public class CustomerController : Controller
    {
        // GET: Customer
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult LoginUser()
        {
            return View();
        }

        public ActionResult ForgotPassword()
        {
            return View();
        }

        public ActionResult OTPConfirm()
        {
            return View();
        }

        public ActionResult NewPassword()
        {
            return View();
        }

        public ActionResult Register()
        {
            return View();
        }
    }
}