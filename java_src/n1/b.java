package n1;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.join.mgps.db.tables.AppBeanTable;
/* compiled from: AppBeanTableManager.java */
/* loaded from: classes3.dex */
public class b extends g1.b<AppBeanTable> {

    /* renamed from: b  reason: collision with root package name */
    private static b f72762b;

    /* renamed from: c  reason: collision with root package name */
    private static RuntimeExceptionDao<AppBeanTable, Integer> f72763c;

    private b() {
        super(f72763c);
    }

    public static b n() {
        if (f72762b == null) {
            f72763c = g1.e.d(null).c().e();
            f72762b = new b();
        }
        return f72762b;
    }
}
