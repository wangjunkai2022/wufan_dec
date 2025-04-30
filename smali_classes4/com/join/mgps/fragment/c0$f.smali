.class Lcom/join/mgps/fragment/c0$f;
.super Lcom/join/mgps/adapter/ForumBaseAdapter$y0;
.source "DiscoveryFragment.java"


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
    iput-object p1, p0, Lcom/join/mgps/fragment/c0$f;->a:Lcom/join/mgps/fragment/c0;

    invoke-direct {p0}, Lcom/join/mgps/adapter/ForumBaseAdapter$y0;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/c0$f;->a:Lcom/join/mgps/fragment/c0;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/mgps/fragment/c0;->R(Lcom/join/mgps/fragment/c0;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/fragment/c0$f;->a:Lcom/join/mgps/fragment/c0;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f11010d

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/fragment/c0;->showMessage(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/c0$f;->a:Lcom/join/mgps/fragment/c0;

    invoke-virtual {v0}, Lcom/join/mgps/fragment/c0;->k0()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object p1, p0, Lcom/join/mgps/fragment/c0$f;->a:Lcom/join/mgps/fragment/c0;

    invoke-virtual {p1}, Lcom/join/mgps/fragment/c0;->f0()V

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/c0$f;->a:Lcom/join/mgps/fragment/c0;

    invoke-virtual {v0, p1}, Lcom/join/mgps/fragment/c0;->d0(I)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/fragment/c0$f;->a:Lcom/join/mgps/fragment/c0;

    invoke-virtual {v0, p1}, Lcom/join/mgps/fragment/c0;->b0(I)V

    return-void
.end method

.method public d(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter$y0;->d(I)V

    .line 2
    new-instance v0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;-><init>()V

    .line 3
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setPid(I)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/fragment/c0$f;->a:Lcom/join/mgps/fragment/c0;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/join/mgps/Util/i0;->v0(Landroid/content/Context;Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
