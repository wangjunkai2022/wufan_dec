package g1;

import android.content.Context;
import com.MApplication;
import com.j256.ormlite.android.apptools.OpenHelperManager;
import com.join.android.app.common.db.DatabaseHelper;
/* compiled from: DBManager.java */
/* loaded from: classes.dex */
public class e {

    /* renamed from: c  reason: collision with root package name */
    private static e f65663c;

    /* renamed from: a  reason: collision with root package name */
    private Context f65664a;

    /* renamed from: b  reason: collision with root package name */
    private DatabaseHelper f65665b = null;

    private e(Context context) {
        this.f65664a = context;
    }

    private void a() {
        if (this.f65664a == null) {
            this.f65664a = MApplication.f9223q;
        }
    }

    public static e d(Context context) {
        if (f65663c == null) {
            f65663c = new e(context);
        }
        return f65663c;
    }

    public void b(String str) {
        if (this.f65665b != null) {
            if (DatabaseHelper.a().equals(str)) {
                return;
            }
            OpenHelperManager.releaseHelper();
        }
        if (this.f65665b == null || !DatabaseHelper.a().equals(str)) {
            a();
            DatabaseHelper.h0(str);
            this.f65665b = (DatabaseHelper) OpenHelperManager.getHelper(this.f65664a, DatabaseHelper.class);
        }
    }

    public DatabaseHelper c() {
        if (this.f65665b == null) {
            a();
            this.f65665b = (DatabaseHelper) OpenHelperManager.getHelper(this.f65664a, DatabaseHelper.class);
        }
        return this.f65665b;
    }

    public void e() {
        if (this.f65665b != null) {
            OpenHelperManager.releaseHelper();
            this.f65665b = null;
        }
    }
}
