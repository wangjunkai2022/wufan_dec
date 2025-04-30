package androidx.emoji2.viewsintegration;

import android.text.Editable;
import android.text.Selection;
import android.text.Spannable;
import android.text.TextWatcher;
import android.widget.EditText;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.emoji2.text.EmojiCompat;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
@RequiresApi(19)
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
final class EmojiTextWatcher implements TextWatcher {

    /* renamed from: a  reason: collision with root package name */
    private final EditText f5721a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f5722b;

    /* renamed from: c  reason: collision with root package name */
    private EmojiCompat.InitCallback f5723c;

    /* renamed from: d  reason: collision with root package name */
    private int f5724d = Integer.MAX_VALUE;

    /* renamed from: e  reason: collision with root package name */
    private int f5725e = 0;

    /* renamed from: f  reason: collision with root package name */
    private boolean f5726f = true;

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(19)
    /* loaded from: classes.dex */
    public static class InitCallbackImpl extends EmojiCompat.InitCallback {

        /* renamed from: a  reason: collision with root package name */
        private final Reference<EditText> f5727a;

        InitCallbackImpl(EditText editText) {
            this.f5727a = new WeakReference(editText);
        }

        @Override // androidx.emoji2.text.EmojiCompat.InitCallback
        public void onInitialized() {
            super.onInitialized();
            EmojiTextWatcher.d(this.f5727a.get(), 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public EmojiTextWatcher(EditText editText, boolean z3) {
        this.f5721a = editText;
        this.f5722b = z3;
    }

    private EmojiCompat.InitCallback b() {
        if (this.f5723c == null) {
            this.f5723c = new InitCallbackImpl(this.f5721a);
        }
        return this.f5723c;
    }

    static void d(@Nullable EditText editText, int i2) {
        if (i2 == 1 && editText != null && editText.isAttachedToWindow()) {
            Editable editableText = editText.getEditableText();
            int selectionStart = Selection.getSelectionStart(editableText);
            int selectionEnd = Selection.getSelectionEnd(editableText);
            EmojiCompat.get().process(editableText);
            EmojiInputFilter.b(editableText, selectionStart, selectionEnd);
        }
    }

    private boolean g() {
        return (this.f5726f && (this.f5722b || EmojiCompat.isConfigured())) ? false : true;
    }

    int a() {
        return this.f5725e;
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i2, int i4, int i5) {
    }

    int c() {
        return this.f5724d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e(int i2) {
        this.f5725e = i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f(int i2) {
        this.f5724d = i2;
    }

    public boolean isEnabled() {
        return this.f5726f;
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i2, int i4, int i5) {
        if (this.f5721a.isInEditMode() || g() || i4 > i5 || !(charSequence instanceof Spannable)) {
            return;
        }
        int loadState = EmojiCompat.get().getLoadState();
        if (loadState != 0) {
            if (loadState == 1) {
                EmojiCompat.get().process((Spannable) charSequence, i2, i2 + i5, this.f5724d, this.f5725e);
                return;
            } else if (loadState != 3) {
                return;
            }
        }
        EmojiCompat.get().registerInitCallback(b());
    }

    public void setEnabled(boolean z3) {
        if (this.f5726f != z3) {
            if (this.f5723c != null) {
                EmojiCompat.get().unregisterInitCallback(this.f5723c);
            }
            this.f5726f = z3;
            if (z3) {
                d(this.f5721a, EmojiCompat.get().getLoadState());
            }
        }
    }
}
