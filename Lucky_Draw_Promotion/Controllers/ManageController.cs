using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Lucky_Draw_Promotion.Controllers
{
    public class ManageController : Controller
    {
        // GET: Manage
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult ManageDashboard()
        {
            return View();
        }

        public ActionResult ManageBarcodes()
        {
            return View();
        }

        public ActionResult GenerateNewBarcodes()
        {
            return View();
        }

        public ActionResult Code_Detail()
        {
            return View();
        }

        public ActionResult ManageBarcodeHistory()
        {
            return View();
        }
    }
}