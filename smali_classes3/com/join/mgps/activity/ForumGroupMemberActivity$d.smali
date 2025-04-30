.class Lcom/join/mgps/activity/ForumGroupMemberActivity$d;
.super Ljava/lang/Object;
.source "ForumGroupMemberActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ForumGroupMemberActivity;->R0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/ForumGroupMemberActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ForumGroupMemberActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity$d;->a:Lcom/join/mgps/activity/ForumGroupMemberActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity$d;->a:Lcom/join/mgps/activity/ForumGroupMemberActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->a:Lcom/join/mgps/customview/XListView2;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->u()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity$d;->a:Lcom/join/mgps/activity/ForumGroupMemberActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->a:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->t()V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity$d;->a:Lcom/join/mgps/activity/ForumGroupMemberActivity;

    iget v1, v0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->g:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 5
    iget-object v0, v0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->a:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->setNoMore()V

    :cond_1
    return-void
.end method
