.class public abstract Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;
.super Ljava/lang/Object;
.source "OnekeyShareThemeImpl.java"

# interfaces
.implements Lcn/sharesdk/framework/PlatformActionListener;
.implements Landroid/os/Handler$Callback;


# instance fields
.field public callback:Lcn/sharesdk/framework/PlatformActionListener;

.field protected context:Landroid/content/Context;

.field protected customerLogos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/sharesdk/onekeyshare/CustomerLogo;",
            ">;"
        }
    .end annotation
.end field

.field protected customizeCallback:Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;

.field protected dialogMode:Z

.field protected disableSSO:Z

.field protected hiddenPlatforms:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected shareParamsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected silent:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p0, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->callback:Lcn/sharesdk/framework/PlatformActionListener;

    return-void
.end method

.method private prepareForEditPage(Lcn/sharesdk/framework/Platform;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->formateShareData(Lcn/sharesdk/framework/Platform;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0, p1}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareDataToShareParams(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/framework/Platform$ShareParams;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    .line 3
    invoke-static {v1, p1}, Lcn/sharesdk/framework/ShareSDK;->logDemoEvent(ILcn/sharesdk/framework/Platform;)V

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/InnerShareParams;->setOpenCustomEven(Z)V

    .line 5
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->customizeCallback:Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;

    if-eqz v1, :cond_0

    .line 6
    invoke-interface {v1, p1, v0}, Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;->onShare(Lcn/sharesdk/framework/Platform;Lcn/sharesdk/framework/Platform$ShareParams;)V

    .line 7
    :cond_0
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->context:Landroid/content/Context;

    invoke-virtual {p0, v1, p1, v0}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->showEditPage(Landroid/content/Context;Lcn/sharesdk/framework/Platform;Lcn/sharesdk/framework/Platform$ShareParams;)V

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->customizeCallback:Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;

    :cond_1
    return-void
.end method

.method private toast(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl$1;

    invoke-direct {v0, p0, p1}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl$1;-><init>(Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-static {p1, v0}, Lcom/mob/tools/utils/UIHandler;->sendEmptyMessage(ILandroid/os/Handler$Callback;)Z

    return-void
.end method


# virtual methods
.method public final disableSSO()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->disableSSO:Z

    return-void
.end method

.method final formateShareData(Lcn/sharesdk/framework/Platform;)Z
    .locals 12

    .line 1
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Alipay"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    const-string v1, "AlipayMoments"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->isClientValid()Z

    move-result v1

    if-nez v1, :cond_2

    const-string p1, "ssdk_alipay_client_inavailable"

    .line 4
    invoke-direct {p0, p1}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->toast(Ljava/lang/String;)V

    return v3

    :cond_2
    const-string v1, "KakaoTalk"

    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->isClientValid()Z

    move-result v1

    if-nez v1, :cond_3

    const-string p1, "ssdk_kakaotalk_client_inavailable"

    .line 7
    invoke-direct {p0, p1}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->toast(Ljava/lang/String;)V

    return v3

    :cond_3
    const-string v1, "KakaoStory"

    .line 8
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 9
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->isClientValid()Z

    move-result v1

    if-nez v1, :cond_4

    const-string p1, "ssdk_kakaostory_client_inavailable"

    .line 10
    invoke-direct {p0, p1}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->toast(Ljava/lang/String;)V

    return v3

    :cond_4
    const-string v1, "Line"

    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 12
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->isClientValid()Z

    move-result v1

    if-nez v1, :cond_5

    const-string p1, "ssdk_line_client_inavailable"

    .line 13
    invoke-direct {p0, p1}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->toast(Ljava/lang/String;)V

    return v3

    :cond_5
    const-string v1, "WhatsApp"

    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 15
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->isClientValid()Z

    move-result v1

    if-nez v1, :cond_6

    const-string p1, "ssdk_whatsapp_client_inavailable"

    .line 16
    invoke-direct {p0, p1}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->toast(Ljava/lang/String;)V

    return v3

    :cond_6
    const-string v1, "Pinterest"

    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 18
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->isClientValid()Z

    move-result v1

    if-nez v1, :cond_7

    const-string p1, "ssdk_pinterest_client_inavailable"

    .line 19
    invoke-direct {p0, p1}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->toast(Ljava/lang/String;)V

    return v3

    :cond_7
    const-string v1, "Instagram"

    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->isClientValid()Z

    move-result v1

    if-nez v1, :cond_8

    const-string p1, "ssdk_instagram_client_inavailable"

    .line 21
    invoke-direct {p0, p1}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->toast(Ljava/lang/String;)V

    return v3

    :cond_8
    const-string v1, "QZone"

    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->isClientValid()Z

    move-result v1

    if-nez v1, :cond_9

    const-string p1, "ssdk_qq_client_inavailable"

    .line 23
    invoke-direct {p0, p1}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->toast(Ljava/lang/String;)V

    return v3

    :cond_9
    const-string v1, "Laiwang"

    .line 24
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v4, "LaiwangMoments"

    .line 25
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v1, :cond_a

    if-eqz v4, :cond_b

    .line 26
    :cond_a
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->isClientValid()Z

    move-result v1

    if-nez v1, :cond_b

    const-string p1, "ssdk_laiwang_client_inavailable"

    .line 27
    invoke-direct {p0, p1}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->toast(Ljava/lang/String;)V

    return v3

    :cond_b
    const-string v1, "YixinMoments"

    .line 28
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "Yixin"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_2

    :cond_c
    const/4 v1, 0x0

    goto :goto_3

    :cond_d
    :goto_2
    const/4 v1, 0x1

    :goto_3
    if-eqz v1, :cond_e

    .line 29
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->isClientValid()Z

    move-result v1

    if-nez v1, :cond_e

    const-string p1, "ssdk_yixin_client_inavailable"

    .line 30
    invoke-direct {p0, p1}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->toast(Ljava/lang/String;)V

    return v3

    :cond_e
    const-string v1, "WechatFavorite"

    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string v1, "Wechat"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string v1, "WechatMoments"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_4

    :cond_f
    const/4 v1, 0x0

    goto :goto_5

    :cond_10
    :goto_4
    const/4 v1, 0x1

    :goto_5
    if-eqz v1, :cond_11

    .line 32
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->isClientValid()Z

    move-result v4

    if-nez v4, :cond_11

    const-string p1, "ssdk_wechat_client_inavailable"

    .line 33
    invoke-direct {p0, p1}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->toast(Ljava/lang/String;)V

    return v3

    :cond_11
    const-string v4, "FacebookMessenger"

    .line 34
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->isClientValid()Z

    move-result v4

    if-nez v4, :cond_12

    const-string p1, "ssdk_facebookmessenger_client_inavailable"

    .line 35
    invoke-direct {p0, p1}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->toast(Ljava/lang/String;)V

    return v3

    :cond_12
    const-string v4, "Telegram"

    .line 36
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->isClientValid()Z

    move-result p1

    if-nez p1, :cond_13

    const-string p1, "ssdk_telegram_client_inavailable"

    .line 37
    invoke-direct {p0, p1}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->toast(Ljava/lang/String;)V

    return v3

    .line 38
    :cond_13
    iget-object p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareParamsMap:Ljava/util/HashMap;

    const-string v0, "shareType"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_20

    .line 39
    iget-object p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareParamsMap:Ljava/util/HashMap;

    const-string v3, "imagePath"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 40
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareParamsMap:Ljava/util/HashMap;

    const-string v4, "videoPath"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 41
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareParamsMap:Ljava/util/HashMap;

    const-string v5, "filePath"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 42
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    const/16 v6, 0x9

    const-string v7, ".gif"

    const/4 v8, 0x5

    const/4 v9, 0x2

    const/4 v10, 0x4

    const-string v11, "url"

    if-eqz v5, :cond_16

    .line 43
    invoke-virtual {p1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_14

    if-eqz v1, :cond_14

    goto/16 :goto_9

    .line 44
    :cond_14
    iget-object p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareParamsMap:Ljava/util/HashMap;

    invoke-virtual {p1, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareParamsMap:Ljava/util/HashMap;

    invoke-virtual {p1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_15

    if-eqz v1, :cond_15

    goto :goto_7

    :cond_15
    const/4 v6, 0x2

    goto/16 :goto_9

    .line 45
    :cond_16
    iget-object p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareParamsMap:Ljava/util/HashMap;

    invoke-virtual {p1, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    const-string v5, "musicUrl"

    if-eqz p1, :cond_18

    iget-object p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareParamsMap:Ljava/util/HashMap;

    invoke-virtual {p1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_18

    .line 46
    iget-object p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareParamsMap:Ljava/util/HashMap;

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    iget-object p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareParamsMap:Ljava/util/HashMap;

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_17

    if-eqz v1, :cond_17

    :goto_6
    const/4 v6, 0x5

    goto/16 :goto_9

    :cond_17
    :goto_7
    const/4 v6, 0x4

    goto/16 :goto_9

    .line 47
    :cond_18
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_19

    const/4 v6, 0x6

    goto/16 :goto_9

    .line 48
    :cond_19
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1a

    const/16 v6, 0x8

    goto/16 :goto_9

    .line 49
    :cond_1a
    iget-object p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareParamsMap:Ljava/util/HashMap;

    const-string v3, "viewToShare"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_1b

    .line 50
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_1b

    .line 51
    iget-object p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareParamsMap:Ljava/util/HashMap;

    invoke-virtual {p1, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareParamsMap:Ljava/util/HashMap;

    invoke-virtual {p1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_15

    .line 52
    iget-object p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareParamsMap:Ljava/util/HashMap;

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    iget-object p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareParamsMap:Ljava/util/HashMap;

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_17

    if-eqz v1, :cond_17

    :goto_8
    goto :goto_6

    .line 53
    :cond_1b
    iget-object p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareParamsMap:Ljava/util/HashMap;

    const-string v3, "imageUrl"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1d

    .line 54
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1d

    .line 55
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1c

    if-eqz v1, :cond_1c

    goto/16 :goto_9

    .line 56
    :cond_1c
    iget-object p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareParamsMap:Ljava/util/HashMap;

    invoke-virtual {p1, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareParamsMap:Ljava/util/HashMap;

    invoke-virtual {p1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_15

    .line 57
    iget-object p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareParamsMap:Ljava/util/HashMap;

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    iget-object p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareParamsMap:Ljava/util/HashMap;

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_17

    if-eqz v1, :cond_17

    goto/16 :goto_6

    .line 58
    :cond_1d
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareParamsMap:Ljava/util/HashMap;

    const-string v4, "imageData"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1f

    .line 59
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1e

    if-eqz v1, :cond_1e

    goto :goto_9

    .line 60
    :cond_1e
    iget-object p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareParamsMap:Ljava/util/HashMap;

    invoke-virtual {p1, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareParamsMap:Ljava/util/HashMap;

    invoke-virtual {p1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_15

    .line 61
    iget-object p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareParamsMap:Ljava/util/HashMap;

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    iget-object p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareParamsMap:Ljava/util/HashMap;

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_17

    if-eqz v1, :cond_17

    goto/16 :goto_8

    :cond_1f
    const/4 v6, 0x1

    .line 62
    :goto_9
    iget-object p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareParamsMap:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_20
    return v2
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_c

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string p1, "ssdk_oks_share_canceled"

    .line 2
    invoke-direct {p0, p1}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->toast(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WechatClientNotExistException"

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "WechatTimelineNotSupportedException"

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "WechatFavoriteNotSupportedException"

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_1

    :cond_2
    const-string v0, "GooglePlusClientNotExistException"

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "ssdk_google_plus_client_inavailable"

    .line 8
    invoke-direct {p0, p1}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->toast(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_3
    const-string v0, "QQClientNotExistException"

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "ssdk_qq_client_inavailable"

    .line 10
    invoke-direct {p0, p1}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->toast(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_4
    const-string v0, "YixinClientNotExistException"

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "YixinTimelineNotSupportedException"

    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    const-string v0, "KakaoTalkClientNotExistException"

    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p1, "ssdk_kakaotalk_client_inavailable"

    .line 14
    invoke-direct {p0, p1}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->toast(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const-string v0, "KakaoStoryClientNotExistException"

    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p1, "ssdk_kakaostory_client_inavailable"

    .line 16
    invoke-direct {p0, p1}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->toast(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    const-string v0, "WhatsAppClientNotExistException"

    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p1, "ssdk_whatsapp_client_inavailable"

    .line 18
    invoke-direct {p0, p1}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->toast(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    const-string v0, "FacebookMessengerClientNotExistException"

    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "ssdk_facebookmessenger_client_inavailable"

    .line 20
    invoke-direct {p0, p1}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->toast(Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    const-string p1, "ssdk_oks_share_failed"

    .line 21
    invoke-direct {p0, p1}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->toast(Ljava/lang/String;)V

    goto :goto_2

    :cond_a
    :goto_0
    const-string p1, "ssdk_yixin_client_inavailable"

    .line 22
    invoke-direct {p0, p1}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->toast(Ljava/lang/String;)V

    goto :goto_2

    :cond_b
    :goto_1
    const-string p1, "ssdk_wechat_client_inavailable"

    .line 23
    invoke-direct {p0, p1}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->toast(Ljava/lang/String;)V

    goto :goto_2

    .line 24
    :cond_c
    iget-object p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->context:Landroid/content/Context;

    const-string v0, "ssdk_oks_share_completed"

    invoke-static {p1, v0}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_d

    .line 25
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->toast(Ljava/lang/String;)V

    :cond_d
    :goto_2
    const/4 p1, 0x0

    return p1
.end method

.method final isUseClientToShare(Lcn/sharesdk/framework/Platform;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SinaWeibo"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_5

    const-string v1, "Wechat"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "WechatMoments"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "WechatFavorite"

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "ShortMessage"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "Email"

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "Qzone"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "QQ"

    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "Pinterest"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "Instagram"

    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "Yixin"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "YixinMoments"

    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "QZone"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "Mingdao"

    .line 8
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "Line"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "KakaoStory"

    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "KakaoTalk"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "Bluetooth"

    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "WhatsApp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "BaiduTieba"

    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "Laiwang"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "LaiwangMoments"

    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "Alipay"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "AlipayMoments"

    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "FacebookMessenger"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "GooglePlus"

    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "Dingding"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "Youtube"

    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "Meipai"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "Telegram"

    .line 16
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "Douyin"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "Oasis"

    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "Tiktok"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "Pocket"

    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "Evernote"

    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "ShareByAppClient"

    const-string v4, "true"

    if-eqz v1, :cond_1

    .line 20
    invoke-virtual {p1, v3}, Lcn/sharesdk/framework/Platform;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    return v2

    :cond_1
    const-string v1, "Facebook"

    .line 21
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 22
    invoke-virtual {p1, v3}, Lcn/sharesdk/framework/Platform;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 23
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->isClientValid()Z

    move-result p1

    if-eqz p1, :cond_2

    return v2

    .line 24
    :cond_2
    iget-object p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareParamsMap:Ljava/util/HashMap;

    const-string v0, "url"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareParamsMap:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_3
    const-string v1, "LinkedIn"

    .line 25
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 26
    invoke-virtual {p1, v3}, Lcn/sharesdk/framework/Platform;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 27
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->isClientValid()Z

    move-result p1

    if-eqz p1, :cond_4

    return v2

    :cond_4
    const/4 p1, 0x0

    return p1

    :cond_5
    :goto_0
    return v2
.end method

.method public final onCancel(Lcn/sharesdk/framework/Platform;I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x3

    .line 2
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 3
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 4
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5
    invoke-static {v0, p0}, Lcom/mob/tools/utils/UIHandler;->sendMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Z

    const/4 p2, 0x5

    .line 6
    invoke-static {p2, p1}, Lcn/sharesdk/framework/ShareSDK;->logDemoEvent(ILcn/sharesdk/framework/Platform;)V

    return-void
.end method

.method public final onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/sharesdk/framework/Platform;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance p3, Landroid/os/Message;

    invoke-direct {p3}, Landroid/os/Message;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p3, Landroid/os/Message;->arg1:I

    .line 3
    iput p2, p3, Landroid/os/Message;->arg2:I

    .line 4
    iput-object p1, p3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5
    invoke-static {p3, p0}, Lcom/mob/tools/utils/UIHandler;->sendMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Z

    return-void
.end method

.method public final onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    .locals 2

    .line 1
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x2

    .line 3
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 4
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 5
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 6
    invoke-static {v0, p0}, Lcom/mob/tools/utils/UIHandler;->sendMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Z

    const/4 p2, 0x4

    .line 7
    invoke-static {p2, p1}, Lcn/sharesdk/framework/ShareSDK;->logDemoEvent(ILcn/sharesdk/framework/Platform;)V

    return-void
.end method

.method public final setCustomerLogos(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcn/sharesdk/onekeyshare/CustomerLogo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->customerLogos:Ljava/util/ArrayList;

    return-void
.end method

.method public final setDialogMode(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->dialogMode:Z

    return-void
.end method

.method public final setHiddenPlatforms(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->hiddenPlatforms:Ljava/util/HashMap;

    return-void
.end method

.method public final setPlatformActionListener(Lcn/sharesdk/framework/PlatformActionListener;)V
    .locals 0

    if-nez p1, :cond_0

    move-object p1, p0

    .line 1
    :cond_0
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->callback:Lcn/sharesdk/framework/PlatformActionListener;

    return-void
.end method

.method public final setShareContentCustomizeCallback(Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->customizeCallback:Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;

    return-void
.end method

.method public final setShareParamsMap(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareParamsMap:Ljava/util/HashMap;

    return-void
.end method

.method public final setSilent(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->silent:Z

    return-void
.end method

.method final shareDataToShareParams(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/framework/Platform$ShareParams;
    .locals 8

    const-string v0, "imagePath"

    const/4 v1, 0x0

    const-string v2, "ssdk_oks_share_failed"

    if-eqz p1, :cond_2

    .line 1
    iget-object p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareParamsMap:Ljava/util/HashMap;

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 3
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareParamsMap:Ljava/util/HashMap;

    const-string v4, "viewToShare"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v4, "screenshot"

    invoke-static {p1, v4}, Lcom/mob/tools/utils/ResHelper;->getCachePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 8
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v3, v5, v6, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 9
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V

    .line 10
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    .line 11
    iget-object p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareParamsMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :cond_1
    new-instance p1, Lcn/sharesdk/framework/Platform$ShareParams;

    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareParamsMap:Ljava/util/HashMap;

    invoke-direct {p1, v0}, Lcn/sharesdk/framework/Platform$ShareParams;-><init>(Ljava/util/HashMap;)V

    return-object p1

    :catchall_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 14
    invoke-direct {p0, v2}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->toast(Ljava/lang/String;)V

    return-object v1

    .line 15
    :cond_2
    :goto_0
    invoke-direct {p0, v2}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->toast(Ljava/lang/String;)V

    return-object v1
.end method

.method final shareSilently(Lcn/sharesdk/framework/Platform;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->formateShareData(Lcn/sharesdk/framework/Platform;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {p0, p1}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareDataToShareParams(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/framework/Platform$ShareParams;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 3
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareParamsMap:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    const-string v2, "disappearsharetoast"

    .line 4
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareParamsMap:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ssdk_oks_sharing"

    .line 6
    invoke-direct {p0, v1}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->toast(Ljava/lang/String;)V

    .line 7
    :cond_1
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->customizeCallback:Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;

    if-eqz v1, :cond_2

    .line 8
    invoke-interface {v1, p1, v0}, Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;->onShare(Lcn/sharesdk/framework/Platform;Lcn/sharesdk/framework/Platform$ShareParams;)V

    .line 9
    :cond_2
    iget-boolean v1, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->disableSSO:Z

    if-eqz v1, :cond_3

    .line 10
    invoke-virtual {p1, v1}, Lcn/sharesdk/framework/Platform;->SSOSetting(Z)V

    .line 11
    :cond_3
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->callback:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-virtual {p1, v1}, Lcn/sharesdk/framework/Platform;->setPlatformActionListener(Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 12
    invoke-virtual {p1, v0}, Lcn/sharesdk/framework/Platform;->share(Lcn/sharesdk/framework/Platform$ShareParams;)V

    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->callback:Lcn/sharesdk/framework/PlatformActionListener;

    .line 14
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->customizeCallback:Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;

    :cond_4
    return-void
.end method

.method public final show(Landroid/content/Context;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->context:Landroid/content/Context;

    .line 2
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "platform"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    iget-object p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareParamsMap:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 4
    :try_start_0
    invoke-static {p1}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    .line 5
    :goto_0
    instance-of p1, v0, Lcn/sharesdk/framework/CustomPlatform;

    .line 6
    invoke-virtual {p0, v0}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->isUseClientToShare(Lcn/sharesdk/framework/Platform;)Z

    move-result v1

    .line 7
    iget-boolean v2, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->silent:Z

    if-nez v2, :cond_1

    if-nez p1, :cond_1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    invoke-direct {p0, v0}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->prepareForEditPage(Lcn/sharesdk/framework/Platform;)V

    goto :goto_2

    .line 9
    :cond_1
    :goto_1
    invoke-virtual {p0, v0}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareSilently(Lcn/sharesdk/framework/Platform;)V

    goto :goto_2

    .line 10
    :cond_2
    invoke-virtual {p0, p1}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->showPlatformPage(Landroid/content/Context;)V

    :goto_2
    return-void
.end method

.method protected abstract showEditPage(Landroid/content/Context;Lcn/sharesdk/framework/Platform;Lcn/sharesdk/framework/Platform$ShareParams;)V
.end method

.method protected abstract showPlatformPage(Landroid/content/Context;)V
.end method
