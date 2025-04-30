package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: ActivityMessageSettingBinding.java */
/* loaded from: classes3.dex */
public final class a1 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f17944a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f17945b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f17946c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final LinearLayout f17947d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f17948e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final LinearLayout f17949f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ImageView f17950g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final LinearLayout f17951h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f17952i;

    private a1(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull LinearLayout linearLayout2, @NonNull ImageView imageView3, @NonNull LinearLayout linearLayout3, @NonNull ImageView imageView4, @NonNull LinearLayout linearLayout4, @NonNull TextView textView) {
        this.f17944a = linearLayout;
        this.f17945b = imageView;
        this.f17946c = imageView2;
        this.f17947d = linearLayout2;
        this.f17948e = imageView3;
        this.f17949f = linearLayout3;
        this.f17950g = imageView4;
        this.f17951h = linearLayout4;
        this.f17952i = textView;
    }

    @NonNull
    public static a1 a(@NonNull View view) {
        int i2 = R.id.back;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.back);
        if (imageView != null) {
            i2 = R.id.isGetLikeIv;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.isGetLikeIv);
            if (imageView2 != null) {
                i2 = R.id.isGetLikeLl;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.isGetLikeLl);
                if (linearLayout != null) {
                    i2 = R.id.isGetMessageIv;
                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.isGetMessageIv);
                    if (imageView3 != null) {
                        i2 = R.id.isGetMessageLl;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.isGetMessageLl);
                        if (linearLayout2 != null) {
                            i2 = R.id.isGetReplayIv;
                            ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.isGetReplayIv);
                            if (imageView4 != null) {
                                i2 = R.id.isGetReplayLl;
                                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.isGetReplayLl);
                                if (linearLayout3 != null) {
                                    i2 = R.id.title;
                                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.title);
                                    if (textView != null) {
                                        return new a1((LinearLayout) view, imageView, imageView2, linearLayout, imageView3, linearLayout2, imageView4, linearLayout3, textView);
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
    public static a1 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static a1 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.activity_message_setting, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f17944a;
    }
}
