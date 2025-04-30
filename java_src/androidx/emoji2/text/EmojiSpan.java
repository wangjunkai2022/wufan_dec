package androidx.emoji2.text;

import android.annotation.SuppressLint;
import android.graphics.Paint;
import android.text.style.ReplacementSpan;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.util.Preconditions;
@RequiresApi(19)
/* loaded from: classes.dex */
public abstract class EmojiSpan extends ReplacementSpan {
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final EmojiMetadata f5564b;

    /* renamed from: a  reason: collision with root package name */
    private final Paint.FontMetricsInt f5563a = new Paint.FontMetricsInt();

    /* renamed from: c  reason: collision with root package name */
    private short f5565c = -1;

    /* renamed from: d  reason: collision with root package name */
    private short f5566d = -1;

    /* renamed from: e  reason: collision with root package name */
    private float f5567e = 1.0f;

    /* JADX INFO: Access modifiers changed from: package-private */
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public EmojiSpan(@NonNull EmojiMetadata emojiMetadata) {
        Preconditions.checkNotNull(emojiMetadata, "metadata cannot be null");
        this.f5564b = emojiMetadata;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    final float a() {
        return this.f5567e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public final int b() {
        return this.f5565c;
    }

    @RestrictTo({RestrictTo.Scope.TESTS})
    public final int getHeight() {
        return this.f5566d;
    }

    @RestrictTo({RestrictTo.Scope.TESTS})
    public final int getId() {
        return getMetadata().getId();
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public final EmojiMetadata getMetadata() {
        return this.f5564b;
    }

    @Override // android.text.style.ReplacementSpan
    public int getSize(@NonNull Paint paint, @SuppressLint({"UnknownNullness"}) CharSequence charSequence, int i2, int i4, @Nullable Paint.FontMetricsInt fontMetricsInt) {
        paint.getFontMetricsInt(this.f5563a);
        Paint.FontMetricsInt fontMetricsInt2 = this.f5563a;
        this.f5567e = (Math.abs(fontMetricsInt2.descent - fontMetricsInt2.ascent) * 1.0f) / this.f5564b.getHeight();
        this.f5566d = (short) (this.f5564b.getHeight() * this.f5567e);
        short width = (short) (this.f5564b.getWidth() * this.f5567e);
        this.f5565c = width;
        if (fontMetricsInt != null) {
            Paint.FontMetricsInt fontMetricsInt3 = this.f5563a;
            fontMetricsInt.ascent = fontMetricsInt3.ascent;
            fontMetricsInt.descent = fontMetricsInt3.descent;
            fontMetricsInt.top = fontMetricsInt3.top;
            fontMetricsInt.bottom = fontMetricsInt3.bottom;
        }
        return width;
    }
}
