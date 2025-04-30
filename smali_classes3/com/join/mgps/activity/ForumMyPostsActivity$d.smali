.class Lcom/join/mgps/activity/ForumMyPostsActivity$d;
.super Lcom/join/mgps/adapter/ForumBaseAdapter$y0;
.source "ForumMyPostsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ForumMyPostsActivity;->O0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/join/mgps/activity/ForumMyPostsActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ForumMyPostsActivity;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ForumMyPostsActivity$d;->b:Lcom/join/mgps/activity/ForumMyPostsActivity;

    iput-object p2, p0, Lcom/join/mgps/activity/ForumMyPostsActivity$d;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/join/mgps/adapter/ForumBaseAdapter$y0;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity$d;->b:Lcom/join/mgps/activity/ForumMyPostsActivity;

    iget-object v1, p0, Lcom/join/mgps/activity/ForumMyPostsActivity$d;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/join/mgps/activity/ForumMyPostsActivity;->G0(Lcom/join/mgps/activity/ForumMyPostsActivity;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/ForumMyPostsActivity$d;->b:Lcom/join/mgps/activity/ForumMyPostsActivity;

    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity$d;->a:Landroid/content/Context;

    const v1, 0x7f11010d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/ForumMyPostsActivity;->showMessage(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity$d;->b:Lcom/join/mgps/activity/ForumMyPostsActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/ForumMyPostsActivity;->f1()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/ForumMyPostsActivity$d;->b:Lcom/join/mgps/activity/ForumMyPostsActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/ForumMyPostsActivity;->b1()V

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity$d;->b:Lcom/join/mgps/activity/ForumMyPostsActivity;

    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/ForumMyPostsActivity;->Z0(I)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity$d;->b:Lcom/join/mgps/activity/ForumMyPostsActivity;

    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/ForumMyPostsActivity;->W0(I)V

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
    iget-object p1, p0, Lcom/join/mgps/activity/ForumMyPostsActivity$d;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/join/mgps/Util/i0;->v0(Landroid/content/Context;Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity$d;->b:Lcom/join/mgps/activity/ForumMyPostsActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/join/mgps/activity/ForumMyPostsActivity;->D:Z

    .line 2
    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/ForumMyPostsActivity;->L0(Ljava/lang/String;)V

    return-void
.end method
