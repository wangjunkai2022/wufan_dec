package n1;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.join.mgps.db.tables.PurchasedListTable;
import java.util.List;
/* compiled from: PurchasedListTableManager.java */
/* loaded from: classes3.dex */
public class e0 extends g1.b<PurchasedListTable> {

    /* renamed from: b  reason: collision with root package name */
    private static e0 f72776b;

    /* renamed from: c  reason: collision with root package name */
    private static RuntimeExceptionDao<PurchasedListTable, Integer> f72777c;

    private e0() {
        super(f72777c);
    }

    public static e0 o() {
        if (f72776b == null) {
            f72777c = g1.e.d(null).c().R();
            f72776b = new e0();
        }
        return f72776b;
    }

    public synchronized PurchasedListTable n(String str) {
        try {
            List<PurchasedListTable> query = f72777c.queryBuilder().where().eq("game_id", str).query();
            if (query != null && query.size() > 0) {
                return query.get(0);
            }
        } catch (Exception unused) {
        }
        return null;
    }

    public boolean p(String str) {
        try {
            List<PurchasedListTable> query = f72777c.queryBuilder().where().eq("game_id", str).query();
            if (query != null) {
                return query.size() > 0;
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }
}
