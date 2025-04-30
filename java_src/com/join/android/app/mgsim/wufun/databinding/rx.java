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
/* compiled from: MgForumForumPostACommentReplyPopwindowBinding.java */
/* loaded from: classes3.dex */
public final class rx implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f24578a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f24579b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f24580c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f24581d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f24582e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f24583f;

    private rx(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.f24578a = linearLayout;
        this.f24579b = linearLayout2;
        this.f24580c = textView;
        this.f24581d = textView2;
        this.f24582e = textView3;
        this.f24583f = textView4;
    }

    @NonNull
    public static rx a(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        int i2 = R.id.delete;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.delete);
        if (textView != null) {
            i2 = R.id.reply;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.reply);
            if (textView2 != null) {
                i2 = R.id.report;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.report);
                if (textView3 != null) {
                    i2 = R.id.resolve;
                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.resolve);
                    if (textView4 != null) {
                        return new rx(linearLayout, linearLayout, textView, textView2, textView3, textView4);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static rx c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static rx d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_forum_forum_post_a_comment_reply_popwindow, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f24578a;
    }
}
