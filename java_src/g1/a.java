package g1;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.join.android.app.common.db.tables.Account;
/* compiled from: AccountManager.java */
/* loaded from: classes.dex */
public class a extends b<Account> {

    /* renamed from: b  reason: collision with root package name */
    private static a f65656b;

    /* renamed from: c  reason: collision with root package name */
    private static RuntimeExceptionDao<Account, Integer> f65657c;

    private a() {
        super(f65657c);
    }

    public static a n() {
        if (f65656b == null) {
            f65657c = e.d(null).c().b();
            f65656b = new a();
        }
        return f65656b;
    }
}
