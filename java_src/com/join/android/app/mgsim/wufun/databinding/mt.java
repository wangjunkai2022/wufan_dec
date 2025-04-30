package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: LayoutGameDetailSheetGoldenFingerBinding.java */
/* loaded from: classes3.dex */
public final class mt implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f22613a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f22614b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ListView f22615c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f22616d;

    private mt(@NonNull ConstraintLayout constraintLayout, @NonNull ImageView imageView, @NonNull ListView listView, @NonNull TextView textView) {
        this.f22613a = constraintLayout;
        this.f22614b = imageView;
        this.f22615c = listView;
        this.f22616d = textView;
    }

    @NonNull
    public static mt a(@NonNull View view) {
        int i2 = R.id.close;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.close);
        if (imageView != null) {
            i2 = R.id.listView;
            ListView listView = (ListView) ViewBindings.findChildViewById(view, R.id.listView);
            if (listView != null) {
                i2 = R.id.textView93;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.textView93);
                if (textView != null) {
                    return new mt((ConstraintLayout) view, imageView, listView, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static mt c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static mt d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.layout_game_detail_sheet_golden_finger, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f22613a;
    }
}
