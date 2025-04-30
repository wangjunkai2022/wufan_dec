package XI.CA.XI;

import android.database.ContentObserver;
/* loaded from: classes.dex */
public class kM extends ContentObserver {
    public int K0;

    /* renamed from: XI  reason: collision with root package name */
    public String f5XI;
    public K0 kM;

    public kM(K0 k02, int i2, String str) {
        super(null);
        this.kM = k02;
        this.K0 = i2;
        this.f5XI = str;
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z3) {
        K0 k02 = this.kM;
        if (k02 != null) {
            k02.K0(this.K0, this.f5XI);
        }
    }
}
