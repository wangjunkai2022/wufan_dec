package androidx.core.content;

import android.content.SharedPreferences;
import androidx.annotation.NonNull;
@Deprecated
/* loaded from: classes.dex */
public final class SharedPreferencesCompat {

    @Deprecated
    /* loaded from: classes.dex */
    public static final class EditorCompat {

        /* renamed from: b  reason: collision with root package name */
        private static EditorCompat f4125b;

        /* renamed from: a  reason: collision with root package name */
        private final Helper f4126a = new Helper();

        /* loaded from: classes.dex */
        private static class Helper {
            Helper() {
            }

            public void apply(@NonNull SharedPreferences.Editor editor) {
                try {
                    editor.apply();
                } catch (AbstractMethodError unused) {
                    editor.commit();
                }
            }
        }

        private EditorCompat() {
        }

        @Deprecated
        public static EditorCompat getInstance() {
            if (f4125b == null) {
                f4125b = new EditorCompat();
            }
            return f4125b;
        }

        @Deprecated
        public void apply(@NonNull SharedPreferences.Editor editor) {
            this.f4126a.apply(editor);
        }
    }

    private SharedPreferencesCompat() {
    }
}
