.class Lcom/papa/gsyvideoplayer/utils/i$b;
.super Ljava/lang/Object;
.source "ListVideoUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/gsyvideoplayer/utils/i;->a0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/papa/gsyvideoplayer/utils/i;


# direct methods
.method constructor <init>(Lcom/papa/gsyvideoplayer/utils/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/utils/i$b;->a:Lcom/papa/gsyvideoplayer/utils/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/i$b;->a:Lcom/papa/gsyvideoplayer/utils/i;

    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/i;->a(Lcom/papa/gsyvideoplayer/utils/i;)Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/papa/gsyvideoplayer/utils/i;->b(Lcom/papa/gsyvideoplayer/utils/i;Lcom/papa/gsyvideoplayer/video/base/GSYVideoPlayer;)V

    return-void
.end method
