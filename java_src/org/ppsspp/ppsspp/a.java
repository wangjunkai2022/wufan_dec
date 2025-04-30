package org.ppsspp.ppsspp;

import android.media.AudioManager;
/* compiled from: AudioFocusChangeListener.java */
/* loaded from: classes5.dex */
public class a implements AudioManager.OnAudioFocusChangeListener {

    /* renamed from: a  reason: collision with root package name */
    private boolean f73836a = false;

    public boolean a() {
        return this.f73836a;
    }

    @Override // android.media.AudioManager.OnAudioFocusChangeListener
    public void onAudioFocusChange(int i2) {
        if (i2 == -1) {
            this.f73836a = false;
        } else if (i2 != 1) {
        } else {
            this.f73836a = true;
        }
    }
}
