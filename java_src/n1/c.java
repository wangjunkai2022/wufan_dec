package n1;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.join.mgps.db.tables.AppMoreBeanTable;
/* compiled from: AppMoreBeanTableManager.java */
/* loaded from: classes3.dex */
public class c extends g1.b<AppMoreBeanTable> {

    /* renamed from: b  reason: collision with root package name */
    private static c f72766b;

    /* renamed from: c  reason: collision with root package name */
    private static RuntimeExceptionDao<AppMoreBeanTable, Integer> f72767c;

    private c() {
        super(f72767c);
    }

    public static c n() {
        if (f72766b == null) {
            f72767c = g1.e.d(null).c().g();
            f72766b = new c();
        }
        return f72766b;
    }
}
