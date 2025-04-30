package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: PapaCouponDialogLayoutBinding.java */
/* loaded from: classes3.dex */
public final class s60 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f24723a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ListView f24724b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final Button f24725c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f24726d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f24727e;

    private s60(@NonNull LinearLayout linearLayout, @NonNull ListView listView, @NonNull Button button, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f24723a = linearLayout;
        this.f24724b = listView;
        this.f24725c = button;
        this.f24726d = textView;
        this.f24727e = textView2;
    }

    @NonNull
    public static s60 a(@NonNull View view) {
        int i2 = R.id.listView;
        ListView listView = (ListView) ViewBindings.findChildViewById(view, R.id.listView);
        if (listView != null) {
            i2 = R.id.ok;
            Button button = (Button) ViewBindings.findChildViewById(view, R.id.ok);
            if (button != null) {
                i2 = R.id.textView;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.textView);
                if (textView != null) {
                    i2 = R.id.xxx;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.xxx);
                    if (textView2 != null) {
                        return new s60((LinearLayout) view, listView, button, textView, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static s60 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static s60 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.papa_coupon_dialog_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f24723a;
    }
}
