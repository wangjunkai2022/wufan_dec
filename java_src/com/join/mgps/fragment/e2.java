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
/* compiled from: FriendMsgLikeFragment_.java */
/* loaded from: classes4.dex */
public final class e2 extends d2 implements g3.a, i3.a, i3.b {

    /* renamed from: i  reason: collision with root package name */
    private View f48620i;

    /* renamed from: h  reason: collision with root package name */
    private final i3.c f48619h = new i3.c();

    /* renamed from: j  reason: collision with root package name */
    private final Map<Class<?>, Object> f48621j = new HashMap();

    /* compiled from: FriendMsgLikeFragment_.java */
    /* loaded from: classes4.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            e2.super.X();
        }
    }

    /* compiled from: FriendMsgLikeFragment_.java */
    /* loaded from: classes4.dex */
    class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f48623a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f48624b;

        b(List list, int i2) {
            this.f48623a = list;
            this.f48624b = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            e2.super.a0(this.f48623a, this.f48624b);
        }
    }

    /* compiled from: FriendMsgLikeFragment_.java */
    /* loaded from: classes4.dex */
    class c extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f48626a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(String str, long j4, String str2, int i2) {
            super(str, j4, str2);
            this.f48626a = i2;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                e2.super.U(this.f48626a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: FriendMsgLikeFragment_.java */
    /* loaded from: classes4.dex */
    class d extends a.c {
        d(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                e2.super.S();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: FriendMsgLikeFragment_.java */
    /* loaded from: classes4.dex */
    public static class e extends org.androidannotations.api.builder.d<e, d2> {
        @Override // org.androidannotations.api.builder.d
        /* renamed from: a */
        public d2 build() {
            e2 e2Var = new e2();
            e2Var.setArguments(this.args);
            return e2Var;
        }
    }

    public static e f0() {
        return new e();
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.d2
    public void S() {
        org.androidannotations.api.a.l(new d("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.d2
    public void U(int i2) {
        org.androidannotations.api.a.l(new c("", 0L, "", i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.d2
    public void X() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.d2
    public void a0(List<FriendBean> list, int i2) {
        org.androidannotations.api.b.e("", new b(list, i2), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f48621j.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        View view = this.f48620i;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i2);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f48619h);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.f48620i = onCreateView;
        if (onCreateView == null) {
            this.f48620i = layoutInflater.inflate(R.layout.fragment_friend_msg_like, viewGroup, false);
        }
        return this.f48620i;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f48620i = null;
        this.f48544a = null;
        this.f48545b = null;
        this.f48546c = null;
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f48544a = (PtrClassicFrameLayout) aVar.internalFindViewById(R.id.mPtrFrame);
        this.f48545b = (XListView) aVar.internalFindViewById(R.id.listView);
        this.f48546c = (Group) aVar.internalFindViewById(R.id.noRecord);
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.f48619h.a(this);
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f48621j.put(cls, t3);
    }
}
