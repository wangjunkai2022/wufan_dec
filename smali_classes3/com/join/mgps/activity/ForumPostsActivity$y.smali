.class Lcom/join/mgps/activity/ForumPostsActivity$y;
.super Ljava/lang/Object;
.source "ForumPostsActivity.java"

# interfaces
.implements Lcom/join/mgps/customview/KeyboardListenLayout$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ForumPostsActivity;->R1()V
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
    iput-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$y;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHidden()V
    .locals 0

    return-void
.end method

.method public onShown()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$y;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ForumPostsActivity;->E0(Lcom/join/mgps/activity/ForumPostsActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$y;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/ForumPostsActivity;->I1(Z)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$y;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/ForumPostsActivity;->I1(Z)V

    :goto_0
    return-void
.end method
