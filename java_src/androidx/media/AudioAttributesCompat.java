package androidx.media;

import android.media.AudioAttributes;
import android.os.Build;
import android.os.Bundle;
import android.util.SparseIntArray;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.versionedparcelable.VersionedParcelable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* loaded from: classes.dex */
public class AudioAttributesCompat implements VersionedParcelable {
    public static final int CONTENT_TYPE_MOVIE = 3;
    public static final int CONTENT_TYPE_MUSIC = 2;
    public static final int CONTENT_TYPE_SONIFICATION = 4;
    public static final int CONTENT_TYPE_SPEECH = 1;
    public static final int CONTENT_TYPE_UNKNOWN = 0;
    public static final int FLAG_AUDIBILITY_ENFORCED = 1;
    public static final int FLAG_HW_AV_SYNC = 16;
    public static final int USAGE_ALARM = 4;
    public static final int USAGE_ASSISTANCE_ACCESSIBILITY = 11;
    public static final int USAGE_ASSISTANCE_NAVIGATION_GUIDANCE = 12;
    public static final int USAGE_ASSISTANCE_SONIFICATION = 13;
    public static final int USAGE_ASSISTANT = 16;
    public static final int USAGE_GAME = 14;
    public static final int USAGE_MEDIA = 1;
    public static final int USAGE_NOTIFICATION = 5;
    public static final int USAGE_NOTIFICATION_COMMUNICATION_DELAYED = 9;
    public static final int USAGE_NOTIFICATION_COMMUNICATION_INSTANT = 8;
    public static final int USAGE_NOTIFICATION_COMMUNICATION_REQUEST = 7;
    public static final int USAGE_NOTIFICATION_EVENT = 10;
    public static final int USAGE_NOTIFICATION_RINGTONE = 6;
    public static final int USAGE_UNKNOWN = 0;
    public static final int USAGE_VOICE_COMMUNICATION = 2;
    public static final int USAGE_VOICE_COMMUNICATION_SIGNALLING = 3;

    /* renamed from: b  reason: collision with root package name */
    private static final String f6424b = "AudioAttributesCompat";

    /* renamed from: c  reason: collision with root package name */
    private static final int f6425c = 15;

    /* renamed from: d  reason: collision with root package name */
    private static final int f6426d = 1;

    /* renamed from: e  reason: collision with root package name */
    private static final int f6427e = 2;

    /* renamed from: f  reason: collision with root package name */
    private static final SparseIntArray f6428f;

    /* renamed from: g  reason: collision with root package name */
    static boolean f6429g = false;

    /* renamed from: h  reason: collision with root package name */
    private static final int[] f6430h;

    /* renamed from: i  reason: collision with root package name */
    static final int f6431i = 2;

    /* renamed from: j  reason: collision with root package name */
    static final int f6432j = 4;

    /* renamed from: k  reason: collision with root package name */
    static final int f6433k = 8;

    /* renamed from: l  reason: collision with root package name */
    static final int f6434l = 32;

    /* renamed from: m  reason: collision with root package name */
    static final int f6435m = 64;

    /* renamed from: n  reason: collision with root package name */
    static final int f6436n = 128;

    /* renamed from: o  reason: collision with root package name */
    static final int f6437o = 256;

    /* renamed from: p  reason: collision with root package name */
    static final int f6438p = 512;

    /* renamed from: q  reason: collision with root package name */
    static final int f6439q = 1023;

    /* renamed from: r  reason: collision with root package name */
    static final int f6440r = 273;

    /* renamed from: s  reason: collision with root package name */
    static final int f6441s = -1;

    /* renamed from: t  reason: collision with root package name */
    static final String f6442t = "androidx.media.audio_attrs.FRAMEWORKS";

    /* renamed from: u  reason: collision with root package name */
    static final String f6443u = "androidx.media.audio_attrs.USAGE";

    /* renamed from: v  reason: collision with root package name */
    static final String f6444v = "androidx.media.audio_attrs.CONTENT_TYPE";

    /* renamed from: w  reason: collision with root package name */
    static final String f6445w = "androidx.media.audio_attrs.FLAGS";

    /* renamed from: x  reason: collision with root package name */
    static final String f6446x = "androidx.media.audio_attrs.LEGACY_STREAM_TYPE";

    /* renamed from: a  reason: collision with root package name */
    AudioAttributesImpl f6447a;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes.dex */
    public @interface AttributeContentType {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes.dex */
    public @interface AttributeUsage {
    }

    /* loaded from: classes.dex */
    static abstract class AudioManagerHidden {
        public static final int STREAM_ACCESSIBILITY = 10;
        public static final int STREAM_BLUETOOTH_SCO = 6;
        public static final int STREAM_SYSTEM_ENFORCED = 7;
        public static final int STREAM_TTS = 9;

