.class public final Lcom/psk/eventmodule/StatFactory;
.super Ljava/lang/Object;
.source "StatFactory.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/psk/eventmodule/StatFactory$VolcanoEvent;,
        Lcom/psk/eventmodule/StatFactory$SpmData;,
        Lcom/psk/eventmodule/StatFactory$VolcanoOther;,
        Lcom/psk/eventmodule/StatFactory$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u0000 \u00152\u00020\u0001:\u0004\u0015\u0016\u0017\u0018B\u0007\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J2\u0010\u000b\u001a\u00020\n2\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0002J\u001e\u0010\u000f\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u0002J\u000e\u0010\u0012\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u0010\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/psk/eventmodule/StatFactory;",
        "",
        "",
        "ipInit",
        "",
        "userId",
        "",
        "userType",
        "client_versionInit",
        "networkInit",
        "",
        "initDatas",
        "scmUpdate",
        "trans_dataUpdate",
        "request_idUpdate",
        "updateNewNewDatas",
        "Lcom/psk/eventmodule/StatFactory$VolcanoEvent;",
        "event",
        "sendEvent",
        "<init>",
        "()V",
        "Companion",
        "SpmData",
        "VolcanoEvent",
        "VolcanoOther",
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
.field public static final Companion:Lcom/psk/eventmodule/StatFactory$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static client_version:Ljava/lang/String;

.field private static device_id:Ljava/lang/String;

.field private static instance:Lcom/psk/eventmodule/StatFactory;

.field private static ip:Ljava/lang/String;

.field private static network:Ljava/lang/String;

.field private static oaid:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static request_id:Ljava/lang/String;

.field private static scm:Ljava/lang/String;

.field private static statCore:Lcom/psk/eventmodule/net/StatCore;

.field private static trans_data:Ljava/lang/String;

.field private static user_id:J

.field private static user_type:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/psk/eventmodule/StatFactory$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/psk/eventmodule/StatFactory$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/psk/eventmodule/StatFactory;->Companion:Lcom/psk/eventmodule/StatFactory$Companion;

    const-string v0, ""

    .line 1
    sput-object v0, Lcom/psk/eventmodule/StatFactory;->ip:Ljava/lang/String;

    .line 2
    sput-object v0, Lcom/psk/eventmodule/StatFactory;->client_version:Ljava/lang/String;

    .line 3
    sput-object v0, Lcom/psk/eventmodule/StatFactory;->network:Ljava/lang/String;

    .line 4
    sput-object v0, Lcom/psk/eventmodule/StatFactory;->device_id:Ljava/lang/String;

    .line 5
    sput-object v0, Lcom/psk/eventmodule/StatFactory;->scm:Ljava/lang/String;

    .line 6
    sput-object v0, Lcom/psk/eventmodule/StatFactory;->trans_data:Ljava/lang/String;

    .line 7
    sput-object v0, Lcom/psk/eventmodule/StatFactory;->request_id:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getDevice_id$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/psk/eventmodule/StatFactory;->device_id:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getInstance$cp()Lcom/psk/eventmodule/StatFactory;
    .locals 1

    .line 1
    sget-object v0, Lcom/psk/eventmodule/StatFactory;->instance:Lcom/psk/eventmodule/StatFactory;

    return-object v0
.end method

.method public static final synthetic access$getOaid$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/psk/eventmodule/StatFactory;->oaid:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getStatCore$cp()Lcom/psk/eventmodule/net/StatCore;
    .locals 1

    .line 1
    sget-object v0, Lcom/psk/eventmodule/StatFactory;->statCore:Lcom/psk/eventmodule/net/StatCore;

    return-object v0
.end method

