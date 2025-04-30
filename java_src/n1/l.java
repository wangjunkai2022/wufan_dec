package n1;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.join.mgps.db.tables.DownloadUrlTable;
/* compiled from: DownloadUrlTableManager.java */
/* loaded from: classes3.dex */
public class l extends g1.b<DownloadUrlTable> {

    /* renamed from: b  reason: collision with root package name */
    private static l f72802b;

    /* renamed from: c  reason: collision with root package name */
    private static RuntimeExceptionDao<DownloadUrlTable, Integer> f72803c;

    private l() {
        super(f72803c);
    }

    public static l n() {
        if (f72802b == null) {
            f72803c = g1.e.d(null).c().u();
            f72802b = new l();
        }
        return f72802b;
    }
}
