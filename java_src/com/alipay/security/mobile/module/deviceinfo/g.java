package com.alipay.security.mobile.module.deviceinfo;

import android.telephony.PhoneStateListener;
import android.telephony.SignalStrength;
import android.telephony.TelephonyManager;
/* loaded from: classes2.dex */
final class g extends PhoneStateListener {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ f f9918a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ TelephonyManager f9919b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(f fVar, TelephonyManager telephonyManager) {
        this.f9918a = fVar;
        this.f9919b = telephonyManager;
    }

    @Override // android.telephony.PhoneStateListener
    public final void onSignalStrengthsChanged(SignalStrength signalStrength) {
        super.onSignalStrengthsChanged(signalStrength);
        if (signalStrength != null) {
            this.f9918a.f9917l = signalStrength.getGsmSignalStrength();
        }
        this.f9919b.listen(this, 0);
    }
}