.method public static final synthetic access$setDevice_id$cp(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/psk/eventmodule/StatFactory;->device_id:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setInstance$cp(Lcom/psk/eventmodule/StatFactory;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/psk/eventmodule/StatFactory;->instance:Lcom/psk/eventmodule/StatFactory;

    return-void
.end method

.method public static final synthetic access$setOaid$cp(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/psk/eventmodule/StatFactory;->oaid:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setStatCore$cp(Lcom/psk/eventmodule/net/StatCore;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/psk/eventmodule/StatFactory;->statCore:Lcom/psk/eventmodule/net/StatCore;

    return-void
.end method

.method public static synthetic initDatas$default(Lcom/psk/eventmodule/StatFactory;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 7

    and-int/lit8 p7, p7, 0x1

    if-eqz p7, :cond_0

    const-string p1, ""

    :cond_0
    move-object v1, p1

    move-object v0, p0

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 1
    invoke-virtual/range {v0 .. v6}, Lcom/psk/eventmodule/StatFactory;->initDatas(Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final initDatas(Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "client_versionInit"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkInit"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v4, "."

    invoke-static {p1, v4, v0, v2, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1, v1}, Lcom/psk/eventmodule/net/util/AESUtilV2;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string v0, "if (ipInit!!.contains(\".\u2026tilV2.decrypt(ipInit, \"\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p1

    :goto_1
    sput-object v1, Lcom/psk/eventmodule/StatFactory;->ip:Ljava/lang/String;

    .line 2
    sput-wide p2, Lcom/psk/eventmodule/StatFactory;->user_id:J

    .line 3
    sput p4, Lcom/psk/eventmodule/StatFactory;->user_type:I

    .line 4
    sput-object p5, Lcom/psk/eventmodule/StatFactory;->client_version:Ljava/lang/String;

    .line 5
    sput-object p6, Lcom/psk/eventmodule/StatFactory;->network:Ljava/lang/String;

    return-void
.end method

.method public final sendEvent(Lcom/psk/eventmodule/StatFactory$VolcanoEvent;)V
    .locals 24
    .param p1    # Lcom/psk/eventmodule/StatFactory$VolcanoEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/psk/eventmodule/StatFactory$VolcanoEvent;->getSpm()Lcom/psk/eventmodule/StatFactory$SpmData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/psk/eventmodule/StatFactory$SpmData;->getArena()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/psk/eventmodule/StatFactory$VolcanoEvent;->getSpm()Lcom/psk/eventmodule/StatFactory$SpmData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/psk/eventmodule/StatFactory$SpmData;->getPosition()Ljava/lang/String;

    move-result-object v0

    const-string v3, "0"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_5

    .line 2
    :cond_1
    new-instance v0, Lcom/psk/eventmodule/net/modle/VolcanoData;

    move-object v3, v0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const v22, 0xffff

    const/16 v23, 0x0

    invoke-direct/range {v3 .. v23}, Lcom/psk/eventmodule/net/modle/VolcanoData;-><init>(JILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    sget-object v3, Lcom/psk/eventmodule/StatFactory;->ip:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/psk/eventmodule/net/modle/VolcanoData;->setIp(Ljava/lang/String;)V

    .line 4
    sget-wide v3, Lcom/psk/eventmodule/StatFactory;->user_id:J

    invoke-virtual {v0, v3, v4}, Lcom/psk/eventmodule/net/modle/VolcanoData;->setUser_id(J)V

    .line 5
    sget v3, Lcom/psk/eventmodule/StatFactory;->user_type:I

    invoke-virtual {v0, v3}, Lcom/psk/eventmodule/net/modle/VolcanoData;->setUser_type(I)V

    .line 6
    sget-object v3, Lcom/psk/eventmodule/StatFactory;->client_version:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/psk/eventmodule/net/modle/VolcanoData;->setClient_version(Ljava/lang/String;)V

    .line 7
    sget-object v3, Lcom/psk/eventmodule/StatFactory;->network:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/psk/eventmodule/net/modle/VolcanoData;->setNetwork(Ljava/lang/String;)V

    .line 8
    sget-object v3, Lcom/psk/eventmodule/StatFactory;->device_id:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/psk/eventmodule/net/modle/VolcanoData;->setDevice_id(Ljava/lang/String;)V

    .line 9
    invoke-virtual/range {p1 .. p1}, Lcom/psk/eventmodule/StatFactory$VolcanoEvent;->getGoods_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/psk/eventmodule/net/modle/VolcanoData;->setGoods_id(Ljava/lang/String;)V

    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/psk/eventmodule/StatFactory$VolcanoEvent;->getSpm()Lcom/psk/eventmodule/StatFactory$SpmData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/psk/eventmodule/StatFactory$SpmData;->getBussnes()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "$##$"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/psk/eventmodule/StatFactory$VolcanoEvent;->getSpm()Lcom/psk/eventmodule/StatFactory$SpmData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/psk/eventmodule/StatFactory$SpmData;->getPage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/psk/eventmodule/StatFactory$VolcanoEvent;->getSpm()Lcom/psk/eventmodule/StatFactory$SpmData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/psk/eventmodule/StatFactory$SpmData;->getArena()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/psk/eventmodule/StatFactory$VolcanoEvent;->getSpm()Lcom/psk/eventmodule/StatFactory$SpmData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/psk/eventmodule/StatFactory$SpmData;->getPosition()Ljava/lang/String;

    move-result-object v4

    const-string v5, "x"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "1"

    goto :goto_1

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/psk/eventmodule/StatFactory$VolcanoEvent;->getSpm()Lcom/psk/eventmodule/StatFactory$SpmData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/psk/eventmodule/StatFactory$SpmData;->getPosition()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/psk/eventmodule/StatFactory$VolcanoEvent;->getSpm()Lcom/psk/eventmodule/StatFactory$SpmData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/psk/eventmodule/StatFactory$SpmData;->getDetail()Z

    move-result v4

    if-ne v4, v2, :cond_3

    const-string v2, "$##$\u8be6\u60c5"

    goto :goto_2

    :cond_3
    const-string v2, ""

    :goto_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/psk/eventmodule/net/modle/VolcanoData;->setSpm(Ljava/lang/String;)V

    .line 11
    invoke-virtual/range {p1 .. p1}, Lcom/psk/eventmodule/StatFactory$VolcanoEvent;->getEvent()Lcom/psk/eventmodule/Event;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/psk/eventmodule/net/modle/VolcanoData;->setBhv_type(Ljava/lang/String;)V

    .line 12
    invoke-virtual/range {p1 .. p1}, Lcom/psk/eventmodule/StatFactory$VolcanoEvent;->getOther()Lcom/psk/eventmodule/StatFactory$VolcanoOther;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/psk/eventmodule/StatFactory$VolcanoOther;->getReq_id()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_4
    move-object v2, v3

    :goto_3
    invoke-virtual {v0, v2}, Lcom/psk/eventmodule/net/modle/VolcanoData;->setReq_id(Ljava/lang/String;)V

    .line 13
    invoke-virtual/range {p1 .. p1}, Lcom/psk/eventmodule/StatFactory$VolcanoEvent;->getOther()Lcom/psk/eventmodule/StatFactory$VolcanoOther;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/psk/eventmodule/StatFactory$VolcanoOther;->getScm()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_5
    move-object v2, v3

    :goto_4
    invoke-virtual {v0, v2}, Lcom/psk/eventmodule/net/modle/VolcanoData;->setScm(Ljava/lang/String;)V

    .line 14
    invoke-virtual/range {p1 .. p1}, Lcom/psk/eventmodule/StatFactory$VolcanoEvent;->getOther()Lcom/psk/eventmodule/StatFactory$VolcanoOther;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/psk/eventmodule/StatFactory$VolcanoOther;->getTrans_data()Ljava/lang/String;

    move-result-object v3

    :cond_6
    invoke-virtual {v0, v3}, Lcom/psk/eventmodule/net/modle/VolcanoData;->setTrans_data(Ljava/lang/String;)V

    .line 15
    invoke-virtual/range {p1 .. p1}, Lcom/psk/eventmodule/StatFactory$VolcanoEvent;->getNet_game()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/psk/eventmodule/net/modle/VolcanoData;->setNet_game(Z)V

    .line 16
    sget-object v1, Lcom/psk/eventmodule/StatFactory;->statCore:Lcom/psk/eventmodule/net/StatCore;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Lcom/psk/eventmodule/net/StatCore;->send(Lcom/psk/eventmodule/net/modle/VolcanoData;)V

    :cond_7
    :goto_5
    return-void
.end method

.method public final updateNewNewDatas(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "scmUpdate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trans_dataUpdate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request_idUpdate"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sput-object p1, Lcom/psk/eventmodule/StatFactory;->scm:Ljava/lang/String;

    .line 2
    sput-object p2, Lcom/psk/eventmodule/StatFactory;->trans_data:Ljava/lang/String;

    .line 3
    sput-object p3, Lcom/psk/eventmodule/StatFactory;->request_id:Ljava/lang/String;

    return-void
.end method