        private AudioManagerHidden() {
        }
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f6428f = sparseIntArray;
        sparseIntArray.put(5, 1);
        sparseIntArray.put(6, 2);
        sparseIntArray.put(7, 2);
        sparseIntArray.put(8, 1);
        sparseIntArray.put(9, 1);
        sparseIntArray.put(10, 1);
        f6430h = new int[]{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 16};
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AudioAttributesCompat() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(boolean z3, int i2, int i4) {
        if ((i2 & 1) == 1) {
            return z3 ? 1 : 7;
        } else if ((i2 & 4) == 4) {
            return z3 ? 0 : 6;
        } else {
            switch (i4) {
                case 0:
                    return z3 ? Integer.MIN_VALUE : 3;
                case 1:
                case 12:
                case 14:
                case 16:
                    return 3;
                case 2:
                    return 0;
                case 3:
                    return z3 ? 0 : 8;
                case 4:
                    return 4;
                case 5:
                case 7:
                case 8:
                case 9:
                case 10:
                    return 5;
                case 6:
                    return 2;
                case 11:
                    return 10;
                case 13:
                    return 1;
                case 15:
                default:
                    if (z3) {
                        throw new IllegalArgumentException("Unknown usage value " + i4 + " in audio attributes");
                    }
                    return 3;
            }
        }
    }

    static int b(boolean z3, AudioAttributesCompat audioAttributesCompat) {
        return a(z3, audioAttributesCompat.getFlags(), audioAttributesCompat.getUsage());
    }

