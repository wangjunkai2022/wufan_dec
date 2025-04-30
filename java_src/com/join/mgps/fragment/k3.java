package com.join.mgps.fragment;

import android.os.Bundle;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RelativeLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentTransaction;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.dto.AccountBean;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.ViewById;
/* compiled from: MyShopFragment.java */
@EFragment(R.layout.item_shop_fragment)
/* loaded from: classes4.dex */
public class k3 extends Fragment {
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    RadioButton f49173a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    RadioButton f49174b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    RadioButton f49175c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    RadioButton f49176d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    LinearLayout f49177e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    LinearLayout f49178f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    LinearLayout f49179g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    LinearLayout f49180h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    FrameLayout f49181i;
    @ViewById

    /* renamed from: j  reason: collision with root package name */
    RelativeLayout f49182j;

    /* renamed from: k  reason: collision with root package name */
    o4 f49183k;

    /* renamed from: l  reason: collision with root package name */
    o4 f49184l;

    /* renamed from: m  reason: collision with root package name */
    o4 f49185m;

    /* renamed from: n  reason: collision with root package name */
    o4 f49186n;

    /* renamed from: o  reason: collision with root package name */
    o4 f49187o;

    /* renamed from: p  reason: collision with root package name */
    String f49188p;

    /* renamed from: q  reason: collision with root package name */
    int f49189q;

    public void M() {
        o4 o4Var = this.f49183k;
        if (o4Var != null) {
            o4Var.k0();
        }
    }

    void N(FragmentTransaction fragmentTransaction) {
        o4 o4Var = this.f49183k;
        if (o4Var != null) {
            fragmentTransaction.hide(o4Var);
        }
        o4 o4Var2 = this.f49184l;
        if (o4Var2 != null) {
            fragmentTransaction.hide(o4Var2);
        }
        o4 o4Var3 = this.f49185m;
        if (o4Var3 != null) {
            fragmentTransaction.hide(o4Var3);
        }
        o4 o4Var4 = this.f49186n;
        if (o4Var4 != null) {
            fragmentTransaction.hide(o4Var4);
        }
        o4 o4Var5 = this.f49187o;
        if (o4Var5 != null) {
            fragmentTransaction.hide(o4Var5);
        }
    }

