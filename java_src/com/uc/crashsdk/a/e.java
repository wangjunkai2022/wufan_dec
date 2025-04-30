package com.uc.crashsdk.a;

import com.bytedance.sdk.openadsdk.TTAdConstant;
/* compiled from: ProGuard */
/* loaded from: classes4.dex */
public class e implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    static final /* synthetic */ boolean f60186a = true;

    /* renamed from: b  reason: collision with root package name */
    private final int f60187b;

    /* renamed from: c  reason: collision with root package name */
    private final Object[] f60188c;

    public e(int i2) {
        this.f60187b = i2;
        this.f60188c = null;
    }

    public final boolean a() {
        int i2 = this.f60187b;
        if (i2 != 451 && i2 != 452) {
            switch (i2) {
                case 351:
                case 352:
                case 353:
                case 354:
                    return h.b(i2, this.f60188c);
                default:
                    switch (i2) {
                        case 751:
                        case 752:
                        case 753:
                            return com.uc.crashsdk.f.a(i2, this.f60188c);
                        default:
                            a.d("crashsdk", "Unknown sync runnable: " + toString());
                            if (f60186a) {
                                return false;
                            }
                            throw new AssertionError();
                    }
            }
        }
        return com.uc.crashsdk.e.b(i2, this.f60188c);
    }

    @Override // java.lang.Runnable
    public void run() {
        int i2 = this.f60187b;
        if (i2 == 10) {
            f.a(i2, this.f60188c);
        } else if (i2 == 500) {
            d.a(i2);
        } else if (i2 == 700) {
            com.uc.crashsdk.f.b(i2);
        } else if (i2 == 800) {
            g.a(i2);
        } else if (i2 != 201 && i2 != 202) {
            switch (i2) {
                case 100:
                case 101:
                case 102:
                case 103:
                case 104:
                    com.uc.crashsdk.b.a(i2);
                    return;
                default:
                    switch (i2) {
                        case 301:
                        case 302:
                        case 303:
                            h.a(i2, this.f60188c);
                            return;
                        default:
                            switch (i2) {
                                case 401:
                                case 402:
                                case 403:
                                    break;
                                default:
                                    switch (i2) {
                                        case TTAdConstant.LANDING_PAGE_TYPE_CODE /* 405 */:
                                        case TTAdConstant.DOWNLOAD_APP_INFO_CODE /* 406 */:
                                        case TTAdConstant.DOWNLOAD_URL_CODE /* 407 */:
                                        case TTAdConstant.INTERACTION_TYPE_CODE /* 408 */:
                                        case TTAdConstant.IMAGE_LIST_CODE /* 409 */:
                                        case TTAdConstant.IMAGE_LIST_SIZE_CODE /* 410 */:
                                        case TTAdConstant.IMAGE_CODE /* 411 */:
                                        case TTAdConstant.IMAGE_URL_CODE /* 412 */:
                                        case TTAdConstant.VIDEO_INFO_CODE /* 413 */:
                                        case TTAdConstant.VIDEO_URL_CODE /* 414 */:
                                        case TTAdConstant.VIDEO_COVER_URL_CODE /* 415 */:
                                        case 416:
                                            break;
                                        default:
                                            a.d("crashsdk", "Unknown async runnable: " + toString());
                                            if (!f60186a) {
                                                throw new AssertionError();
                                            }
                                            return;
                                    }
                            }
                            com.uc.crashsdk.e.a(i2, this.f60188c);
                            return;
                    }
            }
        } else {
            com.uc.crashsdk.a.a(i2);
        }
    }

    public String toString() {
        return super.toString() + "@action_" + this.f60187b;
    }

    public e(int i2, Object[] objArr) {
        this.f60187b = i2;
        this.f60188c = objArr;
    }
}
