package m2;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.wufun.union.ad.R;
/* compiled from: ActivityAdStubBinding.java */
/* loaded from: classes3.dex */
public final class a implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final FrameLayout f72588a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f72589b;

    private a(@NonNull FrameLayout frameLayout, @NonNull TextView textView) {
        this.f72588a = frameLayout;
        this.f72589b = textView;
    }

    @NonNull
    public static a a(@NonNull View view) {
        int i2 = R.id.fullscreen_content;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, i2);
        if (textView != null) {
            return new a((FrameLayout) view, textView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static a c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static a d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.activity_ad_stub, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public FrameLayout getRoot() {
        return this.f72588a;
    }
}
