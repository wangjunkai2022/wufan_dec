package n1;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.join.mgps.db.tables.AppBeanMainTable;
/* compiled from: AppBeanMainTableManager.java */
/* loaded from: classes3.dex */
public class a extends g1.b<AppBeanMainTable> {

    /* renamed from: b  reason: collision with root package name */
    private static a f72758b;

    /* renamed from: c  reason: collision with root package name */
    private static RuntimeExceptionDao<AppBeanMainTable, Integer> f72759c;

    private a() {
        super(f72759c);
    }

    public static a n() {
        if (f72758b == null) {
            f72759c = g1.e.d(null).c().d();
            f72758b = new a();
        }
        return f72758b;
    }
}
