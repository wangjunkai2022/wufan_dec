package n1;

import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.JsonMapper;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.db.tables.DownloadFileTable;
import com.join.mgps.dto.TipBean;
import com.php25.PDownload.DownloadFile;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
/* compiled from: DownloadUtilsManager.java */
/* loaded from: classes.dex */
public class m {
    public static DownloadFile a(DownloadFileTable downloadFileTable) {
        DownloadFile downloadFile = new DownloadFile();
        downloadFile.Z(Long.valueOf(downloadFileTable.getId()));
        downloadFile.m0(downloadFileTable.getTag());
        downloadFile.q0(downloadFileTable.getUrl());
        downloadFile.M(downloadFileTable.getBasePath());
        downloadFile.c0(downloadFileTable.getName());
        downloadFile.j0(downloadFileTable.getShowName());
        downloadFile.K(downloadFileTable.getAbsolutePath());
        downloadFile.X(downloadFileTable.getGameZipPath());
        downloadFile.o0(Integer.valueOf(downloadFileTable.getTotalSize()));
        downloadFile.R(downloadFileTable.getDownloading() == 1);
        downloadFile.W(downloadFileTable.getFinished() == 1);
        downloadFile.P(downloadFileTable.getCreateTime());
        downloadFile.e0(downloadFileTable.getPackageName());
        downloadFile.f0(downloadFileTable.getPercentage());
        downloadFile.L(downloadFileTable.getIsAutoPause() == 1);
        downloadFile.V(downloadFileTable.getFinishTime());
        downloadFile.N(downloadFileTable.getCompleteSize());
        downloadFile.T(downloadFileTable.getDtype());
        downloadFile.U(downloadFileTable.getFileType());
        downloadFile.g0(downloadFileTable.getPortraitURL());
        downloadFile.O(downloadFileTable.getCrc_link_type_val());
        downloadFile.r0(downloadFileTable.getVer());
        downloadFile.s0(downloadFileTable.getVer_name());
        downloadFile.Y(downloadFileTable.getGid());
        downloadFile.l0(downloadFileTable.getStarNumber());
        downloadFile.i0(downloadFileTable.getRomType());
        downloadFile.d0(downloadFileTable.getIsOpen() == 1);
        downloadFile.Q(downloadFileTable.getDescribe());
        downloadFile.k0(downloadFileTable.getShowType());
        downloadFile.n0((List) JsonMapper.getInstance().fromJson(downloadFileTable.getTips(), JsonMapper.getInstance().createCollectionType(ArrayList.class, TipBean.class)));
        return downloadFile;
    }

    public static DownloadFileTable b(DownloadFile downloadFile) {
        DownloadFileTable downloadFileTable = new DownloadFileTable();
        downloadFileTable.setTag(downloadFile.y());
        downloadFileTable.setUrl(downloadFile.C());
        downloadFileTable.setBasePath(downloadFile.b());
        downloadFileTable.setName(downloadFile.p());
        downloadFileTable.setShowName(downloadFile.v());
        downloadFileTable.setAbsolutePath(downloadFile.a());
        downloadFileTable.setGameZipPath(downloadFile.k());
        downloadFileTable.setTotalSize(downloadFile.A().intValue());
        downloadFileTable.setDownloading(downloadFile.G() ? (short) 1 : (short) 0);
        downloadFileTable.setFinished(downloadFile.I() ? (short) 1 : (short) 0);
        downloadFileTable.setCreateTime(downloadFile.e());
        downloadFileTable.setPackageName(downloadFile.q());
        downloadFileTable.setPercentage(downloadFile.r());
        downloadFileTable.setIsAutoPause(downloadFile.F() ? (short) 1 : (short) 0);
        downloadFileTable.setFinishTime(downloadFile.i());
        downloadFileTable.setCompleteSize((int) downloadFile.c());
        downloadFileTable.setDtype(downloadFile.g());
        downloadFileTable.setFileType(downloadFile.h());
        downloadFileTable.setPortraitURL(downloadFile.s());
        downloadFileTable.setCrc_link_type_val(downloadFile.d());
        downloadFileTable.setVer(downloadFile.D());
        downloadFileTable.setVer_name(downloadFile.E());
        downloadFileTable.setGid(downloadFile.l());
        downloadFileTable.setStarNumber(downloadFile.x());
        downloadFileTable.setRomType(downloadFile.u());
        downloadFileTable.setIsOpen(downloadFile.J() ? (short) 1 : (short) 0);
        downloadFileTable.setDescribe(downloadFile.f());
        downloadFileTable.setShowType(downloadFile.w());
        downloadFileTable.setTips(JsonMapper.getInstance().toJson(downloadFile.z()));
        return downloadFileTable;
    }

