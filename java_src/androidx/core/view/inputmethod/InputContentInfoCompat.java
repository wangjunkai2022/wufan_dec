package androidx.core.view.inputmethod;

import android.content.ClipDescription;
import android.net.Uri;
import android.os.Build;
import android.view.inputmethod.InputContentInfo;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
/* loaded from: classes.dex */
public final class InputContentInfoCompat {

    /* renamed from: a  reason: collision with root package name */
    private final InputContentInfoCompatImpl f5035a;

    /* loaded from: classes.dex */
    private static final class InputContentInfoCompatBaseImpl implements InputContentInfoCompatImpl {
        @NonNull

        /* renamed from: a  reason: collision with root package name */
        private final Uri f5037a;
        @NonNull

        /* renamed from: b  reason: collision with root package name */
        private final ClipDescription f5038b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private final Uri f5039c;

        InputContentInfoCompatBaseImpl(@NonNull Uri uri, @NonNull ClipDescription clipDescription, @Nullable Uri uri2) {
            this.f5037a = uri;
            this.f5038b = clipDescription;
            this.f5039c = uri2;
        }

        @Override // androidx.core.view.inputmethod.InputContentInfoCompat.InputContentInfoCompatImpl
        @NonNull
        public Uri getContentUri() {
            return this.f5037a;
        }

        @Override // androidx.core.view.inputmethod.InputContentInfoCompat.InputContentInfoCompatImpl
        @NonNull
        public ClipDescription getDescription() {
            return this.f5038b;
        }

        @Override // androidx.core.view.inputmethod.InputContentInfoCompat.InputContentInfoCompatImpl
        @Nullable
        public Object getInputContentInfo() {
            return null;
        }

        @Override // androidx.core.view.inputmethod.InputContentInfoCompat.InputContentInfoCompatImpl
        @Nullable
        public Uri getLinkUri() {
            return this.f5039c;
        }

        @Override // androidx.core.view.inputmethod.InputContentInfoCompat.InputContentInfoCompatImpl
        public void releasePermission() {
        }

        @Override // androidx.core.view.inputmethod.InputContentInfoCompat.InputContentInfoCompatImpl
        public void requestPermission() {
        }
    }

    /* loaded from: classes.dex */
    private interface InputContentInfoCompatImpl {
        @NonNull
        Uri getContentUri();

        @NonNull
        ClipDescription getDescription();

        @Nullable
        Object getInputContentInfo();

        @Nullable
        Uri getLinkUri();

        void releasePermission();

        void requestPermission();
    }

    public InputContentInfoCompat(@NonNull Uri uri, @NonNull ClipDescription clipDescription, @Nullable Uri uri2) {
        if (Build.VERSION.SDK_INT >= 25) {
            this.f5035a = new InputContentInfoCompatApi25Impl(uri, clipDescription, uri2);
        } else {
            this.f5035a = new InputContentInfoCompatBaseImpl(uri, clipDescription, uri2);
        }
    }

    @Nullable
    public static InputContentInfoCompat wrap(@Nullable Object obj) {
        if (obj != null && Build.VERSION.SDK_INT >= 25) {
            return new InputContentInfoCompat(new InputContentInfoCompatApi25Impl(obj));
        }
        return null;
    }

    @NonNull
    public Uri getContentUri() {
        return this.f5035a.getContentUri();
    }

    @NonNull
    public ClipDescription getDescription() {
        return this.f5035a.getDescription();
    }

    @Nullable
    public Uri getLinkUri() {
        return this.f5035a.getLinkUri();
    }

    public void releasePermission() {
        this.f5035a.releasePermission();
    }

    public void requestPermission() {
        this.f5035a.requestPermission();
    }

    @Nullable
    public Object unwrap() {
        return this.f5035a.getInputContentInfo();
    }

    @RequiresApi(25)
    /* loaded from: classes.dex */
    private static final class InputContentInfoCompatApi25Impl implements InputContentInfoCompatImpl {
        @NonNull

        /* renamed from: a  reason: collision with root package name */
        final InputContentInfo f5036a;

        InputContentInfoCompatApi25Impl(@NonNull Object obj) {
            this.f5036a = (InputContentInfo) obj;
        }

        @Override // androidx.core.view.inputmethod.InputContentInfoCompat.InputContentInfoCompatImpl
        @NonNull
        public Uri getContentUri() {
            return this.f5036a.getContentUri();
        }

        @Override // androidx.core.view.inputmethod.InputContentInfoCompat.InputContentInfoCompatImpl
        @NonNull
        public ClipDescription getDescription() {
            return this.f5036a.getDescription();
        }

        @Override // androidx.core.view.inputmethod.InputContentInfoCompat.InputContentInfoCompatImpl
        @NonNull
        public Object getInputContentInfo() {
            return this.f5036a;
        }

        @Override // androidx.core.view.inputmethod.InputContentInfoCompat.InputContentInfoCompatImpl
        @Nullable
        public Uri getLinkUri() {
            return this.f5036a.getLinkUri();
        }

        @Override // androidx.core.view.inputmethod.InputContentInfoCompat.InputContentInfoCompatImpl
        public void releasePermission() {
            this.f5036a.releasePermission();
        }

        @Override // androidx.core.view.inputmethod.InputContentInfoCompat.InputContentInfoCompatImpl
        public void requestPermission() {
            this.f5036a.requestPermission();
        }

        InputContentInfoCompatApi25Impl(@NonNull Uri uri, @NonNull ClipDescription clipDescription, @Nullable Uri uri2) {
            this.f5036a = new InputContentInfo(uri, clipDescription, uri2);
        }
    }

    private InputContentInfoCompat(@NonNull InputContentInfoCompatImpl inputContentInfoCompatImpl) {
        this.f5035a = inputContentInfoCompatImpl;
    }
}
