package androidx.appcompat.widget;

import android.content.res.TypedArray;
import android.text.InputFilter;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.R;
import androidx.emoji2.viewsintegration.EmojiTextViewHelper;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class AppCompatEmojiTextHelper {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final TextView f987a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final EmojiTextViewHelper f988b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AppCompatEmojiTextHelper(@NonNull TextView textView) {
        this.f987a = textView;
        this.f988b = new EmojiTextViewHelper(textView, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public InputFilter[] a(@NonNull InputFilter[] inputFilterArr) {
        return this.f988b.getFilters(inputFilterArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(@Nullable AttributeSet attributeSet, int i2) {
        TypedArray obtainStyledAttributes = this.f987a.getContext().obtainStyledAttributes(attributeSet, R.styleable.AppCompatTextView, i2, 0);
        try {
            int i4 = R.styleable.AppCompatTextView_emojiCompatEnabled;
            boolean z3 = obtainStyledAttributes.hasValue(i4) ? obtainStyledAttributes.getBoolean(i4, true) : true;
            obtainStyledAttributes.recycle();
            d(z3);
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(boolean z3) {
        this.f988b.setAllCaps(z3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d(boolean z3) {
        this.f988b.setEnabled(z3);
    }

    public boolean isEnabled() {
        return this.f988b.isEnabled();
    }

    @Nullable
    public TransformationMethod wrapTransformationMethod(@Nullable TransformationMethod transformationMethod) {
        return this.f988b.wrapTransformationMethod(transformationMethod);
    }
}
