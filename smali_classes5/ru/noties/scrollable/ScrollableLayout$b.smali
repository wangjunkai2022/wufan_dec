.class Lru/noties/scrollable/ScrollableLayout$b;
.super Ljava/lang/Object;
.source "ScrollableLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/noties/scrollable/ScrollableLayout;->x(I)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lru/noties/scrollable/ScrollableLayout;


# direct methods
.method constructor <init>(Lru/noties/scrollable/ScrollableLayout;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lru/noties/scrollable/ScrollableLayout$b;->c:Lru/noties/scrollable/ScrollableLayout;

    iput p2, p0, Lru/noties/scrollable/ScrollableLayout$b;->a:I

    iput p3, p0, Lru/noties/scrollable/ScrollableLayout$b;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    .line 2
    iget-object v0, p0, Lru/noties/scrollable/ScrollableLayout$b;->c:Lru/noties/scrollable/ScrollableLayout;

    iget v1, p0, Lru/noties/scrollable/ScrollableLayout$b;->a:I

    int-to-float v1, v1

    iget v2, p0, Lru/noties/scrollable/ScrollableLayout$b;->b:I

    int-to-float v2, v2

    mul-float v2, v2, p1

    add-float/2addr v1, v2

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr v1, p1

    float-to-int p1, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lru/noties/scrollable/ScrollableLayout;->scrollTo(II)V

    return-void
.end method
