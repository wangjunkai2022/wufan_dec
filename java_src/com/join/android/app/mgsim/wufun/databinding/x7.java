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
/* compiled from: CommentDetailTopPopwinBinding.java */
/* loaded from: classes3.dex */
public final class x7 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f26471a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f26472b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f26473c;

    private x7(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f26471a = linearLayout;
        this.f26472b = textView;
        this.f26473c = textView2;
    }

    @NonNull
    public static x7 a(@NonNull View view) {
        int i2 = R.id.pop_list_order_tx;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.pop_list_order_tx);
        if (textView != null) {
            i2 = R.id.pop_report_tx;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.pop_report_tx);
            if (textView2 != null) {
                return new x7((LinearLayout) view, textView, textView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static x7 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static x7 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.comment_detail_top_popwin, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f26471a;
    }
}
