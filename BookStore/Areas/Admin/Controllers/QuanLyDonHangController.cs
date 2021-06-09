using BookStore.Models;
using System.Linq;
using System.Web.Mvc;

namespace BookStore.Areas.Admin.Controllers
{
    public class QuanLyDonHangController : Controller
    {
        QuanLySachEntities db = new QuanLySachEntities();
        #region Quản lý đơn hàng
        // Đơn hàng đang chờ phê duyệt
        public ActionResult XacNhan()
        {
            var lstXacNhanDonHang = db.DonHangs.Where(n => n.TinhTrangGiaoHang == 0).ToList();
            return View(lstXacNhanDonHang);
        }
        // Thực hiện duyệt đơn hàng
        public ActionResult XacNhanDuyetDon(int id)
        {
            DonHang lstDonHang = db.DonHangs.Find(id);
            lstDonHang.TinhTrangGiaoHang = 1;
            db.SaveChanges();
            return RedirectToAction("XacNhan","QuanLyDonHang");
        }
        // Thực hiện hủy đơn hàng
        public ActionResult XacNhanHuyDon(int id)
        {
            DonHang lstDonHang = db.DonHangs.Find(id);
            lstDonHang.TinhTrangGiaoHang = 3;
            db.SaveChanges();
            return RedirectToAction("XacNhan", "QuanLyDonHang");
        }

        //Đơn hàng đang giao
        public ActionResult DangGiao()
        {
            var lstDonHangDangGiao = db.DonHangs.Where(n => n.TinhTrangGiaoHang == 1).ToList();
            return View(lstDonHangDangGiao);
        }
        // Thực hiện duyệt đơn hàng đang giao
        public ActionResult XacNhanDangGiao(int id)
        {
            DonHang lstDonHang = db.DonHangs.Find(id);
            lstDonHang.TinhTrangGiaoHang = 2;
            db.SaveChanges();
            return RedirectToAction("DangGiao", "QuanLyDonHang");
        }
        //Đơn hàng đã giao
        public ActionResult DaGiao()
        {
            var lstDonHangDaGiao = db.DonHangs.Where(n => n.TinhTrangGiaoHang == 2).ToList();
            return View(lstDonHangDaGiao);
        }
        // Đơn hàng đã hủy
        public ActionResult DaHuy()
        {
            var lstXacNhanDaHuy = db.DonHangs.Where(n => n.TinhTrangGiaoHang == 3).ToList();
            return View(lstXacNhanDaHuy);
        }
        #endregion
    }
}