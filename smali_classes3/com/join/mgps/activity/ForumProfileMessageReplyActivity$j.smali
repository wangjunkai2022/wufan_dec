.class Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$j;
.super Landroid/os/Handler;
.source "ForumProfileMessageReplyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$j;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$j;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->q:Lcom/join/mgps/customview/XListView;

    invoke-virtual {p1}, Lcom/join/mgps/customview/XListView;->r()V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$j;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->q:Lcom/join/mgps/customview/XListView;

    invoke-virtual {p1}, Lcom/join/mgps/customview/XListView;->q()V

    return-void
.end method
