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
/* compiled from: CommentNoticePopwindowBinding.java */
/* loaded from: classes3.dex */
public final class e8 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f19636a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f19637b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f19638c;

    private e8(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull TextView textView) {
        this.f19636a = linearLayout;
        this.f19637b = linearLayout2;
        this.f19638c = textView;
    }

    @NonNull
    public static e8 a(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.notice_text);
        if (textView != null) {
            return new e8(linearLayout, linearLayout, textView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.notice_text)));
    }

    @NonNull
    public static e8 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static e8 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.comment_notice_popwindow, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f19636a;
    }
}
