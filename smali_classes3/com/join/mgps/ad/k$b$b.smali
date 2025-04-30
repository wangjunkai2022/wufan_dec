.class Lcom/join/mgps/ad/k$b$b;
.super Ljava/lang/Object;
.source "TTAdVideo.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/ad/k$b;->onRewardVideoAdLoad(Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/ad/k$b;


# direct methods
.method constructor <init>(Lcom/join/mgps/ad/k$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/ad/k$b$b;->a:Lcom/join/mgps/ad/k$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadActive(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/ad/k$b$b;->a:Lcom/join/mgps/ad/k$b;

    iget-object p1, p1, Lcom/join/mgps/ad/k$b;->a:Lcom/join/mgps/ad/k;

    invoke-static {p1}, Lcom/join/mgps/ad/k;->k(Lcom/join/mgps/ad/k;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/ad/k$b$b;->a:Lcom/join/mgps/ad/k$b;

    iget-object p1, p1, Lcom/join/mgps/ad/k$b;->a:Lcom/join/mgps/ad/k;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/join/mgps/ad/k;->l(Lcom/join/mgps/ad/k;Z)Z

    new-array p1, p2, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "\u4e0b\u8f7d\u4e2d\uff0c\u70b9\u51fb\u4e0b\u8f7d\u533a\u57df\u6682\u505c"

    aput-object p3, p1, p2

    const-string p2, "RewardVideo"

    .line 3
    invoke-static {p2, p1}, Lcom/join/mgps/Util/u0;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onDownloadFailed(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "\u4e0b\u8f7d\u5931\u8d25\uff0c\u70b9\u51fb\u4e0b\u8f7d\u533a\u57df\u91cd\u65b0\u4e0b\u8f7d"

    aput-object p3, p1, p2

    const-string p2, "RewardVideo"

    .line 1
    invoke-static {p2, p1}, Lcom/join/mgps/Util/u0;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onDownloadFinished(JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "\u4e0b\u8f7d\u5b8c\u6210\uff0c\u70b9\u51fb\u4e0b\u8f7d\u533a\u57df\u91cd\u65b0\u4e0b\u8f7d"

    aput-object p3, p1, p2

    const-string p2, "RewardVideo"

    .line 1
    invoke-static {p2, p1}, Lcom/join/mgps/Util/u0;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onDownloadPaused(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "\u4e0b\u8f7d\u6682\u505c\uff0c\u70b9\u51fb\u4e0b\u8f7d\u533a\u57df\u7ee7\u7eed"

    aput-object p3, p1, p2

    const-string p2, "RewardVideo"

    .line 1
    invoke-static {p2, p1}, Lcom/join/mgps/Util/u0;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onIdle()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/k$b$b;->a:Lcom/join/mgps/ad/k$b;

    iget-object v0, v0, Lcom/join/mgps/ad/k$b;->a:Lcom/join/mgps/ad/k;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/join/mgps/ad/k;->l(Lcom/join/mgps/ad/k;Z)Z

    return-void
.end method

.method public onInstalled(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "\u5b89\u88c5\u5b8c\u6210\uff0c\u70b9\u51fb\u4e0b\u8f7d\u533a\u57df\u6253\u5f00"

    aput-object v0, p1, p2

    const-string p2, "RewardVideo"

    .line 1
    invoke-static {p2, p1}, Lcom/join/mgps/Util/u0;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
