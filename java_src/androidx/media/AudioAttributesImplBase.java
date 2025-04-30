package androidx.media;

import android.os.Bundle;
import androidx.annotation.NonNull;
import java.util.Arrays;
/* loaded from: classes.dex */
class AudioAttributesImplBase implements AudioAttributesImpl {

    /* renamed from: a  reason: collision with root package name */
    int f6456a;

    /* renamed from: b  reason: collision with root package name */
    int f6457b;

    /* renamed from: c  reason: collision with root package name */
    int f6458c;

    /* renamed from: d  reason: collision with root package name */
    int f6459d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AudioAttributesImplBase() {
        this.f6456a = 0;
        this.f6457b = 0;
        this.f6458c = 0;
        this.f6459d = -1;
    }

    public static AudioAttributesImpl fromBundle(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        return new AudioAttributesImplBase(bundle.getInt("androidx.media.audio_attrs.CONTENT_TYPE", 0), bundle.getInt("androidx.media.audio_attrs.FLAGS", 0), bundle.getInt("androidx.media.audio_attrs.USAGE", 0), bundle.getInt("androidx.media.audio_attrs.LEGACY_STREAM_TYPE", -1));
    }

    public boolean equals(Object obj) {
        if (obj instanceof AudioAttributesImplBase) {
            AudioAttributesImplBase audioAttributesImplBase = (AudioAttributesImplBase) obj;
            return this.f6457b == audioAttributesImplBase.getContentType() && this.f6458c == audioAttributesImplBase.getFlags() && this.f6456a == audioAttributesImplBase.getUsage() && this.f6459d == audioAttributesImplBase.f6459d;
        }
        return false;
    }

    @Override // androidx.media.AudioAttributesImpl
    public Object getAudioAttributes() {
        return null;
    }

    @Override // androidx.media.AudioAttributesImpl
    public int getContentType() {
        return this.f6457b;
    }

    @Override // androidx.media.AudioAttributesImpl
    public int getFlags() {
        int i2 = this.f6458c;
        int legacyStreamType = getLegacyStreamType();
        if (legacyStreamType == 6) {
            i2 |= 4;
        } else if (legacyStreamType == 7) {
            i2 |= 1;
        }
        return i2 & 273;
    }

    @Override // androidx.media.AudioAttributesImpl
    public int getLegacyStreamType() {
        int i2 = this.f6459d;
        return i2 != -1 ? i2 : AudioAttributesCompat.a(false, this.f6458c, this.f6456a);
    }

    @Override // androidx.media.AudioAttributesImpl
    public int getRawLegacyStreamType() {
        return this.f6459d;
    }

    @Override // androidx.media.AudioAttributesImpl
    public int getUsage() {
        return this.f6456a;
    }

    @Override // androidx.media.AudioAttributesImpl
    public int getVolumeControlStream() {
        return AudioAttributesCompat.a(true, this.f6458c, this.f6456a);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f6457b), Integer.valueOf(this.f6458c), Integer.valueOf(this.f6456a), Integer.valueOf(this.f6459d)});
    }

    @Override // androidx.media.AudioAttributesImpl
    @NonNull
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt("androidx.media.audio_attrs.USAGE", this.f6456a);
        bundle.putInt("androidx.media.audio_attrs.CONTENT_TYPE", this.f6457b);
        bundle.putInt("androidx.media.audio_attrs.FLAGS", this.f6458c);
        int i2 = this.f6459d;
        if (i2 != -1) {
            bundle.putInt("androidx.media.audio_attrs.LEGACY_STREAM_TYPE", i2);
        }
        return bundle;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("AudioAttributesCompat:");
        if (this.f6459d != -1) {
            sb.append(" stream=");
            sb.append(this.f6459d);
            sb.append(" derived");
        }
        sb.append(" usage=");
        sb.append(AudioAttributesCompat.d(this.f6456a));
        sb.append(" content=");
        sb.append(this.f6457b);
        sb.append(" flags=0x");
        sb.append(Integer.toHexString(this.f6458c).toUpperCase());
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AudioAttributesImplBase(int i2, int i4, int i5, int i6) {
        this.f6456a = 0;
        this.f6457b = 0;
        this.f6458c = 0;
        this.f6459d = -1;
        this.f6457b = i2;
        this.f6458c = i4;
        this.f6456a = i5;
        this.f6459d = i6;
    }
}
