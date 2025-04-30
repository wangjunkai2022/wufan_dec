.class public final Lcom/psk/eventmodule/net/modle/VolcannoRequest;
.super Ljava/lang/Object;
.source "VolcannoRequest.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\n\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\t\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003J\t\u0010\u0005\u001a\u00020\u0004H\u00c6\u0003J\u001d\u0010\u0008\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0004H\u00c6\u0001J\t\u0010\n\u001a\u00020\tH\u00d6\u0001J\t\u0010\u000c\u001a\u00020\u000bH\u00d6\u0001J\u0013\u0010\u000f\u001a\u00020\u000e2\u0008\u0010\r\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003R\u0019\u0010\u0006\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012R\u0019\u0010\u0007\u001a\u00020\u00048\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/psk/eventmodule/net/modle/VolcannoRequest;",
        "",
        "",
        "component1",
        "Lcom/psk/eventmodule/net/modle/VolcanoData;",
        "component2",
        "bhv_time",
        "data",
        "copy",
        "",
        "toString",
        "",
        "hashCode",
        "other",
        "",
        "equals",
        "J",
        "getBhv_time",
        "()J",
        "Lcom/psk/eventmodule/net/modle/VolcanoData;",
        "getData",
        "()Lcom/psk/eventmodule/net/modle/VolcanoData;",
        "<init>",
        "(JLcom/psk/eventmodule/net/modle/VolcanoData;)V",
        "EventModule_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private final bhv_time:J

.field private final data:Lcom/psk/eventmodule/net/modle/VolcanoData;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLcom/psk/eventmodule/net/modle/VolcanoData;)V
    .locals 1
    .param p3    # Lcom/psk/eventmodule/net/modle/VolcanoData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "data"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/psk/eventmodule/net/modle/VolcannoRequest;->bhv_time:J

    iput-object p3, p0, Lcom/psk/eventmodule/net/modle/VolcannoRequest;->data:Lcom/psk/eventmodule/net/modle/VolcanoData;

    return-void
.end method

.method public static synthetic copy$default(Lcom/psk/eventmodule/net/modle/VolcannoRequest;JLcom/psk/eventmodule/net/modle/VolcanoData;ILjava/lang/Object;)Lcom/psk/eventmodule/net/modle/VolcannoRequest;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-wide p1, p0, Lcom/psk/eventmodule/net/modle/VolcannoRequest;->bhv_time:J

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    iget-object p3, p0, Lcom/psk/eventmodule/net/modle/VolcannoRequest;->data:Lcom/psk/eventmodule/net/modle/VolcanoData;

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/psk/eventmodule/net/modle/VolcannoRequest;->copy(JLcom/psk/eventmodule/net/modle/VolcanoData;)Lcom/psk/eventmodule/net/modle/VolcannoRequest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/psk/eventmodule/net/modle/VolcannoRequest;->bhv_time:J

    return-wide v0
.end method

.method public final component2()Lcom/psk/eventmodule/net/modle/VolcanoData;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/psk/eventmodule/net/modle/VolcannoRequest;->data:Lcom/psk/eventmodule/net/modle/VolcanoData;

    return-object v0
.end method

.method public final copy(JLcom/psk/eventmodule/net/modle/VolcanoData;)Lcom/psk/eventmodule/net/modle/VolcannoRequest;
    .locals 1
    .param p3    # Lcom/psk/eventmodule/net/modle/VolcanoData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "data"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/psk/eventmodule/net/modle/VolcannoRequest;

    invoke-direct {v0, p1, p2, p3}, Lcom/psk/eventmodule/net/modle/VolcannoRequest;-><init>(JLcom/psk/eventmodule/net/modle/VolcanoData;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/psk/eventmodule/net/modle/VolcannoRequest;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/psk/eventmodule/net/modle/VolcannoRequest;

    iget-wide v0, p0, Lcom/psk/eventmodule/net/modle/VolcannoRequest;->bhv_time:J

    iget-wide v2, p1, Lcom/psk/eventmodule/net/modle/VolcannoRequest;->bhv_time:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p0, Lcom/psk/eventmodule/net/modle/VolcannoRequest;->data:Lcom/psk/eventmodule/net/modle/VolcanoData;

    iget-object p1, p1, Lcom/psk/eventmodule/net/modle/VolcannoRequest;->data:Lcom/psk/eventmodule/net/modle/VolcanoData;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getBhv_time()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/psk/eventmodule/net/modle/VolcannoRequest;->bhv_time:J

    return-wide v0
.end method

.method public final getData()Lcom/psk/eventmodule/net/modle/VolcanoData;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/psk/eventmodule/net/modle/VolcannoRequest;->data:Lcom/psk/eventmodule/net/modle/VolcanoData;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/psk/eventmodule/net/modle/VolcannoRequest;->bhv_time:J

    invoke-static {v0, v1}, Lf2/a;->a(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/psk/eventmodule/net/modle/VolcannoRequest;->data:Lcom/psk/eventmodule/net/modle/VolcanoData;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VolcannoRequest(bhv_time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/psk/eventmodule/net/modle/VolcannoRequest;->bhv_time:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/psk/eventmodule/net/modle/VolcannoRequest;->data:Lcom/psk/eventmodule/net/modle/VolcanoData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
