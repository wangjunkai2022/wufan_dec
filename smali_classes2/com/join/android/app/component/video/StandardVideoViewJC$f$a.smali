.class Lcom/join/android/app/component/video/StandardVideoViewJC$f$a;
.super Ljava/lang/Object;
.source "StandardVideoViewJC.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/component/video/StandardVideoViewJC$f;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/android/app/component/video/StandardVideoViewJC$f;


# direct methods
.method constructor <init>(Lcom/join/android/app/component/video/StandardVideoViewJC$f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC$f$a;->a:Lcom/join/android/app/component/video/StandardVideoViewJC$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC$f$a;->a:Lcom/join/android/app/component/video/StandardVideoViewJC$f;

    iget-object v0, v0, Lcom/join/android/app/component/video/StandardVideoViewJC$f;->a:Lcom/join/android/app/component/video/StandardVideoViewJC;

    iget-object v0, v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->o:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC$f$a;->a:Lcom/join/android/app/component/video/StandardVideoViewJC$f;

    iget-object v0, v0, Lcom/join/android/app/component/video/StandardVideoViewJC$f;->a:Lcom/join/android/app/component/video/StandardVideoViewJC;

    iget-object v0, v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->n:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC$f$a;->a:Lcom/join/android/app/component/video/StandardVideoViewJC$f;

    iget-object v0, v0, Lcom/join/android/app/component/video/StandardVideoViewJC$f;->a:Lcom/join/android/app/component/video/StandardVideoViewJC;

    iget-object v0, v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC$f$a;->a:Lcom/join/android/app/component/video/StandardVideoViewJC$f;

    iget-object v0, v0, Lcom/join/android/app/component/video/StandardVideoViewJC$f;->a:Lcom/join/android/app/component/video/StandardVideoViewJC;

    iget-object v0, v0, Lcom/join/android/app/component/video/StandardVideoViewJC;->Z0:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC$f$a;->a:Lcom/join/android/app/component/video/StandardVideoViewJC$f;

    iget-object v0, v0, Lcom/join/android/app/component/video/StandardVideoViewJC$f;->a:Lcom/join/android/app/component/video/StandardVideoViewJC;

    iget v2, v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->c:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 7
    iget-object v0, v0, Lcom/join/android/app/component/video/StandardVideoViewJC;->P0:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC$f$a;->a:Lcom/join/android/app/component/video/StandardVideoViewJC$f;

    iget-object v0, v0, Lcom/join/android/app/component/video/StandardVideoViewJC$f;->a:Lcom/join/android/app/component/video/StandardVideoViewJC;

    invoke-virtual {v0, v1}, Lcom/join/android/app/component/video/StandardVideoViewJC;->q0(I)V

    return-void
.end method
