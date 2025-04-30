package androidx.recyclerview.widget;

import androidx.annotation.Nullable;
/* loaded from: classes2.dex */
public interface ListUpdateCallback {
    void onChanged(int i2, int i4, @Nullable Object obj);

    void onInserted(int i2, int i4);

    void onMoved(int i2, int i4);

    void onRemoved(int i2, int i4);
}
