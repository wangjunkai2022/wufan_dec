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
import com.join.android.app.mgsim.wufun.R;
/* compiled from: ForumThemeCategoryItemBinding.java */
/* loaded from: classes3.dex */
public final class uf implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f25521a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f25522b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f25523c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f25524d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f25525e;

    private uf(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.f25521a = linearLayout;
        this.f25522b = textView;
        this.f25523c = textView2;
        this.f25524d = textView3;
        this.f25525e = textView4;
    }

    @NonNull
    public static uf a(@NonNull View view) {
        int i2 = R.id.tv1;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv1);
        if (textView != null) {
            i2 = R.id.tv2;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv2);
            if (textView2 != null) {
                i2 = R.id.tv3;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv3);
                if (textView3 != null) {
                    i2 = R.id.tv4;
                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv4);
                    if (textView4 != null) {
                        return new uf((LinearLayout) view, textView, textView2, textView3, textView4);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static uf c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static uf d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.forum_theme_category_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f25521a;
    }
}
