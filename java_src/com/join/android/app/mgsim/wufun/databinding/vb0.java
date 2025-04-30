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
/* compiled from: SixAppsizeDowncountLayoutBinding.java */
/* loaded from: classes3.dex */
public final class vb0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f25800a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f25801b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f25802c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f25803d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f25804e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f25805f;

    private vb0(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5) {
        this.f25800a = linearLayout;
        this.f25801b = textView;
        this.f25802c = textView2;
        this.f25803d = textView3;
        this.f25804e = textView4;
        this.f25805f = textView5;
    }

    @NonNull
    public static vb0 a(@NonNull View view) {
        int i2 = R.id.appType;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.appType);
        if (textView != null) {
            i2 = R.id.appdownCount;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.appdownCount);
            if (textView2 != null) {
                i2 = R.id.appsize;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.appsize);
                if (textView3 != null) {
                    i2 = R.id.pingfen;
                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.pingfen);
                    if (textView4 != null) {
                        i2 = R.id.tongban;
                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tongban);
                        if (textView5 != null) {
                            return new vb0((LinearLayout) view, textView, textView2, textView3, textView4, textView5);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static vb0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static vb0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.six_appsize_downcount_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f25800a;
    }
}
