.class public Lcom/mob/commons/cc/z;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/commons/cc/z$a;
    }
.end annotation


# instance fields
.field private a:Lcom/mob/commons/cc/z$a;


# direct methods
.method public constructor <init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/mob/commons/cc/z$a;

    invoke-direct {v0, p1, p2, p3}, Lcom/mob/commons/cc/z$a;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    iput-object v0, p0, Lcom/mob/commons/cc/z;->a:Lcom/mob/commons/cc/z$a;

    return-void
.end method


# virtual methods
.method public a()Lcom/mob/commons/cc/z$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/commons/cc/z;->a:Lcom/mob/commons/cc/z$a;

    return-object v0
.end method

.method public a(Ljava/lang/Number;)Z
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/mob/commons/cc/z;->a:Lcom/mob/commons/cc/z$a;

    invoke-static {v0}, Lcom/mob/commons/cc/z$a;->a(Lcom/mob/commons/cc/z$a;)Ljava/lang/Number;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    .line 3
    iget-object v1, p0, Lcom/mob/commons/cc/z;->a:Lcom/mob/commons/cc/z$a;

    invoke-static {v1}, Lcom/mob/commons/cc/z$a;->b(Lcom/mob/commons/cc/z$a;)Ljava/lang/Number;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    .line 4
    invoke-interface {v0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    invoke-interface {v1, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b(Ljava/lang/Number;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/mob/commons/cc/z;->a(Ljava/lang/Number;)Z

    move-result p1

    return p1
.end method

.method public b()[Ljava/lang/Number;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Number;

    .line 2
    iget-object v1, p0, Lcom/mob/commons/cc/z;->a:Lcom/mob/commons/cc/z$a;

    invoke-static {v1}, Lcom/mob/commons/cc/z$a;->a(Lcom/mob/commons/cc/z$a;)Ljava/lang/Number;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/mob/commons/cc/z;->a:Lcom/mob/commons/cc/z$a;

    invoke-static {v1}, Lcom/mob/commons/cc/z$a;->b(Lcom/mob/commons/cc/z$a;)Ljava/lang/Number;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method