    void O() {
        if (this.f49189q == 3) {
            this.f49173a.setTextColor(getResources().getColor(R.color.white));
            this.f49174b.setTextColor(getResources().getColor(R.color.white));
            this.f49176d.setTextColor(getResources().getColor(R.color.white));
            this.f49175c.setTextColor(getResources().getColor(R.color.white));
            this.f49173a.setBackgroundDrawable(getResources().getDrawable(R.drawable.archive_tab_nor_bg));
            this.f49174b.setBackgroundDrawable(getResources().getDrawable(R.drawable.archive_tab_nor_bg));
            this.f49176d.setBackgroundDrawable(getResources().getDrawable(R.drawable.archive_tab_nor_bg));
            this.f49175c.setBackgroundDrawable(getResources().getDrawable(R.drawable.archive_tab_nor_bg));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void P() {
        O();
        this.f49174b.setTextColor(getResources().getColor(R.color.main_bar_color));
        this.f49174b.setBackgroundDrawable(getResources().getDrawable(R.drawable.archive_tab_bg));
        X(3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void Q() {
        if (AccountUtil_.getInstance_(getContext()).getAccountData() != null && AccountUtil_.getInstance_(getContext()).getAccountData().getUid() != 0 && !AccountUtil_.getInstance_(getContext()).isTourist()) {
            O();
            this.f49176d.setTextColor(getResources().getColor(R.color.main_bar_color));
            this.f49176d.setBackgroundDrawable(getResources().getDrawable(R.drawable.archive_tab_bg));
            X(4);
            return;
        }
        IntentUtil.getInstance().goLogin(getActivity());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void R() {
        O();
        this.f49175c.setTextColor(getResources().getColor(R.color.main_bar_color));
        this.f49175c.setBackgroundDrawable(getResources().getDrawable(R.drawable.archive_tab_bg));
        X(2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void S() {
        O();
        this.f49173a.setTextColor(getResources().getColor(R.color.main_bar_color));
        this.f49173a.setBackgroundDrawable(getResources().getDrawable(R.drawable.archive_tab_bg));
        X(1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void T() {
        O();
        this.f49174b.setTextColor(getResources().getColor(R.color.main_bar_color));
        this.f49174b.setBackgroundDrawable(getResources().getDrawable(R.drawable.archive_tab_bg));
        X(3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void U() {
        if (AccountUtil_.getInstance_(getContext()).getAccountData() != null && AccountUtil_.getInstance_(getContext()).getAccountData().getUid() != 0 && !AccountUtil_.getInstance_(getContext()).isTourist()) {
            O();
            this.f49176d.setBackgroundDrawable(getResources().getDrawable(R.drawable.archive_tab_bg));
            this.f49176d.setTextColor(getResources().getColor(R.color.main_bar_color));
            X(4);
            return;
        }
        IntentUtil.getInstance().goLogin(getActivity());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void V() {
        O();
        this.f49175c.setTextColor(getResources().getColor(R.color.main_bar_color));
        this.f49175c.setBackgroundDrawable(getResources().getDrawable(R.drawable.archive_tab_bg));
        X(2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void W() {
        O();
        this.f49173a.setBackgroundDrawable(getResources().getDrawable(R.drawable.archive_tab_bg));
        this.f49173a.setTextColor(getResources().getColor(R.color.main_bar_color));
        X(1);
    }

    void X(int i2) {
        FragmentTransaction beginTransaction = getChildFragmentManager().beginTransaction();
        N(beginTransaction);
        Bundle bundle = new Bundle();
        if (i2 == 1) {
            bundle.putInt("type", 1);
            bundle.putInt("typeIndex", this.f49189q);
            bundle.putString("gameid", this.f49188p);
            o4 o4Var = this.f49183k;
            if (o4Var == null) {
                p4 p4Var = new p4();
                this.f49183k = p4Var;
                p4Var.setArguments(bundle);
                beginTransaction.add(R.id.frag_shop, this.f49183k);
            } else {
                beginTransaction.show(o4Var);
            }
        } else if (i2 == 2) {
            bundle.putInt("type", 2);
            bundle.putString("gameid", this.f49188p);
            bundle.putInt("typeIndex", this.f49189q);
            o4 o4Var2 = this.f49184l;
            if (o4Var2 == null) {
                p4 p4Var2 = new p4();
                this.f49184l = p4Var2;
                p4Var2.setArguments(bundle);
                beginTransaction.add(R.id.frag_shop, this.f49184l);
            } else {
                beginTransaction.show(o4Var2);
            }
        } else if (i2 == 3) {
            bundle.putInt("type", 3);
            bundle.putString("gameid", this.f49188p);
            bundle.putInt("typeIndex", this.f49189q);
            o4 o4Var3 = this.f49185m;
            if (o4Var3 == null) {
                p4 p4Var3 = new p4();
                this.f49185m = p4Var3;
                p4Var3.setArguments(bundle);
                beginTransaction.add(R.id.frag_shop, this.f49185m);
            } else {
                beginTransaction.show(o4Var3);
            }
        } else if (i2 == 4) {
            AccountBean accountBean = com.join.mgps.rpc.g.N;
            if (accountBean != null && accountBean.getUid() != 0 && !AccountUtil_.getInstance_(getActivity()).isTourist()) {
                bundle.putInt("type", 4);
                bundle.putString("gameid", this.f49188p);
                bundle.putInt("typeIndex", this.f49189q);
                o4 o4Var4 = this.f49186n;
                if (o4Var4 == null) {
                    p4 p4Var4 = new p4();
                    this.f49186n = p4Var4;
                    p4Var4.setArguments(bundle);
                    beginTransaction.add(R.id.frag_shop, this.f49186n);
                } else {
                    beginTransaction.show(o4Var4);
                }
            } else {
                IntentUtil.getInstance().goLogin(getActivity());
                return;
            }
        } else {
            AccountBean accountBean2 = com.join.mgps.rpc.g.N;
            if (accountBean2 != null && accountBean2.getUid() != 0 && !AccountUtil_.getInstance_(getActivity()).isTourist()) {
                bundle.putInt("type", 1);
                bundle.putString("gameid", this.f49188p);
                bundle.putInt("typeIndex", this.f49189q);
                o4 o4Var5 = this.f49187o;
                if (o4Var5 == null) {
                    p4 p4Var5 = new p4();
                    this.f49187o = p4Var5;
                    p4Var5.setArguments(bundle);
                    beginTransaction.add(R.id.frag_shop, this.f49187o);
                } else {
                    beginTransaction.show(o4Var5);
                }
            } else {
                IntentUtil.getInstance().goLogin(getActivity());
                return;
            }
        }
        beginTransaction.commitAllowingStateLoss();
    }

    void Z(int i2) {
        FragmentTransaction beginTransaction = getChildFragmentManager().beginTransaction();
        N(beginTransaction);
        Bundle bundle = new Bundle();
        if (i2 == 1) {
            bundle.putInt("type", 1);
            bundle.putInt("typeIndex", this.f49189q);
            bundle.putString("gameid", this.f49188p);
            o4 o4Var = this.f49187o;
            if (o4Var == null) {
                p4 p4Var = new p4();
                this.f49187o = p4Var;
                p4Var.setArguments(bundle);
                beginTransaction.add(R.id.frag_shop, this.f49187o);
            } else {
                beginTransaction.show(o4Var);
            }
        }
        beginTransaction.commitAllowingStateLoss();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterView() {
        this.f49188p = getArguments().getString("gameid");
        this.f49189q = getArguments().getInt("type");
        this.f49173a.setChecked(true);
        O();
        this.f49173a.setTextColor(getResources().getColor(R.color.main_bar_color));
        this.f49173a.setBackgroundDrawable(getResources().getDrawable(R.drawable.archive_tab_bg));
        if (this.f49189q == 3) {
            this.f49182j.setVisibility(0);
            X(1);
            return;
        }
        AccountBean accountBean = com.join.mgps.rpc.g.N;
        if (accountBean != null && accountBean.getUid() != 0 && !AccountUtil_.getInstance_(getActivity()).isTourist()) {
            this.f49182j.setVisibility(8);
            X(5);
            return;
        }
        IntentUtil.getInstance().goLogin(getActivity());
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean z3) {
        o4 o4Var;
        super.onHiddenChanged(z3);
        if (z3) {
            return;
        }
        if (this.f49189q == 4 && this.f49187o != null) {
            AccountBean accountBean = com.join.mgps.rpc.g.N;
            if (accountBean != null && accountBean.getUid() != 0 && !AccountUtil_.getInstance_(getActivity()).isTourist()) {
                this.f49187o.j0();
            } else {
                IntentUtil.getInstance().goLogin(getActivity());
                return;
            }
        }
        if (this.f49189q != 3 || (o4Var = this.f49183k) == null) {
            return;
        }
        o4Var.i0();
    }
}
