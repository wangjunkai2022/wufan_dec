package com.nineoldandroids.animation;
/* compiled from: TimeAnimator.java */
/* loaded from: classes4.dex */
public class o extends q {

    /* renamed from: p0  reason: collision with root package name */
    private a f54466p0;

    /* renamed from: q0  reason: collision with root package name */
    private long f54467q0 = -1;

    /* compiled from: TimeAnimator.java */
    /* loaded from: classes4.dex */
    public interface a {
        void a(o oVar, long j4, long j5);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.nineoldandroids.animation.q
    public void D(float f4) {
    }

    @Override // com.nineoldandroids.animation.q
    boolean E(long j4) {
        if (this.f54483i == 0) {
            this.f54483i = 1;
            long j5 = this.f54477c;
            if (j5 < 0) {
                this.f54476b = j4;
            } else {
                this.f54476b = j4 - j5;
                this.f54477c = -1L;
            }
        }
        a aVar = this.f54466p0;
        if (aVar != null) {
            long j6 = j4 - this.f54476b;
            long j7 = this.f54467q0;
            long j8 = j7 >= 0 ? j4 - j7 : 0L;
            this.f54467q0 = j4;
            aVar.a(this, j6, j8);
            return false;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.nineoldandroids.animation.q
    public void T() {
    }

    public void n0(a aVar) {
        this.f54466p0 = aVar;
    }
}
