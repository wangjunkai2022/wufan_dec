package cn.sharesdk.wechat.utils;

import android.os.Bundle;
import cn.sharesdk.framework.utils.SSDKLog;
/* compiled from: WXLaunchMiniProgram.java */
/* loaded from: classes2.dex */
public class i {

    /* compiled from: WXLaunchMiniProgram.java */
    /* loaded from: classes2.dex */
    public static final class b extends WechatResp {

        /* renamed from: a  reason: collision with root package name */
        public String f9119a;

        public b(Bundle bundle) {
            a(bundle);
        }

        @Override // cn.sharesdk.wechat.utils.WechatResp
        public final int a() {
            return 19;
        }

        @Override // cn.sharesdk.wechat.utils.WechatResp
        public final void a(Bundle bundle) {
            super.a(bundle);
            this.f9119a = bundle.getString("_launch_wxminiprogram_ext_msg");
        }

        @Override // cn.sharesdk.wechat.utils.WechatResp
        public final void b(Bundle bundle) {
            super.b(bundle);
            bundle.putString("_launch_wxminiprogram_ext_msg", this.f9119a);
        }
    }

    /* compiled from: WXLaunchMiniProgram.java */
    /* loaded from: classes2.dex */
    public static final class a extends m {

        /* renamed from: a  reason: collision with root package name */
        public String f9115a;

        /* renamed from: b  reason: collision with root package name */
        public String f9116b = "";

        /* renamed from: c  reason: collision with root package name */
        public int f9117c = 0;

        /* renamed from: d  reason: collision with root package name */
        public String f9118d = "";

        @Override // cn.sharesdk.wechat.utils.m
        public final int a() {
            return 19;
        }

        @Override // cn.sharesdk.wechat.utils.m
        public final boolean b() {
            String str = this.f9115a;
            if (str != null && str.length() != 0 && this.f9115a.length() <= 10240) {
                int i2 = this.f9117c;
                if (i2 < 0 || i2 > 2) {
                    SSDKLog.b().a("checkArgs fail", "miniprogram type should between MINIPTOGRAM_TYPE_RELEASE and MINIPROGRAM_TYPE_PREVIEW");
                    return false;
                }
                return true;
            }
            SSDKLog.b().a("checkArgs fail, userName is invalid", new Object[0]);
            return false;
        }

        @Override // cn.sharesdk.wechat.utils.m
        public final void b(Bundle bundle) {
            super.b(bundle);
            bundle.putString("_launch_wxminiprogram_username", this.f9115a);
            bundle.putString("_launch_wxminiprogram_path", this.f9116b);
            bundle.putInt("_launch_wxminiprogram_type", this.f9117c);
            bundle.putString("_launch_wxminiprogram_extData", this.f9118d);
        }
    }
}
