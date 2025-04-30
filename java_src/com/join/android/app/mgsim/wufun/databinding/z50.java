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
/* compiled from: NoticeFragmentItemBinding.java */
/* loaded from: classes3.dex */
public final class z50 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f27123a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final RelativeLayout f27124b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f27125c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f27126d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f27127e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f27128f;

    private z50(@NonNull RelativeLayout relativeLayout, @NonNull RelativeLayout relativeLayout2, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.f27123a = relativeLayout;
        this.f27124b = relativeLayout2;
        this.f27125c = textView;
        this.f27126d = textView2;
        this.f27127e = textView3;
        this.f27128f = textView4;
    }

    @NonNull
    public static z50 a(@NonNull View view) {
        int i2 = R.id.relativeLayout3;
        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.relativeLayout3);
        if (relativeLayout != null) {
            i2 = R.id.showDetail;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.showDetail);
            if (textView != null) {
                i2 = R.id.textView31;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.textView31);
                if (textView2 != null) {
                    i2 = R.id.tv_time;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_time);
                    if (textView3 != null) {
                        i2 = R.id.tv_title;
                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                        if (textView4 != null) {
                            return new z50((RelativeLayout) view, relativeLayout, textView, textView2, textView3, textView4);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static z50 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static z50 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.notice_fragment_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f27123a;
    }
}
