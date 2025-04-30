package g1;

import android.content.Context;
import android.text.TextUtils;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.j256.ormlite.stmt.QueryBuilder;
import com.j256.ormlite.stmt.Where;
import com.join.android.app.common.utils.APKUtils;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.d2;
import com.join.mgps.db.tables.EMUApkTable;
import com.join.mgps.enums.Dtype;
import com.umeng.analytics.AnalyticsConfig;
import java.io.File;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import n1.p;
/* compiled from: DownloadTaskManager.java */
/* loaded from: classes.dex */
public class f extends b<DownloadTask> {

    /* renamed from: b  reason: collision with root package name */
    private static f f65666b;

    /* renamed from: c  reason: collision with root package name */
    private static RuntimeExceptionDao<DownloadTask, Integer> f65667c;

    private f() {
        super(f65667c);
    }

    public static f G() {
        if (f65667c == null) {
            f65667c = e.d(null).c().Z();
        }
        if (f65666b == null) {
            f65666b = new f();
        }
        return f65666b;
    }

    public DownloadTask A(String str) {
        List<DownloadTask> queryForEq;
        if (str == null || (queryForEq = f65667c.queryForEq("gameZipPath", str)) == null || queryForEq.size() <= 0) {
            return null;
        }
        DownloadTask downloadTask = queryForEq.get(0);
        UtilsMy.C3(downloadTask);
        return downloadTask;
    }

    public DownloadTask B(String str) {
        List<DownloadTask> queryForEq;
        if (str == null || (queryForEq = f65667c.queryForEq("crc_link_type_val", str)) == null || queryForEq.size() <= 0) {
            return null;
        }
        DownloadTask downloadTask = queryForEq.get(0);
        UtilsMy.C3(downloadTask);
        return downloadTask;
    }

