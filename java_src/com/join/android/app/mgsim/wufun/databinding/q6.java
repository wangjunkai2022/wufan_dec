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
/* compiled from: CloudArchiveMorePopBinding.java */
/* loaded from: classes3.dex */
public final class q6 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f23842a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f23843b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f23844c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f23845d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final View f23846e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final View f23847f;

    private q6(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull LinearLayout linearLayout2, @NonNull TextView textView2, @NonNull View view, @NonNull View view2) {
        this.f23842a = linearLayout;
        this.f23843b = textView;
        this.f23844c = linearLayout2;
        this.f23845d = textView2;
        this.f23846e = view;
        this.f23847f = view2;
    }

    @NonNull
    public static q6 a(@NonNull View view) {
        int i2 = R.id.deleteCloud;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.deleteCloud);
        if (textView != null) {
            i2 = R.id.main;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.main);
            if (linearLayout != null) {
                i2 = R.id.reDownload;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.reDownload);
                if (textView2 != null) {
                    i2 = R.id.trangleBottom;
                    View findChildViewById = ViewBindings.findChildViewById(view, R.id.trangleBottom);
                    if (findChildViewById != null) {
                        i2 = R.id.trangleTop;
                        View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.trangleTop);
                        if (findChildViewById2 != null) {
                            return new q6((LinearLayout) view, textView, linearLayout, textView2, findChildViewById, findChildViewById2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static q6 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static q6 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.cloud_archive_more_pop, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f23842a;
    }
}
