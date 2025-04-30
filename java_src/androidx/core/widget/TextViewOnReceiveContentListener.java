package androidx.core.widget;

import android.content.ClipData;
import android.content.Context;
import android.os.Build;
import android.text.Editable;
import android.text.Selection;
import android.text.Spanned;
import android.util.Log;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.view.ContentInfoCompat;
import androidx.core.view.OnReceiveContentListener;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public final class TextViewOnReceiveContentListener implements OnReceiveContentListener {

    /* renamed from: a  reason: collision with root package name */
    private static final String f5144a = "ReceiveContent";

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(16)
    /* loaded from: classes.dex */
    public static final class Api16Impl {
        private Api16Impl() {
        }

        static CharSequence a(@NonNull Context context, @NonNull ClipData.Item item, int i2) {
            if ((i2 & 1) != 0) {
                CharSequence coerceToText = item.coerceToText(context);
                return coerceToText instanceof Spanned ? coerceToText.toString() : coerceToText;
            }
            return item.coerceToStyledText(context);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class ApiImpl {
        private ApiImpl() {
        }

        static CharSequence a(@NonNull Context context, @NonNull ClipData.Item item, int i2) {
            CharSequence coerceToText = item.coerceToText(context);
            return ((i2 & 1) == 0 || !(coerceToText instanceof Spanned)) ? coerceToText : coerceToText.toString();
        }
    }

    private static CharSequence a(@NonNull Context context, @NonNull ClipData.Item item, int i2) {
        if (Build.VERSION.SDK_INT >= 16) {
            return Api16Impl.a(context, item, i2);
        }
        return ApiImpl.a(context, item, i2);
    }

    private static void b(@NonNull Editable editable, @NonNull CharSequence charSequence) {
        int selectionStart = Selection.getSelectionStart(editable);
        int selectionEnd = Selection.getSelectionEnd(editable);
        int max = Math.max(0, Math.min(selectionStart, selectionEnd));
        int max2 = Math.max(0, Math.max(selectionStart, selectionEnd));
        Selection.setSelection(editable, max2);
        editable.replace(max, max2, charSequence);
    }

    @Override // androidx.core.view.OnReceiveContentListener
    @Nullable
    public ContentInfoCompat onReceiveContent(@NonNull View view, @NonNull ContentInfoCompat contentInfoCompat) {
        if (Log.isLoggable(f5144a, 3)) {
            StringBuilder sb = new StringBuilder();
            sb.append("onReceive: ");
            sb.append(contentInfoCompat);
        }
        if (contentInfoCompat.getSource() == 2) {
            return contentInfoCompat;
        }
        ClipData clip = contentInfoCompat.getClip();
        int flags = contentInfoCompat.getFlags();
        TextView textView = (TextView) view;
        Editable editable = (Editable) textView.getText();
        Context context = textView.getContext();
        boolean z3 = false;
        for (int i2 = 0; i2 < clip.getItemCount(); i2++) {
            CharSequence a4 = a(context, clip.getItemAt(i2), flags);
            if (a4 != null) {
                if (!z3) {
                    b(editable, a4);
                    z3 = true;
                } else {
                    editable.insert(Selection.getSelectionEnd(editable), "\n");
                    editable.insert(Selection.getSelectionEnd(editable), a4);
                }
            }
        }
        return null;
    }
}
