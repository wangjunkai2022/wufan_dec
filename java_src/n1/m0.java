package n1;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.j256.ormlite.stmt.DeleteBuilder;
import com.j256.ormlite.stmt.Where;
import com.join.mgps.db.tables.UserPurchaseInfo;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
/* compiled from: UserPurchaseInfoManager.java */
/* loaded from: classes3.dex */
public class m0 extends g1.b<UserPurchaseInfo> {

    /* renamed from: b  reason: collision with root package name */
    private static m0 f72806b;

    /* renamed from: c  reason: collision with root package name */
    private static RuntimeExceptionDao<UserPurchaseInfo, Integer> f72807c;

    private m0() {
        super(f72807c);
    }

    public static m0 p() {
        if (f72806b == null) {
            f72807c = g1.e.d(null).c().c0();
            f72806b = new m0();
        }
        return f72806b;
    }

    public void delete(String str) {
        DeleteBuilder<UserPurchaseInfo, Integer> deleteBuilder = f72807c.deleteBuilder();
        Where<UserPurchaseInfo, Integer> where = deleteBuilder.where();
        try {
            where.eq("uid", str);
            deleteBuilder.setWhere(where);
            f72807c.delete(deleteBuilder.prepare());
        } catch (SQLException e4) {
            e4.printStackTrace();
        }
    }

    public List<UserPurchaseInfo> n(String str) {
        HashMap hashMap = new HashMap(0);
        hashMap.put("uid", str);
        return h(hashMap);
    }

    public List<UserPurchaseInfo> o(String str, String str2) {
        if (str2 == null) {
            return null;
        }
        HashMap hashMap = new HashMap(0);
        hashMap.put("uid", str);
        hashMap.put("game_id", str2);
        return h(hashMap);
    }
}
