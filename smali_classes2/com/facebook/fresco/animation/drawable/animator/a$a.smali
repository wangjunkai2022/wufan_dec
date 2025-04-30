.class final Lcom/facebook/fresco/animation/drawable/animator/a$a;
.super Ljava/lang/Object;
.source "AnimatedDrawable2ValueAnimatorHelper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/fresco/animation/drawable/animator/a;->a(Lcom/facebook/fresco/animation/drawable/a;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/fresco/animation/drawable/a;


# direct methods
.method constructor <init>(Lcom/facebook/fresco/animation/drawable/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/animation/drawable/animator/a$a;->a:Lcom/facebook/fresco/animation/drawable/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/animator/a$a;->a:Lcom/facebook/fresco/animation/drawable/a;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    return-void
.end method
