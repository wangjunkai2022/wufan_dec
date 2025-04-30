package n1;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.join.mgps.db.tables.CloudDownRecoderTable;
import java.util.ArrayList;
import java.util.List;
/* compiled from: CloudDownRecoderTableManager.java */
/* loaded from: classes3.dex */
public class i extends g1.b<CloudDownRecoderTable> {

    /* renamed from: b  reason: collision with root package name */
    private static i f72790b;

    /* renamed from: c  reason: collision with root package name */
    private static RuntimeExceptionDao<CloudDownRecoderTable, Integer> f72791c;

    private i() {
        super(f72791c);
    }

    public static i o() {
        if (f72790b == null) {
            f72791c = g1.e.d(null).c().q();
            f72790b = new i();
        }
        return f72790b;
    }

    public List<CloudDownRecoderTable> n(String str) {
        if (str != null && !"".equals(str)) {
            List<CloudDownRecoderTable> queryForEq = f72791c.queryForEq("gameId", str);
            return (queryForEq == null || queryForEq.size() == 0) ? new ArrayList() : queryForEq;
        }
        return new ArrayList();
    }
}
