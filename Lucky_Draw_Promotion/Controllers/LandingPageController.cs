using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Lucky_Draw_Promotion.Controllers
{
    public class LandingPageController : Controller
    {
        // GET: LandingPage
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult LandingPage()
        {
            return View();
        }

        public ActionResult SpinPrizeWheel()
        {
            return View();
        }

        public ActionResult DeliveredAddress()
        {
            return View();
        }

        public ActionResult WinnersList()
        {
            return View();
        }

        public ActionResult YourGiftsList()
        {
            return View();
        }
    }
}