.class Lcom/join/mgps/activity/ForumTopicActivity$k;
.super Landroid/os/Handler;
.source "ForumTopicActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/ForumTopicActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/ForumTopicActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ForumTopicActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ForumTopicActivity$k;->a:Lcom/join/mgps/activity/ForumTopicActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/ForumTopicActivity$k;->a:Lcom/join/mgps/activity/ForumTopicActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ForumTopicActivity;->f:Lcom/join/mgps/customview/XListView;

    invoke-virtual {p1}, Lcom/join/mgps/customview/XListView;->r()V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/ForumTopicActivity$k;->a:Lcom/join/mgps/activity/ForumTopicActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ForumTopicActivity;->f:Lcom/join/mgps/customview/XListView;

    invoke-virtual {p1}, Lcom/join/mgps/customview/XListView;->q()V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/ForumTopicActivity$k;->a:Lcom/join/mgps/activity/ForumTopicActivity;

    iget v0, p1, Lcom/join/mgps/activity/ForumTopicActivity;->o:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 6
    iget-object p1, p1, Lcom/join/mgps/activity/ForumTopicActivity;->f:Lcom/join/mgps/customview/XListView;

    invoke-virtual {p1}, Lcom/join/mgps/customview/XListView;->setNoMore()V

    :cond_1
    :goto_0
    return-void
.end method
