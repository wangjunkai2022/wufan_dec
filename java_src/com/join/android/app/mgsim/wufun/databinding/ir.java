package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: ItemPapaGameinfoBinding.java */
/* loaded from: classes3.dex */
public final class ir implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f21240a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f21241b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f21242c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final SimpleDraweeView f21243d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final View f21244e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final LinearLayout f21245f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final LinearLayout f21246g;

    private ir(@NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull SimpleDraweeView simpleDraweeView, @NonNull View view, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2) {
        this.f21240a = relativeLayout;
        this.f21241b = textView;
        this.f21242c = textView2;
        this.f21243d = simpleDraweeView;
        this.f21244e = view;
        this.f21245f = linearLayout;
        this.f21246g = linearLayout2;
    }

    @NonNull
    public static ir a(@NonNull View view) {
        int i2 = R.id.appDesc;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.appDesc);
        if (textView != null) {
            i2 = R.id.appName;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.appName);
            if (textView2 != null) {
                i2 = R.id.icon;
                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.icon);
                if (simpleDraweeView != null) {
                    i2 = R.id.line;
                    View findChildViewById = ViewBindings.findChildViewById(view, R.id.line);
                    if (findChildViewById != null) {
                        i2 = R.id.linearLayout;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.linearLayout);
                        if (linearLayout != null) {
                            i2 = R.id.tipsLayout;
                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.tipsLayout);
                            if (linearLayout2 != null) {
                                return new ir((RelativeLayout) view, textView, textView2, simpleDraweeView, findChildViewById, linearLayout, linearLayout2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static ir c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ir d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.item_papa_gameinfo, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f21240a;
    }
}
