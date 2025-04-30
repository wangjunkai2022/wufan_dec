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
import com.join.mgps.customview.TextViewWithHyperlink;
/* compiled from: CommentReplyItemBinding.java */
/* loaded from: classes3.dex */
public final class f8 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f20061a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextViewWithHyperlink f20062b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f20063c;

    private f8(@NonNull LinearLayout linearLayout, @NonNull TextViewWithHyperlink textViewWithHyperlink, @NonNull TextView textView) {
        this.f20061a = linearLayout;
        this.f20062b = textViewWithHyperlink;
        this.f20063c = textView;
    }

    @NonNull
    public static f8 a(@NonNull View view) {
        int i2 = R.id.comment_reply_content;
        TextViewWithHyperlink textViewWithHyperlink = (TextViewWithHyperlink) ViewBindings.findChildViewById(view, R.id.comment_reply_content);
        if (textViewWithHyperlink != null) {
            i2 = R.id.comment_reply_more;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.comment_reply_more);
            if (textView != null) {
                return new f8((LinearLayout) view, textViewWithHyperlink, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static f8 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static f8 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.comment_reply_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f20061a;
    }
}
