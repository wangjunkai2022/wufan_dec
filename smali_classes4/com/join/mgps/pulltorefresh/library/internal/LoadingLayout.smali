.class public abstract Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;
.super Landroid/widget/FrameLayout;
.source "LoadingLayout.java"

# interfaces
.implements Lcom/join/mgps/pulltorefresh/library/a;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# static fields
.field static final l:Ljava/lang/String; = "PullToRefresh-LoadingLayout"

.field static final m:Landroid/view/animation/Interpolator;


# instance fields
.field private a:Landroid/widget/FrameLayout;

.field protected final b:Landroid/widget/ImageView;

.field protected final c:Landroid/widget/ProgressBar;

.field private d:Z

.field private final e:Landroid/widget/TextView;

.field private final f:Landroid/widget/TextView;

.field protected final g:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;

.field protected final h:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Orientation;

.field private i:Ljava/lang/CharSequence;

.field private j:Ljava/lang/CharSequence;

.field private k:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->m:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V
    .locals 6

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p2, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->g:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 3
    iput-object p3, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->h:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Orientation;

    .line 4
    sget-object v0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout$a;->a:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 5
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0c054e

    invoke-virtual {v0, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0c054d

    invoke-virtual {v0, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    :goto_0
    const v0, 0x7f0904d5

    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->a:Landroid/widget/FrameLayout;

    const v2, 0x7f090c85

    .line 8
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->e:Landroid/widget/TextView;

    .line 9
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->a:Landroid/widget/FrameLayout;

    const v2, 0x7f090c83

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->c:Landroid/widget/ProgressBar;

    .line 10
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->a:Landroid/widget/FrameLayout;

    const v2, 0x7f090c84

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->f:Landroid/widget/TextView;

    .line 11
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->a:Landroid/widget/FrameLayout;

    const v2, 0x7f090c82

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->b:Landroid/widget/ImageView;

    .line 12
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 13
    sget-object v2, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout$a;->b:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v2, v3

    const/4 v4, 0x5

    const/4 v5, 0x3

    if-eq v3, v1, :cond_2

    .line 14
    sget-object v3, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Orientation;->VERTICAL:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Orientation;

    if-ne p3, v3, :cond_1

    const/16 p3, 0x50

    goto :goto_1

    :cond_1
    const/4 p3, 0x5

    :goto_1
    iput p3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const p3, 0x7f110285

    .line 15
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->i:Ljava/lang/CharSequence;

    const p3, 0x7f110286

    .line 16
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->j:Ljava/lang/CharSequence;

    const p3, 0x7f110287

    .line 17
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->k:Ljava/lang/CharSequence;

    goto :goto_3

    .line 18
    :cond_2
    sget-object v3, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Orientation;->VERTICAL:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Orientation;

    if-ne p3, v3, :cond_3

    const/16 p3, 0x30

    goto :goto_2

    :cond_3
    const/4 p3, 0x3

    :goto_2
    iput p3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const p3, 0x7f110282

    .line 19
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->i:Ljava/lang/CharSequence;

    const p3, 0x7f110283

    .line 20
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->j:Ljava/lang/CharSequence;

    const p3, 0x7f110284

    .line 21
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->k:Ljava/lang/CharSequence;

    :goto_3
    const/4 p3, 0x7

    .line 22
    invoke-virtual {p4, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 23
    invoke-virtual {p4, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 24
    invoke-static {p0, p3}, Lcom/join/mgps/pulltorefresh/library/internal/c;->b(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_4
    const/16 p3, 0x9

    .line 25
    invoke-virtual {p4, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 26
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 27
    invoke-virtual {p4, p3, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 28
    iget p3, v0, Landroid/util/TypedValue;->data:I

    invoke-direct {p0, p3}, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->setTextAppearance(I)V

    :cond_5
    const/16 p3, 0x12

    .line 29
    invoke-virtual {p4, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 30
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 31
    invoke-virtual {p4, p3, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 32
    iget p3, v0, Landroid/util/TypedValue;->data:I

    invoke-direct {p0, p3}, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->setSubTextAppearance(I)V

    :cond_6
    const/16 p3, 0xa

    .line 33
    invoke-virtual {p4, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 34
    invoke-virtual {p4, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    if-eqz p3, :cond_7

    .line 35
    invoke-direct {p0, p3}, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_7
    const/16 p3, 0x8

    .line 36
    invoke-virtual {p4, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 37
    invoke-virtual {p4, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    if-eqz p3, :cond_8

    .line 38
    invoke-direct {p0, p3}, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->setSubTextColor(Landroid/content/res/ColorStateList;)V

    :cond_8
    const/4 p3, 0x0

    const/4 v0, 0x2

    .line 39
    invoke-virtual {p4, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 40
    invoke-virtual {p4, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 41
    :cond_9
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v2, p2

    if-eq p2, v1, :cond_b

    .line 42
    invoke-virtual {p4, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 43
    invoke-virtual {p4, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    goto :goto_4

    :cond_a
    const/4 p2, 0x6

    .line 44
    invoke-virtual {p4, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string p3, "ptrDrawableTop"

    const-string v0, "ptrDrawableStart"

    .line 45
    invoke-static {p3, v0}, Lcom/join/mgps/pulltorefresh/library/internal/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-virtual {p4, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    goto :goto_4

    :cond_b
    const/4 p2, 0x4

    .line 47
    invoke-virtual {p4, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 48
    invoke-virtual {p4, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    goto :goto_4

    .line 49
    :cond_c
    invoke-virtual {p4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_d

    const-string p2, "ptrDrawableBottom"

    const-string p3, "ptrDrawableEnd"

    .line 50
    invoke-static {p2, p3}, Lcom/join/mgps/pulltorefresh/library/internal/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p4, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    :cond_d
    :goto_4
    if-nez p3, :cond_e

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->getDefaultDrawableResId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 53
    :cond_e
    invoke-virtual {p0, p3}, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 54
    invoke-virtual {p0}, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->k()V

    return-void
.end method

.method private setSubHeaderText(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->f:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->f:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-ne v1, p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->f:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setSubTextAppearance(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method private setSubTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method private setTextAppearance(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_1
    return-void
.end method

.method private setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 8
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method protected abstract b(Landroid/graphics/drawable/Drawable;)V
.end method

.method public final c(F)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->d:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->d(F)V

    :cond_0
    return-void
.end method

.method protected abstract d(F)V
.end method

.method public final e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->i:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->f()V

    return-void
.end method

.method protected abstract f()V
.end method

.method public final g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->j:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->d:Z

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->h()V

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    const/16 v1, 0x8

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public final getContentSize()I
    .locals 2

    .line 1
    sget-object v0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout$a;->a:[I

    iget-object v1, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->h:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Orientation;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    return v0
.end method

.method protected abstract getDefaultDrawableResId()I
.end method

.method protected abstract h()V
.end method

.method public final i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->k:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->j()V

    return-void
.end method

.method protected abstract j()V
.end method

.method public final k()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->i:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-boolean v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->d:Z

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->l()V

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->f:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method protected abstract l()V
.end method

.method public final m()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ne v2, v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-ne v2, v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-ne v2, v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v2, v0, :cond_3

    .line 8
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public final setHeight(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public setLastUpdatedLabel(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->setSubHeaderText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    instance-of v0, p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-boolean v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->d:Z

    .line 3
    invoke-virtual {p0, p1}, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->b(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPullLabel(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->i:Ljava/lang/CharSequence;

    return-void
.end method

.method public setRefreshingLabel(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->j:Ljava/lang/CharSequence;

    return-void
.end method

.method public setReleaseLabel(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->k:Ljava/lang/CharSequence;

    return-void
.end method

.method public setTextTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public final setWidth(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method
