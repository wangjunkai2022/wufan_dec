.class public Lcom/mob/commons/cc/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/commons/cc/t;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mob/commons/cc/t<",
        "Lcom/mob/commons/cc/o;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/mob/commons/cc/o;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;[Z[Ljava/lang/Object;[Ljava/lang/Throwable;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mob/commons/cc/o;",
            "Ljava/lang/Class<",
            "Lcom/mob/commons/cc/o;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            "[Z[",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Throwable;",
            ")Z"
        }
    .end annotation

    const-string p1, "andOperation"

    .line 2
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x2

    const/4 p5, 0x1

    const/4 p7, 0x0

    if-eqz p1, :cond_1

    array-length p1, p4

    if-ne p1, p2, :cond_1

    .line 3
    aget-object p1, p4, p7

    if-eqz p1, :cond_0

    aget-object p1, p4, p7

    instance-of p1, p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    aget-object p1, p4, p5

    if-eqz p1, :cond_0

    aget-object p1, p4, p5

    instance-of p1, p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 4
    aget-object p1, p4, p7

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p2, p4, p5

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    and-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p6, p7

    goto/16 :goto_0

    .line 5
    :cond_0
    aget-object p1, p4, p7

    if-eqz p1, :cond_b

    aget-object p1, p4, p7

    instance-of p1, p1, Ljava/lang/Long;

    if-eqz p1, :cond_b

    aget-object p1, p4, p5

    if-eqz p1, :cond_b

    aget-object p1, p4, p5

    instance-of p1, p1, Ljava/lang/Long;

    if-eqz p1, :cond_b

    .line 6
    aget-object p1, p4, p7

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    aget-object p3, p4, p5

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    and-long/2addr p1, p3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, p6, p7

    goto/16 :goto_0

    :cond_1
    const-string p1, "orOperation"

    .line 7
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    array-length p1, p4

    if-ne p1, p2, :cond_3

    .line 8
    aget-object p1, p4, p7

    if-eqz p1, :cond_2

    aget-object p1, p4, p7

    instance-of p1, p1, Ljava/lang/Integer;

    if-eqz p1, :cond_2

    aget-object p1, p4, p5

    if-eqz p1, :cond_2

    aget-object p1, p4, p5

    instance-of p1, p1, Ljava/lang/Integer;

    if-eqz p1, :cond_2

    .line 9
    aget-object p1, p4, p7

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p2, p4, p5

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    or-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p6, p7

    goto/16 :goto_0

    .line 10
    :cond_2
    aget-object p1, p4, p7

    if-eqz p1, :cond_b

    aget-object p1, p4, p7

    instance-of p1, p1, Ljava/lang/Long;

    if-eqz p1, :cond_b

    aget-object p1, p4, p5

    if-eqz p1, :cond_b

    aget-object p1, p4, p5

    instance-of p1, p1, Ljava/lang/Long;

    if-eqz p1, :cond_b

    .line 11
    aget-object p1, p4, p7

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    aget-object p3, p4, p5

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    or-long/2addr p1, p3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, p6, p7

    goto/16 :goto_0

    :cond_3
    const-string p1, "rMoveOperation"

    .line 12
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    array-length p1, p4

    if-ne p1, p2, :cond_5

    .line 13
    aget-object p1, p4, p7

    if-eqz p1, :cond_4

    aget-object p1, p4, p7

    instance-of p1, p1, Ljava/lang/Integer;

    if-eqz p1, :cond_4

    aget-object p1, p4, p5

    if-eqz p1, :cond_4

    aget-object p1, p4, p5

    instance-of p1, p1, Ljava/lang/Integer;

    if-eqz p1, :cond_4

    .line 14
    aget-object p1, p4, p7

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p2, p4, p5

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    shr-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p6, p7

    goto/16 :goto_0

    .line 15
    :cond_4
    aget-object p1, p4, p7

    if-eqz p1, :cond_b

    aget-object p1, p4, p7

    instance-of p1, p1, Ljava/lang/Long;

    if-eqz p1, :cond_b

    aget-object p1, p4, p5

    if-eqz p1, :cond_b

    aget-object p1, p4, p5

    instance-of p1, p1, Ljava/lang/Long;

    if-eqz p1, :cond_b

    .line 16
    aget-object p1, p4, p7

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    aget-object p3, p4, p5

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    long-to-int p4, p3

    shr-long/2addr p1, p4

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, p6, p7

    goto/16 :goto_0

    :cond_5
    const-string p1, "lMoveOperation"

    .line 17
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    array-length p1, p4

    if-ne p1, p2, :cond_7

    .line 18
    aget-object p1, p4, p7

    if-eqz p1, :cond_6

    aget-object p1, p4, p7

    instance-of p1, p1, Ljava/lang/Integer;

    if-eqz p1, :cond_6

    aget-object p1, p4, p5

    if-eqz p1, :cond_6

    aget-object p1, p4, p5

    instance-of p1, p1, Ljava/lang/Integer;

    if-eqz p1, :cond_6

    .line 19
    aget-object p1, p4, p7

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p2, p4, p5

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    shl-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p6, p7

    goto/16 :goto_0

    .line 20
    :cond_6
    aget-object p1, p4, p7

    if-eqz p1, :cond_b

    aget-object p1, p4, p7

    instance-of p1, p1, Ljava/lang/Long;

    if-eqz p1, :cond_b

    aget-object p1, p4, p5

    if-eqz p1, :cond_b

    aget-object p1, p4, p5

    instance-of p1, p1, Ljava/lang/Long;

    if-eqz p1, :cond_b

    .line 21
    aget-object p1, p4, p7

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    aget-object p3, p4, p5

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    long-to-int p4, p3

    shl-long/2addr p1, p4

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, p6, p7

    goto/16 :goto_0

    :cond_7
    const-string p1, "xOperation"

    .line 22
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    array-length p1, p4

    if-ne p1, p5, :cond_9

    .line 23
    aget-object p1, p4, p7

    if-eqz p1, :cond_8

    aget-object p1, p4, p7

    instance-of p1, p1, Ljava/lang/Integer;

    if-eqz p1, :cond_8

    .line 24
    aget-object p1, p4, p7

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    xor-int/lit8 p1, p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p6, p7

    goto/16 :goto_0

    .line 25
    :cond_8
    aget-object p1, p4, p7

    if-eqz p1, :cond_b

    aget-object p1, p4, p7

    instance-of p1, p1, Ljava/lang/Long;

    if-eqz p1, :cond_b

    .line 26
    aget-object p1, p4, p7

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    const-wide/16 p3, -0x1

    xor-long/2addr p1, p3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, p6, p7

    goto :goto_0

    :cond_9
    const-string p1, "xorOperation"

    .line 27
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    array-length p1, p4

    if-ne p1, p2, :cond_c

    .line 28
    aget-object p1, p4, p7

    if-eqz p1, :cond_a

    aget-object p1, p4, p7

    instance-of p1, p1, Ljava/lang/Integer;

    if-eqz p1, :cond_a

    aget-object p1, p4, p5

    if-eqz p1, :cond_a

    aget-object p1, p4, p5

    instance-of p1, p1, Ljava/lang/Integer;

    if-eqz p1, :cond_a

    .line 29
    aget-object p1, p4, p7

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p2, p4, p5

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    xor-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p6, p7

    goto :goto_0

    .line 30
    :cond_a
    aget-object p1, p4, p7

    if-eqz p1, :cond_b

    aget-object p1, p4, p7

    instance-of p1, p1, Ljava/lang/Long;

    if-eqz p1, :cond_b

    aget-object p1, p4, p5

    if-eqz p1, :cond_b

    aget-object p1, p4, p5

    instance-of p1, p1, Ljava/lang/Long;

    if-eqz p1, :cond_b

    .line 31
    aget-object p1, p4, p7

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    aget-object p3, p4, p5

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    xor-long/2addr p1, p3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, p6, p7

    :cond_b
    :goto_0
    return p5

    :cond_c
    return p7
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;[Z[Ljava/lang/Object;[Ljava/lang/Throwable;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/mob/commons/cc/o;

    invoke-virtual/range {p0 .. p7}, Lcom/mob/commons/cc/o;->a(Lcom/mob/commons/cc/o;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;[Z[Ljava/lang/Object;[Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method
