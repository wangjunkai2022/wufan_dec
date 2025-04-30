.class Lcom/join/mgps/activity/NowWufunFragment$b;
.super Ljava/lang/Object;
.source "NowWufunFragment.java"

# interfaces
.implements Lcom/join/mgps/customview/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/NowWufunFragment;->M()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/NowWufunFragment;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/NowWufunFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/NowWufunFragment$b;->a:Lcom/join/mgps/activity/NowWufunFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/NowWufunFragment$b;->a:Lcom/join/mgps/activity/NowWufunFragment;

    invoke-static {v0}, Lcom/join/mgps/activity/NowWufunFragment;->N(Lcom/join/mgps/activity/NowWufunFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/NowWufunFragment$b;->a:Lcom/join/mgps/activity/NowWufunFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/join/mgps/activity/NowWufunFragment;->P(Lcom/join/mgps/activity/NowWufunFragment;I)I

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/NowWufunFragment$b;->a:Lcom/join/mgps/activity/NowWufunFragment;

    invoke-static {v0}, Lcom/join/mgps/activity/NowWufunFragment;->O(Lcom/join/mgps/activity/NowWufunFragment;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/NowWufunFragment$b;->a:Lcom/join/mgps/activity/NowWufunFragment;

    invoke-virtual {v0}, Lcom/join/mgps/activity/NowWufunFragment;->R()V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/NowWufunFragment$b;->a:Lcom/join/mgps/activity/NowWufunFragment;

    invoke-virtual {v0}, Lcom/join/mgps/activity/NowWufunFragment;->Q()V

    :goto_0
    return-void
.end method
