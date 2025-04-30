package n1;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.join.mgps.db.tables.PlayGameTimeTable;
import java.util.HashMap;
import java.util.List;
/* compiled from: PlayGameTimeTableManager.java */
/* loaded from: classes3.dex */
public class d0 extends g1.b<PlayGameTimeTable> {

    /* renamed from: b  reason: collision with root package name */
    private static d0 f72772b;

    /* renamed from: c  reason: collision with root package name */
    private static RuntimeExceptionDao<PlayGameTimeTable, Integer> f72773c;

    private d0() {
        super(f72773c);
    }

    public static d0 n() {
        if (f72772b == null) {
            f72773c = g1.e.d(null).c().Q();
            f72772b = new d0();
        }
        return f72772b;
    }

    public List<PlayGameTimeTable> o(String str, String str2) {
        if (str == null) {
            return null;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("uId", str);
        hashMap.put("gameId", str2);
        return f72773c.queryForFieldValues(hashMap);
    }
}
