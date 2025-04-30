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
/* compiled from: PopupWindowLayoutBinding.java */
/* loaded from: classes3.dex */
public final class b90 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f18451a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final Button f18452b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final Button f18453c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final RelativeLayout f18454d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final Button f18455e;

    private b90(@NonNull RelativeLayout relativeLayout, @NonNull Button button, @NonNull Button button2, @NonNull RelativeLayout relativeLayout2, @NonNull Button button3) {
        this.f18451a = relativeLayout;
        this.f18452b = button;
        this.f18453c = button2;
        this.f18454d = relativeLayout2;
        this.f18455e = button3;
    }

    @NonNull
    public static b90 a(@NonNull View view) {
        int i2 = R.id.deleteAllBtn;
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.deleteAllBtn);
        if (button != null) {
            i2 = R.id.pauseAllBtn;
            Button button2 = (Button) ViewBindings.findChildViewById(view, R.id.pauseAllBtn);
            if (button2 != null) {
                RelativeLayout relativeLayout = (RelativeLayout) view;
                i2 = R.id.startAllBtn;
                Button button3 = (Button) ViewBindings.findChildViewById(view, R.id.startAllBtn);
                if (button3 != null) {
                    return new b90(relativeLayout, button, button2, relativeLayout, button3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static b90 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static b90 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.popup_window_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f18451a;
    }
}
