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
import com.join.mgps.customview.PictureHProgress;
/* compiled from: ActivityMiniGameLoadingBinding.java */
/* loaded from: classes3.dex */
public final class b1 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f18341a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f18342b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final PictureHProgress f18343c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final SimpleDraweeView f18344d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final View f18345e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f18346f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f18347g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f18348h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f18349i;

    private b1(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull PictureHProgress pictureHProgress, @NonNull SimpleDraweeView simpleDraweeView, @NonNull View view, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.f18341a = linearLayout;
        this.f18342b = linearLayout2;
        this.f18343c = pictureHProgress;
        this.f18344d = simpleDraweeView;
        this.f18345e = view;
        this.f18346f = textView;
        this.f18347g = textView2;
        this.f18348h = textView3;
        this.f18349i = textView4;
    }

    @NonNull
    public static b1 a(@NonNull View view) {
        int i2 = R.id.ll_back;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_back);
        if (linearLayout != null) {
            i2 = R.id.pb_progress;
            PictureHProgress pictureHProgress = (PictureHProgress) ViewBindings.findChildViewById(view, R.id.pb_progress);
            if (pictureHProgress != null) {
                i2 = R.id.sdv_image;
                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.sdv_image);
                if (simpleDraweeView != null) {
                    i2 = R.id.statubar;
                    View findChildViewById = ViewBindings.findChildViewById(view, R.id.statubar);
                    if (findChildViewById != null) {
                        i2 = R.id.tv_cancel;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_cancel);
                        if (textView != null) {
                            i2 = R.id.tv_loading_progress;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_loading_progress);
                            if (textView2 != null) {
                                i2 = R.id.tv_name;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_name);
                                if (textView3 != null) {
                                    i2 = R.id.tv_speed;
                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_speed);
                                    if (textView4 != null) {
                                        return new b1((LinearLayout) view, linearLayout, pictureHProgress, simpleDraweeView, findChildViewById, textView, textView2, textView3, textView4);
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
    public static b1 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static b1 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.activity_mini_game_loading, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f18341a;
    }
}