    public List<DownloadTask> C(Object... objArr) {
        if (objArr == null) {
            return null;
        }
        try {
            QueryBuilder<DownloadTask, Integer> queryBuilder = f65667c.queryBuilder();
            Where<DownloadTask, Integer> where = queryBuilder.where();
            where.in("crc_link_type_val", objArr);
            queryBuilder.setWhere(where);
            return queryBuilder.query();
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public List<DownloadTask> D(String str) {
        if (str == null) {
            return null;
        }
        return f65667c.queryForEq("packageName", str);
    }

    public List<DownloadTask> E(String str) {
        if (str == null) {
            return null;
        }
        try {
            QueryBuilder<DownloadTask, Integer> queryBuilder = f65667c.queryBuilder();
            Where<DownloadTask, Integer> where = queryBuilder.where();
            where.eq("crc_link_type_val", str).or().eq("ref_crc_sign_id", str);
            queryBuilder.setWhere(where);
            return queryBuilder.query();
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public DownloadTask F(String str) {
        List<DownloadTask> queryForEq;
        if (str == null || (queryForEq = f65667c.queryForEq("url", str)) == null || queryForEq.size() <= 0) {
            return null;
        }
        DownloadTask downloadTask = queryForEq.get(0);
        UtilsMy.C3(downloadTask);
        return downloadTask;
    }

    public String H(String str, Context context) {
        EMUApkTable n4;
        DownloadTask B = B(str);
        if (B == null || !B.getFileType().equals(Dtype.apk.name()) || (n4 = p.o().n(B.getRomType())) == null) {
            return "";
        }
        if (n4.getDown_type() == 2) {
            return n4.getVer() + "_" + B.getRomType();
        }
        APKUtils.a k4 = com.join.android.app.common.utils.a.g0(context).k(context, n4.getPackage_name());
        return k4.d() + "_" + k4.e() + "_" + B.getRomType();
    }

    public List<DownloadTask> I() {
        QueryBuilder<DownloadTask, Integer> queryBuilder = f65667c.queryBuilder();
        try {
            Where<DownloadTask, Integer> where = queryBuilder.where();
            where.or(where.eq("status", 5), where.eq("status", 9), where.eq("status", 11)).and();
            where.eq("fileType", Dtype.chajian.name());
            queryBuilder.setWhere(where);
            List<DownloadTask> query = queryBuilder.query();
            UtilsMy.D3(query);
            return query;
        } catch (SQLException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public List<DownloadTask> J(boolean z3) {
        QueryBuilder<DownloadTask, Integer> queryBuilder = f65667c.queryBuilder();
        try {
            queryBuilder.orderBy("isOpen", true);
            queryBuilder.orderBy(AnalyticsConfig.RTD_START_TIME, false);
            Where<DownloadTask, Integer> where = queryBuilder.where();
            if (z3) {
                where.ne("status", 5).and();
                where.ne("status", 9).and();
                where.ne("status", 11).and();
            } else {
                where.or(where.eq("status", 5), where.eq("status", 9), new Where[0]).and();
            }
            where.eq("fileType", Dtype.chajian.name());
            queryBuilder.setWhere(where);
            List<DownloadTask> query = queryBuilder.query();
            UtilsMy.D3(query);
            return query;
        } catch (SQLException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public List<DownloadTask> K() {
        QueryBuilder<DownloadTask, Integer> queryBuilder = f65667c.queryBuilder();
        try {
            queryBuilder.orderBy("isOpen", true);
            queryBuilder.orderBy(AnalyticsConfig.RTD_START_TIME, false);
            Where<DownloadTask, Integer> where = queryBuilder.where();
            where.eq("status", 2).and();
            where.eq("fileType", Dtype.chajian.name());
            queryBuilder.setWhere(where);
            List<DownloadTask> query = queryBuilder.query();
            UtilsMy.D3(query);
            return query;
        } catch (SQLException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public List<DownloadTask> L() {
        QueryBuilder<DownloadTask, Integer> queryBuilder = f65667c.queryBuilder();
        try {
            Where<DownloadTask, Integer> where = queryBuilder.where();
            where.eq("fileType", Dtype.chajian.name());
            queryBuilder.setWhere(where);
            List<DownloadTask> query = queryBuilder.query();
            UtilsMy.D3(query);
            return query;
        } catch (SQLException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public List<DownloadTask> M(Dtype dtype) {
        QueryBuilder<DownloadTask, Integer> queryBuilder = f65667c.queryBuilder();
        try {
            queryBuilder.orderBy("isOpen", true);
            Where<DownloadTask, Integer> where = queryBuilder.where();
            if (dtype == null) {
                where.and(where.or(where.eq("status", 5), where.eq("status", 9), where.eq("status", 11), where.eq("status", 42)), where.or(where.eq("fileType", Dtype.apk.name()), where.eq("fileType", Dtype.android.name()), where.eq("fileType", Dtype.H5.name()), where.eq("fileType", Dtype.MOD.name())), new Where[0]);
            } else {
                where.and(where.or(where.eq("status", 5), where.eq("status", 9), where.eq("status", 11)), where.eq("fileType", dtype.name()), new Where[0]);
            }
            queryBuilder.setWhere(where);
            return queryBuilder.query();
        } catch (SQLException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public List<DownloadTask> N(Dtype dtype) {
        ArrayList arrayList = new ArrayList();
        try {
            QueryBuilder<DownloadTask, Integer> queryBuilder = f65667c.queryBuilder();
            Where<DownloadTask, Integer> where = queryBuilder.where();
            if (dtype == null) {
                where.and(where.or(where.eq("status", 5), where.eq("status", 9), where.eq("status", 11), where.eq("status", 42)), where.or(where.eq("fileType", Dtype.apk.name()), where.eq("fileType", Dtype.android.name()), where.eq("fileType", Dtype.H5.name())), new Where[0]);
            } else {
                where.and(where.or(where.eq("status", 5), where.eq("status", 9), where.eq("status", 11)), where.eq("fileType", dtype.name()), new Where[0]);
            }
            queryBuilder.setWhere(where);
            queryBuilder.orderBy("isOpen", true);
            queryBuilder.orderBy("openTime", false);
            queryBuilder.orderBy("finishTime", false);
            arrayList.addAll(queryBuilder.query());
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                DownloadTask downloadTask = (DownloadTask) it2.next();
                if (downloadTask.getFileType().equals(Dtype.apk.name()) && (downloadTask.getGameZipPath() == null || !new File(downloadTask.getGameZipPath()).exists())) {
                    com.php25.PDownload.d.a(downloadTask);
                    it2.remove();
                }
            }
        } catch (SQLException e4) {
            e4.printStackTrace();
        }
        return arrayList;
    }

    public int O() {
        try {
            QueryBuilder<DownloadTask, Integer> queryBuilder = f65667c.queryBuilder();
            Where<DownloadTask, Integer> where = queryBuilder.where();
            where.ne("status", 5).and();
            where.ne("status", 42).and();
            where.ne("status", 12).and();
            where.ne("status", 13);
            queryBuilder.setWhere(where);
            if (queryBuilder.query() != null) {
                return queryBuilder.query().size();
            }
            return 0;
        } catch (Exception e4) {
            e4.printStackTrace();
            return 0;
        }
    }

    public List<DownloadTask> P() {
        QueryBuilder<DownloadTask, Integer> queryBuilder = f65667c.queryBuilder();
        try {
            queryBuilder.orderBy("isOpen", true);
            queryBuilder.orderBy("id", false);
            Where<DownloadTask, Integer> where = queryBuilder.where();
            where.ne("status", 5).and();
            where.ne("status", 9).and();
            where.ne("status", 11).and();
            where.ne("status", 42).and();
            where.ne("fileType", Dtype.chajian.name());
            queryBuilder.setWhere(where);
            List<DownloadTask> query = queryBuilder.query();
            Iterator<DownloadTask> it2 = query.iterator();
            while (it2.hasNext()) {
                DownloadTask next = it2.next();
                if (next.getRuntimeStatus().get() == 36 || next.getStatus() == 13) {
                    if (!new File(next.getPath()).exists()) {
                        com.php25.PDownload.d.a(next);
                        it2.remove();
                    }
                }
            }
            UtilsMy.D3(query);
            return query;
        } catch (SQLException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public List<DownloadTask> Q() {
        ArrayList arrayList = new ArrayList();
        try {
            QueryBuilder<DownloadTask, Integer> queryBuilder = f65667c.queryBuilder();
            Where<DownloadTask, Integer> where = queryBuilder.where();
            where.eq("isOpen", Boolean.FALSE).and().eq("status", 5).and().ne("fileType", Dtype.chajian.name());
            queryBuilder.setWhere(where);
            return queryBuilder.query();
        } catch (Exception e4) {
            e4.printStackTrace();
            return arrayList;
        }
    }

    public List<DownloadTask> R() {
        ArrayList arrayList = new ArrayList();
        try {
            return f65667c.queryForEq("isOpen", Boolean.FALSE);
        } catch (Exception e4) {
            e4.printStackTrace();
            return arrayList;
        }
    }

    public int S(Context context) {
        List<DownloadTask> arrayList = new ArrayList<>();
        try {
            arrayList = f65667c.queryForEq("isOpen", Boolean.FALSE);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        int size = arrayList.size();
        for (DownloadTask downloadTask : arrayList) {
            if (downloadTask.getFileType() != null && downloadTask.getFileType().equals(Dtype.chajian.name()) && !UtilsMy.r0(context, UtilsMy.j0(downloadTask.getCrc_link_type_val()))) {
                f65666b.e0(downloadTask.getCrc_link_type_val(), true);
                size--;
            }
        }
        return size;
    }

    public List<DownloadTask> T(Context context) {
        List<DownloadTask> arrayList = new ArrayList<>();
        try {
            arrayList = f65667c.queryForEq("isOpen", Boolean.FALSE);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        Iterator<DownloadTask> it2 = arrayList.iterator();
        while (it2.hasNext()) {
            DownloadTask next = it2.next();
            if (next.getFileType() != null && next.getFileType().equals(Dtype.chajian.name())) {
                it2.remove();
            } else if (next.getStatus() != 5) {
                it2.remove();
            }
        }
        return arrayList;
    }

    public List<DownloadTask> U() {
        QueryBuilder<DownloadTask, Integer> queryBuilder = f65667c.queryBuilder();
        try {
            Where<DownloadTask, Integer> where = queryBuilder.where();
            where.ne("fileType", Dtype.chajian.name());
            queryBuilder.orderBy("isOpen", true);
            queryBuilder.orderBy("openTime", false);
            queryBuilder.orderBy("finishTime", true);
            queryBuilder.setWhere(where);
            List<DownloadTask> query = queryBuilder.query();
            UtilsMy.D3(query);
            return query;
        } catch (SQLException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public DownloadTask V(int i2) {
        DownloadTask B = B(i2 + "");
        UtilsMy.C3(B);
        return B;
    }

    public int W() {
        QueryBuilder<DownloadTask, Integer> queryBuilder = f65667c.queryBuilder();
        try {
            Where<DownloadTask, Integer> where = queryBuilder.where();
            where.eq("status", 2);
            queryBuilder.setWhere(where);
            if (queryBuilder.query() != null) {
                return queryBuilder.query().size();
            }
            return 0;
        } catch (SQLException e4) {
            e4.printStackTrace();
            return 0;
        }
    }

    public List<DownloadTask> X() {
        QueryBuilder<DownloadTask, Integer> queryBuilder = f65667c.queryBuilder();
        try {
            queryBuilder.orderBy("finishTime", false);
            List<DownloadTask> query = queryBuilder.query();
            UtilsMy.D3(query);
            return query;
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public int Y() {
        QueryBuilder<DownloadTask, Integer> queryBuilder = f65667c.queryBuilder();
        try {
            Where<DownloadTask, Integer> where = queryBuilder.where();
            where.eq("status", 9);
            queryBuilder.setWhere(where);
            return (int) queryBuilder.countOf();
        } catch (SQLException e4) {
            e4.printStackTrace();
            return 0;
        }
    }

    public void Z(String str) {
        if (str == null || str.equals("")) {
            return;
        }
        DownloadTask B = B(str);
        if (B.get_from_type() == 1) {
            B.set_from_type(0);
            m(B);
        }
    }

    public List<DownloadTask> a0() {
        QueryBuilder<DownloadTask, Integer> queryBuilder = f65667c.queryBuilder();
        try {
            Where<DownloadTask, Integer> where = queryBuilder.where();
            where.eq("status", 6).or();
            where.eq("status", 0).or();
            where.eq("status", 2).or();
            where.eq("status", 10);
            queryBuilder.setWhere(where);
            return queryBuilder.query();
        } catch (SQLException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public List<DownloadTask> b0() {
        QueryBuilder<DownloadTask, Integer> queryBuilder = f65667c.queryBuilder();
        try {
            Where<DownloadTask, Integer> where = queryBuilder.where();
            where.ne("status", 5).and();
            where.ne("status", 3).and();
            where.ne("status", 11).and();
            where.ne("status", 42).and();
            where.ne("status", 9);
            queryBuilder.setWhere(where);
            return queryBuilder.query();
        } catch (SQLException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // g1.b
    /* renamed from: c0 */
    public int k(DownloadTask downloadTask) {
        return super.k(downloadTask);
    }

    @Override // g1.b
    public List<DownloadTask> d() {
        QueryBuilder<DownloadTask, Integer> queryBuilder = f65667c.queryBuilder();
        try {
            queryBuilder.orderBy("isOpen", true);
            List<DownloadTask> query = queryBuilder.query();
            if (query == null) {
                query = new ArrayList<>();
            }
            UtilsMy.D3(query);
            return query;
        } catch (SQLException e4) {
            e4.printStackTrace();
            return new ArrayList();
        }
    }

    public void d0(DownloadTask downloadTask, String str) {
        RuntimeExceptionDao<DownloadTask, Integer> runtimeExceptionDao = f65667c;
        runtimeExceptionDao.updateRaw("UPDATE `downloadtask` SET gameZipPath = " + str + ", path = " + str + "  WHERE id=" + downloadTask.getId() + ";", new String[0]);
    }

    public void e0(String str, boolean z3) {
        List<DownloadTask> queryForEq = f65667c.queryForEq("crc_link_type_val", str);
        if (queryForEq == null || queryForEq.size() <= 0) {
            return;
        }
        DownloadTask downloadTask = queryForEq.get(0);
        downloadTask.setOpen(z3);
        downloadTask.setOpenTime(System.currentTimeMillis());
        RuntimeExceptionDao<DownloadTask, Integer> runtimeExceptionDao = f65667c;
        runtimeExceptionDao.updateRaw("UPDATE `downloadtask` SET isOpen = " + (z3 ? 1 : 0) + ", openTime=" + downloadTask.getOpenTime() + "  WHERE id=" + downloadTask.getId() + ";", new String[0]);
    }

    public void f0(DownloadTask downloadTask, int i2) {
        List<DownloadTask> queryForEq;
        if (downloadTask != null) {
            try {
                if (d2.h(downloadTask.getUrl()) || (queryForEq = f65667c.queryForEq("crc_link_type_val", downloadTask.getCrc_link_type_val())) == null || queryForEq.size() <= 0) {
                    return;
                }
                DownloadTask downloadTask2 = queryForEq.get(0);
                downloadTask2.setCurrentSize(downloadTask.getCurrentSize());
                downloadTask2.setStatus(i2);
                RuntimeExceptionDao<DownloadTask, Integer> runtimeExceptionDao = f65667c;
                runtimeExceptionDao.updateRaw("UPDATE `downloadtask` SET currentSize = " + downloadTask.getCurrentSize() + ", status = " + i2 + " WHERE id=" + downloadTask2.getId() + ";", new String[0]);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    public void g0(DownloadTask downloadTask, int i2, long j4) {
        List<DownloadTask> queryForEq;
        if (downloadTask != null) {
            try {
                if (d2.h(downloadTask.getUrl()) || (queryForEq = f65667c.queryForEq("crc_link_type_val", downloadTask.getCrc_link_type_val())) == null || queryForEq.size() <= 0) {
                    return;
                }
                DownloadTask downloadTask2 = queryForEq.get(0);
                downloadTask2.setProgress(j4);
                downloadTask2.setCurrentSize(downloadTask.getCurrentSize());
                downloadTask2.setStatus(i2);
                RuntimeExceptionDao<DownloadTask, Integer> runtimeExceptionDao = f65667c;
                runtimeExceptionDao.updateRaw("UPDATE `downloadtask` SET currentSize = " + downloadTask.getCurrentSize() + ", status = " + i2 + ", progress = " + j4 + " WHERE id=" + downloadTask2.getId() + ";", new String[0]);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    public void n(String str) {
        List<DownloadTask> queryForEq;
        if (str == null || "".equals(str) || (queryForEq = f65667c.queryForEq("crc_link_type_val", str)) == null || queryForEq.size() == 0) {
            return;
        }
        delete((f) queryForEq.get(0));
    }

    public List<DownloadTask> o() {
        return f65667c.queryForEq("fileType", Dtype.android.name());
    }

    public List<DownloadTask> p() {
        QueryBuilder<DownloadTask, Integer> queryBuilder = f65667c.queryBuilder();
        try {
            Where<DownloadTask, Integer> where = queryBuilder.where();
            where.eq("status", 5).or();
            where.eq("status", 42).or();
            where.eq("status", 9);
            queryBuilder.setWhere(where);
            List<DownloadTask> query = queryBuilder.query();
            Iterator<DownloadTask> it2 = query.iterator();
            while (it2.hasNext()) {
                DownloadTask next = it2.next();
                if (next.getRuntimeStatus().get() == 36 || next.getStatus() == 13) {
                    if (!new File(next.getPath()).exists()) {
                        com.php25.PDownload.d.a(next);
                        it2.remove();
                    }
                }
            }
            UtilsMy.D3(query);
            return query;
        } catch (SQLException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public List<DownloadTask> q() {
        ArrayList arrayList = new ArrayList();
        try {
            QueryBuilder<DownloadTask, Integer> queryBuilder = f65667c.queryBuilder();
            Where<DownloadTask, Integer> where = queryBuilder.where();
            where.ne("status", 5).and();
            where.ne("status", 42);
            queryBuilder.setWhere(where);
            return queryBuilder.query();
        } catch (Exception e4) {
            e4.printStackTrace();
            return arrayList;
        }
    }

    public List<DownloadTask> r() {
        QueryBuilder<DownloadTask, Integer> queryBuilder = f65667c.queryBuilder();
        ArrayList arrayList = new ArrayList();
        try {
            Where<DownloadTask, Integer> where = queryBuilder.where();
            where.eq("status", 2);
            queryBuilder.setWhere(where);
            return queryBuilder.query();
        } catch (SQLException e4) {
            e4.printStackTrace();
            return arrayList;
        }
    }

    public List<DownloadTask> s() {
        ArrayList arrayList = new ArrayList();
        QueryBuilder<DownloadTask, Integer> queryBuilder = f65667c.queryBuilder();
        try {
            Where<DownloadTask, Integer> where = queryBuilder.where();
            where.eq("status", 5).and();
            where.eq("fileType", Dtype.apk.name());
            queryBuilder.setWhere(where);
            for (DownloadTask downloadTask : queryBuilder.query()) {
                if (downloadTask.isFightFun()) {
                    arrayList.add(downloadTask);
                }
            }
        } catch (SQLException e4) {
            e4.printStackTrace();
        }
        return arrayList;
    }

    public List<DownloadTask> t() {
        return f65667c.queryForEq("fileType", Dtype.H5.name());
    }

    public List<DownloadTask> u() {
        return f65667c.queryForEq("fileType", Dtype.apk.name());
    }

    public List<DownloadTask> v() {
        QueryBuilder<DownloadTask, Integer> queryBuilder = f65667c.queryBuilder();
        try {
            Where<DownloadTask, Integer> where = queryBuilder.where();
            where.eq("status", 11).and().ne("fileType", Dtype.chajian.name());
            queryBuilder.setWhere(where);
            return queryBuilder.query();
        } catch (SQLException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public List<DownloadTask> w() {
        QueryBuilder<DownloadTask, Integer> queryBuilder = f65667c.queryBuilder();
        try {
            Where<DownloadTask, Integer> where = queryBuilder.where();
            where.eq("status", 9);
            queryBuilder.setWhere(where);
            return queryBuilder.query();
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public List<DownloadTask> x() {
        QueryBuilder<DownloadTask, Integer> queryBuilder = f65667c.queryBuilder();
        try {
            Where<DownloadTask, Integer> where = queryBuilder.where();
            where.eq("status", 9).and().ne("fileType", Dtype.chajian.name());
            queryBuilder.setWhere(where);
            return queryBuilder.query();
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public List<DownloadTask> y() {
        QueryBuilder<DownloadTask, Integer> queryBuilder = f65667c.queryBuilder();
        try {
            Where<DownloadTask, Integer> where = queryBuilder.where();
            where.eq("status", 12);
            queryBuilder.setWhere(where);
            return queryBuilder.query();
        } catch (SQLException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public ArrayList<Long> z() {
        ArrayList<Long> arrayList = new ArrayList<>();
        QueryBuilder<DownloadTask, Integer> queryBuilder = f65667c.queryBuilder();
        try {
            Where<DownloadTask, Integer> where = queryBuilder.where();
            where.eq("status", 5).or();
            where.eq("status", 11).or();
            where.eq("status", 42).or();
            where.eq("status", 9).or();
            where.eq("status", 12).or();
            where.eq("status", 36);
            queryBuilder.setWhere(where);
            List<DownloadTask> query = queryBuilder.query();
            if (query != null) {
                for (DownloadTask downloadTask : query) {
                    if (!TextUtils.isEmpty(downloadTask.getCrc_link_type_val())) {
                        arrayList.add(Long.valueOf(Long.parseLong(downloadTask.getCrc_link_type_val())));
                    }
                }
            }
        } catch (SQLException e4) {
            e4.printStackTrace();
        }
        return arrayList;
    }
}
