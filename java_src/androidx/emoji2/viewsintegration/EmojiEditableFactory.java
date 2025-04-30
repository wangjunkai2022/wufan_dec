package androidx.emoji2.viewsintegration;

import android.annotation.SuppressLint;
import android.text.Editable;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.emoji2.text.SpannableBuilder;
/* loaded from: classes.dex */
final class EmojiEditableFactory extends Editable.Factory {

    /* renamed from: a  reason: collision with root package name */
    private static final Object f5705a = new Object();
    @GuardedBy("INSTANCE_LOCK")

    /* renamed from: b  reason: collision with root package name */
    private static volatile Editable.Factory f5706b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private static Class<?> f5707c;

    @SuppressLint({"PrivateApi"})
    private EmojiEditableFactory() {
        try {
            f5707c = Class.forName("android.text.DynamicLayout$ChangeWatcher", false, EmojiEditableFactory.class.getClassLoader());
        } catch (Throwable unused) {
        }
    }

    public static Editable.Factory getInstance() {
        if (f5706b == null) {
            synchronized (f5705a) {
                if (f5706b == null) {
                    f5706b = new EmojiEditableFactory();
                }
            }
        }
        return f5706b;
    }

    @Override // android.text.Editable.Factory
    public Editable newEditable(@NonNull CharSequence charSequence) {
        Class<?> cls = f5707c;
        if (cls != null) {
            return SpannableBuilder.create(cls, charSequence);
        }
        return super.newEditable(charSequence);
    }
}
