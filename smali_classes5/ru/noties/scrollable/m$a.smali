.class Lru/noties/scrollable/m$a;
.super Ljava/lang/Object;
.source "OverScrollListenerBase.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/noties/scrollable/m;->b(Lru/noties/scrollable/ScrollableLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lru/noties/scrollable/ScrollableLayout;

.field final synthetic b:F

.field final synthetic c:Lru/noties/scrollable/m;


# direct methods
.method constructor <init>(Lru/noties/scrollable/m;Lru/noties/scrollable/ScrollableLayout;F)V
    .locals 0

    .line 1
    iput-object p1, p0, Lru/noties/scrollable/m$a;->c:Lru/noties/scrollable/m;

    iput-object p2, p0, Lru/noties/scrollable/m$a;->a:Lru/noties/scrollable/ScrollableLayout;

    iput p3, p0, Lru/noties/scrollable/m$a;->b:F

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
    iget-object v0, p0, Lru/noties/scrollable/m$a;->c:Lru/noties/scrollable/m;

    invoke-static {v0}, Lru/noties/scrollable/m;->d(Lru/noties/scrollable/m;)I

    move-result v1

    iget-object v2, p0, Lru/noties/scrollable/m$a;->c:Lru/noties/scrollable/m;

    invoke-static {v2}, Lru/noties/scrollable/m;->d(Lru/noties/scrollable/m;)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, p1

    float-to-int v2, v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lru/noties/scrollable/m;->e(Lru/noties/scrollable/m;I)I

    .line 3
    iget-object v0, p0, Lru/noties/scrollable/m$a;->c:Lru/noties/scrollable/m;

    iget-object v1, p0, Lru/noties/scrollable/m$a;->a:Lru/noties/scrollable/ScrollableLayout;

    iget v2, p0, Lru/noties/scrollable/m$a;->b:F

    mul-float p1, p1, v2

    sub-float/2addr v2, p1

    invoke-virtual {v0, v1, v2}, Lru/noties/scrollable/m;->j(Lru/noties/scrollable/ScrollableLayout;F)V

    return-void
.end method
