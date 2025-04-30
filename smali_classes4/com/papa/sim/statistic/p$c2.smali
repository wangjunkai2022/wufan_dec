.class Lcom/papa/sim/statistic/p$c2;
.super Ljava/lang/Object;
.source "StatFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/sim/statistic/p;->A0(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;JIILjava/lang/String;ILjava/lang/String;)V
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

.field final synthetic e:J

.field final synthetic f:I

.field final synthetic g:J

.field final synthetic h:Ljava/lang/String;

.field final synthetic i:I

.field final synthetic j:I

.field final synthetic k:I

.field final synthetic l:Lcom/papa/sim/statistic/p;


# direct methods
.method constructor <init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIJLjava/lang/String;III)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/p$c2;->l:Lcom/papa/sim/statistic/p;

    iput-object p2, p0, Lcom/papa/sim/statistic/p$c2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/papa/sim/statistic/p$c2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/papa/sim/statistic/p$c2;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/papa/sim/statistic/p$c2;->d:Ljava/lang/String;

    iput-wide p6, p0, Lcom/papa/sim/statistic/p$c2;->e:J

    iput p8, p0, Lcom/papa/sim/statistic/p$c2;->f:I

    iput-wide p9, p0, Lcom/papa/sim/statistic/p$c2;->g:J

    iput-object p11, p0, Lcom/papa/sim/statistic/p$c2;->h:Ljava/lang/String;

    iput p12, p0, Lcom/papa/sim/statistic/p$c2;->i:I

    iput p13, p0, Lcom/papa/sim/statistic/p$c2;->j:I

    iput p14, p0, Lcom/papa/sim/statistic/p$c2;->k:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    const-string v0, "nodeId"

    const-string v1, "reMarks"

    const-string v2, "recPosition"

    const-string v3, "_from_type"

    const-string v4, "location"

    const-string v5, "position"

    const-string v6, "from"

    .line 1
    new-instance v7, Lcom/papa/sim/statistic/StatRequest;

    invoke-direct {v7}, Lcom/papa/sim/statistic/StatRequest;-><init>()V

    .line 2
    iget-object v8, p0, Lcom/papa/sim/statistic/p$c2;->a:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 3
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v8

    iget-object v9, p0, Lcom/papa/sim/statistic/p$c2;->a:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/papa/sim/statistic/Ext;->setPage(Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object v8, p0, Lcom/papa/sim/statistic/p$c2;->b:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const-string v9, "103"

    const/4 v10, 0x1

    const-string v11, ""

    if-nez v8, :cond_8

    .line 5
    sget-object v8, Lcom/papa/sim/statistic/Event;->gameDownload:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/papa/sim/statistic/StatRequest;->setEvent(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v7, v12, v13}, Lcom/papa/sim/statistic/StatRequest;->setTime(J)V

    .line 7
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getData()Lcom/papa/sim/statistic/Data;

    move-result-object v8

    iget-object v12, p0, Lcom/papa/sim/statistic/p$c2;->c:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-virtual {v8, v12, v13}, Lcom/papa/sim/statistic/Data;->setGameId(J)Lcom/papa/sim/statistic/Data;

    .line 8
    iget-object v8, p0, Lcom/papa/sim/statistic/p$c2;->d:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/papa/sim/statistic/StatRequest;->setUid(I)V

    .line 9
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v8

    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getUid()I

    move-result v12

    invoke-virtual {v8, v12}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    .line 10
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v8

    iget-wide v12, p0, Lcom/papa/sim/statistic/p$c2;->e:J

    invoke-virtual {v8, v12, v13}, Lcom/papa/sim/statistic/Ext;->setDuration(J)V

    .line 11
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v8

    iget v12, p0, Lcom/papa/sim/statistic/p$c2;->f:I

    invoke-virtual {v8, v12}, Lcom/papa/sim/statistic/Ext;->setInterrupt(I)V

    .line 12
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v8

    iget-wide v12, p0, Lcom/papa/sim/statistic/p$c2;->g:J

    invoke-virtual {v8, v12, v13}, Lcom/papa/sim/statistic/Ext;->setZipCost(J)V

    .line 13
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v8

    iget-object v12, p0, Lcom/papa/sim/statistic/p$c2;->h:Ljava/lang/String;

    invoke-virtual {v8, v12}, Lcom/papa/sim/statistic/Ext;->setKeyWord(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v8

    iget v12, p0, Lcom/papa/sim/statistic/p$c2;->i:I

    invoke-virtual {v8, v12}, Lcom/papa/sim/statistic/Ext;->setGameFlag(I)Lcom/papa/sim/statistic/Ext;

    .line 15
    iget v8, p0, Lcom/papa/sim/statistic/p$c2;->j:I

    if-ne v8, v10, :cond_1

    .line 16
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getData()Lcom/papa/sim/statistic/Data;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Where;->search:Lcom/papa/sim/statistic/Where;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Data;->setWhere(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 17
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v0

    iget-object v1, p0, Lcom/papa/sim/statistic/p$c2;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setReMarks(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 18
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    goto/16 :goto_2

    .line 19
    :cond_1
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getData()Lcom/papa/sim/statistic/Data;

    move-result-object v8

    iget-object v9, p0, Lcom/papa/sim/statistic/p$c2;->h:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/papa/sim/statistic/Data;->setWhere(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 20
    :try_start_0
    iget-object v8, p0, Lcom/papa/sim/statistic/p$c2;->b:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 21
    new-instance v8, Lorg/json/JSONObject;

    iget-object v9, p0, Lcom/papa/sim/statistic/p$c2;->b:Ljava/lang/String;

    invoke-direct {v8, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v8, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v8, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_2
    move-object v6, v11

    .line 23
    :goto_0
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 24
    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_3
    move-object v5, v11

    .line 25
    :goto_1
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 26
    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 27
    :cond_4
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v4

    invoke-virtual {v4, v11}, Lcom/papa/sim/statistic/Ext;->setReMarks(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 28
    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 29
    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 30
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 31
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 32
    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 33
    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 34
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/papa/sim/statistic/Ext;->setRecPosition(Ljava/lang/String;)V

    .line 35
    :cond_5
    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 36
    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 37
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/papa/sim/statistic/Ext;->setReMarks(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 38
    :cond_6
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 39
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/papa/sim/statistic/Ext;->setNodeId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 41
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 42
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/papa/sim/statistic/p$c2;->l:Lcom/papa/sim/statistic/p;

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->a(Lcom/papa/sim/statistic/p;)Lcom/papa/sim/statistic/o;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->gameDownload:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v0, v1, v7}, Lcom/papa/sim/statistic/o;->A(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/StatRequest;)V

    goto/16 :goto_4

    .line 43
    :cond_8
    iget v0, p0, Lcom/papa/sim/statistic/p$c2;->j:I

    if-ne v0, v10, :cond_9

    .line 44
    sget-object v0, Lcom/papa/sim/statistic/Event;->gameDownload:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/papa/sim/statistic/StatRequest;->setEvent(Ljava/lang/String;)V

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v7, v1, v2}, Lcom/papa/sim/statistic/StatRequest;->setTime(J)V

    .line 46
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getData()Lcom/papa/sim/statistic/Data;

    move-result-object v1

    iget-object v2, p0, Lcom/papa/sim/statistic/p$c2;->c:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/papa/sim/statistic/Data;->setGameId(J)Lcom/papa/sim/statistic/Data;

    .line 47
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getData()Lcom/papa/sim/statistic/Data;

    move-result-object v1

    sget-object v2, Lcom/papa/sim/statistic/Where;->search:Lcom/papa/sim/statistic/Where;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Data;->setWhere(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 48
    iget-object v1, p0, Lcom/papa/sim/statistic/p$c2;->d:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v7, v1}, Lcom/papa/sim/statistic/StatRequest;->setUid(I)V

    .line 49
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v1

    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getUid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    .line 50
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v1

    iget-object v2, p0, Lcom/papa/sim/statistic/p$c2;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setKeyWord(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v1

    iget-wide v2, p0, Lcom/papa/sim/statistic/p$c2;->e:J

    invoke-virtual {v1, v2, v3}, Lcom/papa/sim/statistic/Ext;->setDuration(J)V

    .line 52
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v1

    iget v2, p0, Lcom/papa/sim/statistic/p$c2;->f:I

    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setInterrupt(I)V

    .line 53
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v1

    iget-wide v2, p0, Lcom/papa/sim/statistic/p$c2;->g:J

    invoke-virtual {v1, v2, v3}, Lcom/papa/sim/statistic/Ext;->setZipCost(J)V

    .line 54
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 55
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/papa/sim/statistic/p$c2;->k:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 56
    invoke-virtual {v7}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v1

    iget v2, p0, Lcom/papa/sim/statistic/p$c2;->i:I

    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setGameFlag(I)Lcom/papa/sim/statistic/Ext;

    .line 57
    iget-object v1, p0, Lcom/papa/sim/statistic/p$c2;->l:Lcom/papa/sim/statistic/p;

    invoke-static {v1}, Lcom/papa/sim/statistic/p;->a(Lcom/papa/sim/statistic/p;)Lcom/papa/sim/statistic/o;

    move-result-object v1

    invoke-virtual {v1, v0, v7}, Lcom/papa/sim/statistic/o;->A(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/StatRequest;)V

    goto :goto_4

    .line 58
    :cond_9
    new-instance v0, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 59
    new-instance v1, Lcom/papa/sim/statistic/Data;

    invoke-direct {v1}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 60
    :try_start_1
    iget-object v2, p0, Lcom/papa/sim/statistic/p$c2;->c:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/papa/sim/statistic/Data;->setGameId(J)Lcom/papa/sim/statistic/Data;

    .line 61
    iget-object v2, p0, Lcom/papa/sim/statistic/p$c2;->d:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    nop

    .line 62
    :goto_3
    iget-object v2, p0, Lcom/papa/sim/statistic/p$c2;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Data;->setWhere(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 63
    iget-wide v1, p0, Lcom/papa/sim/statistic/p$c2;->g:J

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/Ext;->setZipCost(J)V

    .line 64
    iget-wide v1, p0, Lcom/papa/sim/statistic/p$c2;->e:J

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/Ext;->setDuration(J)V

    .line 65
    iget v1, p0, Lcom/papa/sim/statistic/p$c2;->f:I

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setInterrupt(I)V

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/papa/sim/statistic/p$c2;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 67
    iget v1, p0, Lcom/papa/sim/statistic/p$c2;->j:I

    const/16 v2, 0x65

    if-ne v1, v2, :cond_a

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/papa/sim/statistic/p$c2;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 69
    :cond_a
    iget v1, p0, Lcom/papa/sim/statistic/p$c2;->i:I

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setGameFlag(I)Lcom/papa/sim/statistic/Ext;

    .line 70
    iget-object v1, p0, Lcom/papa/sim/statistic/p$c2;->l:Lcom/papa/sim/statistic/p;

    invoke-static {v1}, Lcom/papa/sim/statistic/p;->a(Lcom/papa/sim/statistic/p;)Lcom/papa/sim/statistic/o;

    move-result-object v1

    sget-object v2, Lcom/papa/sim/statistic/Event;->gameDownload:Lcom/papa/sim/statistic/Event;

    iget-object v3, p0, Lcom/papa/sim/statistic/p$c2;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/papa/sim/statistic/p$c2;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/papa/sim/statistic/o;->N(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;Lcom/papa/sim/statistic/Ext;)V

    :goto_4
    return-void
.end method
