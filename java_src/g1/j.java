package g1;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.join.android.app.common.db.tables.Order;
/* compiled from: OrderManager.java */
/* loaded from: classes.dex */
public class j extends b<Order> {

    /* renamed from: b  reason: collision with root package name */
    private static j f65674b;

    /* renamed from: c  reason: collision with root package name */
    private static RuntimeExceptionDao<Order, Integer> f65675c;

    private j() {
        super(f65675c);
    }

    public static j n() {
        if (f65674b == null) {
            f65675c = e.d(null).c().O();
            f65674b = new j();
        }
        return f65674b;
    }
}
