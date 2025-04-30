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
/* compiled from: InformationContentItemBinding.java */
/* loaded from: classes3.dex */
public final class ro implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f24459a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f24460b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final RelativeLayout f24461c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f24462d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f24463e;

    private ro(@NonNull RelativeLayout relativeLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull RelativeLayout relativeLayout2, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f24459a = relativeLayout;
        this.f24460b = simpleDraweeView;
        this.f24461c = relativeLayout2;
        this.f24462d = textView;
        this.f24463e = textView2;
    }

    @NonNull
    public static ro a(@NonNull View view) {
        int i2 = R.id.imageAd;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.imageAd);
        if (simpleDraweeView != null) {
            RelativeLayout relativeLayout = (RelativeLayout) view;
            i2 = R.id.tvPraise;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tvPraise);
            if (textView != null) {
                i2 = R.id.tvTitle;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tvTitle);
                if (textView2 != null) {
                    return new ro(relativeLayout, simpleDraweeView, relativeLayout, textView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static ro c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ro d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.information_content_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f24459a;
    }
}
