.class Lcn/sharesdk/tencent/qzone/utils/QZoneHelper$2;
.super Ljava/lang/Object;
.source "QZoneHelper.java"

# interfaces
.implements Lcom/mob/tools/RxMob$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/tencent/qzone/utils/b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/sharesdk/tencent/qzone/utils/b;


# direct methods
.method constructor <init>(Lcn/sharesdk/tencent/qzone/utils/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/sharesdk/tencent/qzone/utils/QZoneHelper$2;->this$0:Lcn/sharesdk/tencent/qzone/utils/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/mob/tools/RxMob$Subscriber;)V
    .locals 8

    const-string v1, "https://graph.qq.com/oauth2.0/me"

    .line 1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v0, Lcom/mob/tools/network/KVPair;

    iget-object v3, p0, Lcn/sharesdk/tencent/qzone/utils/QZoneHelper$2;->this$0:Lcn/sharesdk/tencent/qzone/utils/b;

    invoke-static {v3}, Lcn/sharesdk/tencent/qzone/utils/b;->a(Lcn/sharesdk/tencent/qzone/utils/b;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "access_token"

    invoke-direct {v0, v4, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v6, "unionid"

    const-string v3, "1"

    invoke-direct {v0, v6, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v5, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;

    invoke-direct {v5}, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;-><init>()V

    const/16 v0, 0x2710

    .line 5
    iput v0, v5, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->readTimout:I

    .line 6
    iput v0, v5, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->connectionTimeout:I

    .line 7
    invoke-static {}, Lcn/sharesdk/framework/network/SSDKNetworkHelper;->getInstance()Lcn/sharesdk/framework/network/SSDKNetworkHelper;

    move-result-object v0

    .line 8
    :try_start_0
    iget-object v7, p0, Lcn/sharesdk/tencent/qzone/utils/QZoneHelper$2;->this$0:Lcn/sharesdk/tencent/qzone/utils/b;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/mob/tools/network/NetworkHelper;->httpPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcn/sharesdk/tencent/qzone/utils/b;->a(Lcn/sharesdk/tencent/qzone/utils/b;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Lcom/mob/tools/RxMob$Subscriber;->onCompleted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 10
    :catchall_0
    iget-object p1, p0, Lcn/sharesdk/tencent/qzone/utils/QZoneHelper$2;->this$0:Lcn/sharesdk/tencent/qzone/utils/b;

    invoke-static {p1}, Lcn/sharesdk/tencent/qzone/utils/b;->b(Lcn/sharesdk/tencent/qzone/utils/b;)Lcn/sharesdk/framework/Platform;

    move-result-object p1

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v6, v0}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "qq auth, get unionId fail"

    invoke-virtual {p1, v1, v0}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    :goto_0
    return-void
.end method
