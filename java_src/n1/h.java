package n1;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.join.mgps.db.tables.CloudBackupsDataTable;
import java.util.HashMap;
import java.util.List;
/* compiled from: CloudBackupsDataTableManager.java */
/* loaded from: classes3.dex */
public class h extends g1.b<CloudBackupsDataTable> {

    /* renamed from: b  reason: collision with root package name */
    private static h f72786b;

    /* renamed from: c  reason: collision with root package name */
    private static RuntimeExceptionDao<CloudBackupsDataTable, Integer> f72787c;

    private h() {
        super(f72787c);
    }

    public static h o() {
        if (f72786b == null) {
            f72787c = g1.e.d(null).c().p();
            f72786b = new h();
        }
        return f72786b;
    }

    public CloudBackupsDataTable n(String str) {
        HashMap hashMap = new HashMap();
        hashMap.put("gameId", str);
        List<CloudBackupsDataTable> h4 = o().h(hashMap);
        if (h4 == null || h4.size() <= 0) {
            return null;
        }
        return h4.get(0);
    }
}
