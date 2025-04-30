.class Lcom/join/mgps/fragment/GmaeFormPostFragment$k;
.super Ljava/lang/Object;
.source "GmaeFormPostFragment.java"

# interfaces
.implements Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$u;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/fragment/GmaeFormPostFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/GmaeFormPostFragment;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/GmaeFormPostFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment$k;->a:Lcom/join/mgps/fragment/GmaeFormPostFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment$k;->a:Lcom/join/mgps/fragment/GmaeFormPostFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment$k;->a:Lcom/join/mgps/fragment/GmaeFormPostFragment;

    invoke-static {v1, v0}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->M(Lcom/join/mgps/fragment/GmaeFormPostFragment;Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment$k;->a:Lcom/join/mgps/fragment/GmaeFormPostFragment;

    const v1, 0x7f11010d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->showMessage(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment$k;->a:Lcom/join/mgps/fragment/GmaeFormPostFragment;

    invoke-virtual {v0}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->p1()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment$k;->a:Lcom/join/mgps/fragment/GmaeFormPostFragment;

    invoke-virtual {p1}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->b1()V

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment$k;->a:Lcom/join/mgps/fragment/GmaeFormPostFragment;

    invoke-virtual {v0, p1}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->P0(I)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment$k;->a:Lcom/join/mgps/fragment/GmaeFormPostFragment;

    invoke-virtual {v0, p1}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->F0(I)V

    return-void
.end method

.method public b(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment$k;->a:Lcom/join/mgps/fragment/GmaeFormPostFragment;

    invoke-virtual {v0, p1}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->h0(I)Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->a1(Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V

    return-void
.end method

.method public c(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment$k;->a:Lcom/join/mgps/fragment/GmaeFormPostFragment;

    iget-object v0, v0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0;

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$o;

    .line 3
    iget-object v1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment$k;->a:Lcom/join/mgps/fragment/GmaeFormPostFragment;

    iput p1, v1, Lcom/join/mgps/fragment/GmaeFormPostFragment;->G:I

    .line 4
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 5
    sget-object v1, Lcom/join/mgps/activity/MGMainActivity$MediaCmd;->CMD_PLAY:Lcom/join/mgps/activity/MGMainActivity$MediaCmd;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_mediacmd"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment$k;->a:Lcom/join/mgps/fragment/GmaeFormPostFragment;

    iget v3, v3, Lcom/join/mgps/fragment/GmaeFormPostFragment;->G:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$o;->b:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v0, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$o;->a:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v0, v1, v2

    const-string v0, "key_mediacmd_params"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment$k;->a:Lcom/join/mgps/fragment/GmaeFormPostFragment;

    invoke-virtual {v0, p1}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->X(Landroid/os/Bundle;)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment$k;->a:Lcom/join/mgps/fragment/GmaeFormPostFragment;

    invoke-virtual {p1}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->x0()V

    return-void
.end method

.method public d(I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setPid(I)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment$k;->a:Lcom/join/mgps/fragment/GmaeFormPostFragment;

    iget-object p1, p1, Lcom/join/mgps/fragment/GmaeFormPostFragment;->y:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/join/mgps/Util/i0;->v0(Landroid/content/Context;Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment$k;->a:Lcom/join/mgps/fragment/GmaeFormPostFragment;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->G0:Z

    .line 2
    invoke-virtual {v0, p1}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->f0(Ljava/lang/String;)V

    return-void
.end method

.method public f(I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/dto/ForumBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/ForumBean;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/ForumBean;->setFid(I)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment$k;->a:Lcom/join/mgps/fragment/GmaeFormPostFragment;

    iget-object p1, p1, Lcom/join/mgps/fragment/GmaeFormPostFragment;->y:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/join/mgps/Util/i0;->r0(Landroid/content/Context;Lcom/join/mgps/dto/ForumBean;)V

    return-void
.end method
