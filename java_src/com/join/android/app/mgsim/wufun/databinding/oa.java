package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: DialogArenaCreateBinding.java */
/* loaded from: classes3.dex */
public final class oa implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f23191a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f23192b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f23193c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ListView f23194d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ConstraintLayout f23195e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final RelativeLayout f23196f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f23197g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f23198h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f23199i;

    private oa(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout, @NonNull ListView listView, @NonNull ConstraintLayout constraintLayout, @NonNull RelativeLayout relativeLayout2, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.f23191a = relativeLayout;
        this.f23192b = imageView;
        this.f23193c = linearLayout;
        this.f23194d = listView;
        this.f23195e = constraintLayout;
        this.f23196f = relativeLayout2;
        this.f23197g = textView;
        this.f23198h = textView2;
        this.f23199i = textView3;
    }

    @NonNull
    public static oa a(@NonNull View view) {
        int i2 = R.id.iv1;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv1);
        if (imageView != null) {
            i2 = R.id.iv_close;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.iv_close);
            if (linearLayout != null) {
                i2 = R.id.list;
                ListView listView = (ListView) ViewBindings.findChildViewById(view, R.id.list);
                if (listView != null) {
                    i2 = R.id.noRecord;
                    ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.noRecord);
                    if (constraintLayout != null) {
                        i2 = R.id.rl_top;
                        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rl_top);
                        if (relativeLayout != null) {
                            i2 = R.id.tv1;
                            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv1);
                            if (textView != null) {
                                i2 = R.id.tv2;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv2);
                                if (textView2 != null) {
                                    i2 = R.id.tv_top;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_top);
                                    if (textView3 != null) {
                                        return new oa((RelativeLayout) view, imageView, linearLayout, listView, constraintLayout, relativeLayout, textView, textView2, textView3);
                                    }
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
    public static oa c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static oa d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.dialog_arena_create, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f23191a;
    }
}
