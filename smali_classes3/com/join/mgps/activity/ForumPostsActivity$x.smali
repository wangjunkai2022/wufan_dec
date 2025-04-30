.class Lcom/join/mgps/activity/ForumPostsActivity$x;
.super Landroid/os/Handler;
.source "ForumPostsActivity.java"


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
    iput-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$x;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$x;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ForumPostsActivity;->d:Lcom/join/mgps/customview/XListView4ForumPost;

    invoke-virtual {p1}, Lcom/join/mgps/customview/XListView2;->u()V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$x;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ForumPostsActivity;->d:Lcom/join/mgps/customview/XListView4ForumPost;

    invoke-virtual {p1}, Lcom/join/mgps/customview/XListView2;->t()V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$x;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ForumPostsActivity;->R0(Lcom/join/mgps/activity/ForumPostsActivity;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$x;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ForumPostsActivity;->d:Lcom/join/mgps/customview/XListView4ForumPost;

    invoke-virtual {p1}, Lcom/join/mgps/customview/XListView2;->setNoMore()V

    :cond_0
    return-void
.end method
