.class Lcom/join/mgps/fragment/s0$f;
.super Ljava/lang/Object;
.source "ForumPostsFragment.java"

# interfaces
.implements Lcom/join/mgps/customview/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/s0;->n0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/s0;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/s0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/s0$f;->a:Lcom/join/mgps/fragment/s0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/s0$f;->a:Lcom/join/mgps/fragment/s0;

    invoke-virtual {v0}, Lcom/join/mgps/fragment/s0;->a0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/fragment/s0$f;->a:Lcom/join/mgps/fragment/s0;

    iget v1, v0, Lcom/join/mgps/fragment/s0;->n:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/join/mgps/fragment/s0;->V(I)V

    :cond_0
    return-void
.end method
