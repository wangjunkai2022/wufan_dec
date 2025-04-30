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
/* compiled from: MustPlayTitleLayoutBinding.java */
/* loaded from: classes3.dex */
public final class f40 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f20019a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f20020b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f20021c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f20022d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f20023e;

    private f40(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.f20019a = linearLayout;
        this.f20020b = linearLayout2;
        this.f20021c = textView;
        this.f20022d = textView2;
        this.f20023e = textView3;
    }

    @NonNull
    public static f40 a(@NonNull View view) {
        int i2 = R.id.section_follow;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.section_follow);
        if (linearLayout != null) {
            i2 = R.id.textView;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.textView);
            if (textView != null) {
                i2 = R.id.titleName;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.titleName);
                if (textView2 != null) {
                    i2 = R.id.titleline;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.titleline);
                    if (textView3 != null) {
                        return new f40((LinearLayout) view, linearLayout, textView, textView2, textView3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static f40 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static f40 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.must_play_title_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f20019a;
    }
}
