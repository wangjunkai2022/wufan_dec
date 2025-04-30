.class Landroidx/constraintlayout/core/state/Transition$WidgetState;
.super Ljava/lang/Object;
.source "Transition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/state/Transition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WidgetState"
.end annotation


# instance fields
.field a:Landroidx/constraintlayout/core/state/WidgetFrame;

.field b:Landroidx/constraintlayout/core/state/WidgetFrame;

.field c:Landroidx/constraintlayout/core/state/WidgetFrame;

.field d:Landroidx/constraintlayout/core/motion/Motion;

.field e:Landroidx/constraintlayout/core/motion/MotionWidget;

.field f:Landroidx/constraintlayout/core/motion/MotionWidget;

.field g:Landroidx/constraintlayout/core/motion/MotionWidget;

.field h:Landroidx/constraintlayout/core/motion/utils/KeyCache;

.field i:I

.field j:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/constraintlayout/core/motion/utils/KeyCache;

    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/utils/KeyCache;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->h:Landroidx/constraintlayout/core/motion/utils/KeyCache;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->i:I

    .line 4
    iput v0, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->j:I

    .line 5
    new-instance v0, Landroidx/constraintlayout/core/state/WidgetFrame;

    invoke-direct {v0}, Landroidx/constraintlayout/core/state/WidgetFrame;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->a:Landroidx/constraintlayout/core/state/WidgetFrame;

    .line 6
    new-instance v0, Landroidx/constraintlayout/core/state/WidgetFrame;

    invoke-direct {v0}, Landroidx/constraintlayout/core/state/WidgetFrame;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->b:Landroidx/constraintlayout/core/state/WidgetFrame;

    .line 7
    new-instance v0, Landroidx/constraintlayout/core/state/WidgetFrame;

    invoke-direct {v0}, Landroidx/constraintlayout/core/state/WidgetFrame;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->c:Landroidx/constraintlayout/core/state/WidgetFrame;

    .line 8
    new-instance v0, Landroidx/constraintlayout/core/motion/MotionWidget;

    iget-object v1, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->a:Landroidx/constraintlayout/core/state/WidgetFrame;

    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/motion/MotionWidget;-><init>(Landroidx/constraintlayout/core/state/WidgetFrame;)V

    iput-object v0, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->e:Landroidx/constraintlayout/core/motion/MotionWidget;

    .line 9
    new-instance v0, Landroidx/constraintlayout/core/motion/MotionWidget;

    iget-object v1, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->b:Landroidx/constraintlayout/core/state/WidgetFrame;

    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/motion/MotionWidget;-><init>(Landroidx/constraintlayout/core/state/WidgetFrame;)V

    iput-object v0, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->f:Landroidx/constraintlayout/core/motion/MotionWidget;

    .line 10
    new-instance v0, Landroidx/constraintlayout/core/motion/MotionWidget;

    iget-object v1, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->c:Landroidx/constraintlayout/core/state/WidgetFrame;

    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/motion/MotionWidget;-><init>(Landroidx/constraintlayout/core/state/WidgetFrame;)V

    iput-object v0, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->g:Landroidx/constraintlayout/core/motion/MotionWidget;

    .line 11
    new-instance v0, Landroidx/constraintlayout/core/motion/Motion;

    iget-object v1, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->e:Landroidx/constraintlayout/core/motion/MotionWidget;

    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/motion/Motion;-><init>(Landroidx/constraintlayout/core/motion/MotionWidget;)V

    iput-object v0, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->d:Landroidx/constraintlayout/core/motion/Motion;

    .line 12
    iget-object v1, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->e:Landroidx/constraintlayout/core/motion/MotionWidget;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/motion/Motion;->setStart(Landroidx/constraintlayout/core/motion/MotionWidget;)V

    .line 13
    iget-object v0, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->d:Landroidx/constraintlayout/core/motion/Motion;

    iget-object v1, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->f:Landroidx/constraintlayout/core/motion/MotionWidget;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/motion/Motion;->setEnd(Landroidx/constraintlayout/core/motion/MotionWidget;)V

    return-void
.end method


# virtual methods
.method public getFrame(I)Landroidx/constraintlayout/core/state/WidgetFrame;
    .locals 1

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->a:Landroidx/constraintlayout/core/state/WidgetFrame;

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2
    iget-object p1, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->b:Landroidx/constraintlayout/core/state/WidgetFrame;

    return-object p1

    .line 3
    :cond_1
    iget-object p1, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->c:Landroidx/constraintlayout/core/state/WidgetFrame;

    return-object p1
.end method

