.class Lcom/wufun/union/ad/gdt/a$a;
.super Ljava/lang/Object;
.source "ChannelGDT.java"

# interfaces
.implements Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wufun/union/ad/gdt/a;->h(Ljava/lang/String;FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/wufun/union/ad/gdt/a;


# direct methods
.method constructor <init>(Lcom/wufun/union/ad/gdt/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufun/union/ad/gdt/a$a;->a:Lcom/wufun/union/ad/gdt/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onADClick()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/wufun/union/ad/gdt/a$a;->a:Lcom/wufun/union/ad/gdt/a;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x5

    const-string v3, ""

    invoke-virtual {v0, v2, v1, v3}, Lcom/wufun/union/ad/AdChannel;->i(ILjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onADClose()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/wufun/union/ad/gdt/a$a;->a:Lcom/wufun/union/ad/gdt/a;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x6

    const-string v3, ""

    invoke-virtual {v0, v2, v1, v3}, Lcom/wufun/union/ad/AdChannel;->i(ILjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onADExpose()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/wufun/union/ad/gdt/a$a;->a:Lcom/wufun/union/ad/gdt/a;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x3

    const-string v3, ""

    invoke-virtual {v0, v2, v1, v3}, Lcom/wufun/union/ad/AdChannel;->i(ILjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onADLoad()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/wufun/union/ad/gdt/a$a;->a:Lcom/wufun/union/ad/gdt/a;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x1

    const-string v3, ""

    invoke-virtual {v0, v2, v1, v3}, Lcom/wufun/union/ad/AdChannel;->i(ILjava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/wufun/union/ad/gdt/a$a;->a:Lcom/wufun/union/ad/gdt/a;

    invoke-static {v0, v2}, Lcom/wufun/union/ad/gdt/a;->n(Lcom/wufun/union/ad/gdt/a;Z)Z

    return-void
.end method

.method public onADShow()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/wufun/union/ad/gdt/a$a;->a:Lcom/wufun/union/ad/gdt/a;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x2

    const-string v3, ""

    invoke-virtual {v0, v2, v1, v3}, Lcom/wufun/union/ad/AdChannel;->i(ILjava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/wufun/union/ad/gdt/a$a;->a:Lcom/wufun/union/ad/gdt/a;

    invoke-static {v0}, Lcom/wufun/union/ad/gdt/a;->p(Lcom/wufun/union/ad/gdt/a;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/wufun/union/ad/gdt/a$a;->a:Lcom/wufun/union/ad/gdt/a;

    invoke-static {v1}, Lcom/wufun/union/ad/gdt/a;->q(Lcom/wufun/union/ad/gdt/a;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/wufun/union/ad/gdt/a$a;->a:Lcom/wufun/union/ad/gdt/a;

    invoke-static {v4}, Lcom/wufun/union/ad/gdt/a;->r(Lcom/wufun/union/ad/gdt/a;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "smallExpAdSDK"

    invoke-static {v0, v1, v3, v2}, Lcom/wufun/union/ad/AdService;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onError(Lcom/qq/e/comm/util/AdError;)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-eqz p1, :cond_0

    const-string v1, "code"

    .line 2
    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "msg"

    .line 3
    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/wufun/union/ad/gdt/a$a;->a:Lcom/wufun/union/ad/gdt/a;

    const/16 v1, 0x8

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v2, v0}, Lcom/wufun/union/ad/AdChannel;->i(ILjava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onReward(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "transId"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/wufun/union/ad/gdt/a$a;->a:Lcom/wufun/union/ad/gdt/a;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1, p1}, Lcom/wufun/union/ad/AdChannel;->i(ILjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onVideoCached()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufun/union/ad/gdt/a$a;->a:Lcom/wufun/union/ad/gdt/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/wufun/union/ad/gdt/a;->o(Lcom/wufun/union/ad/gdt/a;Z)Z

    return-void
.end method

.method public onVideoComplete()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/wufun/union/ad/gdt/a$a;->a:Lcom/wufun/union/ad/gdt/a;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x4

    const-string v3, ""

    invoke-virtual {v0, v2, v1, v3}, Lcom/wufun/union/ad/AdChannel;->i(ILjava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/wufun/union/ad/gdt/a$a;->a:Lcom/wufun/union/ad/gdt/a;

    invoke-static {v0}, Lcom/wufun/union/ad/gdt/a;->s(Lcom/wufun/union/ad/gdt/a;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/wufun/union/ad/gdt/a$a;->a:Lcom/wufun/union/ad/gdt/a;

    invoke-static {v1}, Lcom/wufun/union/ad/gdt/a;->t(Lcom/wufun/union/ad/gdt/a;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/wufun/union/ad/gdt/a$a;->a:Lcom/wufun/union/ad/gdt/a;

    invoke-static {v4}, Lcom/wufun/union/ad/gdt/a;->u(Lcom/wufun/union/ad/gdt/a;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "smallVideoDoneAdSDK"

    invoke-static {v0, v1, v3, v2}, Lcom/wufun/union/ad/AdService;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
