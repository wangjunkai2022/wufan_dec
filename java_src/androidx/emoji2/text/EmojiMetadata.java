package androidx.emoji2.text;

import android.annotation.SuppressLint;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Typeface;
import androidx.annotation.AnyThread;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.emoji2.text.flatbuffer.MetadataItem;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
@AnyThread
@RequiresApi(19)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class EmojiMetadata {
    public static final int HAS_GLYPH_ABSENT = 1;
    public static final int HAS_GLYPH_EXISTS = 2;
    public static final int HAS_GLYPH_UNKNOWN = 0;

    /* renamed from: d  reason: collision with root package name */
    private static final ThreadLocal<MetadataItem> f5537d = new ThreadLocal<>();

    /* renamed from: a  reason: collision with root package name */
    private final int f5538a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final MetadataRepo f5539b;

    /* renamed from: c  reason: collision with root package name */
    private volatile int f5540c = 0;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface HasGlyph {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public EmojiMetadata(@NonNull MetadataRepo metadataRepo, @IntRange(from = 0) int i2) {
        this.f5539b = metadataRepo;
        this.f5538a = i2;
    }

    private MetadataItem a() {
        ThreadLocal<MetadataItem> threadLocal = f5537d;
        MetadataItem metadataItem = threadLocal.get();
        if (metadataItem == null) {
            metadataItem = new MetadataItem();
            threadLocal.set(metadataItem);
        }
        this.f5539b.getMetadataList().list(metadataItem, this.f5538a);
        return metadataItem;
    }

    public void draw(@NonNull Canvas canvas, float f4, float f5, @NonNull Paint paint) {
        Typeface d4 = this.f5539b.d();
        Typeface typeface = paint.getTypeface();
        paint.setTypeface(d4);
        canvas.drawText(this.f5539b.getEmojiCharArray(), this.f5538a * 2, 2, f4, f5, paint);
        paint.setTypeface(typeface);
    }

    public int getCodepointAt(int i2) {
        return a().codepoints(i2);
    }

    public int getCodepointsLength() {
        return a().codepointsLength();
    }

    public short getCompatAdded() {
        return a().compatAdded();
    }

    @SuppressLint({"KotlinPropertyAccess"})
    public int getHasGlyph() {
        return this.f5540c;
    }

    public short getHeight() {
        return a().height();
    }

    public int getId() {
        return a().id();
    }

    public short getSdkAdded() {
        return a().sdkAdded();
    }

    @NonNull
    public Typeface getTypeface() {
        return this.f5539b.d();
    }

    public short getWidth() {
        return a().width();
    }

    public boolean isDefaultEmoji() {
        return a().emojiStyle();
    }

    @RestrictTo({RestrictTo.Scope.TESTS})
    public void resetHasGlyphCache() {
        this.f5540c = 0;
    }

    @SuppressLint({"KotlinPropertyAccess"})
    public void setHasGlyph(boolean z3) {
        this.f5540c = z3 ? 2 : 1;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append(", id:");
        sb.append(Integer.toHexString(getId()));
        sb.append(", codepoints:");
        int codepointsLength = getCodepointsLength();
        for (int i2 = 0; i2 < codepointsLength; i2++) {
            sb.append(Integer.toHexString(getCodepointAt(i2)));
            sb.append(" ");
        }
        return sb.toString();
    }
}
