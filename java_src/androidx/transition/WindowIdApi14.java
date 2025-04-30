package androidx.transition;

import android.os.IBinder;
/* loaded from: classes2.dex */
class WindowIdApi14 implements WindowIdImpl {

    /* renamed from: a  reason: collision with root package name */
    private final IBinder f7839a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public WindowIdApi14(IBinder iBinder) {
        this.f7839a = iBinder;
    }

    public boolean equals(Object obj) {
        return (obj instanceof WindowIdApi14) && ((WindowIdApi14) obj).f7839a.equals(this.f7839a);
    }

    public int hashCode() {
        return this.f7839a.hashCode();
    }
}
