package com.join.mgps.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.FlowLayout;
import com.join.mgps.dto.ClassifyBean;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.a;
/* compiled from: ClassifyFragment_.java */
/* loaded from: classes4.dex */
public final class j extends i implements g3.a, i3.a, i3.b {

    /* renamed from: i  reason: collision with root package name */
    private View f48963i;

    /* renamed from: h  reason: collision with root package name */
    private final i3.c f48962h = new i3.c();

    /* renamed from: j  reason: collision with root package name */
    private final Map<Class<?>, Object> f48964j = new HashMap();

    /* compiled from: ClassifyFragment_.java */
    /* loaded from: classes4.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ClassifyBean f48965a;

        a(ClassifyBean classifyBean) {
            this.f48965a = classifyBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            j.super.Z(this.f48965a);
        }
    }

    /* compiled from: ClassifyFragment_.java */
    /* loaded from: classes4.dex */
    class b extends a.c {
        b(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                j.super.loadData();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: ClassifyFragment_.java */
    /* loaded from: classes4.dex */
    public static class c extends org.androidannotations.api.builder.d<c, i> {
        @Override // org.androidannotations.api.builder.d
        /* renamed from: a */
        public i build() {
            j jVar = new j();
            jVar.setArguments(this.args);
            return jVar;
        }
    }

    public static c d0() {
        return new c();
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.i
    public void Z(ClassifyBean classifyBean) {
        org.androidannotations.api.b.e("", new a(classifyBean), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f48964j.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        View view = this.f48963i;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.mgps.fragment.i, com.join.mgps.basefragment.a
    public void loadData() {
        org.androidannotations.api.a.l(new b("", 0L, ""));
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f48962h);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
    }

    @Override // com.join.mgps.basefragment.a, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.f48963i = onCreateView;
        if (onCreateView == null) {
            this.f48963i = layoutInflater.inflate(R.layout.fragment_classify, viewGroup, false);
        }
        return this.f48963i;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f48963i = null;
        this.f48822b = null;
        this.f48823c = null;
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f48822b = (FlowLayout) aVar.internalFindViewById(R.id.classify_game);
        this.f48823c = (LinearLayout) aVar.internalFindViewById(R.id.game_classify);
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.f48962h.a(this);
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f48964j.put(cls, t3);
    }
}
