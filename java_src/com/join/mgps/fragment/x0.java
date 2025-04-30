package com.join.mgps.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.KeyboardListenLayout;
import com.join.mgps.dto.FriendBean;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.androidannotations.api.a;
/* compiled from: FriendAddFragment_.java */
/* loaded from: classes4.dex */
public final class x0 extends w0 implements g3.a, i3.a, i3.b {

    /* renamed from: k  reason: collision with root package name */
    private View f50707k;

    /* renamed from: j  reason: collision with root package name */
    private final i3.c f50706j = new i3.c();

    /* renamed from: l  reason: collision with root package name */
    private final Map<Class<?>, Object> f50708l = new HashMap();

    /* compiled from: FriendAddFragment_.java */
    /* loaded from: classes4.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            x0.this.U();
        }
    }

    /* compiled from: FriendAddFragment_.java */
    /* loaded from: classes4.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            x0.this.P();
        }
    }

    /* compiled from: FriendAddFragment_.java */
    /* loaded from: classes4.dex */
    class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Boolean f50711a;

        c(Boolean bool) {
            this.f50711a = bool;
        }

        @Override // java.lang.Runnable
        public void run() {
            x0.super.O(this.f50711a);
        }
    }

    /* compiled from: FriendAddFragment_.java */
    /* loaded from: classes4.dex */
    class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f50713a;

        d(List list) {
            this.f50713a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            x0.super.updateUi(this.f50713a);
        }
    }

    /* compiled from: FriendAddFragment_.java */
    /* loaded from: classes4.dex */
    class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f50715a;

        e(String str) {
            this.f50715a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            x0.super.X(this.f50715a);
        }
    }

    /* compiled from: FriendAddFragment_.java */
    /* loaded from: classes4.dex */
    class f extends a.c {
        f(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                x0.super.V();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: FriendAddFragment_.java */
    /* loaded from: classes4.dex */
    class g extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ FriendBean f50718a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        g(String str, long j4, String str2, FriendBean friendBean) {
            super(str, j4, str2);
            this.f50718a = friendBean;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                x0.super.N(this.f50718a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: FriendAddFragment_.java */
    /* loaded from: classes4.dex */
    public static class h extends org.androidannotations.api.builder.d<h, w0> {
        @Override // org.androidannotations.api.builder.d
        /* renamed from: a */
        public w0 build() {
            x0 x0Var = new x0();
            x0Var.setArguments(this.args);
            return x0Var;
        }
    }

    public static h e0() {
        return new h();
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.w0
    public void N(FriendBean friendBean) {
        org.androidannotations.api.a.l(new g("", 0L, "", friendBean));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.w0
    public void O(Boolean bool) {
        org.androidannotations.api.b.e("", new c(bool), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.w0
    public void V() {
        org.androidannotations.api.a.l(new f("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.w0
    public void X(String str) {
        org.androidannotations.api.b.e("", new e(str), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f50708l.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        View view = this.f50707k;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i2);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f50706j);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.f50707k = onCreateView;
        if (onCreateView == null) {
            this.f50707k = layoutInflater.inflate(R.layout.fragment_friend_add, viewGroup, false);
        }
        return this.f50707k;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f50707k = null;
        this.f50619a = null;
        this.f50620b = null;
        this.f50621c = null;
        this.f50622d = null;
        this.f50623e = null;
        this.f50624f = null;
        this.f50625g = null;
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f50619a = (EditText) aVar.internalFindViewById(R.id.input);
        this.f50620b = aVar.internalFindViewById(R.id.hint);
        this.f50621c = (KeyboardListenLayout) aVar.internalFindViewById(R.id.keyboardLayout);
        this.f50622d = (RecyclerView) aVar.internalFindViewById(R.id.recyclerView);
        this.f50623e = (TextView) aVar.internalFindViewById(R.id.textView40);
        this.f50624f = (ImageView) aVar.internalFindViewById(R.id.iv_no_data);
        this.f50625g = (TextView) aVar.internalFindViewById(R.id.tv_no_data);
        View internalFindViewById = aVar.internalFindViewById(R.id.search);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.close);
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new a());
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new b());
        }
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.f50706j.a(this);
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f50708l.put(cls, t3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.w0
    public void updateUi(List<FriendBean> list) {
        org.androidannotations.api.b.e("", new d(list), 0L);
    }
}
