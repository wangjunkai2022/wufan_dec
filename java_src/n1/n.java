package n1;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.join.mgps.db.tables.DownlodTaskCopyTable;
import java.util.HashMap;
import java.util.List;
/* compiled from: DownlodTaskCopyTableManager.java */
/* loaded from: classes3.dex */
public class n extends g1.b<DownlodTaskCopyTable> {

    /* renamed from: b  reason: collision with root package name */
    private static n f72808b;

    /* renamed from: c  reason: collision with root package name */
    private static RuntimeExceptionDao<DownlodTaskCopyTable, Integer> f72809c;

    private n() {
        super(f72809c);
    }

    public static n o() {
        if (f72808b == null) {
            f72809c = g1.e.d(null).c().v();
            f72808b = new n();
        }
        return f72808b;
    }

    public DownlodTaskCopyTable n(String str) {
        HashMap hashMap = new HashMap();
        hashMap.put("gameId", str);
        List<DownlodTaskCopyTable> queryForFieldValues = f72809c.queryForFieldValues(hashMap);
        if (queryForFieldValues == null || queryForFieldValues.size() <= 0) {
            return null;
        }
        return queryForFieldValues.get(0);
    }
}
