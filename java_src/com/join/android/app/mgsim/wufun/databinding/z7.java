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
/* compiled from: CommentListItemContentBinding.java */
/* loaded from: classes3.dex */
public final class z7 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f27147a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f27148b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f27149c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f27150d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final LinearLayout f27151e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f27152f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f27153g;

    private z7(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull TextView textView, @NonNull TextView textView2, @NonNull LinearLayout linearLayout3, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.f27147a = linearLayout;
        this.f27148b = linearLayout2;
        this.f27149c = textView;
        this.f27150d = textView2;
        this.f27151e = linearLayout3;
        this.f27152f = textView3;
        this.f27153g = textView4;
    }

    @NonNull
    public static z7 a(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        int i2 = R.id.content;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.content);
        if (textView != null) {
            i2 = R.id.deleteTx;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.deleteTx);
            if (textView2 != null) {
                i2 = R.id.editLl;
                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.editLl);
                if (linearLayout2 != null) {
                    i2 = R.id.editTx;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.editTx);
                    if (textView3 != null) {
                        i2 = R.id.more;
                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.more);
                        if (textView4 != null) {
                            return new z7(linearLayout, linearLayout, textView, textView2, linearLayout2, textView3, textView4);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static z7 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static z7 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.comment_list_item_content, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f27147a;
    }
}
