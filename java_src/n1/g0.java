package n1;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.join.mgps.db.tables.RewardBananaTable;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
/* compiled from: RewardBananaTableManager.java */
/* loaded from: classes3.dex */
public class g0 extends g1.b<RewardBananaTable> {

    /* renamed from: b  reason: collision with root package name */
    private static g0 f72784b;

    /* renamed from: c  reason: collision with root package name */
    private static RuntimeExceptionDao<RewardBananaTable, Integer> f72785c;

    public g0() {
        super(f72785c);
    }

    public static g0 q() {
        if (f72784b == null) {
            f72785c = g1.e.d(null).c().V();
            f72784b = new g0();
        }
        return f72784b;
    }

    public RewardBananaTable n(String str) {
        List<RewardBananaTable> list;
        new HashMap().put("gameId", str);
        try {
            list = f72785c.queryBuilder().orderBy("timestamp", false).where().eq("gameId", str).query();
        } catch (SQLException e4) {
            e4.printStackTrace();
            list = null;
        }
        if (list == null || list.size() <= 0) {
            return null;
        }
        return list.get(0);
    }

    public RewardBananaTable o(String str) {
        List<RewardBananaTable> list;
        new HashMap().put("uniqueId", str);
        try {
            list = f72785c.queryBuilder().orderBy("timestamp", false).where().eq("uniqueId", str).query();
        } catch (SQLException e4) {
            e4.printStackTrace();
            list = null;
        }
        if (list == null || list.size() <= 0) {
            return null;
        }
        return list.get(0);
    }

    public List<RewardBananaTable> p(int i2) {
        List<RewardBananaTable> list;
        try {
            list = f72785c.queryBuilder().orderBy("timestamp", false).where().eq("type", Integer.valueOf(i2)).and().ne("status", 1).query();
        } catch (SQLException e4) {
            e4.printStackTrace();
            list = null;
        }
        if (list == null || list.size() <= 0) {
            return null;
        }
        return list;
    }
}
