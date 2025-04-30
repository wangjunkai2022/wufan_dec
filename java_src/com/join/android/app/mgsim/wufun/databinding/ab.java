package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: DialogDownloadBottomViewBinding.java */
/* loaded from: classes3.dex */
public final class ab implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f18083a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f18084b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f18085c;

    private ab(@NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f18083a = relativeLayout;
        this.f18084b = textView;
        this.f18085c = textView2;
    }

    @NonNull
    public static ab a(@NonNull View view) {
        int i2 = R.id.downloadDialogOneTv;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.downloadDialogOneTv);
        if (textView != null) {
            i2 = R.id.downloadDialogTwoTv;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.downloadDialogTwoTv);
            if (textView2 != null) {
                return new ab((RelativeLayout) view, textView, textView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static ab c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ab d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.dialog_download_bottom_view, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f18083a;
    }
}
