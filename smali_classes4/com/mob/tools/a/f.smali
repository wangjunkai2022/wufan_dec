.class public Lcom/mob/tools/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/tools/a/f$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/mob/tools/a/f;->a:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic a(Lcom/mob/tools/a/f;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/mob/tools/a/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/mob/tools/a/f$a<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    if-eqz p2, :cond_9

    .line 7
    :try_start_0
    invoke-static {p2}, Lcom/mob/tools/a/f$a;->a(Lcom/mob/tools/a/f$a;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/mob/tools/a/f$a;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 8
    const-class v1, Ljava/lang/Void;

    if-ne p1, v1, :cond_0

    goto/16 :goto_1

    .line 9
    :cond_0
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_1

    .line 10
    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    :goto_0
    move-object v0, p2

    goto :goto_1

    .line 11
    :cond_1
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_2

    .line 12
    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    .line 13
    :cond_2
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_3

    .line 14
    const-class v1, Ljava/lang/Byte;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    .line 15
    :cond_3
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_4

    .line 16
    const-class v1, Ljava/lang/Character;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    .line 17
    :cond_4
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_5

    .line 18
    const-class v1, Ljava/lang/Short;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    .line 19
    :cond_5
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_6

    .line 20
    const-class v1, Ljava/lang/Long;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    .line 21
    :cond_6
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_7

    .line 22
    const-class v1, Ljava/lang/Float;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    .line 23
    :cond_7
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_8

    .line 24
    const-class v1, Ljava/lang/Double;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    .line 25
    :cond_8
    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 26
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_9
    :goto_1
    if-nez v0, :cond_11

    .line 27
    sget-object p2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, p2, :cond_a

    .line 28
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2

    .line 29
    :cond_a
    sget-object p2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, p2, :cond_b

    const/4 p1, -0x1

    .line 30
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    .line 31
    :cond_b
    sget-object p2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x0

    if-ne p1, p2, :cond_c

    .line 32
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_2

    .line 33
    :cond_c
    sget-object p2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, p2, :cond_d

    .line 34
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    goto :goto_2

    .line 35
    :cond_d
    sget-object p2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, p2, :cond_e

    .line 36
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    goto :goto_2

    .line 37
    :cond_e
    sget-object p2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, p2, :cond_f

    const-wide/16 p1, 0x0

    .line 38
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_2

    .line 39
    :cond_f
    sget-object p2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, p2, :cond_10

    const/4 p1, 0x0

    .line 40
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_2

    .line 41
    :cond_10
    sget-object p2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, p2, :cond_11

    const-wide/16 p1, 0x0

    .line 42
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :cond_11
    :goto_2
    return-object v0
.end method

.method private a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/a/f;->a:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/mob/tools/a/f;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/mob/commons/cc/a;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedList;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 5
    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 6
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/f$62;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$62;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public B()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/f$63;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$63;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public C()[Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, [Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/f$64;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$64;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public D()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/f$65;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$65;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public E()I
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/mob/tools/a/f$66;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$66;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

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

    new-instance v1, Lcom/mob/tools/a/f$67;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$67;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

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

    new-instance v1, Lcom/mob/tools/a/f$68;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$68;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

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

    new-instance v1, Lcom/mob/tools/a/f$69;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$69;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

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

    new-instance v1, Lcom/mob/tools/a/f$71;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$71;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

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

    new-instance v1, Lcom/mob/tools/a/f$72;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$72;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

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

    new-instance v1, Lcom/mob/tools/a/f$73;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$73;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

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

    new-instance v1, Lcom/mob/tools/a/f$74;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$74;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

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

    new-instance v1, Lcom/mob/tools/a/f$75;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$75;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

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

    new-instance v1, Lcom/mob/tools/a/f$76;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$76;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

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

    new-instance v1, Lcom/mob/tools/a/f$77;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$77;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public P()Z
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/mob/tools/a/f$78;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$78;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

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

    new-instance v1, Lcom/mob/tools/a/f$79;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$79;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

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

    new-instance v1, Lcom/mob/tools/a/f$80;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$80;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public S()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/f$82;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$82;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public T()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/f$83;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$83;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

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

    new-instance v1, Lcom/mob/tools/a/f$84;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$84;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

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

    new-instance v1, Lcom/mob/tools/a/f$85;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$85;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public W()I
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/mob/tools/a/f$87;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$87;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

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

    new-instance v1, Lcom/mob/tools/a/f$88;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$88;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

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

    new-instance v1, Lcom/mob/tools/a/f$89;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$89;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

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

    new-instance v1, Lcom/mob/tools/a/f$90;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$90;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method

.method public a(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .locals 4

    .line 55
    const-class v0, Landroid/content/pm/ApplicationInfo;

    new-instance v1, Lcom/mob/tools/a/f$41;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v2, p2

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$41;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ApplicationInfo;

    return-object p1
.end method

.method public a(ZILjava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 4

    .line 49
    const-class v0, Landroid/content/pm/PackageInfo;

    new-instance v1, Lcom/mob/tools/a/f$14;

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

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$14;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageInfo;

    return-object p1
.end method

.method public a(IIZ)Landroid/location/Location;
    .locals 4

    .line 47
    const-class v0, Landroid/location/Location;

    new-instance v1, Lcom/mob/tools/a/f$118;

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

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$118;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/Location;

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 51
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/f$19;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$19;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public a(Z)Ljava/lang/String;
    .locals 4

    .line 45
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/f$44;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$44;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

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

    .line 48
    const-class v0, Ljava/util/List;

    new-instance v1, Lcom/mob/tools/a/f$11;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v2, p2

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$11;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

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

    .line 52
    const-class v0, Ljava/lang/Void;

    new-instance v1, Lcom/mob/tools/a/f$36;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$36;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

    return-void
.end method

.method public a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 53
    const-class v0, Ljava/lang/Void;

    new-instance v1, Lcom/mob/tools/a/f$37;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$37;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

    return-void
.end method

.method public a(Landroid/os/Handler$Callback;)V
    .locals 4

    .line 46
    const-class v0, Ljava/lang/Void;

    new-instance v1, Lcom/mob/tools/a/f$86;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$86;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 4

    .line 50
    const-class v0, Ljava/lang/Void;

    new-instance v1, Lcom/mob/tools/a/f$15;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$15;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

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

    .line 54
    const-class v0, Ljava/lang/Void;

    new-instance v1, Lcom/mob/tools/a/f$38;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$38;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

    return-void
.end method

.method public a()Z
    .locals 3

    .line 43
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/mob/tools/a/f$1;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$1;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 4

    .line 44
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/mob/tools/a/f$13;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$13;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

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

    new-instance v1, Lcom/mob/tools/a/f$127;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$127;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

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

    new-instance v1, Lcom/mob/tools/a/f$128;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$128;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public aC()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/f$130;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$130;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public aD()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/f$131;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$131;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public aE()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/f$133;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$133;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public aF()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/f$134;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$134;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public aG()I
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/mob/tools/a/f$3;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$3;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

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

    new-instance v1, Lcom/mob/tools/a/f$4;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$4;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public aI()Z
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/mob/tools/a/f$5;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$5;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

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

    new-instance v1, Lcom/mob/tools/a/f$6;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$6;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public aK()Z
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/mob/tools/a/f$7;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$7;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

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

    new-instance v1, Lcom/mob/tools/a/f$9;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$9;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public aM()Landroid/content/Context;
    .locals 3

    .line 1
    const-class v0, Landroid/content/Context;

    new-instance v1, Lcom/mob/tools/a/f$10;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$10;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method public aN()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/f$17;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$17;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public aO()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/f$18;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$18;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public aP()J
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/mob/tools/a/f$20;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$20;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

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

    new-instance v1, Lcom/mob/tools/a/f$21;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$21;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public aR()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/f$22;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$22;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public aS()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/f$23;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$23;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public aT()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/f$25;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$25;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public aU()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/f$26;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$26;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public aV()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/f$27;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$27;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public aW()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/f$28;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$28;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public aX()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/f$29;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$29;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public aY()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/f$30;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$30;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public aZ()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/f$31;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$31;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

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

    new-instance v1, Lcom/mob/tools/a/f$91;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$91;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method

.method public ab()I
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/mob/tools/a/f$93;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$93;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

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

    new-instance v1, Lcom/mob/tools/a/f$94;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$94;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public ad()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/f$95;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$95;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public ae()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/f$96;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$96;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public af()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/f$97;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$97;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public ag()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/f$98;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$98;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public ah()Z
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/mob/tools/a/f$99;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$99;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

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

    new-instance v1, Lcom/mob/tools/a/f$100;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$100;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

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

    new-instance v1, Lcom/mob/tools/a/f$101;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$101;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public ak()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/f$102;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$102;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

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

    new-instance v1, Lcom/mob/tools/a/f$104;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$104;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

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

    new-instance v1, Lcom/mob/tools/a/f$105;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$105;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method

.method public an()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/f$106;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$106;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public ao()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/f$107;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$107;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

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

    new-instance v1, Lcom/mob/tools/a/f$108;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$108;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method

.method public aq()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/f$109;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$109;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public ar()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/f$110;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$110;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public as()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/f$111;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$111;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

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

    new-instance v1, Lcom/mob/tools/a/f$112;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$112;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method

.method public au()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/f$113;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$113;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

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

    new-instance v1, Lcom/mob/tools/a/f$116;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$116;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

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

    new-instance v1, Lcom/mob/tools/a/f$117;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$117;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public ax()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/f$120;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$120;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public ay()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/f$121;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$121;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public az()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/f$126;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$126;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public b(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    .locals 4

    .line 4
    const-class v0, Landroid/content/pm/ResolveInfo;

    new-instance v1, Lcom/mob/tools/a/f$12;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v2, p2

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$12;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    return-object p1
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 3
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/f$119;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$119;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public b(Z)Ljava/lang/String;
    .locals 4

    .line 2
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/f$47;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$47;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public b(Landroid/view/View;)V
    .locals 4

    .line 5
    const-class v0, Ljava/lang/Void;

    new-instance v1, Lcom/mob/tools/a/f$16;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$16;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

    return-void
.end method

.method public b()Z
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/mob/tools/a/f$48;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$48;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

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

    new-instance v1, Lcom/mob/tools/a/f$32;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$32;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public bb()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/f$33;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$33;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

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

    new-instance v1, Lcom/mob/tools/a/f$34;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$34;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method

.method public bd()Landroid/content/pm/ApplicationInfo;
    .locals 3

    .line 1
    const-class v0, Landroid/content/pm/ApplicationInfo;

    new-instance v1, Lcom/mob/tools/a/f$39;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$39;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

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

    new-instance v1, Lcom/mob/tools/a/f$40;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$40;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 3
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/f$123;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$123;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public c(Z)Ljava/lang/String;
    .locals 4

    .line 2
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/f$53;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$53;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public c()Z
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/mob/tools/a/f$59;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$59;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

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

    new-instance v1, Lcom/mob/tools/a/f$55;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$55;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

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

    new-instance v1, Lcom/mob/tools/a/f$124;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$124;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public d()Z
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/mob/tools/a/f$70;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$70;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

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

    new-instance v1, Lcom/mob/tools/a/f$115;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$115;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    return-object p1
.end method

.method public e()Z
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/mob/tools/a/f$81;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$81;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

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

    new-instance v1, Lcom/mob/tools/a/f$129;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$129;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

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

    new-instance v1, Lcom/mob/tools/a/f$132;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$132;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public f(Z)Ljava/lang/String;
    .locals 4

    .line 2
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/f$122;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$122;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public f()Z
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/mob/tools/a/f$92;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$92;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

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

    new-instance v1, Lcom/mob/tools/a/f$135;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$135;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public g()Z
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/mob/tools/a/f$103;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$103;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

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

    new-instance v1, Lcom/mob/tools/a/f$114;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$114;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

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

    new-instance v1, Lcom/mob/tools/a/f$8;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$8;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

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

    new-instance v1, Lcom/mob/tools/a/f$125;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$125;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

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

    new-instance v1, Lcom/mob/tools/a/f$2;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$2;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

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

    new-instance v1, Lcom/mob/tools/a/f$24;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$24;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

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

    new-instance v1, Lcom/mob/tools/a/f$35;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$35;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/f$42;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$42;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/f$43;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$43;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/f$45;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$45;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/f$46;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$46;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public q()[Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, [Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/f$49;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$49;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/f$50;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$50;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/f$51;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$51;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public t()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/f$52;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$52;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/f$54;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$54;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public v()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/f$56;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$56;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public w()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/f$57;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$57;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public x()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/f$58;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$58;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public y()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/f$60;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$60;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public z()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/mob/tools/a/f$61;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/a/f$61;-><init>(Lcom/mob/tools/a/f;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/Class;Lcom/mob/tools/a/f$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
