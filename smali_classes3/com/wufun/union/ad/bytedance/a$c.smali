.class Lcom/wufun/union/ad/bytedance/a$c;
.super Ljava/lang/Object;
.source "ChannelTT.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wufun/union/ad/bytedance/a;->m(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/wufun/union/ad/bytedance/a;


# direct methods
.method constructor <init>(Lcom/wufun/union/ad/bytedance/a;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufun/union/ad/bytedance/a$c;->b:Lcom/wufun/union/ad/bytedance/a;

    iput-object p2, p0, Lcom/wufun/union/ad/bytedance/a$c;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClose()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/wufun/union/ad/bytedance/a$c;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 2
    iget-object v0, p0, Lcom/wufun/union/ad/bytedance/a$c;->b:Lcom/wufun/union/ad/bytedance/a;

    const/4 v1, 0x6

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/wufun/union/ad/AdChannel;->i(ILjava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onAdShow()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/wufun/union/ad/bytedance/a$c;->b:Lcom/wufun/union/ad/bytedance/a;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x3

    const-string v3, ""

    invoke-virtual {v0, v2, v1, v3}, Lcom/wufun/union/ad/AdChannel;->i(ILjava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/wufun/union/ad/bytedance/a$c;->b:Lcom/wufun/union/ad/bytedance/a;

    invoke-static {v0}, Lcom/wufun/union/ad/bytedance/a;->t(Lcom/wufun/union/ad/bytedance/a;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/wufun/union/ad/bytedance/a$c;->b:Lcom/wufun/union/ad/bytedance/a;

    invoke-static {v1}, Lcom/wufun/union/ad/bytedance/a;->u(Lcom/wufun/union/ad/bytedance/a;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/wufun/union/ad/bytedance/a$c;->b:Lcom/wufun/union/ad/bytedance/a;

    invoke-static {v4}, Lcom/wufun/union/ad/bytedance/a;->v(Lcom/wufun/union/ad/bytedance/a;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "smallExpAdSDK"

    invoke-static {v0, v1, v3, v2}, Lcom/wufun/union/ad/AdService;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAdVideoBarClick()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/wufun/union/ad/bytedance/a$c;->b:Lcom/wufun/union/ad/bytedance/a;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x5

    const-string v3, ""

    invoke-virtual {v0, v2, v1, v3}, Lcom/wufun/union/ad/AdChannel;->i(ILjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onRewardArrived(ZILandroid/os/Bundle;)V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "isRewardValid"

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "rewardType"

    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    new-instance p1, Lcom/wufun/union/ad/bytedance/b;

    invoke-direct {p1, p3}, Lcom/wufun/union/ad/bytedance/b;-><init>(Landroid/os/Bundle;)V

    .line 5
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string p3, "rewardAmount"

    .line 6
    invoke-virtual {p1}, Lcom/wufun/union/ad/bytedance/b;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, p3, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "rewardName"

    .line 7
    invoke-virtual {p1}, Lcom/wufun/union/ad/bytedance/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p3, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "rewardPropose"

    .line 8
    invoke-virtual {p1}, Lcom/wufun/union/ad/bytedance/b;->c()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p2, p3, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "errorCode"

    .line 9
    invoke-virtual {p1}, Lcom/wufun/union/ad/bytedance/b;->d()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, p3, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "errorMsg"

    .line 10
    invoke-virtual {p1}, Lcom/wufun/union/ad/bytedance/b;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "extraInfo"

    .line 11
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 12
    iget-object p1, p0, Lcom/wufun/union/ad/bytedance/a$c;->b:Lcom/wufun/union/ad/bytedance/a;

    const/16 p2, 0x8

    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, p3, v0}, Lcom/wufun/union/ad/AdChannel;->i(ILjava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onRewardVerify(ZILjava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "rewardVerify"

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "rewardAmount"

    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "rewardName"

    .line 4
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "code"

    .line 5
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "msg"

    .line 6
    invoke-virtual {v0, p1, p5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    iget-object p1, p0, Lcom/wufun/union/ad/bytedance/a$c;->b:Lcom/wufun/union/ad/bytedance/a;

    const/4 p2, 0x7

    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p2, p3, p4}, Lcom/wufun/union/ad/AdChannel;->i(ILjava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onSkippedVideo()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/wufun/union/ad/bytedance/a$c;->b:Lcom/wufun/union/ad/bytedance/a;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x4

    const-string v3, ""

    invoke-virtual {v0, v2, v1, v3}, Lcom/wufun/union/ad/AdChannel;->i(ILjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onVideoComplete()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/wufun/union/ad/bytedance/a$c;->b:Lcom/wufun/union/ad/bytedance/a;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x2

    const-string v3, ""

    invoke-virtual {v0, v2, v1, v3}, Lcom/wufun/union/ad/AdChannel;->i(ILjava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/wufun/union/ad/bytedance/a$c;->b:Lcom/wufun/union/ad/bytedance/a;

    invoke-static {v0}, Lcom/wufun/union/ad/bytedance/a;->w(Lcom/wufun/union/ad/bytedance/a;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/wufun/union/ad/bytedance/a$c;->b:Lcom/wufun/union/ad/bytedance/a;

    invoke-static {v1}, Lcom/wufun/union/ad/bytedance/a;->x(Lcom/wufun/union/ad/bytedance/a;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/wufun/union/ad/bytedance/a$c;->b:Lcom/wufun/union/ad/bytedance/a;

    invoke-static {v4}, Lcom/wufun/union/ad/bytedance/a;->o(Lcom/wufun/union/ad/bytedance/a;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "smallVideoDoneAdSDK"

    invoke-static {v0, v1, v3, v2}, Lcom/wufun/union/ad/AdService;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onVideoError()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/wufun/union/ad/bytedance/a$c;->b:Lcom/wufun/union/ad/bytedance/a;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v2, 0x2

    const-string v3, ""

    invoke-virtual {v0, v2, v1, v3}, Lcom/wufun/union/ad/AdChannel;->i(ILjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
