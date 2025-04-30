.class public Lme/relex/photodraweeview/PhotoDraweeView;
.super Lcom/facebook/drawee/view/SimpleDraweeView;
.source "PhotoDraweeView.java"

# interfaces
.implements Lme/relex/photodraweeview/d;


# instance fields
.field private a:Lme/relex/photodraweeview/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/facebook/drawee/view/SimpleDraweeView;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-virtual {p0}, Lme/relex/photodraweeview/PhotoDraweeView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/facebook/drawee/view/SimpleDraweeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    invoke-virtual {p0}, Lme/relex/photodraweeview/PhotoDraweeView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/drawee/view/SimpleDraweeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 8
    invoke-virtual {p0}, Lme/relex/photodraweeview/PhotoDraweeView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/drawee/generic/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/facebook/drawee/view/SimpleDraweeView;-><init>(Landroid/content/Context;Lcom/facebook/drawee/generic/a;)V

    .line 2
    invoke-virtual {p0}, Lme/relex/photodraweeview/PhotoDraweeView;->a()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lme/relex/photodraweeview/PhotoDraweeView;->a:Lme/relex/photodraweeview/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lme/relex/photodraweeview/a;->r()Lcom/facebook/drawee/view/DraweeView;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2
    :cond_0
    new-instance v0, Lme/relex/photodraweeview/a;

    invoke-direct {v0, p0}, Lme/relex/photodraweeview/a;-><init>(Lcom/facebook/drawee/view/DraweeView;)V

    iput-object v0, p0, Lme/relex/photodraweeview/PhotoDraweeView;->a:Lme/relex/photodraweeview/a;

    :cond_1
    return-void
.end method

.method public getMaximumScale()F
    .locals 1

    .line 1
    iget-object v0, p0, Lme/relex/photodraweeview/PhotoDraweeView;->a:Lme/relex/photodraweeview/a;

    invoke-virtual {v0}, Lme/relex/photodraweeview/a;->getMaximumScale()F

    move-result v0

    return v0
.end method

.method public getMediumScale()F
    .locals 1

    .line 1
    iget-object v0, p0, Lme/relex/photodraweeview/PhotoDraweeView;->a:Lme/relex/photodraweeview/a;

    invoke-virtual {v0}, Lme/relex/photodraweeview/a;->getMediumScale()F

    move-result v0

    return v0
.end method

.method public getMinimumScale()F
    .locals 1

    .line 1
    iget-object v0, p0, Lme/relex/photodraweeview/PhotoDraweeView;->a:Lme/relex/photodraweeview/a;

    invoke-virtual {v0}, Lme/relex/photodraweeview/a;->getMinimumScale()F

    move-result v0

    return v0
.end method

.method public getOnPhotoTapListener()Lme/relex/photodraweeview/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lme/relex/photodraweeview/PhotoDraweeView;->a:Lme/relex/photodraweeview/a;

    invoke-virtual {v0}, Lme/relex/photodraweeview/a;->getOnPhotoTapListener()Lme/relex/photodraweeview/e;

    move-result-object v0

    return-object v0
.end method

.method public getOnViewTapListener()Lme/relex/photodraweeview/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lme/relex/photodraweeview/PhotoDraweeView;->a:Lme/relex/photodraweeview/a;

    invoke-virtual {v0}, Lme/relex/photodraweeview/a;->getOnViewTapListener()Lme/relex/photodraweeview/h;

    move-result-object v0

    return-object v0
.end method

