package androidx.emoji2.viewsintegration;

import android.os.Build;
import android.text.method.KeyListener;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.EditText;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.util.Preconditions;
/* loaded from: classes.dex */
public final class EmojiEditTextHelper {

    /* renamed from: a  reason: collision with root package name */
    private final HelperInternal f5700a;

    /* renamed from: b  reason: collision with root package name */
    private int f5701b;

    /* renamed from: c  reason: collision with root package name */
    private int f5702c;

    /* loaded from: classes.dex */
    static class HelperInternal {
        HelperInternal() {
        }

        @Nullable
        KeyListener a(@Nullable KeyListener keyListener) {
            return keyListener;
        }

        boolean b() {
            return false;
        }

        InputConnection c(@NonNull InputConnection inputConnection, @NonNull EditorInfo editorInfo) {
            return inputConnection;
        }

        void d(int i2) {
        }

        void e(boolean z3) {
        }

        void f(int i2) {
        }
    }

    @RequiresApi(19)
    /* loaded from: classes.dex */
    private static class HelperInternal19 extends HelperInternal {

        /* renamed from: a  reason: collision with root package name */
        private final EditText f5703a;

        /* renamed from: b  reason: collision with root package name */
        private final EmojiTextWatcher f5704b;

        HelperInternal19(@NonNull EditText editText, boolean z3) {
            this.f5703a = editText;
            EmojiTextWatcher emojiTextWatcher = new EmojiTextWatcher(editText, z3);
            this.f5704b = emojiTextWatcher;
            editText.addTextChangedListener(emojiTextWatcher);
            editText.setEditableFactory(EmojiEditableFactory.getInstance());
        }

        @Override // androidx.emoji2.viewsintegration.EmojiEditTextHelper.HelperInternal
        KeyListener a(@Nullable KeyListener keyListener) {
            if (keyListener instanceof EmojiKeyListener) {
                return keyListener;
            }
            if (keyListener == null) {
                return null;
            }
            return new EmojiKeyListener(keyListener);
        }

        @Override // androidx.emoji2.viewsintegration.EmojiEditTextHelper.HelperInternal
        boolean b() {
            return this.f5704b.isEnabled();
        }

        @Override // androidx.emoji2.viewsintegration.EmojiEditTextHelper.HelperInternal
        InputConnection c(@NonNull InputConnection inputConnection, @NonNull EditorInfo editorInfo) {
            return inputConnection instanceof EmojiInputConnection ? inputConnection : new EmojiInputConnection(this.f5703a, inputConnection, editorInfo);
        }

        @Override // androidx.emoji2.viewsintegration.EmojiEditTextHelper.HelperInternal
        void d(int i2) {
            this.f5704b.e(i2);
        }

        @Override // androidx.emoji2.viewsintegration.EmojiEditTextHelper.HelperInternal
        void e(boolean z3) {
            this.f5704b.setEnabled(z3);
        }

        @Override // androidx.emoji2.viewsintegration.EmojiEditTextHelper.HelperInternal
        void f(int i2) {
            this.f5704b.f(i2);
        }
    }

    public EmojiEditTextHelper(@NonNull EditText editText) {
        this(editText, true);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public int getEmojiReplaceStrategy() {
        return this.f5702c;
    }

    @Nullable
    public KeyListener getKeyListener(@Nullable KeyListener keyListener) {
        return this.f5700a.a(keyListener);
    }

    public int getMaxEmojiCount() {
        return this.f5701b;
    }

    public boolean isEnabled() {
        return this.f5700a.b();
    }

    @Nullable
    public InputConnection onCreateInputConnection(@Nullable InputConnection inputConnection, @NonNull EditorInfo editorInfo) {
        if (inputConnection == null) {
            return null;
        }
        return this.f5700a.c(inputConnection, editorInfo);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setEmojiReplaceStrategy(int i2) {
        this.f5702c = i2;
        this.f5700a.d(i2);
    }

    public void setEnabled(boolean z3) {
        this.f5700a.e(z3);
    }

    public void setMaxEmojiCount(@IntRange(from = 0) int i2) {
        Preconditions.checkArgumentNonnegative(i2, "maxEmojiCount should be greater than 0");
        this.f5701b = i2;
        this.f5700a.f(i2);
    }

    public EmojiEditTextHelper(@NonNull EditText editText, boolean z3) {
        this.f5701b = Integer.MAX_VALUE;
        this.f5702c = 0;
        Preconditions.checkNotNull(editText, "editText cannot be null");
        if (Build.VERSION.SDK_INT < 19) {
            this.f5700a = new HelperInternal();
        } else {
            this.f5700a = new HelperInternal19(editText, z3);
        }
    }
}
