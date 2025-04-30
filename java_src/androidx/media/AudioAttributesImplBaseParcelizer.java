package androidx.media;

import androidx.annotation.RestrictTo;
import androidx.versionedparcelable.VersionedParcel;
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public final class AudioAttributesImplBaseParcelizer {
    public static AudioAttributesImplBase read(VersionedParcel versionedParcel) {
        AudioAttributesImplBase audioAttributesImplBase = new AudioAttributesImplBase();
        audioAttributesImplBase.f6456a = versionedParcel.readInt(audioAttributesImplBase.f6456a, 1);
        audioAttributesImplBase.f6457b = versionedParcel.readInt(audioAttributesImplBase.f6457b, 2);
        audioAttributesImplBase.f6458c = versionedParcel.readInt(audioAttributesImplBase.f6458c, 3);
        audioAttributesImplBase.f6459d = versionedParcel.readInt(audioAttributesImplBase.f6459d, 4);
        return audioAttributesImplBase;
    }

    public static void write(AudioAttributesImplBase audioAttributesImplBase, VersionedParcel versionedParcel) {
        versionedParcel.setSerializationFlags(false, false);
        versionedParcel.writeInt(audioAttributesImplBase.f6456a, 1);
        versionedParcel.writeInt(audioAttributesImplBase.f6457b, 2);
        versionedParcel.writeInt(audioAttributesImplBase.f6458c, 3);
        versionedParcel.writeInt(audioAttributesImplBase.f6459d, 4);
    }
}
