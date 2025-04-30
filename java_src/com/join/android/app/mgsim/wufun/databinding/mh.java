package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: FragmentMyGameNoGameItemBinding.java */
/* loaded from: classes3.dex */
public final class mh implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f22534a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f22535b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f22536c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f22537d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f22538e;

    private mh(@NonNull ConstraintLayout constraintLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.f22534a = constraintLayout;
        this.f22535b = simpleDraweeView;
        this.f22536c = textView;
        this.f22537d = textView2;
        this.f22538e = textView3;
    }

    @NonNull
    public static mh a(@NonNull View view) {
        int i2 = R.id.icon;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.icon);
        if (simpleDraweeView != null) {
            i2 = R.id.install;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.install);
            if (textView != null) {
                i2 = R.id.name;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.name);
                if (textView2 != null) {
                    i2 = R.id.size;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.size);
                    if (textView3 != null) {
                        return new mh((ConstraintLayout) view, simpleDraweeView, textView, textView2, textView3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static mh c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static mh d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.fragment_my_game_no_game_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f22534a;
    }
}
