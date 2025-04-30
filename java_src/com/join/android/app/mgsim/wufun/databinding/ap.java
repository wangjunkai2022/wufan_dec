package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: InstallNotinstallAppDialogActivityBinding.java */
/* loaded from: classes3.dex */
public final class ap implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f18274a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final RecyclerView f18275b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f18276c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f18277d;

    private ap(@NonNull LinearLayout linearLayout, @NonNull RecyclerView recyclerView, @NonNull TextView textView, @NonNull ImageView imageView) {
        this.f18274a = linearLayout;
        this.f18275b = recyclerView;
        this.f18276c = textView;
        this.f18277d = imageView;
    }

    @NonNull
    public static ap a(@NonNull View view) {
        int i2 = R.id.appList;
        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.appList);
        if (recyclerView != null) {
            i2 = R.id.describ;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.describ);
            if (textView != null) {
                i2 = R.id.iv_close;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_close);
                if (imageView != null) {
                    return new ap((LinearLayout) view, recyclerView, textView, imageView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static ap c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ap d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.install_notinstall_app_dialog_activity, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f18274a;
    }
}
