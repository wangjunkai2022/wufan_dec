package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: FragmentUsercenterBinding.java */
/* loaded from: classes3.dex */
public final class ci implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f18914a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f18915b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final SimpleDraweeView f18916c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f18917d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final LinearLayout f18918e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final LinearLayout f18919f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final LinearLayout f18920g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final LinearLayout f18921h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final GridView f18922i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f18923j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f18924k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final TextView f18925l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final TextView f18926m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final TextView f18927n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final TextView f18928o;

    private ci(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull SimpleDraweeView simpleDraweeView, @NonNull ImageView imageView2, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull LinearLayout linearLayout4, @NonNull LinearLayout linearLayout5, @NonNull GridView gridView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView6) {
        this.f18914a = linearLayout;
        this.f18915b = imageView;
        this.f18916c = simpleDraweeView;
        this.f18917d = imageView2;
        this.f18918e = linearLayout2;
        this.f18919f = linearLayout3;
        this.f18920g = linearLayout4;
        this.f18921h = linearLayout5;
        this.f18922i = gridView;
        this.f18923j = textView;
        this.f18924k = textView2;
        this.f18925l = textView3;
        this.f18926m = textView4;
        this.f18927n = textView5;
        this.f18928o = textView6;
    }

    @NonNull
    public static ci a(@NonNull View view) {
        int i2 = R.id.iv_arrow;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_arrow);
        if (imageView != null) {
            i2 = R.id.iv_user_avatar;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.iv_user_avatar);
            if (simpleDraweeView != null) {
                i2 = R.id.iv_user_vip;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_user_vip);
                if (imageView2 != null) {
                    i2 = R.id.ll_copper;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_copper);
                    if (linearLayout != null) {
                        i2 = R.id.ll_members;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_members);
                        if (linearLayout2 != null) {
                            i2 = R.id.ll_svip;
                            LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_svip);
                            if (linearLayout3 != null) {
                                i2 = R.id.ll_userinfo;
                                LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_userinfo);
                                if (linearLayout4 != null) {
                                    i2 = R.id.mGridView;
                                    GridView gridView = (GridView) ViewBindings.findChildViewById(view, R.id.mGridView);
                                    if (gridView != null) {
                                        i2 = R.id.tv_user_account;
                                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_user_account);
                                        if (textView != null) {
                                            i2 = R.id.tv_user_coppers;
                                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_user_coppers);
                                            if (textView2 != null) {
                                                i2 = R.id.tv_user_member;
                                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_user_member);
                                                if (textView3 != null) {
                                                    i2 = R.id.tv_user_nickname;
                                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_user_nickname);
                                                    if (textView4 != null) {
                                                        i2 = R.id.tv_user_rank;
                                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_user_rank);
                                                        if (textView5 != null) {
                                                            i2 = R.id.tv_user_svip;
                                                            TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_user_svip);
                                                            if (textView6 != null) {
                                                                return new ci((LinearLayout) view, imageView, simpleDraweeView, imageView2, linearLayout, linearLayout2, linearLayout3, linearLayout4, gridView, textView, textView2, textView3, textView4, textView5, textView6);
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
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static ci c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ci d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.fragment_usercenter, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f18914a;
    }
}
