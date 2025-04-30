.class Lcom/join/android/app/component/video/StandardVideoViewJC$d;
.super Ljava/lang/Object;
.source "StandardVideoViewJC.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/component/video/StandardVideoViewJC;->O(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/join/android/app/component/video/StandardVideoViewJC;


# direct methods
.method constructor <init>(Lcom/join/android/app/component/video/StandardVideoViewJC;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC$d;->b:Lcom/join/android/app/component/video/StandardVideoViewJC;

    iput p2, p0, Lcom/join/android/app/component/video/StandardVideoViewJC$d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC$d;->a:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC$d;->b:Lcom/join/android/app/component/video/StandardVideoViewJC;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Landroid/app/Activity;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC$d;->b:Lcom/join/android/app/component/video/StandardVideoViewJC;

    iget-boolean v0, p1, Lcom/join/android/app/component/video/StandardVideoViewJC;->x1:Z

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC$d;->b:Lcom/join/android/app/component/video/StandardVideoViewJC;

    invoke-virtual {p1}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->S()V

    .line 5
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC$d;->b:Lcom/join/android/app/component/video/StandardVideoViewJC;

    iget-object p1, p1, Lcom/join/android/app/component/video/StandardVideoViewJC;->A1:Lcom/join/mgps/customview/t;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
