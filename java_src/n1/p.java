package n1;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.join.mgps.db.tables.EMUApkTable;
import java.util.HashMap;
import java.util.List;
/* compiled from: EMUApkTableManager.java */
/* loaded from: classes3.dex */
public class p extends g1.b<EMUApkTable> {

    /* renamed from: b  reason: collision with root package name */
    private static p f72816b;

    /* renamed from: c  reason: collision with root package name */
    private static RuntimeExceptionDao<EMUApkTable, Integer> f72817c;

    private p() {
        super(f72817c);
    }

    public static p o() {
        if (f72816b == null) {
            f72817c = g1.e.d(null).c().y();
            f72816b = new p();
        }
        return f72816b;
    }

    public EMUApkTable n(String str) {
        HashMap hashMap = new HashMap();
        hashMap.put("tag_id", str);
        List<EMUApkTable> h4 = h(hashMap);
        if (h4 == null || h4.size() <= 0) {
            return null;
        }
        return h4.get(0);
    }
}
