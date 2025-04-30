.class Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView$1;
.super Ljava/lang/Object;
.source "FulllScreenVideoView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView$1;->this$0:Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;

    iput-object p2, p0, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView$1;->this$0:Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;

    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView$1;->val$context:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;->startWindowFullscreen(Landroid/content/Context;ZZ)Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    return-void
.end method
