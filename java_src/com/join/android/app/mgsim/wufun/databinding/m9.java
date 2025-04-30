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
/* compiled from: DetailCommentActivityItemCommentMessageReplyBinding.java */
/* loaded from: classes3.dex */
public final class m9 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f22399a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final View f22400b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f22401c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final View f22402d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final View f22403e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final LinearLayout f22404f;

    private m9(@NonNull RelativeLayout relativeLayout, @NonNull View view, @NonNull LinearLayout linearLayout, @NonNull View view2, @NonNull View view3, @NonNull LinearLayout linearLayout2) {
        this.f22399a = relativeLayout;
        this.f22400b = view;
        this.f22401c = linearLayout;
        this.f22402d = view2;
        this.f22403e = view3;
        this.f22404f = linearLayout2;
    }

    @NonNull
    public static m9 a(@NonNull View view) {
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
                            return new m9((RelativeLayout) view, findChildViewById, linearLayout, findChildViewById2, findChildViewById3, linearLayout2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static m9 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static m9 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.detail_comment_activity_item_comment_message_reply, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f22399a;
    }
}
