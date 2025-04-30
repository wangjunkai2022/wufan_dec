.class Lcom/papa/sim/statistic/p$d2;
.super Ljava/lang/Object;
.source "StatFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/sim/statistic/p;->C0(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;JIILjava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:J

.field final synthetic g:I

.field final synthetic h:J

.field final synthetic i:Ljava/lang/String;

.field final synthetic j:I

.field final synthetic k:I

.field final synthetic l:I

.field final synthetic m:Lcom/papa/sim/statistic/p;


# direct methods
.method constructor <init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIJLjava/lang/String;III)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/p$d2;->m:Lcom/papa/sim/statistic/p;

    iput-object p2, p0, Lcom/papa/sim/statistic/p$d2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/papa/sim/statistic/p$d2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/papa/sim/statistic/p$d2;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/papa/sim/statistic/p$d2;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/papa/sim/statistic/p$d2;->e:Ljava/lang/String;

    iput-wide p7, p0, Lcom/papa/sim/statistic/p$d2;->f:J

    iput p9, p0, Lcom/papa/sim/statistic/p$d2;->g:I

    iput-wide p10, p0, Lcom/papa/sim/statistic/p$d2;->h:J

    iput-object p12, p0, Lcom/papa/sim/statistic/p$d2;->i:Ljava/lang/String;

    iput p13, p0, Lcom/papa/sim/statistic/p$d2;->j:I

    iput p14, p0, Lcom/papa/sim/statistic/p$d2;->k:I

    iput p15, p0, Lcom/papa/sim/statistic/p$d2;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    const-string v0, "nodeId"

    const-string v1, "reMarks"

    const-string v2, "recPosition"

    const-string v3, "_from_type"

    .line 1
    new-instance v4, Lcom/papa/sim/statistic/StatRequest;

    invoke-direct {v4}, Lcom/papa/sim/statistic/StatRequest;-><init>()V

    .line 2
    iget-object v5, p0, Lcom/papa/sim/statistic/p$d2;->a:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3
    invoke-virtual {v4}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v5

    iget-object v6, p0, Lcom/papa/sim/statistic/p$d2;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/papa/sim/statistic/Ext;->setPage(Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object v5, p0, Lcom/papa/sim/statistic/p$d2;->b:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 5
    sget-object v5, Lcom/papa/sim/statistic/Event;->gameDownload:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/papa/sim/statistic/StatRequest;->setEvent(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/papa/sim/statistic/StatRequest;->setTime(J)V

    .line 7
    invoke-virtual {v4}, Lcom/papa/sim/statistic/StatRequest;->getData()Lcom/papa/sim/statistic/Data;

    move-result-object v5

    iget-object v6, p0, Lcom/papa/sim/statistic/p$d2;->c:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/papa/sim/statistic/Data;->setGameId(J)Lcom/papa/sim/statistic/Data;

    .line 8
    invoke-virtual {v4}, Lcom/papa/sim/statistic/StatRequest;->getData()Lcom/papa/sim/statistic/Data;

    move-result-object v5

    iget-object v6, p0, Lcom/papa/sim/statistic/p$d2;->d:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/papa/sim/statistic/Data;->setWhere(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 9
    iget-object v5, p0, Lcom/papa/sim/statistic/p$d2;->e:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/papa/sim/statistic/StatRequest;->setUid(I)V

    .line 10
    invoke-virtual {v4}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v5

    invoke-virtual {v4}, Lcom/papa/sim/statistic/StatRequest;->getUid()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    .line 11
    invoke-virtual {v4}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v5

    iget-object v6, p0, Lcom/papa/sim/statistic/p$d2;->d:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/papa/sim/statistic/Ext;->setKeyWord(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v4}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v5

    iget-wide v6, p0, Lcom/papa/sim/statistic/p$d2;->f:J

    invoke-virtual {v5, v6, v7}, Lcom/papa/sim/statistic/Ext;->setDuration(J)V

    .line 13
    invoke-virtual {v4}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v5

    iget v6, p0, Lcom/papa/sim/statistic/p$d2;->g:I

    invoke-virtual {v5, v6}, Lcom/papa/sim/statistic/Ext;->setInterrupt(I)V

    .line 14
    invoke-virtual {v4}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v5

    iget-wide v6, p0, Lcom/papa/sim/statistic/p$d2;->h:J

    invoke-virtual {v5, v6, v7}, Lcom/papa/sim/statistic/Ext;->setZipCost(J)V

    .line 15
    invoke-virtual {v4}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v5

    iget-object v6, p0, Lcom/papa/sim/statistic/p$d2;->i:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/papa/sim/statistic/Ext;->setArticleId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 16
    invoke-virtual {v4}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v5

    iget v6, p0, Lcom/papa/sim/statistic/p$d2;->j:I

    invoke-virtual {v5, v6}, Lcom/papa/sim/statistic/Ext;->setGameFlag(I)Lcom/papa/sim/statistic/Ext;

    .line 17
    :try_start_0
    iget-object v5, p0, Lcom/papa/sim/statistic/p$d2;->b:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 18
    new-instance v5, Lorg/json/JSONObject;

    iget-object v6, p0, Lcom/papa/sim/statistic/p$d2;->b:Ljava/lang/String;

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v6, "from"

    .line 19
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "position"

    .line 20
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "location"

    .line 21
    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    invoke-virtual {v4}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 23
    invoke-virtual {v4}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 24
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 25
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 26
    invoke-virtual {v4}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 27
    invoke-virtual {v4}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 28
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 29
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 30
    invoke-virtual {v4}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/papa/sim/statistic/Ext;->setRecPosition(Ljava/lang/String;)V

    .line 31
    :cond_1
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 32
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 33
    invoke-virtual {v4}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/papa/sim/statistic/Ext;->setReMarks(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 34
    :cond_2
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 35
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-virtual {v4}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/papa/sim/statistic/Ext;->setNodeId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 37
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 38
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/papa/sim/statistic/p$d2;->m:Lcom/papa/sim/statistic/p;

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->a(Lcom/papa/sim/statistic/p;)Lcom/papa/sim/statistic/o;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->gameDownload:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v0, v1, v4}, Lcom/papa/sim/statistic/o;->A(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/StatRequest;)V

    goto :goto_1

    .line 39
    :cond_4
    iget-object v0, p0, Lcom/papa/sim/statistic/p$d2;->m:Lcom/papa/sim/statistic/p;

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->a(Lcom/papa/sim/statistic/p;)Lcom/papa/sim/statistic/o;

    move-result-object v1

    sget-object v2, Lcom/papa/sim/statistic/Event;->gameDownload:Lcom/papa/sim/statistic/Event;

    iget-object v3, p0, Lcom/papa/sim/statistic/p$d2;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/papa/sim/statistic/p$d2;->d:Ljava/lang/String;

    iget-wide v5, p0, Lcom/papa/sim/statistic/p$d2;->f:J

    iget v7, p0, Lcom/papa/sim/statistic/p$d2;->g:I

    iget-object v8, p0, Lcom/papa/sim/statistic/p$d2;->e:Ljava/lang/String;

    iget-object v9, p0, Lcom/papa/sim/statistic/p$d2;->i:Ljava/lang/String;

    iget-wide v10, p0, Lcom/papa/sim/statistic/p$d2;->h:J

    iget v12, p0, Lcom/papa/sim/statistic/p$d2;->k:I

    iget v13, p0, Lcom/papa/sim/statistic/p$d2;->l:I

    iget v14, p0, Lcom/papa/sim/statistic/p$d2;->j:I

    invoke-virtual/range {v1 .. v14}, Lcom/papa/sim/statistic/o;->M(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;JIII)V

    :goto_1
    return-void
.end method
