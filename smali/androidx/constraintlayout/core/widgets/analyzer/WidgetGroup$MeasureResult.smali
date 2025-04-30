.class Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup$MeasureResult;
.super Ljava/lang/Object;
.source "WidgetGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MeasureResult"
.end annotation


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation
.end field

.field b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field g:I

.field final synthetic h:Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/LinearSystem;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup$MeasureResult;->h:Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup$MeasureResult;->a:Ljava/lang/ref/WeakReference;

    .line 3
    iget-object p1, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p3, p1}, Landroidx/constraintlayout/core/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup$MeasureResult;->b:I

    .line 4
    iget-object p1, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p3, p1}, Landroidx/constraintlayout/core/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup$MeasureResult;->c:I

    .line 5
    iget-object p1, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p3, p1}, Landroidx/constraintlayout/core/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup$MeasureResult;->d:I

    .line 6
    iget-object p1, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p3, p1}, Landroidx/constraintlayout/core/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup$MeasureResult;->e:I

    .line 7
    iget-object p1, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p3, p1}, Landroidx/constraintlayout/core/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup$MeasureResult;->f:I

    .line 8
    iput p4, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup$MeasureResult;->g:I

    return-void
.end method


# virtual methods
.method public apply()V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup$MeasureResult;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v1, :cond_0

    .line 2
    iget v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup$MeasureResult;->b:I

    iget v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup$MeasureResult;->c:I

    iget v4, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup$MeasureResult;->d:I

    iget v5, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup$MeasureResult;->e:I

    iget v6, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup$MeasureResult;->f:I

    iget v7, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup$MeasureResult;->g:I

    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalFrame(IIIIII)V

    :cond_0
    return-void
.end method
