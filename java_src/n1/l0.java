package n1;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.join.mgps.db.tables.TokenTable;
import java.util.HashMap;
import java.util.List;
/* compiled from: TokenTableManager.java */
/* loaded from: classes3.dex */
public class l0 extends g1.b<TokenTable> {

    /* renamed from: b  reason: collision with root package name */
    private static l0 f72804b;

    /* renamed from: c  reason: collision with root package name */
    private static RuntimeExceptionDao<TokenTable, Integer> f72805c;

    private l0() {
        super(f72805c);
    }

    public static l0 p() {
        if (f72804b == null) {
            f72805c = g1.e.d(null).c().b0();
            f72804b = new l0();
        }
        return f72804b;
    }

    public String n(long j4) {
        HashMap hashMap = new HashMap(0);
        hashMap.put("uid", Long.valueOf(j4));
        List<TokenTable> h4 = h(hashMap);
        if (h4 == null || h4.size() == 0) {
            return null;
        }
        return h4.get(0).getToken();
    }

    public TokenTable o(long j4) {
        HashMap hashMap = new HashMap(0);
        hashMap.put("uid", Long.valueOf(j4));
        List<TokenTable> h4 = h(hashMap);
        if (h4 == null || h4.size() == 0) {
            return null;
        }
        return h4.get(0);
    }
}
