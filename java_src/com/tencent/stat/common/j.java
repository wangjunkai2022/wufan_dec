package com.tencent.stat.common;
/* loaded from: classes4.dex */
class j extends h {

    /* renamed from: g  reason: collision with root package name */
    static final /* synthetic */ boolean f60075g = true;

    /* renamed from: h  reason: collision with root package name */
    private static final byte[] f60076h = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47};

    /* renamed from: i  reason: collision with root package name */
    private static final byte[] f60077i = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 45, 95};

    /* renamed from: c  reason: collision with root package name */
    int f60078c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f60079d;

    /* renamed from: e  reason: collision with root package name */
    public final boolean f60080e;

    /* renamed from: f  reason: collision with root package name */
    public final boolean f60081f;

    /* renamed from: j  reason: collision with root package name */
    private final byte[] f60082j;

    /* renamed from: k  reason: collision with root package name */
    private int f60083k;

    /* renamed from: l  reason: collision with root package name */
    private final byte[] f60084l;

    public j(int i2, byte[] bArr) {
        this.f60068a = bArr;
        this.f60079d = (i2 & 1) == 0;
        boolean z3 = (i2 & 2) == 0;
        this.f60080e = z3;
        this.f60081f = (i2 & 4) != 0;
        this.f60084l = (i2 & 8) == 0 ? f60076h : f60077i;
        this.f60082j = new byte[2];
        this.f60078c = 0;
        this.f60083k = z3 ? 19 : -1;
    }

    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:56)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:30)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:18)
        */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x00e6 A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x00dd -> B:22:0x008a). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean a(byte[] r18, int r19, int r20, boolean r21) {
        /*
            Method dump skipped, instructions count: 513
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.stat.common.j.a(byte[], int, int, boolean):boolean");
    }
}
