package androidx.core.provider;

import android.graphics.Typeface;
import android.os.Handler;
import androidx.annotation.NonNull;
import androidx.core.provider.FontRequestWorker;
import androidx.core.provider.FontsContractCompat;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class CallbackWithHandler {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final FontsContractCompat.FontRequestCallback f4519a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final Handler f4520b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CallbackWithHandler(@NonNull FontsContractCompat.FontRequestCallback fontRequestCallback, @NonNull Handler handler) {
        this.f4519a = fontRequestCallback;
        this.f4520b = handler;
    }

    private void a(final int i2) {
        final FontsContractCompat.FontRequestCallback fontRequestCallback = this.f4519a;
        this.f4520b.post(new Runnable() { // from class: androidx.core.provider.CallbackWithHandler.2
            @Override // java.lang.Runnable
            public void run() {
                fontRequestCallback.onTypefaceRequestFailed(i2);
            }
        });
    }

    private void c(@NonNull final Typeface typeface) {
        final FontsContractCompat.FontRequestCallback fontRequestCallback = this.f4519a;
        this.f4520b.post(new Runnable() { // from class: androidx.core.provider.CallbackWithHandler.1
            @Override // java.lang.Runnable
            public void run() {
                fontRequestCallback.onTypefaceRetrieved(typeface);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(@NonNull FontRequestWorker.TypefaceResult typefaceResult) {
        if (typefaceResult.a()) {
            c(typefaceResult.f4549a);
        } else {
            a(typefaceResult.f4550b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CallbackWithHandler(@NonNull FontsContractCompat.FontRequestCallback fontRequestCallback) {
        this.f4519a = fontRequestCallback;
        this.f4520b = CalleeHandler.a();
    }
}
