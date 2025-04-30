package y0;

import android.content.Context;
import android.text.TextUtils;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.j256.ormlite.android.apptools.OpenHelperManager;
import com.join.android.app.common.db.DatabaseHelper;
import com.join.mgps.enums.Dtype;
import g1.e;
import g1.f;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
/* compiled from: ISqlImpl.java */
/* loaded from: classes2.dex */
public class c implements b {

    /* renamed from: a  reason: collision with root package name */
    private DatabaseHelper f74266a = null;

    /* renamed from: b  reason: collision with root package name */
    private Context f74267b;

    public c(Context context) {
        this.f74267b = null;
        this.f74267b = context;
    }

    private DatabaseHelper f() {
        if (this.f74266a == null) {
            this.f74266a = e.d(this.f74267b).c();
        }
        return this.f74266a;
    }

    @Override // y0.b
    public DownloadTask a(DownloadTask downloadTask) throws SQLException {
        if (downloadTask == null) {
            return null;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("url", downloadTask.getUrl());
        List<DownloadTask> h4 = f.G().h(hashMap);
        if (h4 == null || h4.size() <= 0) {
            return null;
        }
        return h4.get(0);
    }

    @Override // y0.b
    public void b(DownloadTask downloadTask) throws SQLException {
        String name;
        if (downloadTask == null) {
            return;
        }
        if (TextUtils.isEmpty(downloadTask.getFileType())) {
            if (downloadTask.getFileType() != null && !downloadTask.getFileType().equals(Dtype.apk.name())) {
                name = downloadTask.getFileType();
            } else {
                name = Dtype.apk.name();
            }
            downloadTask.setFileType(name);
        }
        if (downloadTask.getStatus() != 7) {
            f.G().m(downloadTask);
        }
    }

    @Override // y0.b
    public void c(DownloadTask downloadTask) throws SQLException {
        if (downloadTask == null) {
            return;
        }
        f.G().n(downloadTask.getCrc_link_type_val());
    }

    @Override // y0.b
    public void d(DownloadTask downloadTask) throws SQLException {
        if (downloadTask == null || a(downloadTask) == null) {
            return;
        }
        f.G().update(downloadTask);
    }

    public void e() {
        if (this.f74266a != null) {
            OpenHelperManager.releaseHelper();
            this.f74266a = null;
        }
    }
}
