package androidx.emoji2.viewsintegration;

import android.text.InputFilter;
import android.text.Selection;
import android.text.Spannable;
import android.text.Spanned;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.emoji2.text.EmojiCompat;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
@RequiresApi(19)
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
final class EmojiInputFilter implements InputFilter {

    /* renamed from: a  reason: collision with root package name */
    private final TextView f5710a;

    /* renamed from: b  reason: collision with root package name */
    private EmojiCompat.InitCallback f5711b;

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(19)
    /* loaded from: classes.dex */
    public static class InitCallbackImpl extends EmojiCompat.InitCallback {

        /* renamed from: a  reason: collision with root package name */
        private final Reference<TextView> f5712a;

        /* renamed from: b  reason: collision with root package name */
        private final Reference<EmojiInputFilter> f5713b;

        InitCallbackImpl(TextView textView, EmojiInputFilter emojiInputFilter) {
            this.f5712a = new WeakReference(textView);
            this.f5713b = new WeakReference(emojiInputFilter);
        }

        private boolean a(@Nullable TextView textView, @Nullable InputFilter inputFilter) {
            InputFilter[] filters;
            if (inputFilter == null || textView == null || (filters = textView.getFilters()) == null) {
                return false;
            }
            for (InputFilter inputFilter2 : filters) {
                if (inputFilter2 == inputFilter) {
                    return true;
                }
            }
            return false;
        }

        @Override // androidx.emoji2.text.EmojiCompat.InitCallback
        public void onInitialized() {
            super.onInitialized();
            TextView textView = this.f5712a.get();
            if (a(textView, this.f5713b.get()) && textView.isAttachedToWindow()) {
                CharSequence process = EmojiCompat.get().process(textView.getText());
                int selectionStart = Selection.getSelectionStart(process);
                int selectionEnd = Selection.getSelectionEnd(process);
                textView.setText(process);
                if (process instanceof Spannable) {
                    EmojiInputFilter.b((Spannable) process, selectionStart, selectionEnd);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public EmojiInputFilter(@NonNull TextView textView) {
        this.f5710a = textView;
    }

    private EmojiCompat.InitCallback a() {
        if (this.f5711b == null) {
            this.f5711b = new InitCallbackImpl(this.f5710a, this);
        }
        return this.f5711b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b(Spannable spannable, int i2, int i4) {
        if (i2 >= 0 && i4 >= 0) {
            Selection.setSelection(spannable, i2, i4);
        } else if (i2 >= 0) {
            Selection.setSelection(spannable, i2);
        } else if (i4 >= 0) {
            Selection.setSelection(spannable, i4);
        }
    }

    @Override // android.text.InputFilter
    public CharSequence filter(CharSequence charSequence, int i2, int i4, Spanned spanned, int i5, int i6) {
        if (this.f5710a.isInEditMode()) {
            return charSequence;
        }
        int loadState = EmojiCompat.get().getLoadState();
        if (loadState != 0) {
            boolean z3 = true;
            if (loadState == 1) {
                if (i6 == 0 && i5 == 0 && spanned.length() == 0 && charSequence == this.f5710a.getText()) {
                    z3 = false;
                }
                if (!z3 || charSequence == null) {
                    return charSequence;
                }
                if (i2 != 0 || i4 != charSequence.length()) {
                    charSequence = charSequence.subSequence(i2, i4);
                }
                return EmojiCompat.get().process(charSequence, 0, charSequence.length());
            } else if (loadState != 3) {
                return charSequence;
            }
        }
        EmojiCompat.get().registerInitCallback(a());
        return charSequence;
    }
}
