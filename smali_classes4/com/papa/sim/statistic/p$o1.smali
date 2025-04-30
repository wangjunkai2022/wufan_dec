.class Lcom/papa/sim/statistic/p$o1;
.super Ljava/lang/Object;
.source "StatFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/sim/statistic/p;->l2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Lcom/papa/sim/statistic/p;


# direct methods
.method constructor <init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/p$o1;->h:Lcom/papa/sim/statistic/p;

    iput-object p2, p0, Lcom/papa/sim/statistic/p$o1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/papa/sim/statistic/p$o1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/papa/sim/statistic/p$o1;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/papa/sim/statistic/p$o1;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/papa/sim/statistic/p$o1;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/papa/sim/statistic/p$o1;->f:Ljava/lang/String;

    iput-object p8, p0, Lcom/papa/sim/statistic/p$o1;->g:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/StatRequest;

    invoke-direct {v0}, Lcom/papa/sim/statistic/StatRequest;-><init>()V

    .line 2
    new-instance v1, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 3
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/StatRequest;->setExt(Lcom/papa/sim/statistic/Ext;)V

    .line 4
    sget-object v2, Lcom/papa/sim/statistic/Event;->visitGamePage:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/papa/sim/statistic/StatRequest;->setEvent(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/papa/sim/statistic/StatRequest;->setTime(J)V

    .line 6
    iget-object v2, p0, Lcom/papa/sim/statistic/p$o1;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7
    :try_start_0
    iget-object v2, p0, Lcom/papa/sim/statistic/p$o1;->a:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/papa/sim/statistic/StatRequest;->setUid(I)V

    .line 8
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v2

    iget-object v3, p0, Lcom/papa/sim/statistic/p$o1;->a:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 9
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 10
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/papa/sim/statistic/p$o1;->b:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "20"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 11
    sget-object v2, Lcom/papa/sim/statistic/ExtFrom;->home:Lcom/papa/sim/statistic/ExtFrom;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setPage(Ljava/lang/String;)V

    .line 12
    :cond_1
    iget-object v2, p0, Lcom/papa/sim/statistic/p$o1;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 13
    iget-object v2, p0, Lcom/papa/sim/statistic/p$o1;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 14
    iget-object v2, p0, Lcom/papa/sim/statistic/p$o1;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 15
    iget-object v2, p0, Lcom/papa/sim/statistic/p$o1;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setReMarks(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 16
    iget-object v2, p0, Lcom/papa/sim/statistic/p$o1;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setRecPosition(Ljava/lang/String;)V

    .line 17
    iget-object v2, p0, Lcom/papa/sim/statistic/p$o1;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setNodeId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 18
    iget-object v2, p0, Lcom/papa/sim/statistic/p$o1;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setReMarks1(Ljava/lang/String;)V

    .line 19
    new-instance v1, Lcom/papa/sim/statistic/Data;

    invoke-direct {v1}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 20
    iget-object v2, p0, Lcom/papa/sim/statistic/p$o1;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Data;->setLocation(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/StatRequest;->setData(Lcom/papa/sim/statistic/Data;)V

    .line 22
    :try_start_1
    iget-object v1, p0, Lcom/papa/sim/statistic/p$o1;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 23
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getData()Lcom/papa/sim/statistic/Data;

    move-result-object v1

    iget-object v2, p0, Lcom/papa/sim/statistic/p$o1;->c:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/papa/sim/statistic/Data;->setGameId(J)Lcom/papa/sim/statistic/Data;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 24
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 25
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/papa/sim/statistic/p$o1;->h:Lcom/papa/sim/statistic/p;

    invoke-static {v1}, Lcom/papa/sim/statistic/p;->a(Lcom/papa/sim/statistic/p;)Lcom/papa/sim/statistic/o;

    move-result-object v1

    sget-object v2, Lcom/papa/sim/statistic/Event;->visitGamePage:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1, v2, v0}, Lcom/papa/sim/statistic/o;->A(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/StatRequest;)V

    return-void
.end method
