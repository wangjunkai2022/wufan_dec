package org.cocos2dx.lib;

import android.webkit.JavascriptInterface;
import com.google.gson.JsonObject;
import com.papa91.activity.EmuBaseActivity;
import tv.danmaku.ijk.media.player.IjkMediaPlayer;
/* loaded from: classes5.dex */
public class WebJSPInterface {
    @JavascriptInterface
    public String getJaveScriptFace(String str) {
        String str2 = EmuBaseActivity.GameID;
        String str3 = EmuBaseActivity.UserID;
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("game_id", Long.valueOf(Long.parseLong(str2)));
        jsonObject.addProperty("uid", Long.valueOf(Long.parseLong(str3)));
        jsonObject.addProperty("token", EmuBaseActivity.token);
        jsonObject.addProperty(IjkMediaPlayer.OnNativeInvokeListener.ARG_IP, EmuBaseActivity.server_ip);
        return jsonObject.toString();
    }
}