.method public interpolate(IIFLandroidx/constraintlayout/core/state/Transition;)V
    .locals 7

    .line 1
    iput p2, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->i:I

    .line 2
    iput p1, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->j:I

    .line 3
    iget-object v0, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->d:Landroidx/constraintlayout/core/motion/Motion;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    const/high16 v3, 0x3f800000    # 1.0f

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/core/motion/Motion;->setup(IIFJ)V

    .line 4
    iget-object v2, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->c:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget-object v3, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->a:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget-object v4, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->b:Landroidx/constraintlayout/core/state/WidgetFrame;

    move v0, p1

    move v1, p2

    move-object v5, p4

    move v6, p3

    invoke-static/range {v0 .. v6}, Landroidx/constraintlayout/core/state/WidgetFrame;->interpolate(IILandroidx/constraintlayout/core/state/WidgetFrame;Landroidx/constraintlayout/core/state/WidgetFrame;Landroidx/constraintlayout/core/state/WidgetFrame;Landroidx/constraintlayout/core/state/Transition;F)V

    .line 5
    iget-object v0, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->c:Landroidx/constraintlayout/core/state/WidgetFrame;

    iput p3, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->interpolatedPos:F

    .line 6
    iget-object v1, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->d:Landroidx/constraintlayout/core/motion/Motion;

    iget-object v2, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->g:Landroidx/constraintlayout/core/motion/MotionWidget;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iget-object v6, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->h:Landroidx/constraintlayout/core/motion/utils/KeyCache;

    move v3, p3

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/core/motion/Motion;->interpolate(Landroidx/constraintlayout/core/motion/MotionWidget;FJLandroidx/constraintlayout/core/motion/utils/KeyCache;)Z

    return-void
.end method

.method public setKeyAttribute(Landroidx/constraintlayout/core/motion/utils/TypedBundle;)V
    .locals 1

    .line 1
    new-instance v0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;

    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;-><init>()V

    .line 2
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->applyDelta(Landroidx/constraintlayout/core/motion/utils/TypedValues;)V

    .line 3
    iget-object p1, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->d:Landroidx/constraintlayout/core/motion/Motion;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/motion/Motion;->addKey(Landroidx/constraintlayout/core/motion/key/MotionKey;)V

    return-void
.end method

.method public setKeyCycle(Landroidx/constraintlayout/core/motion/utils/TypedBundle;)V
    .locals 1

    .line 1
    new-instance v0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;

    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;-><init>()V

    .line 2
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->applyDelta(Landroidx/constraintlayout/core/motion/utils/TypedValues;)V

    .line 3
    iget-object p1, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->d:Landroidx/constraintlayout/core/motion/Motion;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/motion/Motion;->addKey(Landroidx/constraintlayout/core/motion/key/MotionKey;)V

    return-void
.end method

.method public setKeyPosition(Landroidx/constraintlayout/core/motion/utils/TypedBundle;)V
    .locals 1

    .line 1
    new-instance v0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;

    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;-><init>()V

    .line 2
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->applyDelta(Landroidx/constraintlayout/core/motion/utils/TypedValues;)V

    .line 3
    iget-object p1, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->d:Landroidx/constraintlayout/core/motion/Motion;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/motion/Motion;->addKey(Landroidx/constraintlayout/core/motion/key/MotionKey;)V

    return-void
.end method

.method public update(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)V
    .locals 1

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->a:Landroidx/constraintlayout/core/state/WidgetFrame;

    invoke-virtual {p2, p1}, Landroidx/constraintlayout/core/state/WidgetFrame;->update(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)Landroidx/constraintlayout/core/state/WidgetFrame;

    .line 2
    iget-object p1, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->d:Landroidx/constraintlayout/core/motion/Motion;

    iget-object p2, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->e:Landroidx/constraintlayout/core/motion/MotionWidget;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/motion/Motion;->setStart(Landroidx/constraintlayout/core/motion/MotionWidget;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 3
    iget-object p2, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->b:Landroidx/constraintlayout/core/state/WidgetFrame;

    invoke-virtual {p2, p1}, Landroidx/constraintlayout/core/state/WidgetFrame;->update(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)Landroidx/constraintlayout/core/state/WidgetFrame;

    .line 4
    iget-object p1, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->d:Landroidx/constraintlayout/core/motion/Motion;

    iget-object p2, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->f:Landroidx/constraintlayout/core/motion/MotionWidget;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/motion/Motion;->setEnd(Landroidx/constraintlayout/core/motion/MotionWidget;)V

    :cond_1
    :goto_0
    const/4 p1, -0x1

    .line 5
    iput p1, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->j:I

    return-void
.end method
