.class Lcom/join/mgps/activity/ForumSearchHintActivity$f;
.super Landroid/os/Handler;
.source "ForumSearchHintActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/ForumSearchHintActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/ForumSearchHintActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ForumSearchHintActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$f;->a:Lcom/join/mgps/activity/ForumSearchHintActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$f;->a:Lcom/join/mgps/activity/ForumSearchHintActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ForumSearchHintActivity;->B:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {p1}, Lcom/join/mgps/customview/XListView2;->u()V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$f;->a:Lcom/join/mgps/activity/ForumSearchHintActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ForumSearchHintActivity;->B:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {p1}, Lcom/join/mgps/customview/XListView2;->t()V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$f;->a:Lcom/join/mgps/activity/ForumSearchHintActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ForumSearchHintActivity;->F0(Lcom/join/mgps/activity/ForumSearchHintActivity;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$f;->a:Lcom/join/mgps/activity/ForumSearchHintActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ForumSearchHintActivity;->B:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {p1}, Lcom/join/mgps/customview/XListView2;->setNoMore()V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$f;->a:Lcom/join/mgps/activity/ForumSearchHintActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ForumSearchHintActivity;->B:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {p1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$f;->a:Lcom/join/mgps/activity/ForumSearchHintActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ForumSearchHintActivity;->B:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {p1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$f;->a:Lcom/join/mgps/activity/ForumSearchHintActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->I0(Lcom/join/mgps/activity/ForumSearchHintActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$f;->a:Lcom/join/mgps/activity/ForumSearchHintActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ForumSearchHintActivity;->B:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {p1}, Lcom/join/mgps/customview/XListView2;->j()V

    :cond_1
    return-void
.end method