    public static DownloadTask c(DownloadFile downloadFile) {
        DownloadTask downloadTask = new DownloadTask();
        downloadTask.setUrl(downloadFile.C());
        downloadTask.setName(downloadFile.p());
        downloadTask.setShowName(downloadFile.v());
        downloadTask.setPath(downloadFile.a());
        downloadTask.setGameZipPath(downloadFile.k());
        downloadTask.setSize(downloadFile.A().intValue());
        downloadTask.setShowSize(UtilsMy.a(downloadFile.A().intValue()));
        downloadTask.setStatus(downloadFile.I() ? 5 : 3);
        downloadTask.setShowSize(UtilsMy.a(downloadFile.A().intValue()));
        String e4 = downloadFile.e();
        if (e4 != null && !e4.equals("")) {
            if (e4.contains("-")) {
                downloadTask.setStartTime(com.join.mgps.Util.x.F(e4).getTime());
            } else {
                downloadTask.setStartTime(Long.parseLong(e4));
            }
        } else {
            downloadTask.setStartTime(System.currentTimeMillis());
        }
        downloadTask.setPackageName(downloadFile.q());
        downloadTask.setFinishTime(System.currentTimeMillis());
        downloadTask.setLastCompleteSize((int) downloadFile.c());
        downloadTask.setFileType(downloadFile.h());
        downloadTask.setPortraitURL(downloadFile.s());
        String d4 = downloadFile.d();
        if (d4 != null && d4.equals("1024")) {
            d4 = "31";
        }
        downloadTask.setCrc_link_type_val(d4);
        downloadTask.setVer(downloadFile.D());
        downloadTask.setVer_name(downloadFile.E());
        downloadTask.setRomType(downloadFile.u());
        downloadTask.setOpen(downloadFile.J());
        downloadTask.setDescribe(downloadFile.f());
        downloadTask.setShowType(downloadFile.w());
        downloadTask.setCfg_ver_name("1");
        downloadTask.setCfg_ver("1");
        downloadTask.setCfg_down_url("1");
        downloadTask.setScreenshot_pic("");
        downloadTask.setDownloadType(1);
        downloadTask.setOpenTime(0L);
        downloadTask.setScreenshot_pic("");
        downloadTask.setTips(JsonMapper.getInstance().toJson(downloadFile.z()));
        return downloadTask;
    }

    public static DownloadTask d(String str) {
        HashMap hashMap = new HashMap(1);
        hashMap.put("packageName", str);
        List<DownloadTask> h4 = g1.f.G().h(hashMap);
        if (h4 == null || h4.size() <= 0) {
            return null;
        }
        return h4.get(0);
    }

    public static void delete(DownloadFile downloadFile) {
        if (downloadFile != null) {
            j.n().b(downloadFile.m());
        }
    }

    public static long insert(DownloadFile downloadFile) {
        DownloadFileTable b4 = b(downloadFile);
        j.n().k(b4);
        return b4.getId();
    }

    public static void update(DownloadFile downloadFile) {
        DownloadFileTable g4 = j.n().g(downloadFile.m());
        g4.setFinished(downloadFile.j() ? (short) 1 : (short) 0);
        g4.setDownloading(downloadFile.G() ? (short) 1 : (short) 0);
        g4.setFinishTime(downloadFile.i());
        g4.setTotalSize(downloadFile.A().intValue());
        g4.setPercentage(downloadFile.r());
        g4.setCompleteSize((int) downloadFile.c());
        g4.setGameZipPath(downloadFile.k());
        g4.setVer_name(downloadFile.E());
        g4.setId(downloadFile.m().intValue());
        j.n().update(g4);
    }
}
