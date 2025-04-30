package androidx.media;

import android.os.Build;
import androidx.annotation.RestrictTo;
import androidx.media.VolumeProviderCompatApi21;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* loaded from: classes.dex */
public abstract class VolumeProviderCompat {
    public static final int VOLUME_CONTROL_ABSOLUTE = 2;
    public static final int VOLUME_CONTROL_FIXED = 0;
    public static final int VOLUME_CONTROL_RELATIVE = 1;

    /* renamed from: a  reason: collision with root package name */
    private final int f6593a;

    /* renamed from: b  reason: collision with root package name */
    private final int f6594b;

    /* renamed from: c  reason: collision with root package name */
    private int f6595c;

    /* renamed from: d  reason: collision with root package name */
    private Callback f6596d;

    /* renamed from: e  reason: collision with root package name */
    private Object f6597e;

    /* loaded from: classes.dex */
    public static abstract class Callback {
        public abstract void onVolumeChanged(VolumeProviderCompat volumeProviderCompat);
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes.dex */
    public @interface ControlType {
    }

    public VolumeProviderCompat(int i2, int i4, int i5) {
        this.f6593a = i2;
        this.f6594b = i4;
        this.f6595c = i5;
    }

    public final int getCurrentVolume() {
        return this.f6595c;
    }

    public final int getMaxVolume() {
        return this.f6594b;
    }

    public final int getVolumeControl() {
        return this.f6593a;
    }

    public Object getVolumeProvider() {
        if (this.f6597e == null && Build.VERSION.SDK_INT >= 21) {
            this.f6597e = VolumeProviderCompatApi21.createVolumeProvider(this.f6593a, this.f6594b, this.f6595c, new VolumeProviderCompatApi21.Delegate() { // from class: androidx.media.VolumeProviderCompat.1
                @Override // androidx.media.VolumeProviderCompatApi21.Delegate
                public void onAdjustVolume(int i2) {
                    VolumeProviderCompat.this.onAdjustVolume(i2);
                }

                @Override // androidx.media.VolumeProviderCompatApi21.Delegate
                public void onSetVolumeTo(int i2) {
                    VolumeProviderCompat.this.onSetVolumeTo(i2);
                }
            });
        }
        return this.f6597e;
    }

    public void onAdjustVolume(int i2) {
    }

    public void onSetVolumeTo(int i2) {
    }

    public void setCallback(Callback callback) {
        this.f6596d = callback;
    }

    public final void setCurrentVolume(int i2) {
        this.f6595c = i2;
        Object volumeProvider = getVolumeProvider();
        if (volumeProvider != null && Build.VERSION.SDK_INT >= 21) {
            VolumeProviderCompatApi21.setCurrentVolume(volumeProvider, i2);
        }
        Callback callback = this.f6596d;
        if (callback != null) {
            callback.onVolumeChanged(this);
        }
    }
}
