.class public final Lcom/join/kotlin/ui/modleregin/modle/BtTagSelecterBean;
.super Ljava/lang/Object;
.source "BtTagSelecterBean.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0015\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0008\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0004\u0012\u0006\u0010\n\u001a\u00020\u0006\u00a2\u0006\u0004\u0008 \u0010!J\t\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003J\t\u0010\u0005\u001a\u00020\u0004H\u00c6\u0003J\t\u0010\u0007\u001a\u00020\u0006H\u00c6\u0003J\'\u0010\u000b\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00022\u0008\u0008\u0002\u0010\t\u001a\u00020\u00042\u0008\u0008\u0002\u0010\n\u001a\u00020\u0006H\u00c6\u0001J\t\u0010\u000c\u001a\u00020\u0004H\u00d6\u0001J\t\u0010\u000e\u001a\u00020\rH\u00d6\u0001J\u0013\u0010\u0010\u001a\u00020\u00062\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003R\"\u0010\t\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\"\u0010\n\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\n\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\"\u0010\u0008\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0008\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001f\u00a8\u0006\""
    }
    d2 = {
        "Lcom/join/kotlin/ui/modleregin/modle/BtTagSelecterBean;",
        "",
        "",
        "component1",
        "",
        "component2",
        "",
        "component3",
        "time",
        "timeMessage",
        "status",
        "copy",
        "toString",
        "",
        "hashCode",
        "other",
        "equals",
        "Ljava/lang/String;",
        "getTimeMessage",
        "()Ljava/lang/String;",
        "setTimeMessage",
        "(Ljava/lang/String;)V",
        "Z",
        "getStatus",
        "()Z",
        "setStatus",
        "(Z)V",
        "J",
        "getTime",
        "()J",
        "setTime",
        "(J)V",
        "<init>",
        "(JLjava/lang/String;Z)V",
        "app_wufunNormalRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private status:Z

.field private time:J

.field private timeMessage:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLjava/lang/String;Z)V
    .locals 1
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "timeMessage"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/join/kotlin/ui/modleregin/modle/BtTagSelecterBean;->time:J

    iput-object p3, p0, Lcom/join/kotlin/ui/modleregin/modle/BtTagSelecterBean;->timeMessage:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/join/kotlin/ui/modleregin/modle/BtTagSelecterBean;->status:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/join/kotlin/ui/modleregin/modle/BtTagSelecterBean;JLjava/lang/String;ZILjava/lang/Object;)Lcom/join/kotlin/ui/modleregin/modle/BtTagSelecterBean;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-wide p1, p0, Lcom/join/kotlin/ui/modleregin/modle/BtTagSelecterBean;->time:J

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p3, p0, Lcom/join/kotlin/ui/modleregin/modle/BtTagSelecterBean;->timeMessage:Ljava/lang/String;

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    iget-boolean p4, p0, Lcom/join/kotlin/ui/modleregin/modle/BtTagSelecterBean;->status:Z

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/join/kotlin/ui/modleregin/modle/BtTagSelecterBean;->copy(JLjava/lang/String;Z)Lcom/join/kotlin/ui/modleregin/modle/BtTagSelecterBean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/join/kotlin/ui/modleregin/modle/BtTagSelecterBean;->time:J

    return-wide v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/join/kotlin/ui/modleregin/modle/BtTagSelecterBean;->timeMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/join/kotlin/ui/modleregin/modle/BtTagSelecterBean;->status:Z

    return v0
.end method

.method public final copy(JLjava/lang/String;Z)Lcom/join/kotlin/ui/modleregin/modle/BtTagSelecterBean;
    .locals 1
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "timeMessage"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/join/kotlin/ui/modleregin/modle/BtTagSelecterBean;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/join/kotlin/ui/modleregin/modle/BtTagSelecterBean;-><init>(JLjava/lang/String;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/join/kotlin/ui/modleregin/modle/BtTagSelecterBean;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/join/kotlin/ui/modleregin/modle/BtTagSelecterBean;

    iget-wide v0, p0, Lcom/join/kotlin/ui/modleregin/modle/BtTagSelecterBean;->time:J

    iget-wide v2, p1, Lcom/join/kotlin/ui/modleregin/modle/BtTagSelecterBean;->time:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p0, Lcom/join/kotlin/ui/modleregin/modle/BtTagSelecterBean;->timeMessage:Ljava/lang/String;

    iget-object v1, p1, Lcom/join/kotlin/ui/modleregin/modle/BtTagSelecterBean;->timeMessage:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/join/kotlin/ui/modleregin/modle/BtTagSelecterBean;->status:Z

    iget-boolean p1, p1, Lcom/join/kotlin/ui/modleregin/modle/BtTagSelecterBean;->status:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getStatus()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/kotlin/ui/modleregin/modle/BtTagSelecterBean;->status:Z

    return v0
.end method

.method public final getTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/kotlin/ui/modleregin/modle/BtTagSelecterBean;->time:J

    return-wide v0
.end method

.method public final getTimeMessage()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/modleregin/modle/BtTagSelecterBean;->timeMessage:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lcom/join/kotlin/ui/modleregin/modle/BtTagSelecterBean;->time:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/join/kotlin/ui/modleregin/modle/BtTagSelecterBean;->timeMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lcom/join/kotlin/ui/modleregin/modle/BtTagSelecterBean;->status:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :cond_1
    add-int/2addr v1, v0

    return v1
.end method

.method public final setStatus(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/kotlin/ui/modleregin/modle/BtTagSelecterBean;->status:Z

    return-void
.end method

.method public final setTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/kotlin/ui/modleregin/modle/BtTagSelecterBean;->time:J

    return-void
.end method

.method public final setTimeMessage(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/modleregin/modle/BtTagSelecterBean;->timeMessage:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BtTagSelecterBean(time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/join/kotlin/ui/modleregin/modle/BtTagSelecterBean;->time:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", timeMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/kotlin/ui/modleregin/modle/BtTagSelecterBean;->timeMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/join/kotlin/ui/modleregin/modle/BtTagSelecterBean;->status:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
