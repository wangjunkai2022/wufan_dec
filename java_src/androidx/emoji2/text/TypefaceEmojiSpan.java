package androidx.emoji2.text;

import android.annotation.SuppressLint;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.TextPaint;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
@RequiresApi(19)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public final class TypefaceEmojiSpan extends EmojiSpan {
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private static Paint f5606f;

    public TypefaceEmojiSpan(@NonNull EmojiMetadata emojiMetadata) {
        super(emojiMetadata);
    }

    @NonNull
    private static Paint c() {
        if (f5606f == null) {
            TextPaint textPaint = new TextPaint();
            f5606f = textPaint;
            textPaint.setColor(EmojiCompat.get().getEmojiSpanIndicatorColor());
            f5606f.setStyle(Paint.Style.FILL);
        }
        return f5606f;
    }

    @Override // android.text.style.ReplacementSpan
    public void draw(@NonNull Canvas canvas, @SuppressLint({"UnknownNullness"}) CharSequence charSequence, @IntRange(from = 0) int i2, @IntRange(from = 0) int i4, float f4, int i5, int i6, int i7, @NonNull Paint paint) {
        if (EmojiCompat.get().isEmojiSpanIndicatorEnabled()) {
            canvas.drawRect(f4, i5, f4 + b(), i7, c());
        }
        getMetadata().draw(canvas, f4, i6, paint);
    }
}
