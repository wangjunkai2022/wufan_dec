.class Lcom/join/mgps/activity/ForumTopicActivity$h;
.super Ljava/lang/Object;
.source "ForumTopicActivity.java"

# interfaces
.implements Lcom/join/mgps/customview/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ForumTopicActivity;->P0()V
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
    iput-object p1, p0, Lcom/join/mgps/activity/ForumTopicActivity$h;->a:Lcom/join/mgps/activity/ForumTopicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity$h;->a:Lcom/join/mgps/activity/ForumTopicActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/ForumTopicActivity;->x1()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity$h;->a:Lcom/join/mgps/activity/ForumTopicActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/ForumTopicActivity;->R0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity$h;->a:Lcom/join/mgps/activity/ForumTopicActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/ForumTopicActivity;->k1()V

    :cond_0
    return-void
.end method
