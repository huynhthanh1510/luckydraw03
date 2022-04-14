using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Lucky_Draw_Promotion.Controllers
{
    public class MainController : Controller
    {
        // GET: Main
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Dashboard()
        {
            return View();
        }

        public ActionResult CampaignManagement()
        {
            return View();
        }

        public ActionResult CreateCampaignProgramSize()
        {
            return View();
        }

        public ActionResult CreateCampaignTimeFrame()
        {
            return View();
        }

        public ActionResult CreateCampaignGifts()
        {
            return View();
        }

        public ActionResult CreateCampaignRulesForGifts()
        {
            return View();
        }

        public ActionResult CreateCampaignSummary()
        {
            return View();
        }
    }
}