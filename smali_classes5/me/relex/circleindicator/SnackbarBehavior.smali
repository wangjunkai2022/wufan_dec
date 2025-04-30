.class public Lme/relex/circleindicator/SnackbarBehavior;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
.source "SnackbarBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<",
        "Lme/relex/circleindicator/BaseCircleIndicator;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lme/relex/circleindicator/BaseCircleIndicator;)F
    .locals 6

    .line 1
    invoke-virtual {p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getDependencies(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 3
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 4
    instance-of v5, v4, Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;

    if-eqz v5, :cond_0

    invoke-virtual {p1, p2, v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->doViewsOverlap(Landroid/view/View;Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 5
    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v5, v4

    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method


# virtual methods
.method public b(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lme/relex/circleindicator/BaseCircleIndicator;Landroid/view/View;)Z
    .locals 0
    .param p1    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lme/relex/circleindicator/BaseCircleIndicator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    instance-of p1, p3, Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;

    return p1
.end method

.method public c(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lme/relex/circleindicator/BaseCircleIndicator;Landroid/view/View;)Z
    .locals 0
    .param p1    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lme/relex/circleindicator/BaseCircleIndicator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lme/relex/circleindicator/SnackbarBehavior;->a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lme/relex/circleindicator/BaseCircleIndicator;)F

    move-result p1

    .line 2
    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic layoutDependsOn(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 0
    .param p1    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p2, Lme/relex/circleindicator/BaseCircleIndicator;

    invoke-virtual {p0, p1, p2, p3}, Lme/relex/circleindicator/SnackbarBehavior;->b(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lme/relex/circleindicator/BaseCircleIndicator;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onDependentViewChanged(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 0
    .param p1    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p2, Lme/relex/circleindicator/BaseCircleIndicator;

    invoke-virtual {p0, p1, p2, p3}, Lme/relex/circleindicator/SnackbarBehavior;->c(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lme/relex/circleindicator/BaseCircleIndicator;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
