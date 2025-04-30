package androidx.emoji2.viewsintegration;

import android.text.Editable;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionWrapper;
import android.widget.TextView;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.emoji2.text.EmojiCompat;
@RequiresApi(19)
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
final class EmojiInputConnection extends InputConnectionWrapper {

    /* renamed from: a  reason: collision with root package name */
    private final TextView f5708a;

    /* renamed from: b  reason: collision with root package name */
    private final EmojiCompatDeleteHelper f5709b;

    /* loaded from: classes.dex */
    public static class EmojiCompatDeleteHelper {
        public boolean handleDeleteSurroundingText(@NonNull InputConnection inputConnection, @NonNull Editable editable, @IntRange(from = 0) int i2, @IntRange(from = 0) int i4, boolean z3) {
            return EmojiCompat.handleDeleteSurroundingText(inputConnection, editable, i2, i4, z3);
        }

        public void updateEditorInfoAttrs(@NonNull EditorInfo editorInfo) {
            if (EmojiCompat.isConfigured()) {
                EmojiCompat.get().updateEditorInfo(editorInfo);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public EmojiInputConnection(@NonNull TextView textView, @NonNull InputConnection inputConnection, @NonNull EditorInfo editorInfo) {
        this(textView, inputConnection, editorInfo, new EmojiCompatDeleteHelper());
    }

    private Editable a() {
        return this.f5708a.getEditableText();
    }

    @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
    public boolean deleteSurroundingText(int i2, int i4) {
        return this.f5709b.handleDeleteSurroundingText(this, a(), i2, i4, false) || super.deleteSurroundingText(i2, i4);
    }

    @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
    public boolean deleteSurroundingTextInCodePoints(int i2, int i4) {
        return this.f5709b.handleDeleteSurroundingText(this, a(), i2, i4, true) || super.deleteSurroundingTextInCodePoints(i2, i4);
    }

    EmojiInputConnection(@NonNull TextView textView, @NonNull InputConnection inputConnection, @NonNull EditorInfo editorInfo, @NonNull EmojiCompatDeleteHelper emojiCompatDeleteHelper) {
        super(inputConnection, false);
        this.f5708a = textView;
        this.f5709b = emojiCompatDeleteHelper;
        emojiCompatDeleteHelper.updateEditorInfoAttrs(editorInfo);
    }
}
