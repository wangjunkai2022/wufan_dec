package androidx.core.view.inputmethod;

import android.annotation.SuppressLint;
import android.content.ClipData;
import android.content.ClipDescription;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.ResultReceiver;
import android.text.TextUtils;
import android.view.View;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionWrapper;
import android.view.inputmethod.InputContentInfo;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.util.ObjectsCompat;
import androidx.core.util.Preconditions;
import androidx.core.view.ContentInfoCompat;
import androidx.core.view.ViewCompat;
@SuppressLint({"PrivateConstructorForUtilityClass"})
/* loaded from: classes.dex */
public final class InputConnectionCompat {
    public static final int INPUT_CONTENT_GRANT_READ_URI_PERMISSION = 1;

    /* renamed from: a  reason: collision with root package name */
    private static final String f5016a = "InputConnectionCompat";

    /* renamed from: b  reason: collision with root package name */
    private static final String f5017b = "androidx.core.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT";

    /* renamed from: c  reason: collision with root package name */
    private static final String f5018c = "android.support.v13.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT";

    /* renamed from: d  reason: collision with root package name */
    private static final String f5019d = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_URI";

    /* renamed from: e  reason: collision with root package name */
    private static final String f5020e = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_URI";

    /* renamed from: f  reason: collision with root package name */
    private static final String f5021f = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION";

    /* renamed from: g  reason: collision with root package name */
    private static final String f5022g = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION";

    /* renamed from: h  reason: collision with root package name */
    private static final String f5023h = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI";

    /* renamed from: i  reason: collision with root package name */
    private static final String f5024i = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI";

    /* renamed from: j  reason: collision with root package name */
    private static final String f5025j = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_OPTS";

    /* renamed from: k  reason: collision with root package name */
    private static final String f5026k = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_OPTS";

    /* renamed from: l  reason: collision with root package name */
    private static final String f5027l = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS";

    /* renamed from: m  reason: collision with root package name */
    private static final String f5028m = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS";

    /* renamed from: n  reason: collision with root package name */
    private static final String f5029n = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_RESULT_RECEIVER";

    /* renamed from: o  reason: collision with root package name */
    private static final String f5030o = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_RESULT_RECEIVER";

    /* renamed from: p  reason: collision with root package name */
    private static final String f5031p = "androidx.core.view.extra.INPUT_CONTENT_INFO";

    /* loaded from: classes.dex */
    public interface OnCommitContentListener {
        boolean onCommitContent(@NonNull InputContentInfoCompat inputContentInfoCompat, int i2, @Nullable Bundle bundle);
    }

