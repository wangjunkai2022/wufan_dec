.class Lcom/join/mgps/activity/ForumMyActivity$e;
.super Ljava/lang/Object;
.source "ForumMyActivity.java"

# interfaces
.implements Lcom/join/mgps/customview/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ForumMyActivity;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/ForumMyActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ForumMyActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ForumMyActivity$e;->a:Lcom/join/mgps/activity/ForumMyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyActivity$e;->a:Lcom/join/mgps/activity/ForumMyActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/ForumMyActivity;->E0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyActivity$e;->a:Lcom/join/mgps/activity/ForumMyActivity;

    const/4 v1, 0x0

    iput v1, v0, Lcom/join/mgps/activity/ForumMyActivity;->i:I

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/ForumMyActivity;->G0(I)V

    :cond_0
    return-void
.end method
