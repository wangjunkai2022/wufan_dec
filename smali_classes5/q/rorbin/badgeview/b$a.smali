.class Lq/rorbin/badgeview/b$a;
.super Ljava/lang/Object;
.source "BadgeAnimator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq/rorbin/badgeview/b;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/PointF;Lq/rorbin/badgeview/QBadgeView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lq/rorbin/badgeview/b;


# direct methods
.method constructor <init>(Lq/rorbin/badgeview/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lq/rorbin/badgeview/b$a;->a:Lq/rorbin/badgeview/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lq/rorbin/badgeview/b$a;->a:Lq/rorbin/badgeview/b;

    invoke-static {p1}, Lq/rorbin/badgeview/b;->a(Lq/rorbin/badgeview/b;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lq/rorbin/badgeview/QBadgeView;

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    iget-object p1, p0, Lq/rorbin/badgeview/b$a;->a:Lq/rorbin/badgeview/b;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :goto_1
    return-void
.end method
