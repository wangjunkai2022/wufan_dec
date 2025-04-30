.class public Lcn/sharesdk/sina/weibo/utils/WebSharePage;
.super Lcom/mob/tools/FakeActivity;
.source "WebSharePage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final SHARE_URL:Ljava/lang/String; = "http://service.weibo.com/share/mobilesdk.php"

.field private static final UPLOAD_PIC_URL:Ljava/lang/String; = "http://service.weibo.com/share/mobilesdk_uppic.php"


# instance fields
.field private actionListener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

.field private appKey:Ljava/lang/String;

.field private btnRetry:Landroid/widget/Button;

.field private layout:Lcn/sharesdk/sina/weibo/sdk/a/a;

.field private llRetry:Landroid/widget/LinearLayout;

.field private pageStatus:I

.field private params:Lcn/sharesdk/framework/Platform$ShareParams;

.field private token:Ljava/lang/String;

.field private tvBack:Landroid/widget/TextView;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mob/tools/FakeActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcn/sharesdk/sina/weibo/utils/WebSharePage;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->pageStatus:I

    return p0
.end method

.method static synthetic access$002(Lcn/sharesdk/sina/weibo/utils/WebSharePage;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->pageStatus:I

    return p1
.end method

.method static synthetic access$100(Lcn/sharesdk/sina/weibo/utils/WebSharePage;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->llRetry:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$200(Lcn/sharesdk/sina/weibo/utils/WebSharePage;)Landroid/webkit/WebView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->webView:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$300(Lcn/sharesdk/sina/weibo/utils/WebSharePage;)Lcn/sharesdk/framework/authorize/AuthorizeListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->actionListener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    return-object p0
.end method

.method static synthetic access$400(Lcn/sharesdk/sina/weibo/utils/WebSharePage;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->reCode(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcn/sharesdk/sina/weibo/utils/WebSharePage;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->getPicId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcn/sharesdk/sina/weibo/utils/WebSharePage;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->getReqUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getPicId()Ljava/lang/String;
    .locals 11

    const-string v0, "data"

    const-string v1, "code"

    const/4 v2, 0x0

    .line 1
    :try_start_0
    iget-object v3, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->params:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v3}, Lcn/sharesdk/framework/InnerShareParams;->getImageData()Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_0

    .line 2
    iget-object v4, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->params:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v4}, Lcn/sharesdk/framework/InnerShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3
    iget-object v3, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->params:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v3}, Lcn/sharesdk/framework/InnerShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mob/tools/utils/BitmapHelper;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_0

    :cond_0
    if-nez v3, :cond_1

    .line 4
    iget-object v4, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->params:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v4}, Lcn/sharesdk/framework/InnerShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/mob/tools/FakeActivity;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->params:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v4}, Lcn/sharesdk/framework/InnerShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mob/tools/utils/BitmapHelper;->getBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    .line 6
    new-instance v4, Lcom/sina/weibo/sdk/api/ImageObject;

    invoke-direct {v4}, Lcom/sina/weibo/sdk/api/ImageObject;-><init>()V

    .line 7
    invoke-virtual {v4, v3}, Lcom/sina/weibo/sdk/api/ImageObject;->setImageData(Landroid/graphics/Bitmap;)V

    .line 8
    iget-object v3, v4, Lcom/sina/weibo/sdk/api/ImageObject;->imageData:[B

    if-eqz v3, :cond_2

    array-length v4, v3

    if-lez v4, :cond_2

    .line 9
    new-instance v4, Ljava/lang/String;

    invoke-static {v3}, Lcn/sharesdk/sina/weibo/sdk/a;->a([B)[B

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    goto :goto_1

    :cond_2
    move-object v4, v2

    .line 10
    :goto_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    return-object v2

    .line 11
    :cond_3
    new-instance v5, Lcom/mob/tools/network/NetworkHelper;

    invoke-direct {v5}, Lcom/mob/tools/network/NetworkHelper;-><init>()V

    .line 12
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 13
    new-instance v3, Lcom/mob/tools/network/KVPair;

    const-string v6, "img"

    invoke-direct {v3, v6, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v8, 0x3e8

    div-long/2addr v3, v8

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 15
    new-instance v4, Lcom/mob/tools/network/KVPair;

    const-string v6, "oauth_timestamp"

    invoke-direct {v4, v6, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object v3, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->token:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 17
    iget-object v3, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->appKey:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v6, "http://service.weibo.com/share/mobilesdk_uppic.php"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 18
    invoke-virtual/range {v5 .. v10}, Lcom/mob/tools/network/NetworkHelper;->httpPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object v3

    .line 19
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    return-object v2

    .line 20
    :cond_4
    new-instance v4, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v4}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v4, v3}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 21
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_2

    .line 22
    :cond_5
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 23
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    .line 24
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_6

    return-object v0

    :cond_6
    :goto_2
    return-object v2

    :catchall_0
    move-exception v0

    .line 25
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;)I

    return-object v2
.end method

.method private getReqUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lcom/mob/tools/network/KVPair;

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->params:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v2}, Lcn/sharesdk/framework/InnerShareParams;->getText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "title"

    invoke-direct {v1, v3, v2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    new-instance v1, Lcom/mob/tools/network/KVPair;

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->appKey:Ljava/lang/String;

    const-string v3, "source"

    invoke-direct {v1, v3, v2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v1, Lcom/mob/tools/network/KVPair;

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->token:Ljava/lang/String;

    const-string v3, "access_token"

    invoke-direct {v1, v3, v2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance v1, Lcom/mob/tools/network/KVPair;

    iget-object v2, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "packagename"

    invoke-direct {v1, v3, v2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "picinfo"

    invoke-direct {v1, v2, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance p1, Lcom/mob/tools/network/KVPair;

    const-string v1, "luicode"

    const-string v2, "10000360"

    invoke-direct {p1, v1, v2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance p1, Lcom/mob/tools/network/KVPair;

    invoke-virtual {p0}, Lcom/mob/tools/FakeActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/sharesdk/sina/weibo/sdk/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_hash"

    invoke-direct {p1, v2, v1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance p1, Lcom/mob/tools/network/KVPair;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OP_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->appKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "lfid"

    invoke-direct {p1, v2, v1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance p1, Lcom/mob/tools/network/KVPair;

    const-string v1, "version"

    const-string v2, "0041005000"

    invoke-direct {p1, v1, v2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://service.weibo.com/share/mobilesdk.php?"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/mob/tools/utils/ResHelper;->encodeUrl(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private initView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->layout:Lcn/sharesdk/sina/weibo/sdk/a/a;

    invoke-virtual {v0}, Lcn/sharesdk/sina/weibo/sdk/a/a;->b()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->tvBack:Landroid/widget/TextView;

    .line 2
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->layout:Lcn/sharesdk/sina/weibo/sdk/a/a;

    invoke-virtual {v0}, Lcn/sharesdk/sina/weibo/sdk/a/a;->c()Landroid/webkit/WebView;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->webView:Landroid/webkit/WebView;

    .line 3
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->layout:Lcn/sharesdk/sina/weibo/sdk/a/a;

    invoke-virtual {v0}, Lcn/sharesdk/sina/weibo/sdk/a/a;->d()Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->llRetry:Landroid/widget/LinearLayout;

    .line 4
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->layout:Lcn/sharesdk/sina/weibo/sdk/a/a;

    invoke-virtual {v0}, Lcn/sharesdk/sina/weibo/sdk/a/a;->a()Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->btnRetry:Landroid/widget/Button;

    .line 5
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->tvBack:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->btnRetry:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->isRemoveCookieOnAuthorize()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 9
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 11
    :cond_0
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcn/sharesdk/sina/weibo/utils/WebSharePage$1;

    invoke-direct {v1, p0}, Lcn/sharesdk/sina/weibo/utils/WebSharePage$1;-><init>(Lcn/sharesdk/sina/weibo/utils/WebSharePage;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 12
    invoke-direct {p0}, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->loadWebView()Ljava/lang/String;

    return-void
.end method

.method private loadWebView()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Lcn/sharesdk/sina/weibo/utils/WebSharePage$2;

    invoke-direct {v0, p0}, Lcn/sharesdk/sina/weibo/utils/WebSharePage$2;-><init>(Lcn/sharesdk/sina/weibo/utils/WebSharePage;)V

    invoke-static {v0}, Lcom/mob/tools/RxMob;->create(Lcom/mob/tools/RxMob$OnSubscribe;)Lcom/mob/tools/RxMob$Subscribable;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/mob/tools/RxMob$Thread;->NEW_THREAD:Lcom/mob/tools/RxMob$Thread;

    invoke-virtual {v0, v1}, Lcom/mob/tools/RxMob$Subscribable;->subscribeOn(Lcom/mob/tools/RxMob$Thread;)Lcom/mob/tools/RxMob$Subscribable;

    .line 3
    sget-object v1, Lcom/mob/tools/RxMob$Thread;->UI_THREAD:Lcom/mob/tools/RxMob$Thread;

    invoke-virtual {v0, v1}, Lcom/mob/tools/RxMob$Subscribable;->observeOn(Lcom/mob/tools/RxMob$Thread;)Lcom/mob/tools/RxMob$Subscribable;

    .line 4
    new-instance v1, Lcn/sharesdk/sina/weibo/utils/WebSharePage$3;

    invoke-direct {v1, p0}, Lcn/sharesdk/sina/weibo/utils/WebSharePage$3;-><init>(Lcn/sharesdk/sina/weibo/utils/WebSharePage;)V

    invoke-virtual {v0, v1}, Lcom/mob/tools/RxMob$Subscribable;->subscribe(Lcom/mob/tools/RxMob$Subscriber;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private reCode(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/mob/tools/utils/ResHelper;->urlToBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "code"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "msg"

    .line 3
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->actionListener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v2, :cond_2

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->actionListener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-interface {p1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onCancel()V

    goto :goto_0

    :cond_0
    const-string v2, "0"

    .line 7
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->actionListener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-interface {v0, p1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onComplete(Landroid/os/Bundle;)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->actionListener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    .line 10
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/mob/tools/FakeActivity;->finish()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->tvBack:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    .line 2
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->actionListener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onCancel()V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/mob/tools/FakeActivity;->finish()V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->btnRetry:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 6
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->llRetry:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->webView:Landroid/webkit/WebView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 8
    invoke-direct {p0}, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->loadWebView()Ljava/lang/String;

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreate()V
    .locals 3

    .line 1
    new-instance v0, Lcn/sharesdk/sina/weibo/sdk/a/a;

    invoke-virtual {p0}, Lcom/mob/tools/FakeActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/sharesdk/sina/weibo/sdk/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->layout:Lcn/sharesdk/sina/weibo/sdk/a/a;

    .line 2
    invoke-virtual {p0}, Lcom/mob/tools/FakeActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ssdk_sina_web_title"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->layout:Lcn/sharesdk/sina/weibo/sdk/a/a;

    invoke-virtual {v2, v0}, Lcn/sharesdk/sina/weibo/sdk/a/a;->a(I)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 4
    invoke-direct {p0}, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->initView()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setFocusable(Z)V

    :cond_0
    return-void
.end method

.method public onFinish()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->actionListener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->actionListener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    .line 3
    :cond_0
    invoke-super {p0}, Lcom/mob/tools/FakeActivity;->onFinish()Z

    move-result v0

    return v0
.end method

.method public onKeyEvent(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_1

    .line 2
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->actionListener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onCancel()V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/mob/tools/FakeActivity;->finish()V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public setAppKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->appKey:Ljava/lang/String;

    .line 2
    iput-object p2, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->token:Ljava/lang/String;

    return-void
.end method

.method public setListener(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->actionListener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    return-void
.end method

.method public setShareParams(Lcn/sharesdk/framework/Platform$ShareParams;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->params:Lcn/sharesdk/framework/Platform$ShareParams;

    return-void
.end method
