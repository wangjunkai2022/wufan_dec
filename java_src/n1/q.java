package n1;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.join.mgps.db.tables.EMUUpdateTable;
import java.util.HashMap;
import java.util.List;
/* compiled from: EMUUpdateTableManager.java */
/* loaded from: classes3.dex */
public class q extends g1.b<EMUUpdateTable> {

    /* renamed from: b  reason: collision with root package name */
    private static q f72818b;

    /* renamed from: c  reason: collision with root package name */
    private static RuntimeExceptionDao<EMUUpdateTable, Integer> f72819c;

    private q() {
        super(f72819c);
    }

    public static q o() {
        if (f72818b == null) {
            f72819c = g1.e.d(null).c().w();
            f72818b = new q();
        }
        return f72818b;
    }

    public EMUUpdateTable n(String str) {
        HashMap hashMap = new HashMap();
        hashMap.put("crc_sign_id", str);
        List<EMUUpdateTable> h4 = h(hashMap);
        if (h4 == null || h4.size() <= 0) {
            return null;
        }
        return h4.get(0);
    }
}
