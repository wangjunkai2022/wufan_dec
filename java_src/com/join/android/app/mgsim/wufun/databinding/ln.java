package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: GivepraiceItemBinding.java */
/* loaded from: classes3.dex */
public final class ln implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f22177a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f22178b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final SimpleDraweeView f22179c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f22180d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f22181e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f22182f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f22183g;

    private ln(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.f22177a = linearLayout;
        this.f22178b = linearLayout2;
        this.f22179c = simpleDraweeView;
        this.f22180d = textView;
        this.f22181e = textView2;
        this.f22182f = textView3;
        this.f22183g = textView4;
    }

    @NonNull
    public static ln a(@NonNull View view) {
        int i2 = R.id.ll_post;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_post);
        if (linearLayout != null) {
            i2 = R.id.simv;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.simv);
            if (simpleDraweeView != null) {
                i2 = R.id.tv_name;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_name);
                if (textView != null) {
                    i2 = R.id.tv_post;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_post);
                    if (textView2 != null) {
                        i2 = R.id.tv_reply;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_reply);
                        if (textView3 != null) {
                            i2 = R.id.tv_time;
                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_time);
                            if (textView4 != null) {
                                return new ln((LinearLayout) view, linearLayout, simpleDraweeView, textView, textView2, textView3, textView4);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static ln c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ln d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.givepraice_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f22177a;
    }
}
