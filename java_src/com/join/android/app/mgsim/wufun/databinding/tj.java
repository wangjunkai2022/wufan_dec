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
/* compiled from: GamedetailItemCommentMessageReplyBinding.java */
/* loaded from: classes3.dex */
public final class tj implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f25240a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final View f25241b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f25242c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final View f25243d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final View f25244e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final LinearLayout f25245f;

    private tj(@NonNull RelativeLayout relativeLayout, @NonNull View view, @NonNull LinearLayout linearLayout, @NonNull View view2, @NonNull View view3, @NonNull LinearLayout linearLayout2) {
        this.f25240a = relativeLayout;
        this.f25241b = view;
        this.f25242c = linearLayout;
        this.f25243d = view2;
        this.f25244e = view3;
        this.f25245f = linearLayout2;
    }

    @NonNull
    public static tj a(@NonNull View view) {
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
                        i2 = R.id.parentLayout;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.parentLayout);
                        if (linearLayout2 != null) {
                            return new tj((RelativeLayout) view, findChildViewById, linearLayout, findChildViewById2, findChildViewById3, linearLayout2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static tj c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static tj d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.gamedetail_item_comment_message_reply, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f25240a;
    }
}
