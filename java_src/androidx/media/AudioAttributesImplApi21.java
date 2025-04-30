package androidx.media;

import android.annotation.TargetApi;
import android.media.AudioAttributes;
import android.os.Build;
import android.os.Bundle;
import androidx.annotation.NonNull;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
@TargetApi(21)
/* loaded from: classes.dex */
class AudioAttributesImplApi21 implements AudioAttributesImpl {

    /* renamed from: c  reason: collision with root package name */
    private static final String f6452c = "AudioAttributesCompat21";

    /* renamed from: d  reason: collision with root package name */
    static Method f6453d;

    /* renamed from: a  reason: collision with root package name */
    AudioAttributes f6454a;

    /* renamed from: b  reason: collision with root package name */
    int f6455b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AudioAttributesImplApi21() {
        this.f6455b = -1;
    }

    static Method a() {
        try {
            if (f6453d == null) {
                f6453d = AudioAttributes.class.getMethod("toLegacyStreamType", AudioAttributes.class);
            }
            return f6453d;
        } catch (NoSuchMethodException unused) {
            return null;
        }
    }

    public static AudioAttributesImpl fromBundle(Bundle bundle) {
        AudioAttributes audioAttributes;
        if (bundle == null || (audioAttributes = (AudioAttributes) bundle.getParcelable("androidx.media.audio_attrs.FRAMEWORKS")) == null) {
            return null;
        }
        return new AudioAttributesImplApi21(audioAttributes, bundle.getInt("androidx.media.audio_attrs.LEGACY_STREAM_TYPE", -1));
    }

    public boolean equals(Object obj) {
        if (obj instanceof AudioAttributesImplApi21) {
            return this.f6454a.equals(((AudioAttributesImplApi21) obj).f6454a);
        }
        return false;
    }

    @Override // androidx.media.AudioAttributesImpl
    public Object getAudioAttributes() {
        return this.f6454a;
    }

    @Override // androidx.media.AudioAttributesImpl
    public int getContentType() {
        return this.f6454a.getContentType();
    }

    @Override // androidx.media.AudioAttributesImpl
    public int getFlags() {
        return this.f6454a.getFlags();
    }

    @Override // androidx.media.AudioAttributesImpl
    public int getLegacyStreamType() {
        int i2 = this.f6455b;
        if (i2 != -1) {
            return i2;
        }
        Method a4 = a();
        if (a4 == null) {
            StringBuilder sb = new StringBuilder();
            sb.append("No AudioAttributes#toLegacyStreamType() on API: ");
            sb.append(Build.VERSION.SDK_INT);
            return -1;
        }
        try {
            return ((Integer) a4.invoke(null, this.f6454a)).intValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("getLegacyStreamType() failed on API: ");
            sb2.append(Build.VERSION.SDK_INT);
            return -1;
        }
    }

    @Override // androidx.media.AudioAttributesImpl
    public int getRawLegacyStreamType() {
        return this.f6455b;
    }

    @Override // androidx.media.AudioAttributesImpl
    public int getUsage() {
        return this.f6454a.getUsage();
    }

    @Override // androidx.media.AudioAttributesImpl
    public int getVolumeControlStream() {
        if (Build.VERSION.SDK_INT >= 26) {
            return this.f6454a.getVolumeControlStream();
        }
        return AudioAttributesCompat.a(true, getFlags(), getUsage());
    }

    public int hashCode() {
        return this.f6454a.hashCode();
    }

    @Override // androidx.media.AudioAttributesImpl
    @NonNull
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putParcelable("androidx.media.audio_attrs.FRAMEWORKS", this.f6454a);
        int i2 = this.f6455b;
        if (i2 != -1) {
            bundle.putInt("androidx.media.audio_attrs.LEGACY_STREAM_TYPE", i2);
        }
        return bundle;
    }

    public String toString() {
        return "AudioAttributesCompat: audioattributes=" + this.f6454a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AudioAttributesImplApi21(AudioAttributes audioAttributes) {
        this(audioAttributes, -1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AudioAttributesImplApi21(AudioAttributes audioAttributes, int i2) {
        this.f6455b = -1;
        this.f6454a = audioAttributes;
        this.f6455b = i2;
    }
}
