.class public final Lcom/psk/eventmodule/net/StatCore;
.super Ljava/lang/Object;
.source "StatCore.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/psk/eventmodule/net/StatCore$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u0007\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\u0006\u001a\u00020\u0004H\u0002J\u000e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002R$\u0010\t\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/psk/eventmodule/net/StatCore;",
        "",
        "Lcom/psk/eventmodule/net/modle/VolcanoData;",
        "statRequest",
        "",
        "insertDataToDB",
        "offlineAll",
        "send",
        "Lkotlinx/coroutines/c2;",
        "jobInfo",
        "Lkotlinx/coroutines/c2;",
        "getJobInfo",
        "()Lkotlinx/coroutines/c2;",
        "setJobInfo",
        "(Lkotlinx/coroutines/c2;)V",
        "<init>",
        "()V",
        "Companion",
        "EventModule_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final Companion:Lcom/psk/eventmodule/net/StatCore$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static context:Landroid/content/Context;

.field private static instance:Lcom/psk/eventmodule/net/StatCore;


# instance fields
.field private jobInfo:Lkotlinx/coroutines/c2;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/psk/eventmodule/net/StatCore$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/psk/eventmodule/net/StatCore$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/psk/eventmodule/net/StatCore;->Companion:Lcom/psk/eventmodule/net/StatCore$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getContext$cp()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lcom/psk/eventmodule/net/StatCore;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static final synthetic access$getInstance$cp()Lcom/psk/eventmodule/net/StatCore;
    .locals 1

    .line 1
    sget-object v0, Lcom/psk/eventmodule/net/StatCore;->instance:Lcom/psk/eventmodule/net/StatCore;

    return-object v0
.end method