    static int c(int i2) {
        switch (i2) {
            case 0:
                return 2;
            case 1:
            case 7:
                return 13;
            case 2:
                return 6;
            case 3:
                return 1;
            case 4:
                return 4;
            case 5:
                return 5;
            case 6:
                return 2;
            case 8:
                return 3;
            case 9:
            default:
                return 0;
            case 10:
                return 11;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String d(int i2) {
        switch (i2) {
            case 0:
                return "USAGE_UNKNOWN";
            case 1:
                return "USAGE_MEDIA";
            case 2:
                return "USAGE_VOICE_COMMUNICATION";
            case 3:
                return "USAGE_VOICE_COMMUNICATION_SIGNALLING";
            case 4:
                return "USAGE_ALARM";
            case 5:
                return "USAGE_NOTIFICATION";
            case 6:
                return "USAGE_NOTIFICATION_RINGTONE";
            case 7:
                return "USAGE_NOTIFICATION_COMMUNICATION_REQUEST";
            case 8:
                return "USAGE_NOTIFICATION_COMMUNICATION_INSTANT";
            case 9:
                return "USAGE_NOTIFICATION_COMMUNICATION_DELAYED";
            case 10:
                return "USAGE_NOTIFICATION_EVENT";
            case 11:
                return "USAGE_ASSISTANCE_ACCESSIBILITY";
            case 12:
                return "USAGE_ASSISTANCE_NAVIGATION_GUIDANCE";
            case 13:
                return "USAGE_ASSISTANCE_SONIFICATION";
            case 14:
                return "USAGE_GAME";
            case 15:
            default:
                return "unknown usage " + i2;
            case 16:
                return "USAGE_ASSISTANT";
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static AudioAttributesCompat fromBundle(Bundle bundle) {
        AudioAttributesImpl fromBundle;
        if (Build.VERSION.SDK_INT >= 21) {
            fromBundle = AudioAttributesImplApi21.fromBundle(bundle);
        } else {
            fromBundle = AudioAttributesImplBase.fromBundle(bundle);
        }
        if (fromBundle == null) {
            return null;
        }
        return new AudioAttributesCompat(fromBundle);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static void setForceLegacyBehavior(boolean z3) {
        f6429g = z3;
    }

    @Nullable
    public static AudioAttributesCompat wrap(@NonNull Object obj) {
        if (Build.VERSION.SDK_INT < 21 || f6429g) {
            return null;
        }
        AudioAttributesImplApi21 audioAttributesImplApi21 = new AudioAttributesImplApi21((AudioAttributes) obj);
        AudioAttributesCompat audioAttributesCompat = new AudioAttributesCompat();
        audioAttributesCompat.f6447a = audioAttributesImplApi21;
        return audioAttributesCompat;
    }

    public boolean equals(Object obj) {
        if (obj instanceof AudioAttributesCompat) {
            AudioAttributesCompat audioAttributesCompat = (AudioAttributesCompat) obj;
            AudioAttributesImpl audioAttributesImpl = this.f6447a;
            if (audioAttributesImpl == null) {
                return audioAttributesCompat.f6447a == null;
            }
            return audioAttributesImpl.equals(audioAttributesCompat.f6447a);
        }
        return false;
    }

    public int getContentType() {
        return this.f6447a.getContentType();
    }

    public int getFlags() {
        return this.f6447a.getFlags();
    }

    public int getLegacyStreamType() {
        return this.f6447a.getLegacyStreamType();
    }

    int getRawLegacyStreamType() {
        return this.f6447a.getRawLegacyStreamType();
    }

    public int getUsage() {
        return this.f6447a.getUsage();
    }

    public int getVolumeControlStream() {
        return this.f6447a.getVolumeControlStream();
    }

    public int hashCode() {
        return this.f6447a.hashCode();
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public Bundle toBundle() {
        return this.f6447a.toBundle();
    }

    public String toString() {
        return this.f6447a.toString();
    }

    @Nullable
    public Object unwrap() {
        return this.f6447a.getAudioAttributes();
    }

    AudioAttributesCompat(AudioAttributesImpl audioAttributesImpl) {
        this.f6447a = audioAttributesImpl;
    }

    /* loaded from: classes.dex */
    public static class Builder {

        /* renamed from: a  reason: collision with root package name */
        private int f6448a;

        /* renamed from: b  reason: collision with root package name */
        private int f6449b;

        /* renamed from: c  reason: collision with root package name */
        private int f6450c;

        /* renamed from: d  reason: collision with root package name */
        private int f6451d;

        public Builder() {
            this.f6448a = 0;
            this.f6449b = 0;
            this.f6450c = 0;
            this.f6451d = -1;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        Builder a(int i2) {
            switch (i2) {
                case 0:
                    this.f6449b = 1;
                    break;
                case 1:
                    this.f6449b = 4;
                    break;
                case 2:
                    this.f6449b = 4;
                    break;
                case 3:
                    this.f6449b = 2;
                    break;
                case 4:
                    this.f6449b = 4;
                    break;
                case 5:
                    this.f6449b = 4;
                    break;
                case 6:
                    this.f6449b = 1;
                    this.f6450c |= 4;
                    break;
                case 7:
                    this.f6450c = 1 | this.f6450c;
                    this.f6449b = 4;
                    break;
                case 8:
                    this.f6449b = 4;
                    break;
                case 9:
                    this.f6449b = 4;
                    break;
                case 10:
                    this.f6449b = 1;
                    break;
                default:
                    StringBuilder sb = new StringBuilder();
                    sb.append("Invalid stream type ");
                    sb.append(i2);
                    sb.append(" for AudioAttributesCompat");
                    break;
            }
            this.f6448a = AudioAttributesCompat.c(i2);
            return this;
        }

        public AudioAttributesCompat build() {
            AudioAttributesImpl audioAttributesImplBase;
            if (!AudioAttributesCompat.f6429g && Build.VERSION.SDK_INT >= 21) {
                AudioAttributes.Builder usage = new AudioAttributes.Builder().setContentType(this.f6449b).setFlags(this.f6450c).setUsage(this.f6448a);
                int i2 = this.f6451d;
                if (i2 != -1) {
                    usage.setLegacyStreamType(i2);
                }
                audioAttributesImplBase = new AudioAttributesImplApi21(usage.build(), this.f6451d);
            } else {
                audioAttributesImplBase = new AudioAttributesImplBase(this.f6449b, this.f6450c, this.f6448a, this.f6451d);
            }
            return new AudioAttributesCompat(audioAttributesImplBase);
        }

        public Builder setContentType(int i2) {
            if (i2 != 0 && i2 != 1 && i2 != 2 && i2 != 3 && i2 != 4) {
                this.f6448a = 0;
            } else {
                this.f6449b = i2;
            }
            return this;
        }

        public Builder setFlags(int i2) {
            this.f6450c = (i2 & 1023) | this.f6450c;
            return this;
        }

        public Builder setLegacyStreamType(int i2) {
            if (i2 != 10) {
                this.f6451d = i2;
                return Build.VERSION.SDK_INT >= 21 ? a(i2) : this;
            }
            throw new IllegalArgumentException("STREAM_ACCESSIBILITY is not a legacy stream type that was used for audio playback");
        }

        public Builder setUsage(int i2) {
            switch (i2) {
                case 0:
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                case 9:
                case 10:
                case 11:
                case 12:
                case 13:
                case 14:
                case 15:
                    this.f6448a = i2;
                    break;
                case 16:
                    if (!AudioAttributesCompat.f6429g && Build.VERSION.SDK_INT > 25) {
                        this.f6448a = i2;
                        break;
                    } else {
                        this.f6448a = 12;
                        break;
                    }
                default:
                    this.f6448a = 0;
                    break;
            }
            return this;
        }

        public Builder(AudioAttributesCompat audioAttributesCompat) {
            this.f6448a = 0;
            this.f6449b = 0;
            this.f6450c = 0;
            this.f6451d = -1;
            this.f6448a = audioAttributesCompat.getUsage();
            this.f6449b = audioAttributesCompat.getContentType();
            this.f6450c = audioAttributesCompat.getFlags();
            this.f6451d = audioAttributesCompat.getRawLegacyStreamType();
        }
    }
}
