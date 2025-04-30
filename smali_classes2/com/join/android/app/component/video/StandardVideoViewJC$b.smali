.class Lcom/join/android/app/component/video/StandardVideoViewJC$b;
.super Ljava/lang/Object;
.source "StandardVideoViewJC.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/component/video/StandardVideoViewJC;->m(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/android/app/component/video/StandardVideoViewJC;


# direct methods
.method constructor <init>(Lcom/join/android/app/component/video/StandardVideoViewJC;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC$b;->a:Lcom/join/android/app/component/video/StandardVideoViewJC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC$b;->a:Lcom/join/android/app/component/video/StandardVideoViewJC;

    iget-object p1, p1, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->h:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->performClick()Z

    .line 2
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC$b;->a:Lcom/join/android/app/component/video/StandardVideoViewJC;

    iget-object p1, p1, Lcom/join/android/app/component/video/StandardVideoViewJC;->r1:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
