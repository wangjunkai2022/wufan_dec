.class Lcom/join/mgps/customview/CircleDownloadProgressBar$a;
.super Ljava/lang/Object;
.source "CircleDownloadProgressBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/CircleDownloadProgressBar;->setProgress(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/CircleDownloadProgressBar;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/CircleDownloadProgressBar;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/CircleDownloadProgressBar$a;->a:Lcom/join/mgps/customview/CircleDownloadProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/CircleDownloadProgressBar$a;->a:Lcom/join/mgps/customview/CircleDownloadProgressBar;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    mul-int/lit16 p1, p1, 0x168

    invoke-static {}, Lcom/join/mgps/customview/CircleDownloadProgressBar;->b()I

    move-result v1

    div-int/2addr p1, v1

    invoke-static {v0, p1}, Lcom/join/mgps/customview/CircleDownloadProgressBar;->a(Lcom/join/mgps/customview/CircleDownloadProgressBar;I)I

    .line 2
    iget-object p1, p0, Lcom/join/mgps/customview/CircleDownloadProgressBar$a;->a:Lcom/join/mgps/customview/CircleDownloadProgressBar;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
