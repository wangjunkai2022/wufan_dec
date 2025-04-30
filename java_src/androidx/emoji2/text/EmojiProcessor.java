package androidx.emoji2.text;

import android.os.Build;
import android.text.Editable;
import android.text.Selection;
import android.text.Spannable;
import android.text.TextPaint;
import android.text.method.MetaKeyKeyListener;
import android.view.KeyEvent;
import android.view.inputmethod.InputConnection;
import androidx.annotation.AnyThread;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.graphics.PaintCompat;
import androidx.emoji2.text.EmojiCompat;
import androidx.emoji2.text.MetadataRepo;
import java.util.Arrays;
/* JADX INFO: Access modifiers changed from: package-private */
@AnyThread
@RequiresApi(19)
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public final class EmojiProcessor {

    /* renamed from: f  reason: collision with root package name */
    private static final int f5541f = 1;

    /* renamed from: g  reason: collision with root package name */
    private static final int f5542g = 2;

    /* renamed from: h  reason: collision with root package name */
    private static final int f5543h = 3;
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final EmojiCompat.SpanFactory f5544a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final MetadataRepo f5545b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private EmojiCompat.GlyphChecker f5546c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f5547d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private final int[] f5548e;

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(19)
    /* loaded from: classes.dex */
    public static final class CodepointIndexFinder {

        /* renamed from: a  reason: collision with root package name */
        private static final int f5549a = -1;

        private CodepointIndexFinder() {
        }

        static int a(CharSequence charSequence, int i2, int i4) {
            int length = charSequence.length();
            if (i2 < 0 || length < i2 || i4 < 0) {
                return -1;
            }
            while (true) {
                boolean z3 = false;
                while (i4 != 0) {
                    i2--;
                    if (i2 < 0) {
                        return z3 ? -1 : 0;
                    }
                    char charAt = charSequence.charAt(i2);
                    if (z3) {
                        if (!Character.isHighSurrogate(charAt)) {
                            return -1;
                        }
                        i4--;
                    } else if (!Character.isSurrogate(charAt)) {
                        i4--;
                    } else if (Character.isHighSurrogate(charAt)) {
                        return -1;
                    } else {
                        z3 = true;
                    }
                }
                return i2;
            }
        }

        static int b(CharSequence charSequence, int i2, int i4) {
            int length = charSequence.length();
            if (i2 < 0 || length < i2 || i4 < 0) {
                return -1;
            }
            while (true) {
                boolean z3 = false;
                while (i4 != 0) {
                    if (i2 >= length) {
                        if (z3) {
                            return -1;
                        }
                        return length;
                    }
                    char charAt = charSequence.charAt(i2);
                    if (z3) {
                        if (!Character.isLowSurrogate(charAt)) {
                            return -1;
                        }
                        i4--;
                        i2++;
                    } else if (!Character.isSurrogate(charAt)) {
                        i4--;
                        i2++;
                    } else if (Character.isLowSurrogate(charAt)) {
                        return -1;
                    } else {
                        i2++;
                        z3 = true;
                    }
                }
                return i2;
            }
        }
    }

    @AnyThread
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* loaded from: classes.dex */
    public static class DefaultGlyphChecker implements EmojiCompat.GlyphChecker {

        /* renamed from: b  reason: collision with root package name */
        private static final int f5550b = 10;

        /* renamed from: c  reason: collision with root package name */
        private static final ThreadLocal<StringBuilder> f5551c = new ThreadLocal<>();

        /* renamed from: a  reason: collision with root package name */
        private final TextPaint f5552a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public DefaultGlyphChecker() {
            TextPaint textPaint = new TextPaint();
            this.f5552a = textPaint;
            textPaint.setTextSize(10.0f);
        }

        private static StringBuilder a() {
            ThreadLocal<StringBuilder> threadLocal = f5551c;
            if (threadLocal.get() == null) {
                threadLocal.set(new StringBuilder());
            }
            return threadLocal.get();
        }

        @Override // androidx.emoji2.text.EmojiCompat.GlyphChecker
        public boolean hasGlyph(@NonNull CharSequence charSequence, int i2, int i4, int i5) {
            int i6 = Build.VERSION.SDK_INT;
            if (i6 >= 23 || i5 <= i6) {
                StringBuilder a4 = a();
                a4.setLength(0);
                while (i2 < i4) {
                    a4.append(charSequence.charAt(i2));
                    i2++;
                }
                return PaintCompat.hasGlyph(this.f5552a, a4.toString());
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class ProcessorSm {

        /* renamed from: i  reason: collision with root package name */
        private static final int f5553i = 1;

        /* renamed from: j  reason: collision with root package name */
        private static final int f5554j = 2;

        /* renamed from: a  reason: collision with root package name */
        private int f5555a = 1;

        /* renamed from: b  reason: collision with root package name */
        private final MetadataRepo.Node f5556b;

        /* renamed from: c  reason: collision with root package name */
        private MetadataRepo.Node f5557c;

        /* renamed from: d  reason: collision with root package name */
        private MetadataRepo.Node f5558d;

        /* renamed from: e  reason: collision with root package name */
        private int f5559e;

        /* renamed from: f  reason: collision with root package name */
        private int f5560f;

        /* renamed from: g  reason: collision with root package name */
        private final boolean f5561g;

        /* renamed from: h  reason: collision with root package name */
        private final int[] f5562h;

        ProcessorSm(MetadataRepo.Node node, boolean z3, int[] iArr) {
            this.f5556b = node;
            this.f5557c = node;
            this.f5561g = z3;
            this.f5562h = iArr;
        }

        private static boolean d(int i2) {
            return i2 == 65039;
        }

        private static boolean f(int i2) {
            return i2 == 65038;
        }

        private int g() {
            this.f5555a = 1;
            this.f5557c = this.f5556b;
            this.f5560f = 0;
            return 1;
        }

        private boolean h() {
            if (this.f5557c.b().isDefaultEmoji() || d(this.f5559e)) {
                return true;
            }
            if (this.f5561g) {
                if (this.f5562h == null) {
                    return true;
                }
                if (Arrays.binarySearch(this.f5562h, this.f5557c.b().getCodepointAt(0)) < 0) {
                    return true;
                }
            }
            return false;
        }

        int a(int i2) {
            MetadataRepo.Node a4 = this.f5557c.a(i2);
            int i4 = 3;
            if (this.f5555a == 2) {
                if (a4 != null) {
                    this.f5557c = a4;
                    this.f5560f++;
                } else if (f(i2)) {
                    i4 = g();
                } else if (!d(i2)) {
                    if (this.f5557c.b() != null) {
                        if (this.f5560f == 1) {
                            if (h()) {
                                this.f5558d = this.f5557c;
                                g();
                            } else {
                                i4 = g();
                            }
                        } else {
                            this.f5558d = this.f5557c;
                            g();
                        }
                    } else {
                        i4 = g();
                    }
                }
                i4 = 2;
            } else if (a4 == null) {
                i4 = g();
            } else {
                this.f5555a = 2;
                this.f5557c = a4;
                this.f5560f = 1;
                i4 = 2;
            }
            this.f5559e = i2;
            return i4;
        }

        EmojiMetadata b() {
            return this.f5557c.b();
        }

        EmojiMetadata c() {
            return this.f5558d.b();
        }

        boolean e() {
            return this.f5555a == 2 && this.f5557c.b() != null && (this.f5560f > 1 || h());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public EmojiProcessor(@NonNull MetadataRepo metadataRepo, @NonNull EmojiCompat.SpanFactory spanFactory, @NonNull EmojiCompat.GlyphChecker glyphChecker, boolean z3, @Nullable int[] iArr) {
        this.f5544a = spanFactory;
        this.f5545b = metadataRepo;
        this.f5546c = glyphChecker;
        this.f5547d = z3;
        this.f5548e = iArr;
    }

    private void a(@NonNull Spannable spannable, EmojiMetadata emojiMetadata, int i2, int i4) {
        spannable.setSpan(this.f5544a.a(emojiMetadata), i2, i4, 33);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean c(@NonNull InputConnection inputConnection, @NonNull Editable editable, @IntRange(from = 0) int i2, @IntRange(from = 0) int i4, boolean z3) {
        int max;
        int min;
        if (editable != null && inputConnection != null && i2 >= 0 && i4 >= 0) {
            int selectionStart = Selection.getSelectionStart(editable);
            int selectionEnd = Selection.getSelectionEnd(editable);
            if (f(selectionStart, selectionEnd)) {
                return false;
            }
            if (z3) {
                max = CodepointIndexFinder.a(editable, selectionStart, Math.max(i2, 0));
                min = CodepointIndexFinder.b(editable, selectionEnd, Math.max(i4, 0));
                if (max == -1 || min == -1) {
                    return false;
                }
            } else {
                max = Math.max(selectionStart - i2, 0);
                min = Math.min(selectionEnd + i4, editable.length());
            }
            EmojiSpan[] emojiSpanArr = (EmojiSpan[]) editable.getSpans(max, min, EmojiSpan.class);
            if (emojiSpanArr != null && emojiSpanArr.length > 0) {
                for (EmojiSpan emojiSpan : emojiSpanArr) {
                    int spanStart = editable.getSpanStart(emojiSpan);
                    int spanEnd = editable.getSpanEnd(emojiSpan);
                    max = Math.min(spanStart, max);
                    min = Math.max(spanEnd, min);
                }
                int max2 = Math.max(max, 0);
                int min2 = Math.min(min, editable.length());
                inputConnection.beginBatchEdit();
                editable.delete(max2, min2);
                inputConnection.endBatchEdit();
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean d(@NonNull Editable editable, int i2, @NonNull KeyEvent keyEvent) {
        boolean delete;
        if (i2 != 67) {
            delete = i2 != 112 ? false : delete(editable, keyEvent, true);
        } else {
            delete = delete(editable, keyEvent, false);
        }
        if (delete) {
            MetaKeyKeyListener.adjustMetaAfterKeypress(editable);
            return true;
        }
        return false;
    }

    private static boolean delete(@NonNull Editable editable, @NonNull KeyEvent keyEvent, boolean z3) {
        EmojiSpan[] emojiSpanArr;
        if (g(keyEvent)) {
            return false;
        }
        int selectionStart = Selection.getSelectionStart(editable);
        int selectionEnd = Selection.getSelectionEnd(editable);
        if (!f(selectionStart, selectionEnd) && (emojiSpanArr = (EmojiSpan[]) editable.getSpans(selectionStart, selectionEnd, EmojiSpan.class)) != null && emojiSpanArr.length > 0) {
            for (EmojiSpan emojiSpan : emojiSpanArr) {
                int spanStart = editable.getSpanStart(emojiSpan);
                int spanEnd = editable.getSpanEnd(emojiSpan);
                if ((z3 && spanStart == selectionStart) || ((!z3 && spanEnd == selectionStart) || (selectionStart > spanStart && selectionStart < spanEnd))) {
                    editable.delete(spanStart, spanEnd);
                    return true;
                }
            }
        }
        return false;
    }

    private boolean e(CharSequence charSequence, int i2, int i4, EmojiMetadata emojiMetadata) {
        if (emojiMetadata.getHasGlyph() == 0) {
            emojiMetadata.setHasGlyph(this.f5546c.hasGlyph(charSequence, i2, i4, emojiMetadata.getSdkAdded()));
        }
        return emojiMetadata.getHasGlyph() == 2;
    }

    private static boolean f(int i2, int i4) {
        return i2 == -1 || i4 == -1 || i2 != i4;
    }

    private static boolean g(@NonNull KeyEvent keyEvent) {
        return !KeyEvent.metaStateHasNoModifiers(keyEvent.getMetaState());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public EmojiMetadata b(@NonNull CharSequence charSequence) {
        ProcessorSm processorSm = new ProcessorSm(this.f5545b.c(), this.f5547d, this.f5548e);
        int length = charSequence.length();
        int i2 = 0;
        while (i2 < length) {
            int codePointAt = Character.codePointAt(charSequence, i2);
            if (processorSm.a(codePointAt) != 2) {
                return null;
            }
            i2 += Character.charCount(codePointAt);
        }
        if (processorSm.e()) {
            return processorSm.b();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x010f, code lost:
        ((androidx.emoji2.text.SpannableBuilder) r10).endBatchEdit();
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:100:0x009d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0042 A[Catch: all -> 0x0116, TryCatch #0 {all -> 0x0116, blocks: (B:7:0x000d, B:10:0x0012, B:12:0x0016, B:14:0x0025, B:18:0x0031, B:20:0x003b, B:22:0x003e, B:24:0x0042, B:26:0x004e, B:27:0x0051, B:29:0x005e, B:35:0x006d, B:36:0x007b, B:40:0x0096, B:48:0x00a6, B:51:0x00b2, B:52:0x00b7, B:53:0x00c1, B:55:0x00c8, B:56:0x00cd, B:58:0x00d8, B:60:0x00df, B:64:0x00e9, B:67:0x00f5, B:68:0x00fb, B:15:0x002b), top: B:83:0x000d }] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00f5 A[Catch: all -> 0x0116, TryCatch #0 {all -> 0x0116, blocks: (B:7:0x000d, B:10:0x0012, B:12:0x0016, B:14:0x0025, B:18:0x0031, B:20:0x003b, B:22:0x003e, B:24:0x0042, B:26:0x004e, B:27:0x0051, B:29:0x005e, B:35:0x006d, B:36:0x007b, B:40:0x0096, B:48:0x00a6, B:51:0x00b2, B:52:0x00b7, B:53:0x00c1, B:55:0x00c8, B:56:0x00cd, B:58:0x00d8, B:60:0x00df, B:64:0x00e9, B:67:0x00f5, B:68:0x00fb, B:15:0x002b), top: B:83:0x000d }] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0104  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0107 A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:96:0x00cd A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.CharSequence h(@androidx.annotation.NonNull java.lang.CharSequence r10, @androidx.annotation.IntRange(from = 0) int r11, @androidx.annotation.IntRange(from = 0) int r12, @androidx.annotation.IntRange(from = 0) int r13, boolean r14) {
        /*
            Method dump skipped, instructions count: 289
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.emoji2.text.EmojiProcessor.h(java.lang.CharSequence, int, int, int, boolean):java.lang.CharSequence");
    }
}
