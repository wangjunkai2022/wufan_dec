.class public Lcn/sharesdk/framework/h;
.super Ljava/lang/Object;
.source "ShareSDKCore.java"


# direct methods
.method public static a()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcn/sharesdk/framework/Platform;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcn/sharesdk/framework/h;->e()Ljava/util/ArrayList;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcn/sharesdk/framework/h;->a(Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public static a(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    .line 26
    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_2

    :cond_0
    const-string v1, "fakelist"

    .line 27
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    if-nez p0, :cond_1

    return-object v0

    .line 28
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "ShareSDK"

    const-string v2, "parseDevInfo"

    .line 29
    invoke-static {v1, v2}, Lcom/mob/commons/eventrecoder/EventRecorder;->addBegin(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    const-string v4, "snsplat"

    .line 31
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    .line 32
    :try_start_0
    invoke-static {v4}, Lcom/mob/tools/utils/ResHelper;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    .line 33
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcn/sharesdk/framework/utils/SSDKLog;->b(Ljava/lang/Throwable;)I

    const/4 v4, -0x1

    :goto_1
    if-ne v4, v5, :cond_3

    goto :goto_0

    .line 34
    :cond_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 35
    :cond_4
    invoke-static {v1, v2}, Lcom/mob/commons/eventrecoder/EventRecorder;->addEnd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-object v0
.end method

.method public static a(ILcn/sharesdk/framework/Platform;)V
    .locals 2

    .line 12
    new-instance v0, Lcn/sharesdk/framework/a/b/d;

    invoke-direct {v0}, Lcn/sharesdk/framework/a/b/d;-><init>()V

    const/4 v1, 0x1

    if-eq p0, v1, :cond_4

    const/4 v1, 0x2

    if-eq p0, v1, :cond_3

    const/4 v1, 0x3

    if-eq p0, v1, :cond_2

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "SHARESDK_CANCEL_SHARE"

    .line 13
    iput-object p0, v0, Lcn/sharesdk/framework/a/b/d;->a:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string p0, "SHARESDK_FAILED_SHARE"

    .line 14
    iput-object p0, v0, Lcn/sharesdk/framework/a/b/d;->a:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string p0, "SHARESDK_EDIT_SHARE"

    .line 15
    iput-object p0, v0, Lcn/sharesdk/framework/a/b/d;->a:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string p0, "SHARESDK_CANCEL_SHAREMENU"

    .line 16
    iput-object p0, v0, Lcn/sharesdk/framework/a/b/d;->a:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string p0, "SHARESDK_ENTER_SHAREMENU"

    .line 17
    iput-object p0, v0, Lcn/sharesdk/framework/a/b/d;->a:Ljava/lang/String;

    :goto_0
    if-eqz p1, :cond_5

    .line 18
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getPlatformId()I

    move-result p0

    iput p0, v0, Lcn/sharesdk/framework/a/b/d;->b:I

    .line 19
    :cond_5
    invoke-static {}, Lcn/sharesdk/framework/a/d;->a()Lcn/sharesdk/framework/a/d;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 20
    invoke-virtual {p0, v0}, Lcn/sharesdk/framework/a/d;->a(Lcn/sharesdk/framework/a/b/c;)V

    :cond_6
    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 1

    .line 5
    invoke-static {}, Lcn/sharesdk/framework/authorize/a;->c()Lcn/sharesdk/framework/authorize/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/authorize/a;->a(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/os/Handler;)V
    .locals 1

    .line 9
    invoke-static {}, Lcn/sharesdk/framework/a/d;->a()Lcn/sharesdk/framework/a/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/a/d;->a(Landroid/os/Handler;)V

    .line 11
    invoke-virtual {v0}, Lcn/sharesdk/framework/utils/g;->d()V

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;I)V
    .locals 2

    .line 21
    invoke-static {}, Lcn/sharesdk/framework/a/d;->a()Lcn/sharesdk/framework/a/d;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 22
    :cond_0
    new-instance v1, Lcn/sharesdk/framework/a/b/a;

    invoke-direct {v1}, Lcn/sharesdk/framework/a/b/a;-><init>()V

    .line 23
    iput-object p0, v1, Lcn/sharesdk/framework/a/b/a;->b:Ljava/lang/String;

    .line 24
    iput p1, v1, Lcn/sharesdk/framework/a/b/a;->a:I

    .line 25
    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/a/d;->a(Lcn/sharesdk/framework/a/b/c;)V

    return-void
.end method

.method public static a(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcn/sharesdk/framework/Platform;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Lcn/sharesdk/framework/h$1;

    invoke-direct {v0}, Lcn/sharesdk/framework/h$1;-><init>()V

    .line 4
    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public static a(Z)V
    .locals 1

    .line 7
    invoke-static {}, Lcn/sharesdk/framework/authorize/a;->c()Lcn/sharesdk/framework/authorize/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/authorize/a;->a(Z)V

    :cond_0
    return-void
.end method

.method public static b()Landroid/app/Activity;
    .locals 1

    .line 1
    invoke-static {}, Lcn/sharesdk/framework/authorize/a;->c()Lcn/sharesdk/framework/authorize/a;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/a;->b()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public static b(Z)V
    .locals 1

    .line 3
    invoke-static {}, Lcn/sharesdk/framework/authorize/d;->c()Lcn/sharesdk/framework/authorize/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/authorize/d;->a(Z)V

    :cond_0
    return-void
.end method

.method public static c()Z
    .locals 1

    .line 1
    invoke-static {}, Lcn/sharesdk/framework/authorize/a;->c()Lcn/sharesdk/framework/authorize/a;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/a;->a()Z

    move-result v0

    return v0
.end method

.method public static d()Z
    .locals 1

    .line 1
    invoke-static {}, Lcn/sharesdk/framework/authorize/d;->c()Lcn/sharesdk/framework/authorize/d;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/d;->a()Z

    move-result v0

    return v0
.end method

.method private static e()Ljava/util/ArrayList;
    .locals 57
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcn/sharesdk/framework/Platform;",
            ">;"
        }
    .end annotation

    const-string v1, "cn.sharesdk.douban.Douban"

    const-string v2, "cn.sharesdk.evernote.Evernote"

    const-string v3, "cn.sharesdk.facebook.Facebook"

    const-string v4, "cn.sharesdk.renren.Renren"

    const-string v5, "cn.sharesdk.sina.weibo.SinaWeibo"

    const-string v6, "cn.sharesdk.kaixin.KaiXin"

    const-string v7, "cn.sharesdk.linkedin.LinkedIn"

    const-string v8, "cn.sharesdk.system.email.Email"

    const-string v9, "cn.sharesdk.system.text.ShortMessage"

    const-string v10, "cn.sharesdk.tencent.qq.QQ"

    const-string v11, "cn.sharesdk.tencent.qzone.QZone"

    const-string v12, "cn.sharesdk.tencent.weibo.TencentWeibo"

    const-string v13, "cn.sharesdk.twitter.Twitter"

    const-string v14, "cn.sharesdk.wechat.friends.Wechat"

    const-string v15, "cn.sharesdk.wechat.moments.WechatMoments"

    const-string v16, "cn.sharesdk.wechat.favorite.WechatFavorite"

    const-string v17, "cn.sharesdk.youdao.YouDao"

    const-string v18, "cn.sharesdk.google.GooglePlus"

    const-string v19, "cn.sharesdk.foursquare.FourSquare"

    const-string v20, "cn.sharesdk.pinterest.Pinterest"

    const-string v21, "cn.sharesdk.flickr.Flickr"

    const-string v22, "cn.sharesdk.tumblr.Tumblr"

    const-string v23, "cn.sharesdk.dropbox.Dropbox"

    const-string v24, "cn.sharesdk.vkontakte.VKontakte"

    const-string v25, "cn.sharesdk.instagram.Instagram"

    const-string v26, "cn.sharesdk.yixin.friends.Yixin"

    const-string v27, "cn.sharesdk.yixin.moments.YixinMoments"

    const-string v28, "cn.sharesdk.mingdao.Mingdao"

    const-string v29, "cn.sharesdk.line.Line"

    const-string v30, "cn.sharesdk.kakao.story.KakaoStory"

    const-string v31, "cn.sharesdk.kakao.talk.KakaoTalk"

    const-string v32, "cn.sharesdk.whatsapp.WhatsApp"

    const-string v33, "cn.sharesdk.pocket.Pocket"

    const-string v34, "cn.sharesdk.instapaper.Instapaper"

    const-string v35, "cn.sharesdk.facebookmessenger.FacebookMessenger"

    const-string v36, "cn.sharesdk.alipay.friends.Alipay"

    const-string v37, "cn.sharesdk.alipay.moments.AlipayMoments"

    const-string v38, "cn.sharesdk.dingding.friends.Dingding"

    const-string v39, "cn.sharesdk.youtube.Youtube"

    const-string v40, "cn.sharesdk.meipai.Meipai"

    const-string v41, "cn.sharesdk.telegram.Telegram"

    const-string v42, "cn.sharesdk.cmcc.Cmcc"

    const-string v43, "cn.sharesdk.reddit.Reddit"

    const-string v44, "cn.sharesdk.telecom.Telecom"

    const-string v45, "cn.sharesdk.accountkit.Accountkit"

    const-string v46, "cn.sharesdk.douyin.Douyin"

    const-string v47, "cn.sharesdk.wework.Wework"

    const-string v48, "cn.sharesdk.oasis.Oasis"

    const-string v49, "cn.sharesdk.hwaccount.HWAccount"

    const-string v50, "cn.sharesdk.xmaccount.XMAccount"

    const-string v51, "cn.sharesdk.snapchat.Snapchat"

    const-string v52, "cn.sharesdk.littleredbook.Littleredbook"

    const-string v53, "cn.sharesdk.kuaishou.Kuaishou"

    const-string v54, "cn.sharesdk.watermelonvideo.Watermelonvideo"

    const-string v55, "cn.sharesdk.tiktok.Tiktok"

    const-string v56, "cn.sharesdk.taptap.Taptap"

    .line 1
    filled-new-array/range {v1 .. v56}, [Ljava/lang/String;

    move-result-object v1

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    const/16 v0, 0x38

    if-ge v3, v0, :cond_0

    .line 3
    aget-object v0, v1, v3

    .line 4
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 5
    check-cast v0, Lcn/sharesdk/framework/Platform;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 6
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;)I

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method
