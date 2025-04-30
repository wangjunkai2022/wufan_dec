package androidx.core.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ProgressBar;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
/* loaded from: classes.dex */
public class ContentLoadingProgressBar extends ProgressBar {

    /* renamed from: g  reason: collision with root package name */
    private static final int f5084g = 500;

    /* renamed from: h  reason: collision with root package name */
    private static final int f5085h = 500;

    /* renamed from: a  reason: collision with root package name */
    long f5086a;

    /* renamed from: b  reason: collision with root package name */
    boolean f5087b;

    /* renamed from: c  reason: collision with root package name */
    boolean f5088c;

    /* renamed from: d  reason: collision with root package name */
    boolean f5089d;

    /* renamed from: e  reason: collision with root package name */
    private final Runnable f5090e;

    /* renamed from: f  reason: collision with root package name */
    private final Runnable f5091f;

    public ContentLoadingProgressBar(@NonNull Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @UiThread
    public void e() {
        this.f5089d = true;
        removeCallbacks(this.f5091f);
        this.f5088c = false;
        long currentTimeMillis = System.currentTimeMillis();
        long j4 = this.f5086a;
        long j5 = currentTimeMillis - j4;
        if (j5 < 500 && j4 != -1) {
            if (this.f5087b) {
                return;
            }
            postDelayed(this.f5090e, 500 - j5);
            this.f5087b = true;
            return;
        }
        setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f() {
        this.f5087b = false;
        this.f5086a = -1L;
        setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g() {
        this.f5088c = false;
        if (this.f5089d) {
            return;
        }
        this.f5086a = System.currentTimeMillis();
        setVisibility(0);
    }

    private void h() {
        removeCallbacks(this.f5090e);
        removeCallbacks(this.f5091f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @UiThread
    public void i() {
        this.f5086a = -1L;
        this.f5089d = false;
        removeCallbacks(this.f5090e);
        this.f5087b = false;
        if (this.f5088c) {
            return;
        }
        postDelayed(this.f5091f, 500L);
        this.f5088c = true;
    }

    public void hide() {
        post(new Runnable() { // from class: androidx.core.widget.b
            @Override // java.lang.Runnable
            public final void run() {
                ContentLoadingProgressBar.this.e();
            }
        });
    }

    @Override // android.widget.ProgressBar, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        h();
    }

    @Override // android.widget.ProgressBar, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        h();
    }

    public void show() {
        post(new Runnable() { // from class: androidx.core.widget.d
            @Override // java.lang.Runnable
            public final void run() {
                ContentLoadingProgressBar.this.i();
            }
        });
    }

    public ContentLoadingProgressBar(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f5086a = -1L;
        this.f5087b = false;
        this.f5088c = false;
        this.f5089d = false;
        this.f5090e = new Runnable() { // from class: androidx.core.widget.a
            @Override // java.lang.Runnable
            public final void run() {
                ContentLoadingProgressBar.this.f();
            }
        };
        this.f5091f = new Runnable() { // from class: androidx.core.widget.c
            @Override // java.lang.Runnable
            public final void run() {
                ContentLoadingProgressBar.this.g();
            }
        };
    }
}
