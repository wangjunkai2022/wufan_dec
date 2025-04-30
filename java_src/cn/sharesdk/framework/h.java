package cn.sharesdk.framework;

import android.app.Activity;
import android.os.Handler;
import cn.sharesdk.framework.utils.SSDKLog;
import cn.sharesdk.onekeyshare.OnekeyShare;
import com.mob.commons.eventrecoder.EventRecorder;
import com.mob.tools.utils.ResHelper;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
/* compiled from: ShareSDKCore.java */
/* loaded from: classes2.dex */
public class h {
    public static ArrayList<Platform> a() {
        ArrayList<Platform> e4 = e();
        a(e4);
        return e4;
    }

    public static Activity b() {
        return cn.sharesdk.framework.authorize.a.c().b();
    }

    public static boolean c() {
        return cn.sharesdk.framework.authorize.a.c().a();
    }

    public static boolean d() {
        return cn.sharesdk.framework.authorize.d.c().a();
    }

    private static ArrayList<Platform> e() {
        String[] strArr = {"cn.sharesdk.douban.Douban", "cn.sharesdk.evernote.Evernote", "cn.sharesdk.facebook.Facebook", "cn.sharesdk.renren.Renren", "cn.sharesdk.sina.weibo.SinaWeibo", "cn.sharesdk.kaixin.KaiXin", "cn.sharesdk.linkedin.LinkedIn", "cn.sharesdk.system.email.Email", "cn.sharesdk.system.text.ShortMessage", "cn.sharesdk.tencent.qq.QQ", "cn.sharesdk.tencent.qzone.QZone", "cn.sharesdk.tencent.weibo.TencentWeibo", "cn.sharesdk.twitter.Twitter", "cn.sharesdk.wechat.friends.Wechat", "cn.sharesdk.wechat.moments.WechatMoments", "cn.sharesdk.wechat.favorite.WechatFavorite", "cn.sharesdk.youdao.YouDao", "cn.sharesdk.google.GooglePlus", "cn.sharesdk.foursquare.FourSquare", "cn.sharesdk.pinterest.Pinterest", "cn.sharesdk.flickr.Flickr", "cn.sharesdk.tumblr.Tumblr", "cn.sharesdk.dropbox.Dropbox", "cn.sharesdk.vkontakte.VKontakte", "cn.sharesdk.instagram.Instagram", "cn.sharesdk.yixin.friends.Yixin", "cn.sharesdk.yixin.moments.YixinMoments", "cn.sharesdk.mingdao.Mingdao", "cn.sharesdk.line.Line", "cn.sharesdk.kakao.story.KakaoStory", "cn.sharesdk.kakao.talk.KakaoTalk", "cn.sharesdk.whatsapp.WhatsApp", "cn.sharesdk.pocket.Pocket", "cn.sharesdk.instapaper.Instapaper", "cn.sharesdk.facebookmessenger.FacebookMessenger", "cn.sharesdk.alipay.friends.Alipay", "cn.sharesdk.alipay.moments.AlipayMoments", "cn.sharesdk.dingding.friends.Dingding", "cn.sharesdk.youtube.Youtube", "cn.sharesdk.meipai.Meipai", "cn.sharesdk.telegram.Telegram", "cn.sharesdk.cmcc.Cmcc", "cn.sharesdk.reddit.Reddit", "cn.sharesdk.telecom.Telecom", "cn.sharesdk.accountkit.Accountkit", "cn.sharesdk.douyin.Douyin", "cn.sharesdk.wework.Wework", "cn.sharesdk.oasis.Oasis", "cn.sharesdk.hwaccount.HWAccount", "cn.sharesdk.xmaccount.XMAccount", "cn.sharesdk.snapchat.Snapchat", "cn.sharesdk.littleredbook.Littleredbook", "cn.sharesdk.kuaishou.Kuaishou", "cn.sharesdk.watermelonvideo.Watermelonvideo", "cn.sharesdk.tiktok.Tiktok", "cn.sharesdk.taptap.Taptap"};
        ArrayList<Platform> arrayList = new ArrayList<>();
        for (int i2 = 0; i2 < 56; i2++) {
            try {
                arrayList.add((Platform) Class.forName(strArr[i2]).newInstance());
            } catch (Throwable th) {
                SSDKLog.b().a(th);
            }
        }
        return arrayList;
    }

