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
import com.join.mgps.customview.XListViewIntercept;
/* compiled from: DetialCommentListLayoutBinding.java */
/* loaded from: classes3.dex */
public final class u9 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f25461a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final XListViewIntercept f25462b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f25463c;

    private u9(@NonNull LinearLayout linearLayout, @NonNull XListViewIntercept xListViewIntercept, @NonNull TextView textView) {
        this.f25461a = linearLayout;
        this.f25462b = xListViewIntercept;
        this.f25463c = textView;
    }

    @NonNull
    public static u9 a(@NonNull View view) {
        int i2 = R.id.commentListView;
        XListViewIntercept xListViewIntercept = (XListViewIntercept) ViewBindings.findChildViewById(view, R.id.commentListView);
        if (xListViewIntercept != null) {
            i2 = R.id.noComentText;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.noComentText);
            if (textView != null) {
                return new u9((LinearLayout) view, xListViewIntercept, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static u9 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static u9 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.detial_comment_list_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f25461a;
    }
}
