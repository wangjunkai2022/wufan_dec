.class public Lcom/mob/commons/cc/k;
.super Landroid/database/ContentObserver;

# interfaces
.implements Lcom/mob/commons/cc/t;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/database/ContentObserver;",
        "Lcom/mob/commons/cc/t<",
        "Lcom/mob/commons/cc/k;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/mob/commons/cc/p;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/mob/commons/cc/p;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mob/commons/cc/k;->a:Lcom/mob/commons/cc/p;

    return-void
.end method

.method public a(Lcom/mob/commons/cc/k;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;[Z[Ljava/lang/Object;[Ljava/lang/Throwable;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mob/commons/cc/k;",
            "Ljava/lang/Class<",
            "Lcom/mob/commons/cc/k;",
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

    const-string p2, "setHandler"

    .line 3
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    array-length p2, p4

    const/4 p5, 0x1

    if-ne p2, p5, :cond_0

    aget-object p2, p4, p3

    if-eqz p2, :cond_0

    aget-object p2, p4, p3

    instance-of p2, p2, Lcom/mob/commons/cc/p;

    if-eqz p2, :cond_0

    .line 4
    aget-object p2, p4, p3

    check-cast p2, Lcom/mob/commons/cc/p;

    invoke-virtual {p1, p2}, Lcom/mob/commons/cc/k;->a(Lcom/mob/commons/cc/p;)V

    return p5

    :cond_0
    return p3
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;[Z[Ljava/lang/Object;[Ljava/lang/Throwable;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/mob/commons/cc/k;

    invoke-virtual/range {p0 .. p7}, Lcom/mob/commons/cc/k;->a(Lcom/mob/commons/cc/k;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;[Z[Ljava/lang/Object;[Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public onChange(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mob/commons/cc/k;->a:Lcom/mob/commons/cc/p;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object p1, p0, Lcom/mob/commons/cc/k;->a:Lcom/mob/commons/cc/p;

    const-string v1, "onChange"

    invoke-virtual {p1, v1, v0}, Lcom/mob/commons/cc/p;->a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
