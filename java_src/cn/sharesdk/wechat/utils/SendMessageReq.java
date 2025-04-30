package cn.sharesdk.wechat.utils;

import android.os.Bundle;
import cn.sharesdk.framework.utils.SSDKLog;
import cn.sharesdk.wechat.utils.WXMediaMessage;
/* loaded from: classes2.dex */
public class SendMessageReq extends m {

    /* renamed from: a  reason: collision with root package name */
    public WXMediaMessage f9078a;

    /* renamed from: b  reason: collision with root package name */
    public int f9079b;

    /* renamed from: c  reason: collision with root package name */
    public String f9080c;

    /* renamed from: d  reason: collision with root package name */
    public IWXSceneDataObject f9081d;

    /* loaded from: classes2.dex */
    public interface IWXSceneDataObject {
        boolean checkArgs();

        int getJumpType();

        void serialize(Bundle bundle);

        void unserialize(Bundle bundle);
    }

    @Override // cn.sharesdk.wechat.utils.m
    public int a() {
        return 2;
    }

    @Override // cn.sharesdk.wechat.utils.m
    public void a(Bundle bundle) {
        super.a(bundle);
        this.f9078a = WXMediaMessage.a.a(bundle);
        this.f9079b = bundle.getInt("_wxapi_sendmessagetowx_req_scene");
        this.f9080c = bundle.getString("_wxapi_sendmessagetowx_req_use_open_id");
        if (bundle.getString("_scene_data_object_identifie") != null) {
            try {
                IWXSceneDataObject iWXSceneDataObject = (IWXSceneDataObject) Class.forName(bundle.getString("_scene_data_object_identifie")).newInstance();
                this.f9081d = iWXSceneDataObject;
                iWXSceneDataObject.unserialize(bundle);
            } catch (ClassNotFoundException e4) {
                e4.printStackTrace();
            } catch (IllegalAccessException e5) {
                e5.printStackTrace();
            } catch (InstantiationException e6) {
                e6.printStackTrace();
            }
        }
    }

    @Override // cn.sharesdk.wechat.utils.m
    public void b(Bundle bundle) {
        super.b(bundle);
        bundle.putAll(WXMediaMessage.a.a(this.f9078a));
        bundle.putInt("_wxapi_sendmessagetowx_req_scene", this.f9079b);
        bundle.putInt("_wxapi_sendmessagetowx_req_media_type", this.f9078a.getType());
        bundle.putString("_wxapi_sendmessagetowx_req_use_open_id", this.f9080c);
        IWXSceneDataObject iWXSceneDataObject = this.f9081d;
        if (iWXSceneDataObject != null) {
            bundle.putString("_scene_data_object_identifier", iWXSceneDataObject.getClass().getName());
            this.f9081d.serialize(bundle);
        }
    }

    @Override // cn.sharesdk.wechat.utils.m
    public boolean b() {
        int type = this.f9078a.getType();
        WXMediaMessage wXMediaMessage = this.f9078a;
        if (wXMediaMessage == null) {
            SSDKLog.b().a("MicroMsg.SDK.SendMessageToWX.Req", "checkArgs fail ,message is null");
            return false;
        }
        if (type == 6 && this.f9079b == 2) {
            ((WXFileObject) wXMediaMessage.mediaObject).setContentLengthLimit(26214400);
        }
        int i2 = this.f9079b;
        if (i2 == 3 && this.f9080c == null) {
            SSDKLog.b().a("MicroMsg.SDK.SendMessageToWX.Req", "Send specifiedContact userOpenId can not be null.");
            return false;
        } else if (i2 == 3 && this.f9134f == null) {
            SSDKLog.b().a("MicroMsg.SDK.SendMessageToWX.Req", "Send specifiedContact openid can not be null.");
            return false;
        } else if (i2 != 4) {
            return this.f9078a.a();
        } else {
            if (this.f9081d == null) {
                SSDKLog.b().a("MicroMsg.SDK.SendMessageToWX.Req", "checkArgs fail, sceneDataObject is null");
                return false;
            } else if (this.f9078a.getType() == 1) {
                return this.f9081d.checkArgs();
            } else {
                return this.f9078a.a() && this.f9081d.checkArgs();
            }
        }
    }
}
