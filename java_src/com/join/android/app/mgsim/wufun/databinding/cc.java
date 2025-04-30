package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: DialogLeaveRoomBinding.java */
/* loaded from: classes3.dex */
public final class cc implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f18848a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final Button f18849b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f18850c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f18851d;

    private cc(@NonNull RelativeLayout relativeLayout, @NonNull Button button, @NonNull LinearLayout linearLayout, @NonNull TextView textView) {
        this.f18848a = relativeLayout;
        this.f18849b = button;
        this.f18850c = linearLayout;
        this.f18851d = textView;
    }

    @NonNull
    public static cc a(@NonNull View view) {
        int i2 = R.id.btnLeave;
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.btnLeave);
        if (button != null) {
            i2 = R.id.iv_close;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.iv_close);
            if (linearLayout != null) {
                i2 = R.id.tv_top;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_top);
                if (textView != null) {
                    return new cc((RelativeLayout) view, button, linearLayout, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static cc c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static cc d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.dialog_leave_room, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f18848a;
    }
}
