.class Lcom/join/mgps/fragment/GmaeFormPostFragment$g;
.super Ljava/lang/Object;
.source "GmaeFormPostFragment.java"

# interfaces
.implements Lcom/join/mgps/customview/e$d;


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
    iput-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment$g;->a:Lcom/join/mgps/fragment/GmaeFormPostFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    return-void
.end method

.method public b(Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V
    .locals 0

    return-void
.end method

.method public c(IZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment$g;->a:Lcom/join/mgps/fragment/GmaeFormPostFragment;

    invoke-virtual {v0, p1, p2}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->w0(IZ)V

    return-void
.end method

.method public d(Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment$g;->a:Lcom/join/mgps/fragment/GmaeFormPostFragment;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->h0(I)Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_favorite()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setIs_favorite(Z)V

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_favorite()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment$g;->a:Lcom/join/mgps/fragment/GmaeFormPostFragment;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->w0(IZ)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment$g;->a:Lcom/join/mgps/fragment/GmaeFormPostFragment;

    invoke-virtual {p1}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->v0()V

    return-void
.end method

.method public e(Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment$g;->a:Lcom/join/mgps/fragment/GmaeFormPostFragment;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->h0(I)Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getBest()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setBest(I)V

    :cond_0
    return-void
.end method

.method public onCancel()V
    .locals 0

    return-void
.end method
