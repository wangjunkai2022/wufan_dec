package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: MgForumPopupwindowLayoutBinding.java */
/* loaded from: classes3.dex */
public final class ly implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f22237a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final Button f22238b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final Button f22239c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final Button f22240d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final Button f22241e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final View f22242f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final View f22243g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final View f22244h;

    private ly(@NonNull RelativeLayout relativeLayout, @NonNull Button button, @NonNull Button button2, @NonNull Button button3, @NonNull Button button4, @NonNull View view, @NonNull View view2, @NonNull View view3) {
        this.f22237a = relativeLayout;
        this.f22238b = button;
        this.f22239c = button2;
        this.f22240d = button3;
        this.f22241e = button4;
        this.f22242f = view;
        this.f22243g = view2;
        this.f22244h = view3;
    }

    @NonNull
    public static ly a(@NonNull View view) {
        int i2 = R.id.btn_forum_comment;
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.btn_forum_comment);
        if (button != null) {
            i2 = R.id.btn_forum_comment_copy;
            Button button2 = (Button) ViewBindings.findChildViewById(view, R.id.btn_forum_comment_copy);
            if (button2 != null) {
                i2 = R.id.btn_forum_comment_delete;
                Button button3 = (Button) ViewBindings.findChildViewById(view, R.id.btn_forum_comment_delete);
                if (button3 != null) {
                    i2 = R.id.btn_forum_report;
                    Button button4 = (Button) ViewBindings.findChildViewById(view, R.id.btn_forum_report);
                    if (button4 != null) {
                        i2 = R.id.divider_2;
                        View findChildViewById = ViewBindings.findChildViewById(view, R.id.divider_2);
                        if (findChildViewById != null) {
                            i2 = R.id.divider_forum_comment_1;
                            View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.divider_forum_comment_1);
                            if (findChildViewById2 != null) {
                                i2 = R.id.divider_forum_comment_2;
                                View findChildViewById3 = ViewBindings.findChildViewById(view, R.id.divider_forum_comment_2);
                                if (findChildViewById3 != null) {
                                    return new ly((RelativeLayout) view, button, button2, button3, button4, findChildViewById, findChildViewById2, findChildViewById3);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static ly c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ly d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_forum_popupwindow_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f22237a;
    }
}
