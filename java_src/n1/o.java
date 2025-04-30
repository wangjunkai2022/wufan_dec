package n1;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.join.mgps.Util.BeanUtils;
import com.join.mgps.Util.d2;
import com.join.mgps.db.tables.EMUApkArenaTable;
import com.join.mgps.db.tables.EMUApkTable;
import java.util.HashMap;
import java.util.List;
/* compiled from: EMUApkArenaTableManager.java */
/* loaded from: classes3.dex */
public class o extends g1.b<EMUApkArenaTable> {

    /* renamed from: b  reason: collision with root package name */
    private static o f72812b;

    /* renamed from: c  reason: collision with root package name */
    private static RuntimeExceptionDao<EMUApkArenaTable, Integer> f72813c;

    private o() {
        super(f72813c);
    }

    public static o o() {
        if (f72812b == null) {
            f72813c = g1.e.d(null).c().x();
            f72812b = new o();
        }
        return f72812b;
    }

    public EMUApkTable n(String str) {
        try {
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (d2.h(str)) {
            return null;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("tag_id", str);
        List<EMUApkArenaTable> h4 = h(hashMap);
        if (h4 != null && h4.size() > 0) {
            EMUApkTable eMUApkTable = (EMUApkTable) BeanUtils.g(h4.get(0), EMUApkTable.class);
            eMUApkTable.setArena(true);
            return eMUApkTable;
        }
        return null;
    }
}
