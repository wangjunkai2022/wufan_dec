package androidx.emoji2.viewsintegration;

import android.graphics.Rect;
import android.text.method.TransformationMethod;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.emoji2.text.EmojiCompat;
@RequiresApi(19)
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
class EmojiTransformationMethod implements TransformationMethod {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final TransformationMethod f5728a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public EmojiTransformationMethod(@Nullable TransformationMethod transformationMethod) {
        this.f5728a = transformationMethod;
    }

    public TransformationMethod getOriginalTransformationMethod() {
        return this.f5728a;
    }

    @Override // android.text.method.TransformationMethod
    public CharSequence getTransformation(@Nullable CharSequence charSequence, @NonNull View view) {
        if (view.isInEditMode()) {
            return charSequence;
        }
        TransformationMethod transformationMethod = this.f5728a;
        if (transformationMethod != null) {
            charSequence = transformationMethod.getTransformation(charSequence, view);
        }
        return (charSequence == null || EmojiCompat.get().getLoadState() != 1) ? charSequence : EmojiCompat.get().process(charSequence);
    }

    @Override // android.text.method.TransformationMethod
    public void onFocusChanged(View view, CharSequence charSequence, boolean z3, int i2, Rect rect) {
        TransformationMethod transformationMethod = this.f5728a;
        if (transformationMethod != null) {
            transformationMethod.onFocusChanged(view, charSequence, z3, i2, rect);
        }
    }
}
