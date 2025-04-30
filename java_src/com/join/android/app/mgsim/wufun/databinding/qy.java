package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: MgForumPostActivityItemCommentMessageReplyBinding.java */
/* loaded from: classes3.dex */
public final class qy implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f24106a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final View f24107b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f24108c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final View f24109d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final View f24110e;

    private qy(@NonNull RelativeLayout relativeLayout, @NonNull View view, @NonNull LinearLayout linearLayout, @NonNull View view2, @NonNull View view3) {
        this.f24106a = relativeLayout;
        this.f24107b = view;
        this.f24108c = linearLayout;
        this.f24109d = view2;
        this.f24110e = view3;
    }

    @NonNull
    public static qy a(@NonNull View view) {
        int i2 = R.id.bottom;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.bottom);
        if (findChildViewById != null) {
            i2 = R.id.comment_reply_container;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.comment_reply_container);
            if (linearLayout != null) {
                i2 = R.id.comment_reply_divider;
                View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.comment_reply_divider);
                if (findChildViewById2 != null) {
                    i2 = R.id.line;
                    View findChildViewById3 = ViewBindings.findChildViewById(view, R.id.line);
                    if (findChildViewById3 != null) {
                        return new qy((RelativeLayout) view, findChildViewById, linearLayout, findChildViewById2, findChildViewById3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static qy c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static qy d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_forum_post_activity_item_comment_message_reply, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f24106a;
    }
}
