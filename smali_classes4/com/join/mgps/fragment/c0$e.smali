.class Lcom/join/mgps/fragment/c0$e;
.super Ljava/lang/Object;
.source "DiscoveryFragment.java"

# interfaces
.implements Lcom/join/mgps/customview/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/c0;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/c0;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/c0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/c0$e;->a:Lcom/join/mgps/fragment/c0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/c0$e;->a:Lcom/join/mgps/fragment/c0;

    invoke-static {v0}, Lcom/join/mgps/fragment/c0;->O(Lcom/join/mgps/fragment/c0;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/c0$e;->a:Lcom/join/mgps/fragment/c0;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/join/mgps/fragment/c0;->P(Lcom/join/mgps/fragment/c0;I)I

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/c0$e;->a:Lcom/join/mgps/fragment/c0;

    iget-object v0, v0, Lcom/join/mgps/fragment/c0;->D:Lcom/join/android/app/component/video/c;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/join/android/app/component/video/c;->A()V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/fragment/c0$e;->a:Lcom/join/mgps/fragment/c0;

    iget-object v0, v0, Lcom/join/mgps/fragment/c0;->D:Lcom/join/android/app/component/video/c;

    invoke-virtual {v0, v1}, Lcom/join/android/app/component/video/c;->F(I)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/c0$e;->a:Lcom/join/mgps/fragment/c0;

    invoke-static {v0}, Lcom/join/mgps/fragment/c0;->Q(Lcom/join/mgps/fragment/c0;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/fragment/c0$e;->a:Lcom/join/mgps/fragment/c0;

    invoke-virtual {v0}, Lcom/join/mgps/fragment/c0;->X()V

    return-void
.end method
