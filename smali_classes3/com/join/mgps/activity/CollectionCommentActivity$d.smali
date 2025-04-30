.class Lcom/join/mgps/activity/CollectionCommentActivity$d;
.super Ljava/lang/Object;
.source "CollectionCommentActivity.java"

# interfaces
.implements Lcom/join/mgps/customview/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/CollectionCommentActivity;->afterview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/CollectionCommentActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/CollectionCommentActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/CollectionCommentActivity$d;->a:Lcom/join/mgps/activity/CollectionCommentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionCommentActivity$d;->a:Lcom/join/mgps/activity/CollectionCommentActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/CollectionCommentActivity;->G0(Lcom/join/mgps/activity/CollectionCommentActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionCommentActivity$d;->a:Lcom/join/mgps/activity/CollectionCommentActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/join/mgps/activity/CollectionCommentActivity;->H0(Lcom/join/mgps/activity/CollectionCommentActivity;I)I

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionCommentActivity$d;->a:Lcom/join/mgps/activity/CollectionCommentActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/CollectionCommentActivity;->L0()V

    return-void
.end method
