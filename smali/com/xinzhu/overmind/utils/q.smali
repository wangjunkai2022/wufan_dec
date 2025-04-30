.class public Lcom/xinzhu/overmind/utils/q;
.super Ljava/lang/Object;
.source "NumberCastUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Ljava/lang/Long;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Long;->intValue()I

    move-result p0

    return p0

    .line 4
    :cond_0
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 5
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Get neither Long nor Integer input."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Ljava/lang/Object;)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 3
    :cond_0
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 4
    check-cast p0, Ljava/lang/Integer;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Integer;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Get neither Long nor Integer input."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
