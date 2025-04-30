.class public Lru/noties/scrollable/i;
.super Ljava/lang/Object;
.source "InterpolatorCloseUpAnimatorConfigurator.java"

# interfaces
.implements Lru/noties/scrollable/d;


# instance fields
.field private final a:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>(Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lru/noties/scrollable/i;->a:Landroid/view/animation/Interpolator;

    return-void
.end method


# virtual methods
.method public a(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lru/noties/scrollable/i;->a:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void
.end method
