package n1;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.join.mgps.db.tables.BannerAndTablesTable;
/* compiled from: BannerAndTanlesTableManager.java */
/* loaded from: classes3.dex */
public class d extends g1.b<BannerAndTablesTable> {

    /* renamed from: b  reason: collision with root package name */
    private static d f72770b;

    /* renamed from: c  reason: collision with root package name */
    private static RuntimeExceptionDao<BannerAndTablesTable, Integer> f72771c;

    private d() {
        super(f72771c);
    }

    public static d n() {
        if (f72770b == null) {
            f72771c = g1.e.d(null).c().i();
            f72770b = new d();
        }
        return f72770b;
    }
}
