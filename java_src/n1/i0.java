package n1;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.join.mgps.db.tables.ShowViewDataBeanTable;
/* compiled from: ShowViewDataBeanTableManager.java */
/* loaded from: classes3.dex */
public class i0 extends g1.b<ShowViewDataBeanTable> {

    /* renamed from: b  reason: collision with root package name */
    private static i0 f72792b;

    /* renamed from: c  reason: collision with root package name */
    private static RuntimeExceptionDao<ShowViewDataBeanTable, Integer> f72793c;

    private i0() {
        super(f72793c);
    }

    public static i0 n() {
        if (f72792b == null) {
            f72793c = g1.e.d(null).c().X();
            f72792b = new i0();
        }
        return f72792b;
    }
}
