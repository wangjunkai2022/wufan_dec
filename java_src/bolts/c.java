package bolts;

import java.util.Locale;
import java.util.concurrent.CancellationException;
/* compiled from: CancellationToken.java */
/* loaded from: classes2.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private final e f8215a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(e eVar) {
        this.f8215a = eVar;
    }

    public boolean a() {
        return this.f8215a.i();
    }

    public d b(Runnable runnable) {
        return this.f8215a.m(runnable);
    }

    public void c() throws CancellationException {
        this.f8215a.n();
    }

    public String toString() {
        return String.format(Locale.US, "%s@%s[cancellationRequested=%s]", getClass().getName(), Integer.toHexString(hashCode()), Boolean.toString(this.f8215a.i()));
    }
}
