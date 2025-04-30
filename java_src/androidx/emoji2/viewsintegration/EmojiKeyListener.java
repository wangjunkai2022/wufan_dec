package androidx.emoji2.viewsintegration;

import android.text.Editable;
import android.text.method.KeyListener;
import android.view.KeyEvent;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.emoji2.text.EmojiCompat;
@RequiresApi(19)
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
final class EmojiKeyListener implements KeyListener {

    /* renamed from: a  reason: collision with root package name */
    private final KeyListener f5714a;

    /* renamed from: b  reason: collision with root package name */
    private final EmojiCompatHandleKeyDownHelper f5715b;

    /* loaded from: classes.dex */
    public static class EmojiCompatHandleKeyDownHelper {
        public boolean handleKeyDown(@NonNull Editable editable, int i2, @NonNull KeyEvent keyEvent) {
            return EmojiCompat.handleOnKeyDown(editable, i2, keyEvent);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public EmojiKeyListener(KeyListener keyListener) {
        this(keyListener, new EmojiCompatHandleKeyDownHelper());
    }

    @Override // android.text.method.KeyListener
    public void clearMetaKeyState(View view, Editable editable, int i2) {
        this.f5714a.clearMetaKeyState(view, editable, i2);
    }

    @Override // android.text.method.KeyListener
    public int getInputType() {
        return this.f5714a.getInputType();
    }

    @Override // android.text.method.KeyListener
    public boolean onKeyDown(View view, Editable editable, int i2, KeyEvent keyEvent) {
        return this.f5715b.handleKeyDown(editable, i2, keyEvent) || this.f5714a.onKeyDown(view, editable, i2, keyEvent);
    }

    @Override // android.text.method.KeyListener
    public boolean onKeyOther(View view, Editable editable, KeyEvent keyEvent) {
        return this.f5714a.onKeyOther(view, editable, keyEvent);
    }

    @Override // android.text.method.KeyListener
    public boolean onKeyUp(View view, Editable editable, int i2, KeyEvent keyEvent) {
        return this.f5714a.onKeyUp(view, editable, i2, keyEvent);
    }

    EmojiKeyListener(KeyListener keyListener, EmojiCompatHandleKeyDownHelper emojiCompatHandleKeyDownHelper) {
        this.f5714a = keyListener;
        this.f5715b = emojiCompatHandleKeyDownHelper;
    }
}
