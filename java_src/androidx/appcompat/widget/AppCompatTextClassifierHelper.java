package androidx.appcompat.widget;

import android.view.textclassifier.TextClassificationManager;
import android.view.textclassifier.TextClassifier;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.util.Preconditions;
/* loaded from: classes.dex */
final class AppCompatTextClassifierHelper {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private TextView f1077a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private TextClassifier f1078b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AppCompatTextClassifierHelper(@NonNull TextView textView) {
        this.f1077a = (TextView) Preconditions.checkNotNull(textView);
    }

    @NonNull
    @RequiresApi(api = 26)
    public TextClassifier getTextClassifier() {
        TextClassifier textClassifier = this.f1078b;
        if (textClassifier == null) {
            TextClassificationManager textClassificationManager = (TextClassificationManager) this.f1077a.getContext().getSystemService(TextClassificationManager.class);
            if (textClassificationManager != null) {
                return textClassificationManager.getTextClassifier();
            }
            return TextClassifier.NO_OP;
        }
        return textClassifier;
    }

    @RequiresApi(api = 26)
    public void setTextClassifier(@Nullable TextClassifier textClassifier) {
        this.f1078b = textClassifier;
    }
}
