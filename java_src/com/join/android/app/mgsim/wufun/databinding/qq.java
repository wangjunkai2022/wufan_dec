package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: ItemGameinfoBinding.java */
/* loaded from: classes3.dex */
public final class qq implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f24049a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final View f24050b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final SimpleDraweeView f24051c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final RelativeLayout f24052d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f24053e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f24054f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f24055g;

    private qq(@NonNull RelativeLayout relativeLayout, @NonNull View view, @NonNull SimpleDraweeView simpleDraweeView, @NonNull RelativeLayout relativeLayout2, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.f24049a = relativeLayout;
        this.f24050b = view;
        this.f24051c = simpleDraweeView;
        this.f24052d = relativeLayout2;
        this.f24053e = textView;
        this.f24054f = textView2;
        this.f24055g = textView3;
    }

    @NonNull
    public static qq a(@NonNull View view) {
        int i2 = R.id.cover;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.cover);
        if (findChildViewById != null) {
            i2 = R.id.iv_icon;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.iv_icon);
            if (simpleDraweeView != null) {
                i2 = R.id.main;
                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.main);
                if (relativeLayout != null) {
                    i2 = R.id.romeName;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.romeName);
                    if (textView != null) {
                        i2 = R.id.tv_gameName;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_gameName);
                        if (textView2 != null) {
                            i2 = R.id.tv_roomCounts;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_roomCounts);
                            if (textView3 != null) {
                                return new qq((RelativeLayout) view, findChildViewById, simpleDraweeView, relativeLayout, textView, textView2, textView3);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static qq c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static qq d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.item_gameinfo, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f24049a;
    }
}
