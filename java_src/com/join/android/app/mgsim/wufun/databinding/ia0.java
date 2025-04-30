package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: SdcardLayBinding.java */
/* loaded from: classes3.dex */
public final class ia0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f21107a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final Button f21108b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ListView f21109c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f21110d;

    private ia0(@NonNull LinearLayout linearLayout, @NonNull Button button, @NonNull ListView listView, @NonNull TextView textView) {
        this.f21107a = linearLayout;
        this.f21108b = button;
        this.f21109c = listView;
        this.f21110d = textView;
    }

    @NonNull
    public static ia0 a(@NonNull View view) {
        int i2 = R.id.btnParent;
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.btnParent);
        if (button != null) {
            i2 = R.id.lvFiles;
            ListView listView = (ListView) ViewBindings.findChildViewById(view, R.id.lvFiles);
            if (listView != null) {
                i2 = R.id.tvpath;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tvpath);
                if (textView != null) {
                    return new ia0((LinearLayout) view, button, listView, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static ia0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ia0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.sdcard_lay, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f21107a;
    }
}