.method public static final synthetic access$setContext$cp(Landroid/content/Context;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/psk/eventmodule/net/StatCore;->context:Landroid/content/Context;

    return-void
.end method

.method public static final synthetic access$setInstance$cp(Lcom/psk/eventmodule/net/StatCore;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/psk/eventmodule/net/StatCore;->instance:Lcom/psk/eventmodule/net/StatCore;

    return-void
.end method

.method private final insertDataToDB(Lcom/psk/eventmodule/net/modle/VolcanoData;)V
    .locals 25

    .line 1
    sget-object v0, Lcom/psk/frame/roomlibrary/volcano/a;->c:Lcom/psk/frame/roomlibrary/volcano/a;

    invoke-virtual {v0}, Lcom/psk/frame/roomlibrary/volcano/a;->b()Lcom/psk/frame/roomlibrary/volcano/dao/VolcanoEventDao;

    move-result-object v1

    .line 2
    new-instance v4, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;

    move-object v2, v4

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/psk/eventmodule/net/modle/VolcanoData;->getBhv_type()Ljava/lang/String;

    move-result-object v7

    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/psk/eventmodule/net/modle/VolcanoData;->getGoods_id()Ljava/lang/String;

    move-result-object v8

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/psk/eventmodule/net/modle/VolcanoData;->getUser_id()J

    move-result-wide v9

    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/psk/eventmodule/net/modle/VolcanoData;->getUser_type()I

    move-result v11

    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/psk/eventmodule/net/modle/VolcanoData;->getScm()Ljava/lang/String;

    move-result-object v12

    .line 9
    invoke-virtual/range {p1 .. p1}, Lcom/psk/eventmodule/net/modle/VolcanoData;->getSpm()Ljava/lang/String;

    move-result-object v13

    .line 10
    invoke-virtual/range {p1 .. p1}, Lcom/psk/eventmodule/net/modle/VolcanoData;->getIp()Ljava/lang/String;

    move-result-object v16

    .line 11
    invoke-virtual/range {p1 .. p1}, Lcom/psk/eventmodule/net/modle/VolcanoData;->getTrans_data()Ljava/lang/String;

    move-result-object v14

    .line 12
    invoke-virtual/range {p1 .. p1}, Lcom/psk/eventmodule/net/modle/VolcanoData;->getReq_id()Ljava/lang/String;

    move-result-object v15

    .line 13
    invoke-virtual/range {p1 .. p1}, Lcom/psk/eventmodule/net/modle/VolcanoData;->getClient_version()Ljava/lang/String;

    move-result-object v17

    .line 14
    sget-object v18, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 15
    invoke-virtual/range {p1 .. p1}, Lcom/psk/eventmodule/net/modle/VolcanoData;->getNetwork()Ljava/lang/String;

    move-result-object v19

    .line 16
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    .line 17
    invoke-virtual/range {p1 .. p1}, Lcom/psk/eventmodule/net/modle/VolcanoData;->getDevice_id()Ljava/lang/String;

    move-result-object v21

    .line 18
    invoke-virtual/range {p1 .. p1}, Lcom/psk/eventmodule/net/modle/VolcanoData;->getNet_game()Z

    move-result v22

    const/4 v3, 0x0

    const/16 v23, 0x0

    move-object/from16 p1, v4

    move/from16 v4, v23

    const/16 v23, 0x3

    const/16 v24, 0x0

    .line 19
    invoke-direct/range {v2 .. v24}, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;-><init>(IIJLjava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 20
    invoke-virtual/range {p1 .. p1}, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->getUser_id()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    cmp-long v8, v2, v4

    if-eqz v8, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->getDevice_id()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_6

    .line 21
    invoke-virtual {v0}, Lcom/psk/frame/roomlibrary/volcano/a;->b()Lcom/psk/frame/roomlibrary/volcano/dao/VolcanoEventDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/psk/frame/roomlibrary/volcano/dao/VolcanoEventDao;->queryForAll()Ljava/util/List;

    move-result-object v0

    .line 22
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;

    .line 23
    invoke-virtual {v2}, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->getUser_id()J

    move-result-wide v8

    cmp-long v3, v8, v4

    if-nez v3, :cond_3

    .line 24
    invoke-virtual/range {p1 .. p1}, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->getUser_id()J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->setUser_id(J)V

    .line 25
    invoke-virtual/range {p1 .. p1}, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->getUser_type()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->setUser_type(I)V

    .line 26
    sget-object v3, Lcom/psk/frame/roomlibrary/volcano/a;->c:Lcom/psk/frame/roomlibrary/volcano/a;

    invoke-virtual {v3}, Lcom/psk/frame/roomlibrary/volcano/a;->b()Lcom/psk/frame/roomlibrary/volcano/dao/VolcanoEventDao;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/psk/frame/roomlibrary/volcano/dao/VolcanoEventDao;->update(Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;)V

    .line 27
    :cond_3
    invoke-virtual {v2}, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->getDevice_id()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_4

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v3, 0x1

    :goto_4
    if-eqz v3, :cond_2

    .line 28
    invoke-virtual/range {p1 .. p1}, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->getDevice_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->setDevice_id(Ljava/lang/String;)V

    .line 29
    sget-object v3, Lcom/psk/frame/roomlibrary/volcano/a;->c:Lcom/psk/frame/roomlibrary/volcano/a;

    invoke-virtual {v3}, Lcom/psk/frame/roomlibrary/volcano/a;->b()Lcom/psk/frame/roomlibrary/volcano/dao/VolcanoEventDao;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/psk/frame/roomlibrary/volcano/dao/VolcanoEventDao;->update(Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;)V

    goto :goto_2

    .line 30
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->getNet_game()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual/range {p1 .. p1}, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->getScm()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_7

    goto :goto_5

    :cond_7
    const/4 v0, 0x0

    goto :goto_6

    :cond_8
    :goto_5
    const/4 v0, 0x1

    :goto_6
    if-nez v0, :cond_10

    invoke-virtual/range {p1 .. p1}, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->getReq_id()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_7

    :cond_9
    const/4 v0, 0x0

    goto :goto_8

    :cond_a
    :goto_7
    const/4 v0, 0x1

    :goto_8
    if-nez v0, :cond_10

    .line 31
    sget-object v0, Lcom/psk/frame/roomlibrary/volcano/a;->c:Lcom/psk/frame/roomlibrary/volcano/a;

    invoke-virtual {v0}, Lcom/psk/frame/roomlibrary/volcano/a;->b()Lcom/psk/frame/roomlibrary/volcano/dao/VolcanoEventDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/psk/frame/roomlibrary/volcano/dao/VolcanoEventDao;->queryForAll()Ljava/util/List;

    move-result-object v0

    .line 32
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;

    .line 33
    invoke-virtual {v2}, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->getScm()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_c

    goto :goto_a

    :cond_c
    const/4 v3, 0x0

    goto :goto_b

    :cond_d
    :goto_a
    const/4 v3, 0x1

    :goto_b
    if-eqz v3, :cond_b

    invoke-virtual {v2}, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->getReq_id()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_f

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_e

    goto :goto_c

    :cond_e
    const/4 v3, 0x0

    goto :goto_d

    :cond_f
    :goto_c
    const/4 v3, 0x1

    :goto_d
    if-nez v3, :cond_b

    .line 34
    invoke-virtual/range {p1 .. p1}, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->getScm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->setScm(Ljava/lang/String;)V

    .line 35
    sget-object v3, Lcom/psk/frame/roomlibrary/volcano/a;->c:Lcom/psk/frame/roomlibrary/volcano/a;

    invoke-virtual {v3}, Lcom/psk/frame/roomlibrary/volcano/a;->b()Lcom/psk/frame/roomlibrary/volcano/dao/VolcanoEventDao;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/psk/frame/roomlibrary/volcano/dao/VolcanoEventDao;->update(Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;)V

    goto :goto_9

    :cond_10
    move-object/from16 v0, p1

    .line 36
    invoke-virtual {v1, v0}, Lcom/psk/frame/roomlibrary/volcano/dao/VolcanoEventDao;->insertTab(Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;)V

    .line 37
    invoke-direct/range {p0 .. p0}, Lcom/psk/eventmodule/net/StatCore;->offlineAll()V

    return-void
.end method

.method private final offlineAll()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/psk/eventmodule/net/StatCore;->jobInfo:Lkotlinx/coroutines/c2;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/c2$a;->b(Lkotlinx/coroutines/c2;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 2
    :cond_0
    invoke-static {}, Lkotlinx/coroutines/g1;->c()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/u0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/t0;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Lcom/psk/eventmodule/net/StatCore$offlineAll$1;

    invoke-direct {v5, v1}, Lcom/psk/eventmodule/net/StatCore$offlineAll$1;-><init>(Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->e(Lkotlinx/coroutines/t0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/c2;

    move-result-object v0

    iput-object v0, p0, Lcom/psk/eventmodule/net/StatCore;->jobInfo:Lkotlinx/coroutines/c2;

    return-void
.end method


# virtual methods
.method public final getJobInfo()Lkotlinx/coroutines/c2;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/psk/eventmodule/net/StatCore;->jobInfo:Lkotlinx/coroutines/c2;

    return-object v0
.end method

.method public final send(Lcom/psk/eventmodule/net/modle/VolcanoData;)V
    .locals 1
    .param p1    # Lcom/psk/eventmodule/net/modle/VolcanoData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "statRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/psk/eventmodule/net/StatCore;->insertDataToDB(Lcom/psk/eventmodule/net/modle/VolcanoData;)V

    return-void
.end method

.method public final setJobInfo(Lkotlinx/coroutines/c2;)V
    .locals 0
    .param p1    # Lkotlinx/coroutines/c2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/psk/eventmodule/net/StatCore;->jobInfo:Lkotlinx/coroutines/c2;

    return-void
.end method
