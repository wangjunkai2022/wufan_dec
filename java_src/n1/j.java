package n1;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.join.mgps.db.tables.DownloadFileTable;
/* compiled from: DownloadFileTableManager.java */
/* loaded from: classes.dex */
public class j extends g1.b<DownloadFileTable> {

    /* renamed from: b  reason: collision with root package name */
    private static j f72794b;

    /* renamed from: c  reason: collision with root package name */
    private static RuntimeExceptionDao<DownloadFileTable, Integer> f72795c;

    private j() {
        super(f72795c);
    }

    public static j n() {
        if (f72794b == null) {
            f72795c = g1.e.d(null).c().s();
            f72794b = new j();
        }
        return f72794b;
    }
}
