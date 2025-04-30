.class Lcom/join/mgps/activity/ForumPostsActivity$o;
.super Ljava/lang/Object;
.source "ForumPostsActivity.java"

# interfaces
.implements Lcom/join/mgps/customview/e$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/ForumPostsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/ForumPostsActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ForumPostsActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$o;->a:Lcom/join/mgps/activity/ForumPostsActivity;

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
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$o;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ForumPostsActivity;->M0(Lcom/join/mgps/activity/ForumPostsActivity;)V

    :cond_0
    return-void
.end method

.method public d(Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$o;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_favorite()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setIs_favorite(Z)V

    :cond_0
    return-void
.end method

.method public e(Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$o;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    if-eqz v0, :cond_0

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
