.class Lcom/join/mgps/activity/ForumGroupMemberActivity$a;
.super Ljava/lang/Object;
.source "ForumGroupMemberActivity.java"

# interfaces
.implements Lcom/join/mgps/customview/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ForumGroupMemberActivity;->I0()V
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
    iput-object p1, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity$a;->a:Lcom/join/mgps/activity/ForumGroupMemberActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity$a;->a:Lcom/join/mgps/activity/ForumGroupMemberActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/ForumGroupMemberActivity;->K0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity$a;->a:Lcom/join/mgps/activity/ForumGroupMemberActivity;

    iget v1, v0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->f:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/ForumGroupMemberActivity;->H0(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity$a;->a:Lcom/join/mgps/activity/ForumGroupMemberActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/ForumGroupMemberActivity;->R0()V

    :goto_0
    return-void
.end method
