package n1;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.join.mgps.db.tables.GameMainTable;
import java.util.List;
/* compiled from: GameMainTableManager.java */
/* loaded from: classes3.dex */
public class u extends g1.b<GameMainTable> {

    /* renamed from: b  reason: collision with root package name */
    private static u f72826b;

    /* renamed from: c  reason: collision with root package name */
    private static RuntimeExceptionDao<GameMainTable, Integer> f72827c;

    private u() {
        super(f72827c);
    }

    public static u n() {
        if (f72826b == null) {
            f72827c = g1.e.d(null).c().C();
            f72826b = new u();
        }
        return f72826b;
    }

    public GameMainTable o(String str) {
        List<GameMainTable> queryForEq;
        if (str == null || (queryForEq = f72827c.queryForEq("gameid", str)) == null || queryForEq.size() <= 0) {
            return null;
        }
        return queryForEq.get(0);
    }
}
