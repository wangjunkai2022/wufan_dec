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
import com.join.android.app.mgsim.wufun.R;
/* compiled from: NoticeFragmentItemNoBinding.java */
/* loaded from: classes3.dex */
public final class a60 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f18026a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f18027b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f18028c;

    private a60(@NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f18026a = relativeLayout;
        this.f18027b = textView;
        this.f18028c = textView2;
    }

    @NonNull
    public static a60 a(@NonNull View view) {
        int i2 = R.id.tv_time;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_time);
        if (textView != null) {
            i2 = R.id.tv_title;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
            if (textView2 != null) {
                return new a60((RelativeLayout) view, textView, textView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static a60 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static a60 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.notice_fragment_item_no, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f18026a;
    }
}
