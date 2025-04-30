package n1;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.join.mgps.db.tables.TipBeanTable;
/* compiled from: TipBeanTableManager.java */
/* loaded from: classes3.dex */
public class k0 extends g1.b<TipBeanTable> {

    /* renamed from: b  reason: collision with root package name */
    private static k0 f72800b;

    /* renamed from: c  reason: collision with root package name */
    private static RuntimeExceptionDao<TipBeanTable, Integer> f72801c;

    private k0() {
        super(f72801c);
    }

    public static k0 n() {
        if (f72800b == null) {
            f72801c = g1.e.d(null).c().a0();
            f72800b = new k0();
        }
        return f72800b;
    }
}
