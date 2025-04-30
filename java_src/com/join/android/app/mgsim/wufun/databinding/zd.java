package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: DownloadMygameFragmentBinding.java */
/* loaded from: classes3.dex */
public final class zd implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f27209a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ListView f27210b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f27211c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final LinearLayout f27212d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final Button f27213e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f27214f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final LinearLayout f27215g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final ImageView f27216h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f27217i;

    private zd(@NonNull RelativeLayout relativeLayout, @NonNull ListView listView, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout, @NonNull Button button, @NonNull TextView textView, @NonNull LinearLayout linearLayout2, @NonNull ImageView imageView2, @NonNull TextView textView2) {
        this.f27209a = relativeLayout;
        this.f27210b = listView;
        this.f27211c = imageView;
        this.f27212d = linearLayout;
        this.f27213e = button;
        this.f27214f = textView;
        this.f27215g = linearLayout2;
        this.f27216h = imageView2;
        this.f27217i = textView2;
    }

    @NonNull
    public static zd a(@NonNull View view) {
        int i2 = R.id.downloadListView;
        ListView listView = (ListView) ViewBindings.findChildViewById(view, R.id.downloadListView);
        if (listView != null) {
            i2 = R.id.lodingBackImage;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.lodingBackImage);
            if (imageView != null) {
                i2 = R.id.noneLayout;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.noneLayout);
                if (linearLayout != null) {
                    i2 = R.id.setNetwork;
                    Button button = (Button) ViewBindings.findChildViewById(view, R.id.setNetwork);
                    if (button != null) {
                        i2 = R.id.textView3;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.textView3);
                        if (textView != null) {
                            i2 = R.id.topTip;
                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.topTip);
                            if (linearLayout2 != null) {
                                i2 = R.id.topTipClose;
                                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.topTipClose);
                                if (imageView2 != null) {
                                    i2 = R.id.toptipText;
                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.toptipText);
                                    if (textView2 != null) {
                                        return new zd((RelativeLayout) view, listView, imageView, linearLayout, button, textView, linearLayout2, imageView2, textView2);
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
    public static zd c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static zd d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.download_mygame_fragment, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f27209a;
    }
}
