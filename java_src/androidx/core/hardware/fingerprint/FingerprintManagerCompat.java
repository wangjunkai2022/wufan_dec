package androidx.core.hardware.fingerprint;

import android.content.Context;
import android.hardware.fingerprint.FingerprintManager;
import android.os.Build;
import android.os.Handler;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RequiresPermission;
import androidx.core.os.CancellationSignal;
import java.security.Signature;
import javax.crypto.Cipher;
import javax.crypto.Mac;
@Deprecated
/* loaded from: classes.dex */
public class FingerprintManagerCompat {

    /* renamed from: a  reason: collision with root package name */
    private final Context f4361a;

    /* loaded from: classes.dex */
    public static abstract class AuthenticationCallback {
        public void onAuthenticationError(int i2, CharSequence charSequence) {
        }

        public void onAuthenticationFailed() {
        }

        public void onAuthenticationHelp(int i2, CharSequence charSequence) {
        }

        public void onAuthenticationSucceeded(AuthenticationResult authenticationResult) {
        }
    }

    /* loaded from: classes.dex */
    public static final class AuthenticationResult {

        /* renamed from: a  reason: collision with root package name */
        private final CryptoObject f4363a;

        public AuthenticationResult(CryptoObject cryptoObject) {
            this.f4363a = cryptoObject;
        }

        public CryptoObject getCryptoObject() {
            return this.f4363a;
        }
    }

    private FingerprintManagerCompat(Context context) {
        this.f4361a = context;
    }

    @Nullable
    @RequiresApi(23)
    private static FingerprintManager a(@NonNull Context context) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 == 23) {
            return (FingerprintManager) context.getSystemService(FingerprintManager.class);
        }
        if (i2 <= 23 || !context.getPackageManager().hasSystemFeature("android.hardware.fingerprint")) {
            return null;
        }
        return (FingerprintManager) context.getSystemService(FingerprintManager.class);
    }

    @RequiresApi(23)
    static CryptoObject b(FingerprintManager.CryptoObject cryptoObject) {
        if (cryptoObject == null) {
            return null;
        }
        if (cryptoObject.getCipher() != null) {
            return new CryptoObject(cryptoObject.getCipher());
        }
        if (cryptoObject.getSignature() != null) {
            return new CryptoObject(cryptoObject.getSignature());
        }
        if (cryptoObject.getMac() != null) {
            return new CryptoObject(cryptoObject.getMac());
        }
        return null;
    }

    @RequiresApi(23)
    private static FingerprintManager.AuthenticationCallback c(final AuthenticationCallback authenticationCallback) {
        return new FingerprintManager.AuthenticationCallback() { // from class: androidx.core.hardware.fingerprint.FingerprintManagerCompat.1
            @Override // android.hardware.fingerprint.FingerprintManager.AuthenticationCallback
            public void onAuthenticationError(int i2, CharSequence charSequence) {
                AuthenticationCallback.this.onAuthenticationError(i2, charSequence);
            }

            @Override // android.hardware.fingerprint.FingerprintManager.AuthenticationCallback
            public void onAuthenticationFailed() {
                AuthenticationCallback.this.onAuthenticationFailed();
            }

            @Override // android.hardware.fingerprint.FingerprintManager.AuthenticationCallback
            public void onAuthenticationHelp(int i2, CharSequence charSequence) {
                AuthenticationCallback.this.onAuthenticationHelp(i2, charSequence);
            }

            @Override // android.hardware.fingerprint.FingerprintManager.AuthenticationCallback
            public void onAuthenticationSucceeded(FingerprintManager.AuthenticationResult authenticationResult) {
                AuthenticationCallback.this.onAuthenticationSucceeded(new AuthenticationResult(FingerprintManagerCompat.b(authenticationResult.getCryptoObject())));
            }
        };
    }

    @RequiresApi(23)
    private static FingerprintManager.CryptoObject d(CryptoObject cryptoObject) {
        if (cryptoObject == null) {
            return null;
        }
        if (cryptoObject.getCipher() != null) {
            return new FingerprintManager.CryptoObject(cryptoObject.getCipher());
        }
        if (cryptoObject.getSignature() != null) {
            return new FingerprintManager.CryptoObject(cryptoObject.getSignature());
        }
        if (cryptoObject.getMac() != null) {
            return new FingerprintManager.CryptoObject(cryptoObject.getMac());
        }
        return null;
    }

    @NonNull
    public static FingerprintManagerCompat from(@NonNull Context context) {
        return new FingerprintManagerCompat(context);
    }

    @RequiresPermission("android.permission.USE_FINGERPRINT")
    public void authenticate(@Nullable CryptoObject cryptoObject, int i2, @Nullable CancellationSignal cancellationSignal, @NonNull AuthenticationCallback authenticationCallback, @Nullable Handler handler) {
        FingerprintManager a4;
        if (Build.VERSION.SDK_INT < 23 || (a4 = a(this.f4361a)) == null) {
            return;
        }
        a4.authenticate(d(cryptoObject), cancellationSignal != null ? (android.os.CancellationSignal) cancellationSignal.getCancellationSignalObject() : null, i2, c(authenticationCallback), handler);
    }

    @RequiresPermission("android.permission.USE_FINGERPRINT")
    public boolean hasEnrolledFingerprints() {
        FingerprintManager a4;
        return Build.VERSION.SDK_INT >= 23 && (a4 = a(this.f4361a)) != null && a4.hasEnrolledFingerprints();
    }

    @RequiresPermission("android.permission.USE_FINGERPRINT")
    public boolean isHardwareDetected() {
        FingerprintManager a4;
        return Build.VERSION.SDK_INT >= 23 && (a4 = a(this.f4361a)) != null && a4.isHardwareDetected();
    }

    /* loaded from: classes.dex */
    public static class CryptoObject {

        /* renamed from: a  reason: collision with root package name */
        private final Signature f4364a;

        /* renamed from: b  reason: collision with root package name */
        private final Cipher f4365b;

        /* renamed from: c  reason: collision with root package name */
        private final Mac f4366c;

        public CryptoObject(@NonNull Signature signature) {
            this.f4364a = signature;
            this.f4365b = null;
            this.f4366c = null;
        }

        @Nullable
        public Cipher getCipher() {
            return this.f4365b;
        }

        @Nullable
        public Mac getMac() {
            return this.f4366c;
        }

        @Nullable
        public Signature getSignature() {
            return this.f4364a;
        }

        public CryptoObject(@NonNull Cipher cipher) {
            this.f4365b = cipher;
            this.f4364a = null;
            this.f4366c = null;
        }

        public CryptoObject(@NonNull Mac mac) {
            this.f4366c = mac;
            this.f4365b = null;
            this.f4364a = null;
        }
    }
}