    @NonNull
    private static OnCommitContentListener a(@NonNull final View view) {
        Preconditions.checkNotNull(view);
        return new OnCommitContentListener() { // from class: androidx.core.view.inputmethod.InputConnectionCompat.3
            @Override // androidx.core.view.inputmethod.InputConnectionCompat.OnCommitContentListener
            public boolean onCommitContent(InputContentInfoCompat inputContentInfoCompat, int i2, Bundle bundle) {
                if (Build.VERSION.SDK_INT >= 25 && (i2 & 1) != 0) {
                    try {
                        inputContentInfoCompat.requestPermission();
                        InputContentInfo inputContentInfo = (InputContentInfo) inputContentInfoCompat.unwrap();
                        bundle = bundle == null ? new Bundle() : new Bundle(bundle);
                        bundle.putParcelable(InputConnectionCompat.f5031p, inputContentInfo);
                    } catch (Exception unused) {
                        return false;
                    }
                }
                return ViewCompat.performReceiveContent(view, new ContentInfoCompat.Builder(new ClipData(inputContentInfoCompat.getDescription(), new ClipData.Item(inputContentInfoCompat.getContentUri())), 2).setLinkUri(inputContentInfoCompat.getLinkUri()).setExtras(bundle).build()) == null;
            }
        };
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v3, types: [int, boolean] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    static boolean b(@Nullable String str, @Nullable Bundle bundle, @NonNull OnCommitContentListener onCommitContentListener) {
        boolean z3;
        ResultReceiver resultReceiver;
        ?? r02 = 0;
        r02 = 0;
        if (bundle == null) {
            return false;
        }
        if (TextUtils.equals(f5017b, str)) {
            z3 = false;
        } else if (!TextUtils.equals(f5018c, str)) {
            return false;
        } else {
            z3 = true;
        }
        try {
            resultReceiver = (ResultReceiver) bundle.getParcelable(z3 ? f5030o : f5029n);
            try {
                Uri uri = (Uri) bundle.getParcelable(z3 ? f5020e : f5019d);
                ClipDescription clipDescription = (ClipDescription) bundle.getParcelable(z3 ? f5022g : f5021f);
                Uri uri2 = (Uri) bundle.getParcelable(z3 ? f5024i : f5023h);
                int i2 = bundle.getInt(z3 ? f5028m : f5027l);
                Bundle bundle2 = (Bundle) bundle.getParcelable(z3 ? f5026k : f5025j);
                if (uri != null && clipDescription != null) {
                    r02 = onCommitContentListener.onCommitContent(new InputContentInfoCompat(uri, clipDescription, uri2), i2, bundle2);
                }
                if (resultReceiver != 0) {
                    resultReceiver.send(r02, null);
                }
                return r02;
            } catch (Throwable th) {
                th = th;
                if (resultReceiver != 0) {
                    resultReceiver.send(0, null);
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            resultReceiver = 0;
        }
    }

    public static boolean commitContent(@NonNull InputConnection inputConnection, @NonNull EditorInfo editorInfo, @NonNull InputContentInfoCompat inputContentInfoCompat, int i2, @Nullable Bundle bundle) {
        boolean z3;
        ClipDescription description = inputContentInfoCompat.getDescription();
        String[] contentMimeTypes = EditorInfoCompat.getContentMimeTypes(editorInfo);
        int length = contentMimeTypes.length;
        boolean z4 = false;
        int i4 = 0;
        while (true) {
            if (i4 >= length) {
                z3 = false;
                break;
            } else if (description.hasMimeType(contentMimeTypes[i4])) {
                z3 = true;
                break;
            } else {
                i4++;
            }
        }
        if (z3) {
            if (Build.VERSION.SDK_INT >= 25) {
                return inputConnection.commitContent((InputContentInfo) inputContentInfoCompat.unwrap(), i2, bundle);
            }
            int a4 = EditorInfoCompat.a(editorInfo);
            if (a4 == 2) {
                z4 = true;
            } else if (a4 != 3 && a4 != 4) {
                return false;
            }
            Bundle bundle2 = new Bundle();
            bundle2.putParcelable(z4 ? f5020e : f5019d, inputContentInfoCompat.getContentUri());
            bundle2.putParcelable(z4 ? f5022g : f5021f, inputContentInfoCompat.getDescription());
            bundle2.putParcelable(z4 ? f5024i : f5023h, inputContentInfoCompat.getLinkUri());
            bundle2.putInt(z4 ? f5028m : f5027l, i2);
            bundle2.putParcelable(z4 ? f5026k : f5025j, bundle);
            return inputConnection.performPrivateCommand(z4 ? f5018c : f5017b, bundle2);
        }
        return false;
    }

    @NonNull
    @Deprecated
    public static InputConnection createWrapper(@NonNull InputConnection inputConnection, @NonNull EditorInfo editorInfo, @NonNull final OnCommitContentListener onCommitContentListener) {
        ObjectsCompat.requireNonNull(inputConnection, "inputConnection must be non-null");
        ObjectsCompat.requireNonNull(editorInfo, "editorInfo must be non-null");
        ObjectsCompat.requireNonNull(onCommitContentListener, "onCommitContentListener must be non-null");
        if (Build.VERSION.SDK_INT >= 25) {
            return new InputConnectionWrapper(inputConnection, false) { // from class: androidx.core.view.inputmethod.InputConnectionCompat.1
                @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
                public boolean commitContent(InputContentInfo inputContentInfo, int i2, Bundle bundle) {
                    if (onCommitContentListener.onCommitContent(InputContentInfoCompat.wrap(inputContentInfo), i2, bundle)) {
                        return true;
                    }
                    return super.commitContent(inputContentInfo, i2, bundle);
                }
            };
        }
        return EditorInfoCompat.getContentMimeTypes(editorInfo).length == 0 ? inputConnection : new InputConnectionWrapper(inputConnection, false) { // from class: androidx.core.view.inputmethod.InputConnectionCompat.2
            @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
            public boolean performPrivateCommand(String str, Bundle bundle) {
                if (InputConnectionCompat.b(str, bundle, onCommitContentListener)) {
                    return true;
                }
                return super.performPrivateCommand(str, bundle);
            }
        };
    }

    @NonNull
    public static InputConnection createWrapper(@NonNull View view, @NonNull InputConnection inputConnection, @NonNull EditorInfo editorInfo) {
        return createWrapper(inputConnection, editorInfo, a(view));
    }
}
