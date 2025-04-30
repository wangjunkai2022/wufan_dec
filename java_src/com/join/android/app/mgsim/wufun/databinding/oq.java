package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: ItemGameinfo1Binding.java */
/* loaded from: classes3.dex */
public final class oq implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f23338a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f23339b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f23340c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f23341d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f23342e;

    private oq(@NonNull LinearLayout linearLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull LinearLayout linearLayout2, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f23338a = linearLayout;
        this.f23339b = simpleDraweeView;
        this.f23340c = linearLayout2;
        this.f23341d = textView;
        this.f23342e = textView2;
    }

    @NonNull
    public static oq a(@NonNull View view) {
        int i2 = R.id.iv_icon;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.iv_icon);
        if (simpleDraweeView != null) {
            LinearLayout linearLayout = (LinearLayout) view;
            i2 = R.id.tv_gameName;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_gameName);
            if (textView != null) {
                i2 = R.id.tv_roomCounts;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_roomCounts);
                if (textView2 != null) {
                    return new oq(linearLayout, simpleDraweeView, linearLayout, textView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static oq c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static oq d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.item_gameinfo_1, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f23338a;
    }
}
