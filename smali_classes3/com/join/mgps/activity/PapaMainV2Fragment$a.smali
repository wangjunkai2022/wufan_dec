.class Lcom/join/mgps/activity/PapaMainV2Fragment$a;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PapaMainV2Fragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/PapaMainV2Fragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/PapaMainV2Fragment;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/PapaMainV2Fragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment$a;->a:Lcom/join/mgps/activity/PapaMainV2Fragment;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getImagePipeline()Lcom/facebook/imagepipeline/core/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/g;->I()V

    .line 2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1
.end method
