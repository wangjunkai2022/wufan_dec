package androidx.databinding;

import android.view.View;
import android.view.ViewStub;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes.dex */
public class ViewStubProxy {

    /* renamed from: a  reason: collision with root package name */
    private ViewStub f5292a;

    /* renamed from: b  reason: collision with root package name */
    private ViewDataBinding f5293b;

    /* renamed from: c  reason: collision with root package name */
    private View f5294c;

    /* renamed from: d  reason: collision with root package name */
    private ViewStub.OnInflateListener f5295d;

    /* renamed from: e  reason: collision with root package name */
    private ViewDataBinding f5296e;

    /* renamed from: f  reason: collision with root package name */
    private ViewStub.OnInflateListener f5297f;

    public ViewStubProxy(@NonNull ViewStub viewStub) {
        ViewStub.OnInflateListener onInflateListener = new ViewStub.OnInflateListener() { // from class: androidx.databinding.ViewStubProxy.1
            @Override // android.view.ViewStub.OnInflateListener
            public void onInflate(ViewStub viewStub2, View view) {
                ViewStubProxy.this.f5294c = view;
                ViewStubProxy viewStubProxy = ViewStubProxy.this;
                viewStubProxy.f5293b = DataBindingUtil.a(viewStubProxy.f5296e.f5269l, view, viewStub2.getLayoutResource());
                ViewStubProxy.this.f5292a = null;
                if (ViewStubProxy.this.f5295d != null) {
                    ViewStubProxy.this.f5295d.onInflate(viewStub2, view);
                    ViewStubProxy.this.f5295d = null;
                }
                ViewStubProxy.this.f5296e.invalidateAll();
                ViewStubProxy.this.f5296e.q();
            }
        };
        this.f5297f = onInflateListener;
        this.f5292a = viewStub;
        viewStub.setOnInflateListener(onInflateListener);
    }

    @Nullable
    public ViewDataBinding getBinding() {
        return this.f5293b;
    }

    public View getRoot() {
        return this.f5294c;
    }

    @Nullable
    public ViewStub getViewStub() {
        return this.f5292a;
    }

    public boolean isInflated() {
        return this.f5294c != null;
    }

    public void setContainingBinding(@NonNull ViewDataBinding viewDataBinding) {
        this.f5296e = viewDataBinding;
    }

    public void setOnInflateListener(@Nullable ViewStub.OnInflateListener onInflateListener) {
        if (this.f5292a != null) {
            this.f5295d = onInflateListener;
        }
    }
}
