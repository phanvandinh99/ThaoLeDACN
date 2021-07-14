using BookStore.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace BookStore.Areas.Customer.Controllers
{
    public class DonHangController : Controller
    {
        QuanLySachEntities db = new QuanLySachEntities();
        // GET: Customer/DonHang
        public ActionResult DonHang(int makhachhang)
        {
            return View();
        }
    }
}