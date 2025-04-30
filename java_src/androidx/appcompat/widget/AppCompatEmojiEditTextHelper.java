package androidx.appcompat.widget;

import android.content.res.TypedArray;
import android.text.method.KeyListener;
import android.text.method.NumberKeyListener;
import android.util.AttributeSet;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.EditText;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.R;
import androidx.emoji2.viewsintegration.EmojiEditTextHelper;
/* loaded from: classes.dex */
class AppCompatEmojiEditTextHelper {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final EditText f985a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final EmojiEditTextHelper f986b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AppCompatEmojiEditTextHelper(@NonNull EditText editText) {
        this.f985a = editText;
        this.f986b = new EmojiEditTextHelper(editText, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public KeyListener a(@Nullable KeyListener keyListener) {
        return b(keyListener) ? this.f986b.getKeyListener(keyListener) : keyListener;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b(KeyListener keyListener) {
        return !(keyListener instanceof NumberKeyListener);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean c() {
        return this.f986b.isEnabled();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d(@Nullable AttributeSet attributeSet, int i2) {
        TypedArray obtainStyledAttributes = this.f985a.getContext().obtainStyledAttributes(attributeSet, R.styleable.AppCompatTextView, i2, 0);
        try {
            int i4 = R.styleable.AppCompatTextView_emojiCompatEnabled;
            boolean z3 = obtainStyledAttributes.hasValue(i4) ? obtainStyledAttributes.getBoolean(i4, true) : true;
            obtainStyledAttributes.recycle();
            f(z3);
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public InputConnection e(@Nullable InputConnection inputConnection, @NonNull EditorInfo editorInfo) {
        return this.f986b.onCreateInputConnection(inputConnection, editorInfo);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f(boolean z3) {
        this.f986b.setEnabled(z3);
    }
}
