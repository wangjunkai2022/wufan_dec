.class public Lcom/mob/tools/a/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/tools/a/g$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/mob/tools/a/g;->a:Landroid/content/Context;

    return-void
.end method

.method private a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/mob/tools/a/g$a<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    if-eqz p2, :cond_9

    .line 1
    :try_start_0
    invoke-static {p2}, Lcom/mob/tools/a/g$a;->a(Lcom/mob/tools/a/g$a;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/mob/tools/a/g$a;->b(Ljava/util/ArrayList;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 2
    const-class v1, Ljava/lang/Void;

    if-ne p1, v1, :cond_0

    goto/16 :goto_1

    .line 3
    :cond_0
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_1

    .line 4
    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    :goto_0
    move-object v0, p2

    goto :goto_1

    .line 5
    :cond_1
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_2

    .line 6
    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    .line 7
    :cond_2
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_3

    .line 8
    const-class v1, Ljava/lang/Byte;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    .line 9
    :cond_3
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_4

    .line 10
    const-class v1, Ljava/lang/Character;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    .line 11
    :cond_4
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_5

    .line 12
    const-class v1, Ljava/lang/Short;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    .line 13
    :cond_5
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_6

    .line 14
    const-class v1, Ljava/lang/Long;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    .line 15
    :cond_6
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_7

    .line 16
    const-class v1, Ljava/lang/Float;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    .line 17
    :cond_7
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_8

    .line 18
    const-class v1, Ljava/lang/Double;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    .line 19
    :cond_8
    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 20
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_9
    :goto_1
    if-nez v0, :cond_11

    .line 21
    sget-object p2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, p2, :cond_a

    .line 22
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2

    .line 23
    :cond_a
    sget-object p2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, p2, :cond_b

    const/4 p1, -0x1

    .line 24
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    .line 25
    :cond_b
    sget-object p2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x0

    if-ne p1, p2, :cond_c

    .line 26
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_2

    .line 27
    :cond_c
    sget-object p2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, p2, :cond_d

    .line 28
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    goto :goto_2

    .line 29
    :cond_d
    sget-object p2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, p2, :cond_e

    .line 30
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    goto :goto_2

    .line 31
    :cond_e
    sget-object p2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, p2, :cond_f

    const-wide/16 p1, 0x0

    .line 32
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_2

    .line 33
    :cond_f
    sget-object p2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, p2, :cond_10

    const/4 p1, 0x0

    .line 34
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_2

    .line 35
    :cond_10
    sget-object p2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, p2, :cond_11

    const-wide/16 p1, 0x0

    .line 36
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :cond_11
    :goto_2
    return-object v0
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/g$62;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$62;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public B()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/g$63;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$63;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public C()[Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, [Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/g$64;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$64;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public D()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/g$65;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$65;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public E()I
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/mob/tools/a/g$66;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$66;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public F()I
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/mob/tools/a/g$67;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$67;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public G()I
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/mob/tools/a/g$68;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$68;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public H()I
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/mob/tools/a/g$69;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$69;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public I()I
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/mob/tools/a/g$71;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$71;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public J()I
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/mob/tools/a/g$72;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$72;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public K()I
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/mob/tools/a/g$73;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$73;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public L()I
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/mob/tools/a/g$74;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$74;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public M()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/util/ArrayList;

    new-instance v1, Lcom/mob/tools/a/g$75;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$75;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public N()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/util/HashMap;

    new-instance v1, Lcom/mob/tools/a/g$76;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$76;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method

.method public O()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/util/ArrayList;

    new-instance v1, Lcom/mob/tools/a/g$77;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$77;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public P()Z
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/mob/tools/a/g$78;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$78;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public Q()I
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/mob/tools/a/g$79;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$79;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public R()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/g$80;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$80;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public S()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/g$82;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$82;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public T()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/g$83;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$83;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public U()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/util/HashMap;

    new-instance v1, Lcom/mob/tools/a/g$84;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$84;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method

.method public V()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/util/ArrayList;

    new-instance v1, Lcom/mob/tools/a/g$85;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$85;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public W()I
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/mob/tools/a/g$87;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$87;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public X()I
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/mob/tools/a/g$88;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$88;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public Y()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/g$89;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$89;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public Z()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/util/HashMap;

    new-instance v1, Lcom/mob/tools/a/g$90;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$90;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method

.method public a(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .locals 4

    .line 49
    const-class v0, Landroid/content/pm/ApplicationInfo;

    new-instance v1, Lcom/mob/tools/a/g$41;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v2, p2

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$41;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ApplicationInfo;

    return-object p1
.end method

.method public a(ZILjava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 4

    .line 43
    const-class v0, Landroid/content/pm/PackageInfo;

    new-instance v1, Lcom/mob/tools/a/g$14;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v2, p2

    const/4 p1, 0x2

    aput-object p3, v2, p1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v2, p2

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$14;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageInfo;

    return-object p1
.end method

.method public a(IIZ)Landroid/location/Location;
    .locals 4

    .line 41
    const-class v0, Landroid/location/Location;

    new-instance v1, Lcom/mob/tools/a/g$118;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v2, p2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v2, p2

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$118;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/Location;

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 45
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/g$19;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$19;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public a(Z)Ljava/lang/String;
    .locals 4

    .line 39
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/g$44;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$44;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public a(Landroid/content/Intent;I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 42
    const-class v0, Ljava/util/List;

    new-instance v1, Lcom/mob/tools/a/g$11;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v2, p2

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$11;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public a(Landroid/content/BroadcastReceiver;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 46
    const-class v0, Ljava/lang/Void;

    new-instance v1, Lcom/mob/tools/a/g$36;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$36;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    return-void
.end method

.method public a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 47
    const-class v0, Ljava/lang/Void;

    new-instance v1, Lcom/mob/tools/a/g$37;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$37;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    return-void
.end method

.method public a(Landroid/os/Handler$Callback;)V
    .locals 4

    .line 40
    const-class v0, Ljava/lang/Void;

    new-instance v1, Lcom/mob/tools/a/g$86;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$86;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 4

    .line 44
    const-class v0, Ljava/lang/Void;

    new-instance v1, Lcom/mob/tools/a/g$15;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$15;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/util/concurrent/BlockingQueue;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 48
    const-class v0, Ljava/lang/Void;

    new-instance v1, Lcom/mob/tools/a/g$38;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$38;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    return-void
.end method

.method public a()Z
    .locals 3

    .line 37
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/mob/tools/a/g$1;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$1;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 4

    .line 38
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/mob/tools/a/g$13;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$13;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public aA()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/util/HashMap;

    new-instance v1, Lcom/mob/tools/a/g$127;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$127;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method

.method public aB()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/util/ArrayList;

    new-instance v1, Lcom/mob/tools/a/g$128;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$128;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public aC()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/g$130;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$130;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public aD()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/g$131;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$131;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public aE()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/g$133;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$133;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public aF()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/g$134;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$134;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public aG()I
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/mob/tools/a/g$3;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$3;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public aH()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/g$4;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$4;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public aI()Z
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/mob/tools/a/g$5;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$5;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public aJ()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/g$6;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$6;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public aK()Z
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/mob/tools/a/g$7;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$7;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public aL()Ljava/lang/Object;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/Object;

    new-instance v1, Lcom/mob/tools/a/g$9;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$9;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public aM()Landroid/content/Context;
    .locals 3

    .line 1
    const-class v0, Landroid/content/Context;

    new-instance v1, Lcom/mob/tools/a/g$10;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$10;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method public aN()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/g$17;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$17;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public aO()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/g$18;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$18;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public aP()J
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/mob/tools/a/g$20;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$20;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public aQ()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/g$21;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$21;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public aR()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/g$22;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$22;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public aS()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/g$23;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$23;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public aT()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/g$25;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$25;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public aU()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/g$26;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$26;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public aV()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/g$27;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$27;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public aW()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/g$28;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$28;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public aX()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/g$29;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$29;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public aY()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/g$30;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$30;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public aZ()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/g$31;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$31;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public aa()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/util/HashMap;

    new-instance v1, Lcom/mob/tools/a/g$91;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$91;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method

.method public ab()I
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/mob/tools/a/g$93;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$93;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public ac()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/g$94;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$94;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public ad()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/g$95;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$95;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public ae()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/g$96;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$96;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public af()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/g$97;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$97;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public ag()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/g$98;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$98;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public ah()Z
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/mob/tools/a/g$99;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$99;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public ai()I
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/mob/tools/a/g$100;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$100;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public aj()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/util/ArrayList;

    new-instance v1, Lcom/mob/tools/a/g$101;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$101;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public ak()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/g$102;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$102;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public al()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/util/HashMap;

    new-instance v1, Lcom/mob/tools/a/g$104;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$104;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method

.method public am()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/util/HashMap;

    new-instance v1, Lcom/mob/tools/a/g$105;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$105;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method

.method public an()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/g$106;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$106;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public ao()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/g$107;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$107;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public ap()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/util/HashMap;

    new-instance v1, Lcom/mob/tools/a/g$108;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$108;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method

.method public aq()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/g$109;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$109;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public ar()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/g$110;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$110;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public as()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/g$111;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$111;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public at()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/util/HashMap;

    new-instance v1, Lcom/mob/tools/a/g$112;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$112;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method

.method public au()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/g$113;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$113;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public av()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/util/ArrayList;

    new-instance v1, Lcom/mob/tools/a/g$116;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$116;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public aw()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/util/ArrayList;

    new-instance v1, Lcom/mob/tools/a/g$117;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$117;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public ax()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/g$120;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$120;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public ay()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/g$121;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$121;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public az()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/g$126;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$126;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public b(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    .locals 4

    .line 4
    const-class v0, Landroid/content/pm/ResolveInfo;

    new-instance v1, Lcom/mob/tools/a/g$12;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v2, p2

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$12;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    return-object p1
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 3
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/g$119;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$119;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public b(Z)Ljava/lang/String;
    .locals 4

    .line 2
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/g$47;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$47;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public b(Landroid/view/View;)V
    .locals 4

    .line 5
    const-class v0, Ljava/lang/Void;

    new-instance v1, Lcom/mob/tools/a/g$16;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$16;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    return-void
.end method

.method public b()Z
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/mob/tools/a/g$48;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$48;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public ba()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/g$32;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$32;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public bb()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/g$33;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$33;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public bc()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/util/HashMap;

    new-instance v1, Lcom/mob/tools/a/g$34;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$34;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method

.method public bd()Landroid/content/pm/ApplicationInfo;
    .locals 3

    .line 1
    const-class v0, Landroid/content/pm/ApplicationInfo;

    new-instance v1, Lcom/mob/tools/a/g$39;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$39;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public be()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/util/ArrayList;

    new-instance v1, Lcom/mob/tools/a/g$40;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$40;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 3
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/g$123;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$123;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public c(Z)Ljava/lang/String;
    .locals 4

    .line 2
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/g$53;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$53;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public c()Z
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/mob/tools/a/g$59;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$59;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public d(Z)Ljava/lang/String;
    .locals 4

    .line 2
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/g$55;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$55;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public d(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3
    const-class v0, Ljava/util/List;

    new-instance v1, Lcom/mob/tools/a/g$124;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$124;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public d()Z
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/mob/tools/a/g$70;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$70;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public e(Z)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 2
    const-class v0, Ljava/util/ArrayList;

    new-instance v1, Lcom/mob/tools/a/g$115;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$115;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    return-object p1
.end method

.method public e()Z
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/mob/tools/a/g$81;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$81;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public e(Ljava/lang/String;)Z
    .locals 4

    .line 3
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/mob/tools/a/g$129;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$129;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public f(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 3
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/g$132;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$132;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public f(Z)Ljava/lang/String;
    .locals 4

    .line 2
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/g$122;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$122;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public f()Z
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/mob/tools/a/g$92;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$92;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public g(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 2
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/g$135;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$135;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public g()Z
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/mob/tools/a/g$103;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$103;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public h()Z
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/mob/tools/a/g$114;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$114;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public h(Ljava/lang/String;)Z
    .locals 4

    .line 2
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/mob/tools/a/g$8;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$8;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public i()Z
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/mob/tools/a/g$125;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$125;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public j()Z
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/mob/tools/a/g$2;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$2;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public k()Z
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/mob/tools/a/g$24;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$24;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public l()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/g$35;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$35;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/g$42;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$42;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/g$43;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$43;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/g$45;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$45;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/g$46;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$46;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public q()[Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, [Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/g$49;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$49;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/g$50;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$50;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/g$51;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$51;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public t()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/g$52;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$52;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/g$54;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$54;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public v()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/g$56;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$56;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public w()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/g$57;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$57;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public x()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/g$58;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$58;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public y()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/g$60;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$60;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public z()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/g$61;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/g$61;-><init>(Lcom/mob/tools/a/g;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/g;->a(Ljava/lang/Class;Lcom/mob/tools/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
