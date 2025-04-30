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
/* compiled from: GamelistAppsizeDowncountLayoutBinding.java */
/* loaded from: classes3.dex */
public final class qm implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f24024a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f24025b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f24026c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f24027d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f24028e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f24029f;

    private qm(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5) {
        this.f24024a = linearLayout;
        this.f24025b = textView;
        this.f24026c = textView2;
        this.f24027d = textView3;
        this.f24028e = textView4;
        this.f24029f = textView5;
    }

    @NonNull
    public static qm a(@NonNull View view) {
        int i2 = R.id.ad_text;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.ad_text);
        if (textView != null) {
            i2 = R.id.appType;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.appType);
            if (textView2 != null) {
                i2 = R.id.appdownCount;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.appdownCount);
                if (textView3 != null) {
                    i2 = R.id.appsize;
                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.appsize);
                    if (textView4 != null) {
                        i2 = R.id.pingfen;
                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.pingfen);
                        if (textView5 != null) {
                            return new qm((LinearLayout) view, textView, textView2, textView3, textView4, textView5);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static qm c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static qm d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.gamelist_appsize_downcount_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f24024a;
    }
}
