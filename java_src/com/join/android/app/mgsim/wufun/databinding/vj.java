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
/* compiled from: GamedetailItemDescribBinding.java */
/* loaded from: classes3.dex */
public final class vj implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f25853a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f25854b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f25855c;

    private vj(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f25853a = linearLayout;
        this.f25854b = textView;
        this.f25855c = textView2;
    }

    @NonNull
    public static vj a(@NonNull View view) {
        int i2 = R.id.htmlGameDescribe;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.htmlGameDescribe);
        if (textView != null) {
            i2 = R.id.textMore;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.textMore);
            if (textView2 != null) {
                return new vj((LinearLayout) view, textView, textView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static vj c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static vj d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.gamedetail_item_describ, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f25853a;
    }
}