.method public getScale()F
    .locals 1

    .line 1
    iget-object v0, p0, Lme/relex/photodraweeview/PhotoDraweeView;->a:Lme/relex/photodraweeview/a;

    invoke-virtual {v0}, Lme/relex/photodraweeview/a;->getScale()F

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lme/relex/photodraweeview/PhotoDraweeView;->a()V

    .line 2
    invoke-super {p0}, Lcom/facebook/drawee/view/DraweeView;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lme/relex/photodraweeview/PhotoDraweeView;->a:Lme/relex/photodraweeview/a;

    invoke-virtual {v0}, Lme/relex/photodraweeview/a;->v()V

    .line 2
    invoke-super {p0}, Lcom/facebook/drawee/view/DraweeView;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 2
    iget-object v1, p0, Lme/relex/photodraweeview/PhotoDraweeView;->a:Lme/relex/photodraweeview/a;

    invoke-virtual {v1}, Lme/relex/photodraweeview/a;->q()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 3
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 4
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/facebook/drawee/view/DraweeView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setAllowParentInterceptOnEdge(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lme/relex/photodraweeview/PhotoDraweeView;->a:Lme/relex/photodraweeview/a;

    invoke-virtual {v0, p1}, Lme/relex/photodraweeview/a;->setAllowParentInterceptOnEdge(Z)V

    return-void
.end method

.method public setMaximumScale(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lme/relex/photodraweeview/PhotoDraweeView;->a:Lme/relex/photodraweeview/a;

    invoke-virtual {v0, p1}, Lme/relex/photodraweeview/a;->setMaximumScale(F)V

    return-void
.end method

.method public setMediumScale(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lme/relex/photodraweeview/PhotoDraweeView;->a:Lme/relex/photodraweeview/a;

    invoke-virtual {v0, p1}, Lme/relex/photodraweeview/a;->setMediumScale(F)V

    return-void
.end method

.method public setMinimumScale(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lme/relex/photodraweeview/PhotoDraweeView;->a:Lme/relex/photodraweeview/a;

    invoke-virtual {v0, p1}, Lme/relex/photodraweeview/a;->setMinimumScale(F)V

    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lme/relex/photodraweeview/PhotoDraweeView;->a:Lme/relex/photodraweeview/a;

    invoke-virtual {v0, p1}, Lme/relex/photodraweeview/a;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lme/relex/photodraweeview/PhotoDraweeView;->a:Lme/relex/photodraweeview/a;

    invoke-virtual {v0, p1}, Lme/relex/photodraweeview/a;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setOnPhotoTapListener(Lme/relex/photodraweeview/e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lme/relex/photodraweeview/PhotoDraweeView;->a:Lme/relex/photodraweeview/a;

    invoke-virtual {v0, p1}, Lme/relex/photodraweeview/a;->setOnPhotoTapListener(Lme/relex/photodraweeview/e;)V

    return-void
.end method

.method public setOnScaleChangeListener(Lme/relex/photodraweeview/f;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lme/relex/photodraweeview/PhotoDraweeView;->a:Lme/relex/photodraweeview/a;

    invoke-virtual {v0, p1}, Lme/relex/photodraweeview/a;->setOnScaleChangeListener(Lme/relex/photodraweeview/f;)V

    return-void
.end method

.method public setOnViewTapListener(Lme/relex/photodraweeview/h;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lme/relex/photodraweeview/PhotoDraweeView;->a:Lme/relex/photodraweeview/a;

    invoke-virtual {v0, p1}, Lme/relex/photodraweeview/a;->setOnViewTapListener(Lme/relex/photodraweeview/h;)V

    return-void
.end method

.method public setScale(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lme/relex/photodraweeview/PhotoDraweeView;->a:Lme/relex/photodraweeview/a;

    invoke-virtual {v0, p1}, Lme/relex/photodraweeview/a;->setScale(F)V

    return-void
.end method

.method public setScale(FFFZ)V
    .locals 1

    .line 3
    iget-object v0, p0, Lme/relex/photodraweeview/PhotoDraweeView;->a:Lme/relex/photodraweeview/a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lme/relex/photodraweeview/a;->setScale(FFFZ)V

    return-void
.end method

.method public setScale(FZ)V
    .locals 1

    .line 2
    iget-object v0, p0, Lme/relex/photodraweeview/PhotoDraweeView;->a:Lme/relex/photodraweeview/a;

    invoke-virtual {v0, p1, p2}, Lme/relex/photodraweeview/a;->setScale(FZ)V

    return-void
.end method

.method public setZoomTransitionDuration(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lme/relex/photodraweeview/PhotoDraweeView;->a:Lme/relex/photodraweeview/a;

    invoke-virtual {v0, p1, p2}, Lme/relex/photodraweeview/a;->setZoomTransitionDuration(J)V

    return-void
.end method

.method public update(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lme/relex/photodraweeview/PhotoDraweeView;->a:Lme/relex/photodraweeview/a;

    invoke-virtual {v0, p1, p2}, Lme/relex/photodraweeview/a;->update(II)V

    return-void
.end method
