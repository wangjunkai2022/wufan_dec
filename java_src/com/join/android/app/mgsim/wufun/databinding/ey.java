package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RadioButton;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: MgForumGroupOderbyPopwindowBinding.java */
/* loaded from: classes3.dex */
public final class ey implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f19920a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final RadioButton f19921b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final RadioButton f19922c;

    private ey(@NonNull RelativeLayout relativeLayout, @NonNull RadioButton radioButton, @NonNull RadioButton radioButton2) {
        this.f19920a = relativeLayout;
        this.f19921b = radioButton;
        this.f19922c = radioButton2;
    }

    @NonNull
    public static ey a(@NonNull View view) {
        int i2 = R.id.latestComment;
        RadioButton radioButton = (RadioButton) ViewBindings.findChildViewById(view, R.id.latestComment);
        if (radioButton != null) {
            i2 = R.id.latestPost;
            RadioButton radioButton2 = (RadioButton) ViewBindings.findChildViewById(view, R.id.latestPost);
            if (radioButton2 != null) {
                return new ey((RelativeLayout) view, radioButton, radioButton2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static ey c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ey d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_forum_group_oderby_popwindow, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f19920a;
    }
}
