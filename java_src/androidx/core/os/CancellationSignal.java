package androidx.core.os;

import android.os.Build;
import androidx.annotation.Nullable;
/* loaded from: classes.dex */
public final class CancellationSignal {

    /* renamed from: a  reason: collision with root package name */
    private boolean f4486a;

    /* renamed from: b  reason: collision with root package name */
    private OnCancelListener f4487b;

    /* renamed from: c  reason: collision with root package name */
    private Object f4488c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f4489d;

    /* loaded from: classes.dex */
    public interface OnCancelListener {
        void onCancel();
    }

    private void a() {
        while (this.f4489d) {
            try {
                wait();
            } catch (InterruptedException unused) {
            }
        }
    }

    public void cancel() {
        synchronized (this) {
            if (this.f4486a) {
                return;
            }
            this.f4486a = true;
            this.f4489d = true;
            OnCancelListener onCancelListener = this.f4487b;
            Object obj = this.f4488c;
            if (onCancelListener != null) {
                try {
                    onCancelListener.onCancel();
                } catch (Throwable th) {
                    synchronized (this) {
                        this.f4489d = false;
                        notifyAll();
                        throw th;
                    }
                }
            }
            if (obj != null && Build.VERSION.SDK_INT >= 16) {
                ((android.os.CancellationSignal) obj).cancel();
            }
            synchronized (this) {
                this.f4489d = false;
                notifyAll();
            }
        }
    }

    @Nullable
    public Object getCancellationSignalObject() {
        Object obj;
        if (Build.VERSION.SDK_INT < 16) {
            return null;
        }
        synchronized (this) {
            if (this.f4488c == null) {
                android.os.CancellationSignal cancellationSignal = new android.os.CancellationSignal();
                this.f4488c = cancellationSignal;
                if (this.f4486a) {
                    cancellationSignal.cancel();
                }
            }
            obj = this.f4488c;
        }
        return obj;
    }

    public boolean isCanceled() {
        boolean z3;
        synchronized (this) {
            z3 = this.f4486a;
        }
        return z3;
    }

    public void setOnCancelListener(@Nullable OnCancelListener onCancelListener) {
        synchronized (this) {
            a();
            if (this.f4487b == onCancelListener) {
                return;
            }
            this.f4487b = onCancelListener;
            if (this.f4486a && onCancelListener != null) {
                onCancelListener.onCancel();
            }
        }
    }

    public void throwIfCanceled() {
        if (isCanceled()) {
            throw new OperationCanceledException();
        }
    }
}
