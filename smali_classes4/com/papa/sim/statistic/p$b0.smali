.class Lcom/papa/sim/statistic/p$b0;
.super Ljava/lang/Object;
.source "StatFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/sim/statistic/p;->w(Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/papa/sim/statistic/p;


# direct methods
.method constructor <init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/p$b0;->d:Lcom/papa/sim/statistic/p;

    iput-object p2, p0, Lcom/papa/sim/statistic/p$b0;->a:Ljava/lang/String;

    iput p3, p0, Lcom/papa/sim/statistic/p$b0;->b:I

    iput-object p4, p0, Lcom/papa/sim/statistic/p$b0;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    :try_start_0
    new-instance v0, Lcom/papa/sim/statistic/StatRequest;

    invoke-direct {v0}, Lcom/papa/sim/statistic/StatRequest;-><init>()V

    .line 2
    sget-object v1, Lcom/papa/sim/statistic/Event;->areaRoomFromInvite:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/papa/sim/statistic/StatRequest;->setEvent(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/papa/sim/statistic/StatRequest;->setTime(J)V

    .line 4
    iget-object v2, p0, Lcom/papa/sim/statistic/p$b0;->a:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/papa/sim/statistic/StatRequest;->setUid(I)V

    .line 5
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v2

    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getUid()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    .line 6
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/papa/sim/statistic/p$b0;->b:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setRoomID(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v2

    iget-object v3, p0, Lcom/papa/sim/statistic/p$b0;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setFightId(Ljava/lang/String;)V

    .line 8
    iget-object v2, p0, Lcom/papa/sim/statistic/p$b0;->d:Lcom/papa/sim/statistic/p;

    invoke-static {v2}, Lcom/papa/sim/statistic/p;->a(Lcom/papa/sim/statistic/p;)Lcom/papa/sim/statistic/o;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/papa/sim/statistic/o;->A(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/StatRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
