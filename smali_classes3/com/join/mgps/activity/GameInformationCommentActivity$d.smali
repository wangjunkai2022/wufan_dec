.class Lcom/join/mgps/activity/GameInformationCommentActivity$d;
.super Ljava/lang/Object;
.source "GameInformationCommentActivity.java"

# interfaces
.implements Lcom/join/mgps/customview/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GameInformationCommentActivity;->afterview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/GameInformationCommentActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameInformationCommentActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameInformationCommentActivity$d;->a:Lcom/join/mgps/activity/GameInformationCommentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationCommentActivity$d;->a:Lcom/join/mgps/activity/GameInformationCommentActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/GameInformationCommentActivity;->F0(Lcom/join/mgps/activity/GameInformationCommentActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationCommentActivity$d;->a:Lcom/join/mgps/activity/GameInformationCommentActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/join/mgps/activity/GameInformationCommentActivity;->G0(Lcom/join/mgps/activity/GameInformationCommentActivity;I)I

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationCommentActivity$d;->a:Lcom/join/mgps/activity/GameInformationCommentActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/GameInformationCommentActivity;->K0()V

    return-void
.end method
