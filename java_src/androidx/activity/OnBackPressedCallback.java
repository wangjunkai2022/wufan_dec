package androidx.activity;

import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes.dex */
public abstract class OnBackPressedCallback {

    /* renamed from: a  reason: collision with root package name */
    private boolean f46a;

    /* renamed from: b  reason: collision with root package name */
    private CopyOnWriteArrayList<Cancellable> f47b = new CopyOnWriteArrayList<>();

    public OnBackPressedCallback(boolean z3) {
        this.f46a = z3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@NonNull Cancellable cancellable) {
        this.f47b.add(cancellable);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(@NonNull Cancellable cancellable) {
        this.f47b.remove(cancellable);
    }

    @MainThread
    public abstract void handleOnBackPressed();

    @MainThread
    public final boolean isEnabled() {
        return this.f46a;
    }

    @MainThread
    public final void remove() {
        Iterator<Cancellable> it2 = this.f47b.iterator();
        while (it2.hasNext()) {
            it2.next().cancel();
        }
    }

    @MainThread
    public final void setEnabled(boolean z3) {
        this.f46a = z3;
    }
}
