.class Lcom/join/mgps/fragment/q0$h;
.super Ljava/lang/Object;
.source "ForumIndexFragment.java"

# interfaces
.implements Lru/noties/scrollable/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/q0;->i0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/q0;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/q0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/q0$h;->a:Lcom/join/mgps/fragment/q0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(III)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/join/mgps/fragment/q0$h;->a:Lcom/join/mgps/fragment/q0;

    iget-object p1, p1, Lcom/join/mgps/fragment/q0;->r:Lcom/join/mgps/fragment/y;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/join/mgps/fragment/y;->a()Lcom/join/mgps/fragment/u0;

    move-result-object p1

    instance-of p1, p1, Lcom/join/mgps/fragment/s0;

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/fragment/q0$h;->a:Lcom/join/mgps/fragment/q0;

    iget-object p1, p1, Lcom/join/mgps/fragment/q0;->r:Lcom/join/mgps/fragment/y;

    invoke-interface {p1}, Lcom/join/mgps/fragment/y;->a()Lcom/join/mgps/fragment/u0;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/fragment/s0;

    invoke-virtual {p1}, Lcom/join/mgps/fragment/s0;->y0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
