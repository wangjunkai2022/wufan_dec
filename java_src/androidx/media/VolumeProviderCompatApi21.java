package androidx.media;

import android.media.VolumeProvider;
import androidx.annotation.RequiresApi;
@RequiresApi(21)
/* loaded from: classes.dex */
class VolumeProviderCompatApi21 {

    /* loaded from: classes.dex */
    public interface Delegate {
        void onAdjustVolume(int i2);

        void onSetVolumeTo(int i2);
    }

    private VolumeProviderCompatApi21() {
    }

    public static Object createVolumeProvider(int i2, int i4, int i5, final Delegate delegate) {
        return new VolumeProvider(i2, i4, i5) { // from class: androidx.media.VolumeProviderCompatApi21.1
            @Override // android.media.VolumeProvider
            public void onAdjustVolume(int i6) {
                delegate.onAdjustVolume(i6);
            }

            @Override // android.media.VolumeProvider
            public void onSetVolumeTo(int i6) {
                delegate.onSetVolumeTo(i6);
            }
        };
    }

    public static void setCurrentVolume(Object obj, int i2) {
        ((VolumeProvider) obj).setCurrentVolume(i2);
    }
}
