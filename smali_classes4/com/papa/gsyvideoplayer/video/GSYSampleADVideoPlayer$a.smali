.class Lcom/papa/gsyvideoplayer/video/GSYSampleADVideoPlayer$a;
.super Ljava/lang/Object;
.source "GSYSampleADVideoPlayer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/gsyvideoplayer/video/GSYSampleADVideoPlayer;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/papa/gsyvideoplayer/video/GSYSampleADVideoPlayer;


# direct methods
.method constructor <init>(Lcom/papa/gsyvideoplayer/video/GSYSampleADVideoPlayer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/GSYSampleADVideoPlayer$a;->a:Lcom/papa/gsyvideoplayer/video/GSYSampleADVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/GSYSampleADVideoPlayer$a;->a:Lcom/papa/gsyvideoplayer/video/GSYSampleADVideoPlayer;

    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/ListGSYVideoPlayer;->a()Z

    return-void
.end method
