package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: ItemShopFragmentBinding.java */
/* loaded from: classes3.dex */
public final class bs implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f18639a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final FrameLayout f18640b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f18641c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final LinearLayout f18642d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final LinearLayout f18643e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final LinearLayout f18644f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final RadioButton f18645g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final RadioButton f18646h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final RadioButton f18647i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final RadioButton f18648j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final RelativeLayout f18649k;

    private bs(@NonNull LinearLayout linearLayout, @NonNull FrameLayout frameLayout, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull LinearLayout linearLayout4, @NonNull LinearLayout linearLayout5, @NonNull RadioButton radioButton, @NonNull RadioButton radioButton2, @NonNull RadioButton radioButton3, @NonNull RadioButton radioButton4, @NonNull RelativeLayout relativeLayout) {
        this.f18639a = linearLayout;
        this.f18640b = frameLayout;
        this.f18641c = linearLayout2;
        this.f18642d = linearLayout3;
        this.f18643e = linearLayout4;
        this.f18644f = linearLayout5;
        this.f18645g = radioButton;
        this.f18646h = radioButton2;
        this.f18647i = radioButton3;
        this.f18648j = radioButton4;
        this.f18649k = relativeLayout;
    }

    @NonNull
    public static bs a(@NonNull View view) {
        int i2 = R.id.frag_shop;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.frag_shop);
        if (frameLayout != null) {
            i2 = R.id.ll_good;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_good);
            if (linearLayout != null) {
                i2 = R.id.ll_my;
                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_my);
                if (linearLayout2 != null) {
                    i2 = R.id.ll_new;
                    LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_new);
                    if (linearLayout3 != null) {
                        i2 = R.id.ll_zong;
                        LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_zong);
                        if (linearLayout4 != null) {
                            i2 = R.id.rb_good;
                            RadioButton radioButton = (RadioButton) ViewBindings.findChildViewById(view, R.id.rb_good);
                            if (radioButton != null) {
                                i2 = R.id.rb_my;
                                RadioButton radioButton2 = (RadioButton) ViewBindings.findChildViewById(view, R.id.rb_my);
                                if (radioButton2 != null) {
                                    i2 = R.id.rb_new;
                                    RadioButton radioButton3 = (RadioButton) ViewBindings.findChildViewById(view, R.id.rb_new);
                                    if (radioButton3 != null) {
                                        i2 = R.id.rb_zong;
                                        RadioButton radioButton4 = (RadioButton) ViewBindings.findChildViewById(view, R.id.rb_zong);
                                        if (radioButton4 != null) {
                                            i2 = R.id.rl_titleshopbar;
                                            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rl_titleshopbar);
                                            if (relativeLayout != null) {
                                                return new bs((LinearLayout) view, frameLayout, linearLayout, linearLayout2, linearLayout3, linearLayout4, radioButton, radioButton2, radioButton3, radioButton4, relativeLayout);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static bs c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static bs d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.item_shop_fragment, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f18639a;
    }
}