    public static void a(ArrayList<Platform> arrayList) {
        if (arrayList == null) {
            return;
        }
        Collections.sort(arrayList, new Comparator<Platform>() { // from class: cn.sharesdk.framework.h.1
            @Override // java.util.Comparator
            /* renamed from: a */
            public int compare(Platform platform, Platform platform2) {
                int platformId;
                int platformId2;
                if (platform.getSortId() != platform2.getSortId()) {
                    platformId = platform.getSortId();
                    platformId2 = platform2.getSortId();
                } else {
                    platformId = platform.getPlatformId();
                    platformId2 = platform2.getPlatformId();
                }
                return platformId - platformId2;
            }
        });
    }

    public static void b(boolean z3) {
        cn.sharesdk.framework.authorize.d c4 = cn.sharesdk.framework.authorize.d.c();
        if (c4 != null) {
            c4.a(z3);
        }
    }

    public static void a(Activity activity) {
        cn.sharesdk.framework.authorize.a c4 = cn.sharesdk.framework.authorize.a.c();
        if (c4 != null) {
            c4.a(activity);
        }
    }

    public static void a(boolean z3) {
        cn.sharesdk.framework.authorize.a c4 = cn.sharesdk.framework.authorize.a.c();
        if (c4 != null) {
            c4.a(z3);
        }
    }

    public static void a(Handler handler) {
        cn.sharesdk.framework.a.d a4 = cn.sharesdk.framework.a.d.a();
        if (a4 != null) {
            a4.a(handler);
            a4.d();
        }
    }

    public static void a(int i2, Platform platform) {
        cn.sharesdk.framework.a.b.d dVar = new cn.sharesdk.framework.a.b.d();
        if (i2 == 1) {
            dVar.f8760a = "SHARESDK_ENTER_SHAREMENU";
        } else if (i2 == 2) {
            dVar.f8760a = "SHARESDK_CANCEL_SHAREMENU";
        } else if (i2 == 3) {
            dVar.f8760a = "SHARESDK_EDIT_SHARE";
        } else if (i2 == 4) {
            dVar.f8760a = "SHARESDK_FAILED_SHARE";
        } else if (i2 == 5) {
            dVar.f8760a = "SHARESDK_CANCEL_SHARE";
        }
        if (platform != null) {
            dVar.f8761b = platform.getPlatformId();
        }
        cn.sharesdk.framework.a.d a4 = cn.sharesdk.framework.a.d.a();
        if (a4 != null) {
            a4.a(dVar);
        }
    }

    public static void a(String str, int i2) {
        cn.sharesdk.framework.a.d a4 = cn.sharesdk.framework.a.d.a();
        if (a4 == null) {
            return;
        }
        cn.sharesdk.framework.a.b.a aVar = new cn.sharesdk.framework.a.b.a();
        aVar.f8743b = str;
        aVar.f8742a = i2;
        a4.a(aVar);
    }

    public static HashMap<Integer, HashMap<String, Object>> a(HashMap<String, Object> hashMap) {
        int i2;
        HashMap<Integer, HashMap<String, Object>> hashMap2 = null;
        if (hashMap != null && hashMap.size() > 0) {
            ArrayList arrayList = (ArrayList) hashMap.get("fakelist");
            if (arrayList == null) {
                return null;
            }
            hashMap2 = new HashMap<>();
            EventRecorder.addBegin(OnekeyShare.SHARESDK_TAG, "parseDevInfo");
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                HashMap<String, Object> hashMap3 = (HashMap) it2.next();
                if (hashMap3 != null) {
                    try {
                        i2 = ResHelper.parseInt(String.valueOf(hashMap3.get("snsplat")));
                    } catch (Throwable th) {
                        SSDKLog.b().b(th);
                        i2 = -1;
                    }
                    if (i2 != -1) {
                        hashMap2.put(Integer.valueOf(i2), hashMap3);
                    }
                }
            }
            EventRecorder.addEnd(OnekeyShare.SHARESDK_TAG, "parseDevInfo");
        }
        return hashMap2;
    }
}
