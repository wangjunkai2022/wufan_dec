package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RatingBar;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.R;
/* loaded from: classes.dex */
public class AppCompatRatingBar extends RatingBar {

    /* renamed from: a  reason: collision with root package name */
    private final AppCompatProgressBarHelper f1031a;

    public AppCompatRatingBar(@NonNull Context context) {
        this(context, null);
    }

    @Override // android.widget.RatingBar, android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    protected synchronized void onMeasure(int i2, int i4) {
        super.onMeasure(i2, i4);
        Bitmap b4 = this.f1031a.b();
        if (b4 != null) {
            setMeasuredDimension(View.resolveSizeAndState(b4.getWidth() * getNumStars(), i2, 0), getMeasuredHeight());
        }
    }

    public AppCompatRatingBar(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.ratingBarStyle);
    }

    public AppCompatRatingBar(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        ThemeUtils.checkAppCompatTheme(this, getContext());
        AppCompatProgressBarHelper appCompatProgressBarHelper = new AppCompatProgressBarHelper(this);
        this.f1031a = appCompatProgressBarHelper;
        appCompatProgressBarHelper.c(attributeSet, i2);
    }
}
