package com.join.mgps.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListView2;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.a;
/* compiled from: GameTopicFragment_.java */
/* loaded from: classes4.dex */
public final class a3 extends z2 implements g3.a, i3.a, i3.b {

    /* renamed from: l  reason: collision with root package name */
    private View f48320l;

    /* renamed from: k  reason: collision with root package name */
    private final i3.c f48319k = new i3.c();

    /* renamed from: m  reason: collision with root package name */
    private final Map<Class<?>, Object> f48321m = new HashMap();

    /* compiled from: GameTopicFragment_.java */
    /* loaded from: classes4.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a3.super.h0();
        }
    }

    /* compiled from: GameTopicFragment_.java */
    /* loaded from: classes4.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a3.super.a0();
        }
    }

    /* compiled from: GameTopicFragment_.java */
    /* loaded from: classes4.dex */
    class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f48324a;

        c(String str) {
            this.f48324a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            a3.super.showToast(this.f48324a);
        }
    }

    /* compiled from: GameTopicFragment_.java */
    /* loaded from: classes4.dex */
    class d extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f48326a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(String str, long j4, String str2, int i2) {
            super(str, j4, str2);
            this.f48326a = i2;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                a3.super.loadData(this.f48326a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: GameTopicFragment_.java */
    /* loaded from: classes4.dex */
    public static class e extends org.androidannotations.api.builder.d<e, z2> {
        @Override // org.androidannotations.api.builder.d
        /* renamed from: a */
        public z2 build() {
            a3 a3Var = new a3();
            a3Var.setArguments(this.args);
            return a3Var;
        }
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
    }

    public static e m0() {
        return new e();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.z2
    public void a0() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f48321m.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.z2
    public void h0() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        View view = this.f48320l;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.mgps.fragment.z2
    public void loadData(int i2) {
        org.androidannotations.api.a.l(new d("", 0L, "", i2));
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f48319k);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
    }

    @Override // com.join.mgps.basefragment.a, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.f48320l = onCreateView;
        if (onCreateView == null) {
            this.f48320l = layoutInflater.inflate(R.layout.fragment_game_topic, viewGroup, false);
        }
        return this.f48320l;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f48320l = null;
        this.f50827d = null;
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f50827d = (XListView2) aVar.internalFindViewById(R.id.listView);
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.f48319k.a(this);
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f48321m.put(cls, t3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.z2
    public void showToast(String str) {
        org.androidannotations.api.b.e("", new c(str), 0L);
    }
}
