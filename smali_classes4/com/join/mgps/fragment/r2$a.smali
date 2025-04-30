.class Lcom/join/mgps/fragment/r2$a;
.super Ljava/lang/Object;
.source "GameOlNoOpenTestFragment.java"

# interfaces
.implements Lcom/join/mgps/customview/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/r2;->Q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/r2;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/r2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/r2$a;->a:Lcom/join/mgps/fragment/r2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/r2$a;->a:Lcom/join/mgps/fragment/r2;

    invoke-static {v0}, Lcom/join/mgps/fragment/r2;->M(Lcom/join/mgps/fragment/r2;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/r2$a;->a:Lcom/join/mgps/fragment/r2;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/join/mgps/fragment/r2;->N(Lcom/join/mgps/fragment/r2;I)I

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/r2$a;->a:Lcom/join/mgps/fragment/r2;

    invoke-static {v0, v1}, Lcom/join/mgps/fragment/r2;->O(Lcom/join/mgps/fragment/r2;Z)Z

    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/r2$a;->a:Lcom/join/mgps/fragment/r2;

    invoke-virtual {v0}, Lcom/join/mgps/fragment/r2;->R()V

    return-void
.end method
