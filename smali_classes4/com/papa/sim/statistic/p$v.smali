.class Lcom/papa/sim/statistic/p$v;
.super Ljava/lang/Object;
.source "StatFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/sim/statistic/p;->d1(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:I

.field final synthetic g:Lcom/papa/sim/statistic/p;


# direct methods
.method constructor <init>(Lcom/papa/sim/statistic/p;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/p$v;->g:Lcom/papa/sim/statistic/p;

    iput p2, p0, Lcom/papa/sim/statistic/p$v;->a:I

    iput p3, p0, Lcom/papa/sim/statistic/p$v;->b:I

    iput-object p4, p0, Lcom/papa/sim/statistic/p$v;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/papa/sim/statistic/p$v;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/papa/sim/statistic/p$v;->e:Ljava/lang/String;

    iput p7, p0, Lcom/papa/sim/statistic/p$v;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-string v0, "recPosition"

    const-string v1, "_from_type"

    .line 1
    new-instance v7, Lcom/papa/sim/statistic/StatRequest;

    invoke-direct {v7}, Lcom/papa/sim/statistic/StatRequest;-><init>()V

    .line 2
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v2

    iget v3, p0, Lcom/papa/sim/statistic/p$v;->a:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 3
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v2

    iget v3, p0, Lcom/papa/sim/statistic/p$v;->b:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 4
    iget-object v2, p0, Lcom/papa/sim/statistic/p$v;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/papa/sim/statistic/p$v;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/papa/sim/statistic/p$v;->c:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "from"

    .line 7
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "position"

    .line 8
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "location"

    .line 9
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 11
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 12
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 13
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 14
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 15
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 16
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 17
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 18
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/papa/sim/statistic/Ext;->setRecPosition(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 20
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/papa/sim/statistic/p$v;->g:Lcom/papa/sim/statistic/p;

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->a(Lcom/papa/sim/statistic/p;)Lcom/papa/sim/statistic/o;

    move-result-object v2

    sget-object v3, Lcom/papa/sim/statistic/Event;->gameStart:Lcom/papa/sim/statistic/Event;

    iget-object v4, p0, Lcom/papa/sim/statistic/p$v;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/papa/sim/statistic/p$v;->e:Ljava/lang/String;

    iget v6, p0, Lcom/papa/sim/statistic/p$v;->f:I

    invoke-virtual/range {v2 .. v7}, Lcom/papa/sim/statistic/o;->j0(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;ILcom/papa/sim/statistic/StatRequest;)V

    return-void
.end method
