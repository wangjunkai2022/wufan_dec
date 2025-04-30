package com.join.mgps.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.Group;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListView;
import com.join.mgps.dto.FriendBean;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.androidannotations.api.a;
/* compiled from: FriendMsgRequestFragment_.java */
/* loaded from: classes4.dex */
public final class i2 extends h2 implements g3.a, i3.a, i3.b {

    /* renamed from: i  reason: collision with root package name */
    private View f48865i;

    /* renamed from: h  reason: collision with root package name */
    private final i3.c f48864h = new i3.c();

    /* renamed from: j  reason: collision with root package name */
    private final Map<Class<?>, Object> f48866j = new HashMap();

    /* compiled from: FriendMsgRequestFragment_.java */
    /* loaded from: classes4.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            i2.super.Z();
        }
    }

    /* compiled from: FriendMsgRequestFragment_.java */
    /* loaded from: classes4.dex */
    class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f48868a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f48869b;

        b(List list, int i2) {
            this.f48868a = list;
            this.f48869b = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            i2.super.b0(this.f48868a, this.f48869b);
        }
    }

    /* compiled from: FriendMsgRequestFragment_.java */
    /* loaded from: classes4.dex */
    class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f48871a;

        c(int i2) {
            this.f48871a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            i2.super.X(this.f48871a);
        }
    }

    /* compiled from: FriendMsgRequestFragment_.java */
    /* loaded from: classes4.dex */
    class d extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f48873a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(String str, long j4, String str2, int i2) {
            super(str, j4, str2);
            this.f48873a = i2;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                i2.super.S(this.f48873a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: FriendMsgRequestFragment_.java */
    /* loaded from: classes4.dex */
    class e extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f48875a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f48876b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(String str, long j4, String str2, int i2, String str3) {
            super(str, j4, str2);
            this.f48875a = i2;
            this.f48876b = str3;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                i2.super.W(this.f48875a, this.f48876b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: FriendMsgRequestFragment_.java */
    /* loaded from: classes4.dex */
    public static class f extends org.androidannotations.api.builder.d<f, h2> {
        @Override // org.androidannotations.api.builder.d
        /* renamed from: a */
        public h2 build() {
            i2 i2Var = new i2();
            i2Var.setArguments(this.args);
            return i2Var;
        }
    }

    public static f h0() {
        return new f();
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.h2
    public void S(int i2) {
        org.androidannotations.api.a.l(new d("", 0L, "", i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.h2
    public void W(int i2, String str) {
        org.androidannotations.api.a.l(new e("", 0L, "", i2, str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.h2
    public void X(int i2) {
        org.androidannotations.api.b.e("", new c(i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.h2
    public void Z() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.h2
    public void b0(List<FriendBean> list, int i2) {
        org.androidannotations.api.b.e("", new b(list, i2), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f48866j.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        View view = this.f48865i;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i2);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f48864h);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.f48865i = onCreateView;
        if (onCreateView == null) {
            this.f48865i = layoutInflater.inflate(R.layout.fragment_friend_msg_req, viewGroup, false);
        }
        return this.f48865i;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f48865i = null;
        this.f48808a = null;
        this.f48809b = null;
        this.f48810c = null;
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f48808a = (PtrClassicFrameLayout) aVar.internalFindViewById(R.id.mPtrFrame);
        this.f48809b = (XListView) aVar.internalFindViewById(R.id.listView);
        this.f48810c = (Group) aVar.internalFindViewById(R.id.noRecord);
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.f48864h.a(this);
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f48866j.put(cls, t3);
    }
}
