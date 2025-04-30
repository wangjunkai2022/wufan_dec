.class public Lcom/google/android/material/divider/MaterialDividerItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "MaterialDividerItemDecoration.java"


# static fields
.field public static final i:I = 0x0

.field public static final j:I = 0x1

.field private static final k:I


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private b:I

.field private c:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private d:I

.field private e:I

.field private f:I

.field private g:Z

.field private final h:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_MaterialDivider:I

    sput v0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->k:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/material/divider/MaterialDividerItemDecoration;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    sget v0, Lcom/google/android/material/R$attr;->materialDividerStyle:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/android/material/divider/MaterialDividerItemDecoration;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->h:Landroid/graphics/Rect;

    .line 5
    sget-object v3, Lcom/google/android/material/R$styleable;->MaterialDivider:[I

    sget v5, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->k:I

    const/4 v0, 0x0

    new-array v6, v0, [I

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    .line 6
    invoke-static/range {v1 .. v6}, Lcom/google/android/material/internal/o;->j(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 7
    sget p3, Lcom/google/android/material/R$styleable;->MaterialDivider_dividerColor:I

    .line 8
    invoke-static {p1, p2, p3}, Lcom/google/android/material/resources/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    .line 9
    invoke-virtual {p3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p3

    iput p3, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->c:I

    .line 10
    sget p3, Lcom/google/android/material/R$styleable;->MaterialDivider_dividerThickness:I

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/google/android/material/R$dimen;->material_divider_thickness:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 12
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->b:I

    .line 13
    sget p1, Lcom/google/android/material/R$styleable;->MaterialDivider_dividerInsetStart:I

    .line 14
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->e:I

    .line 15
    sget p1, Lcom/google/android/material/R$styleable;->MaterialDivider_dividerInsetEnd:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->f:I

    .line 16
    sget p1, Lcom/google/android/material/R$styleable;->MaterialDivider_lastItemDecorated:I

    const/4 p3, 0x1

    .line 17
    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->g:Z

    .line 18
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 19
    new-instance p1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->a:Landroid/graphics/drawable/Drawable;

    .line 20
    iget p1, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->c:I

    invoke-virtual {p0, p1}, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->i(I)V

    .line 21
    invoke-virtual {p0, p4}, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->setOrientation(I)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 7
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getClipToPadding()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    .line 4
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 5
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    .line 6
    invoke-virtual {p1, v3, v0, v4, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    const/4 v0, 0x0

    .line 8
    :goto_0
    iget v3, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->e:I

    add-int/2addr v0, v3

    .line 9
    iget v3, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->f:I

    sub-int/2addr v2, v3

    .line 10
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    :goto_1
    if-ge v1, v3, :cond_1

    .line 11
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 12
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->h:Landroid/graphics/Rect;

    invoke-virtual {v5, v4, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 13
    iget-object v5, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->h:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4}, Landroid/view/View;->getTranslationX()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int/2addr v5, v4

    .line 14
    iget-object v4, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    sub-int v4, v5, v4

    iget v6, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->b:I

    sub-int/2addr v4, v6

    .line 15
    iget-object v6, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v4, v0, v5, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 16
    iget-object v4, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 17
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private b(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 7
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getClipToPadding()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    .line 4
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 5
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 6
    invoke-virtual {p1, v0, v3, v2, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    const/4 v0, 0x0

    .line 8
    :goto_0
    invoke-static {p2}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_2

    .line 9
    iget v3, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->f:I

    goto :goto_2

    :cond_2
    iget v3, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->e:I

    :goto_2
    add-int/2addr v0, v3

    if-eqz v4, :cond_3

    .line 10
    iget v3, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->e:I

    goto :goto_3

    :cond_3
    iget v3, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->f:I

    :goto_3
    sub-int/2addr v2, v3

    .line 11
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 12
    iget-boolean v4, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->g:Z

    if-eqz v4, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v3, v3, -0x1

    :goto_4
    if-ge v1, v3, :cond_5

    .line 13
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 14
    iget-object v5, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->h:Landroid/graphics/Rect;

    invoke-virtual {p2, v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 15
    iget-object v5, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->h:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int/2addr v5, v4

    .line 16
    iget-object v4, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sub-int v4, v5, v4

    iget v6, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->b:I

    sub-int/2addr v4, v6

    .line 17
    iget-object v6, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v0, v4, v2, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 18
    iget-object v4, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 19
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method


# virtual methods
.method public c()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->c:I

    return v0
.end method

.method public d()I
    .locals 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->f:I

    return v0
.end method

.method public e()I
    .locals 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->e:I

    return v0
.end method

.method public f()I
    .locals 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->b:I

    return v0
.end method

.method public g()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->d:I

    return v0
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p2, 0x0

    .line 1
    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 2
    iget p2, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->d:I

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    .line 3
    iget-object p2, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    iget p3, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->b:I

    add-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    iget p3, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->b:I

    add-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Rect;->right:I

    :goto_0
    return-void
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->g:Z

    return v0
.end method

.method public i(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->c:I

    .line 2
    iget-object v0, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->a:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->a:Landroid/graphics/drawable/Drawable;

    .line 3
    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public j(Landroid/content/Context;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 1
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->i(I)V

    return-void
.end method

.method public k(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->f:I

    return-void
.end method

.method public l(Landroid/content/Context;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->k(I)V

    return-void
.end method

.method public m(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->e:I

    return-void
.end method

.method public n(Landroid/content/Context;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->m(I)V

    return-void
.end method

.method public o(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->b:I

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p3

    if-nez p3, :cond_0

    return-void

    .line 2
    :cond_0
    iget p3, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->d:I

    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->b(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->a(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V

    :goto_0
    return-void
.end method

.method public p(Landroid/content/Context;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->o(I)V

    return-void
.end method

.method public q(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->g:Z

    return-void
.end method

.method public setOrientation(I)V
    .locals 3

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid orientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". It should be either HORIZONTAL or VERTICAL"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2
    :cond_1
    :goto_0
    iput p1, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->d:I

    return-void
.end method
