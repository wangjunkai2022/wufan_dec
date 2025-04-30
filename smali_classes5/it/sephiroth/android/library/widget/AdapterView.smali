.class public abstract Lit/sephiroth/android/library/widget/AdapterView;
.super Landroid/view/ViewGroup;
.source "AdapterView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lit/sephiroth/android/library/widget/AdapterView$g;,
        Lit/sephiroth/android/library/widget/AdapterView$c;,
        Lit/sephiroth/android/library/widget/AdapterView$b;,
        Lit/sephiroth/android/library/widget/AdapterView$f;,
        Lit/sephiroth/android/library/widget/AdapterView$e;,
        Lit/sephiroth/android/library/widget/AdapterView$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/widget/Adapter;",
        ">",
        "Landroid/view/ViewGroup;"
    }
.end annotation


# static fields
.field public static final B:Ljava/lang/String; = "AdapterView"

.field public static final C:Z = false

.field public static final D:I = -0x1

.field public static final E:I = -0x2

.field static final F:I = 0x0

.field static final G:I = 0x1

.field static final H:I = 0x64

.field public static final I:I = -0x1

.field public static final J:J = -0x8000000000000000L


# instance fields
.field protected A:Z

.field protected a:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "scrolling"
    .end annotation
.end field

.field protected b:I

.field protected c:I

.field protected d:J

.field protected e:J

.field protected f:Z

.field g:I

.field private h:I

.field protected i:Z

.field j:Lit/sephiroth/android/library/widget/AdapterView$f;

.field k:Lit/sephiroth/android/library/widget/AdapterView$d;

.field l:Lit/sephiroth/android/library/widget/AdapterView$e;

.field public m:Z

.field protected n:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field protected o:J

.field protected p:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field protected q:J

.field private r:Landroid/view/View;

.field protected s:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field protected t:I

.field u:Landroid/view/accessibility/AccessibilityManager;

.field protected v:I

.field protected w:J

.field private x:Z

.field private y:Z

.field private z:Lit/sephiroth/android/library/widget/AdapterView$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lit/sephiroth/android/library/widget/AdapterView<",
            "TT;>.g;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->a:I

    const-wide/high16 v0, -0x8000000000000000L

    .line 3
    iput-wide v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->d:J

    .line 4
    iput-boolean p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->f:Z

    .line 5
    iput-boolean p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->i:Z

    const/4 v2, -0x1

    .line 6
    iput v2, p0, Lit/sephiroth/android/library/widget/AdapterView;->n:I

    .line 7
    iput-wide v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->o:J

    .line 8
    iput v2, p0, Lit/sephiroth/android/library/widget/AdapterView;->p:I

    .line 9
    iput-wide v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->q:J

    .line 10
    iput v2, p0, Lit/sephiroth/android/library/widget/AdapterView;->v:I

    .line 11
    iput-wide v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->w:J

    .line 12
    iput-boolean p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->A:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 13
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->a:I

    const-wide/high16 v0, -0x8000000000000000L

    .line 15
    iput-wide v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->d:J

    .line 16
    iput-boolean p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->f:Z

    .line 17
    iput-boolean p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->i:Z

    const/4 p2, -0x1

    .line 18
    iput p2, p0, Lit/sephiroth/android/library/widget/AdapterView;->n:I

    .line 19
    iput-wide v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->o:J

    .line 20
    iput p2, p0, Lit/sephiroth/android/library/widget/AdapterView;->p:I

    .line 21
    iput-wide v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->q:J

    .line 22
    iput p2, p0, Lit/sephiroth/android/library/widget/AdapterView;->v:I

    .line 23
    iput-wide v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->w:J

    .line 24
    iput-boolean p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->A:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 26
    iput p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->a:I

    const-wide/high16 p2, -0x8000000000000000L

    .line 27
    iput-wide p2, p0, Lit/sephiroth/android/library/widget/AdapterView;->d:J

    .line 28
    iput-boolean p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->f:Z

    .line 29
    iput-boolean p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->i:Z

    const/4 v0, -0x1

    .line 30
    iput v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->n:I

    .line 31
    iput-wide p2, p0, Lit/sephiroth/android/library/widget/AdapterView;->o:J

    .line 32
    iput v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->p:I

    .line 33
    iput-wide p2, p0, Lit/sephiroth/android/library/widget/AdapterView;->q:J

    .line 34
    iput v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->v:I

    .line 35
    iput-wide p2, p0, Lit/sephiroth/android/library/widget/AdapterView;->w:J

    .line 36
    iput-boolean p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->A:Z

    .line 37
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x10

    if-lt p1, p2, :cond_0

    .line 38
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getImportantForAccessibility()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 39
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    .line 40
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result p1

    if-nez p1, :cond_1

    .line 41
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "accessibility"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->u:Landroid/view/accessibility/AccessibilityManager;

    :cond_1
    return-void
.end method

.method static synthetic a(Lit/sephiroth/android/library/widget/AdapterView;Landroid/os/Parcelable;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method static synthetic b(Lit/sephiroth/android/library/widget/AdapterView;)Landroid/os/Parcelable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lit/sephiroth/android/library/widget/AdapterView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AdapterView;->h()V

    return-void
.end method

.method static synthetic d(Lit/sephiroth/android/library/widget/AdapterView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AdapterView;->p()V

    return-void
.end method

.method private h()V
    .locals 7

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->j:Lit/sephiroth/android/library/widget/AdapterView$f;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getSelectedItemPosition()I

    move-result v4

    if-ltz v4, :cond_1

    .line 3
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v3

    .line 4
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->j:Lit/sephiroth/android/library/widget/AdapterView$f;

    .line 5
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v5

    move-object v2, p0

    .line 6
    invoke-interface/range {v1 .. v6}, Lit/sephiroth/android/library/widget/AdapterView$f;->b(Lit/sephiroth/android/library/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->j:Lit/sephiroth/android/library/widget/AdapterView$f;

    invoke-interface {v0, p0}, Lit/sephiroth/android/library/widget/AdapterView$f;->a(Lit/sephiroth/android/library/widget/AdapterView;)V

    :goto_0
    return-void
.end method

.method private n()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    const/4 v2, 0x1

    if-lez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v3

    if-gtz v3, :cond_0

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getLastVisiblePosition()I

    move-result v3

    sub-int/2addr v0, v2

    if-ge v3, v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private p()V
    .locals 1

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->u:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    if-ltz v0, :cond_1

    const/4 v0, 0x4

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    :cond_1
    return-void
.end method

.method private t(Z)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongCall"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->m()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    const/16 v0, 0x8

    if-eqz p1, :cond_2

    .line 2
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->r:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 6
    :goto_0
    iget-boolean p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->m:Z

    if-eqz p1, :cond_4

    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lit/sephiroth/android/library/widget/AdapterView;->onLayout(ZIIII)V

    goto :goto_1

    .line 8
    :cond_2
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->r:Landroid/view/View;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 9
    :cond_3
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "addView(View) is not supported in AdapterView"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addView(Landroid/view/View;I)V
    .locals 0

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "addView(View, int) is not supported in AdapterView"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 4
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "addView(View, int, LayoutParams) is not supported in AdapterView"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "addView(View, LayoutParams) is not supported in AdapterView"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected canAnimate()Z
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->s:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method protected e()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_3

    .line 3
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->m()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v3, 0x1

    :goto_3
    if-eqz v3, :cond_4

    .line 4
    iget-boolean v4, p0, Lit/sephiroth/android/library/widget/AdapterView;->y:Z

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    goto :goto_4

    :cond_4
    const/4 v4, 0x0

    :goto_4
    invoke-super {p0, v4}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    if-eqz v3, :cond_5

    .line 5
    iget-boolean v3, p0, Lit/sephiroth/android/library/widget/AdapterView;->x:Z

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    goto :goto_5

    :cond_5
    const/4 v3, 0x0

    :goto_5
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 6
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AdapterView;->r:Landroid/view/View;

    if-eqz v3, :cond_8

    if-eqz v0, :cond_6

    .line 7
    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    const/4 v1, 0x1

    :cond_7
    invoke-direct {p0, v1}, Lit/sephiroth/android/library/widget/AdapterView;->t(Z)V

    :cond_8
    return-void
.end method

.method protected f()V
    .locals 5

    .line 1
    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->p:I

    iget v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->v:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->q:J

    iget-wide v2, p0, Lit/sephiroth/android/library/widget/AdapterView;->w:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->s()V

    .line 3
    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->p:I

    iput v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->v:I

    .line 4
    iget-wide v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->q:J

    iput-wide v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->w:J

    :cond_1
    return-void
.end method

.method g()I
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Lit/sephiroth/android/library/widget/AdapterView;->s:I

    const/4 v2, -0x1

    if-nez v1, :cond_0

    return v2

    .line 2
    :cond_0
    iget-wide v3, v0, Lit/sephiroth/android/library/widget/AdapterView;->d:J

    .line 3
    iget v5, v0, Lit/sephiroth/android/library/widget/AdapterView;->c:I

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v8, v3, v6

    if-nez v8, :cond_1

    return v2

    :cond_1
    const/4 v6, 0x0

    .line 4
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/4 v7, 0x1

    sub-int/2addr v1, v7

    .line 5
    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x64

    add-long/2addr v8, v10

    .line 7
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v10

    if-nez v10, :cond_2

    return v2

    :cond_2
    move v11, v5

    move v12, v11

    :goto_0
    const/4 v13, 0x0

    .line 8
    :cond_3
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    cmp-long v16, v14, v8

    if-gtz v16, :cond_b

    .line 9
    invoke-interface {v10, v5}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v14

    cmp-long v16, v14, v3

    if-nez v16, :cond_4

    return v5

    :cond_4
    if-ne v11, v1, :cond_5

    const/4 v14, 0x1

    goto :goto_2

    :cond_5
    const/4 v14, 0x0

    :goto_2
    if-nez v12, :cond_6

    const/4 v15, 0x1

    goto :goto_3

    :cond_6
    const/4 v15, 0x0

    :goto_3
    if-eqz v14, :cond_7

    if-eqz v15, :cond_7

    goto :goto_5

    :cond_7
    if-nez v15, :cond_a

    if-eqz v13, :cond_8

    if-nez v14, :cond_8

    goto :goto_4

    :cond_8
    if-nez v14, :cond_9

    if-nez v13, :cond_3

    if-nez v15, :cond_3

    :cond_9
    add-int/lit8 v12, v12, -0x1

    move v5, v12

    const/4 v13, 0x1

    goto :goto_1

    :cond_a
    :goto_4
    add-int/lit8 v11, v11, 0x1

    move v5, v11

    goto :goto_0

    :cond_b
    :goto_5
    return v2
.end method

.method public abstract getAdapter()Landroid/widget/Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public getCount()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .line 1
    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->s:I

    return v0
.end method

.method public getEmptyView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->r:Landroid/view/View;

    return-object v0
.end method

.method public getFirstVisiblePosition()I
    .locals 1

    .line 1
    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->a:I

    return v0
.end method

.method public getLastVisiblePosition()I
    .locals 2

    .line 1
    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->a:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final getOnItemClickListener()Lit/sephiroth/android/library/widget/AdapterView$d;
    .locals 1

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->k:Lit/sephiroth/android/library/widget/AdapterView$d;

    return-object v0
.end method

.method public final getOnItemLongClickListener()Lit/sephiroth/android/library/widget/AdapterView$e;
    .locals 1

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->l:Lit/sephiroth/android/library/widget/AdapterView$e;

    return-object v0
.end method

.method public final getOnItemSelectedListener()Lit/sephiroth/android/library/widget/AdapterView$f;
    .locals 1

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->j:Lit/sephiroth/android/library/widget/AdapterView$f;

    return-object v0
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    if-ltz v1, :cond_0

    .line 4
    invoke-interface {v0, v1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectedItemId()J
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .line 1
    iget-wide v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->o:J

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .line 1
    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->n:I

    return v0
.end method

.method public abstract getSelectedView()Landroid/view/View;
.end method

.method public i(I)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    if-eqz v0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public j(I)J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    if-eqz v0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v0

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/high16 v0, -0x8000000000000000L

    :goto_1
    return-wide v0
.end method

.method public k(Landroid/view/View;)I
    .locals 4

    :goto_0
    const/4 v0, -0x1

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    move-object p1, v1

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    .line 3
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4
    iget p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->a:I

    add-int/2addr p1, v2

    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    :cond_2
    return v0
.end method

.method l()V
    .locals 5

    .line 1
    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->s:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_5

    .line 2
    iget-boolean v3, p0, Lit/sephiroth/android/library/widget/AdapterView;->f:Z

    if-eqz v3, :cond_0

    .line 3
    iput-boolean v2, p0, Lit/sephiroth/android/library/widget/AdapterView;->f:Z

    .line 4
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->g()I

    move-result v3

    if-ltz v3, :cond_0

    .line 5
    invoke-virtual {p0, v3, v1}, Lit/sephiroth/android/library/widget/AdapterView;->o(IZ)I

    move-result v4

    if-ne v4, v3, :cond_0

    .line 6
    invoke-virtual {p0, v3}, Lit/sephiroth/android/library/widget/AdapterView;->setNextSelectedPositionInt(I)V

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_4

    .line 7
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getSelectedItemPosition()I

    move-result v4

    if-lt v4, v0, :cond_1

    add-int/lit8 v4, v0, -0x1

    :cond_1
    if-gez v4, :cond_2

    const/4 v4, 0x0

    .line 8
    :cond_2
    invoke-virtual {p0, v4, v1}, Lit/sephiroth/android/library/widget/AdapterView;->o(IZ)I

    move-result v0

    if-gez v0, :cond_3

    .line 9
    invoke-virtual {p0, v4, v2}, Lit/sephiroth/android/library/widget/AdapterView;->o(IZ)I

    move-result v0

    :cond_3
    if-ltz v0, :cond_4

    .line 10
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 11
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->f()V

    goto :goto_1

    :cond_4
    move v1, v3

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_6

    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->p:I

    const-wide/high16 v3, -0x8000000000000000L

    .line 13
    iput-wide v3, p0, Lit/sephiroth/android/library/widget/AdapterView;->q:J

    .line 14
    iput v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->n:I

    .line 15
    iput-wide v3, p0, Lit/sephiroth/android/library/widget/AdapterView;->o:J

    .line 16
    iput-boolean v2, p0, Lit/sephiroth/android/library/widget/AdapterView;->f:Z

    .line 17
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->f()V

    :cond_6
    return-void
.end method

.method m()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected o(IZ)I
    .locals 0

    return p1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->z:Lit/sephiroth/android/library/widget/AdapterView$g;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    const-class v0, Lit/sephiroth/android/library/widget/AdapterView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 3
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AdapterView;->n()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 4
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .line 7
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 8
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 9
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getCount()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    const-class v0, Lit/sephiroth/android/library/widget/AdapterView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 3
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AdapterView;->n()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 4
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    iput p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->h:I

    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AdapterView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->appendRecord(Landroid/view/accessibility/AccessibilityRecord;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public q(Landroid/view/View;IJ)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->k:Lit/sephiroth/android/library/widget/AdapterView$d;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->playSoundEffect(I)V

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 4
    :cond_0
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->k:Lit/sephiroth/android/library/widget/AdapterView$d;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    invoke-interface/range {v1 .. v6}, Lit/sephiroth/android/library/widget/AdapterView$d;->a(Lit/sephiroth/android/library/widget/AdapterView;Landroid/view/View;IJ)V

    return v0

    :cond_1
    return v1
.end method

.method public r()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_4

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->f:Z

    .line 3
    iget v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->h:I

    int-to-long v1, v1

    iput-wide v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->e:J

    .line 4
    iget v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->p:I

    const/4 v2, 0x0

    if-ltz v1, :cond_1

    .line 5
    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->a:I

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6
    iget-wide v3, p0, Lit/sephiroth/android/library/widget/AdapterView;->o:J

    iput-wide v3, p0, Lit/sephiroth/android/library/widget/AdapterView;->d:J

    .line 7
    iget v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->n:I

    iput v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->c:I

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 9
    :cond_0
    iput v2, p0, Lit/sephiroth/android/library/widget/AdapterView;->g:I

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 11
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    .line 12
    iget v3, p0, Lit/sephiroth/android/library/widget/AdapterView;->a:I

    if-ltz v3, :cond_2

    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 13
    iget v3, p0, Lit/sephiroth/android/library/widget/AdapterView;->a:I

    invoke-interface {v2, v3}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, p0, Lit/sephiroth/android/library/widget/AdapterView;->d:J

    goto :goto_0

    :cond_2
    const-wide/16 v2, -0x1

    .line 14
    iput-wide v2, p0, Lit/sephiroth/android/library/widget/AdapterView;->d:J

    .line 15
    :goto_0
    iget v2, p0, Lit/sephiroth/android/library/widget/AdapterView;->a:I

    iput v2, p0, Lit/sephiroth/android/library/widget/AdapterView;->c:I

    if-eqz v1, :cond_3

    .line 16
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iput v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 17
    :cond_3
    iput v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->g:I

    :cond_4
    :goto_1
    return-void
.end method

.method public removeAllViews()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeAllViews() is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "removeView(View) is not supported in AdapterView"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeViewAt(I)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "removeViewAt(int) is not supported in AdapterView"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method s()V
    .locals 2

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->j:Lit/sephiroth/android/library/widget/AdapterView$f;

    if-nez v0, :cond_0

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->u:Landroid/view/accessibility/AccessibilityManager;

    .line 2
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3
    :cond_0
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->i:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->A:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AdapterView;->h()V

    .line 5
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AdapterView;->p()V

    goto :goto_1

    .line 6
    :cond_2
    :goto_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->z:Lit/sephiroth/android/library/widget/AdapterView$g;

    if-nez v0, :cond_3

    .line 7
    new-instance v0, Lit/sephiroth/android/library/widget/AdapterView$g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lit/sephiroth/android/library/widget/AdapterView$g;-><init>(Lit/sephiroth/android/library/widget/AdapterView;Lit/sephiroth/android/library/widget/AdapterView$a;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->z:Lit/sephiroth/android/library/widget/AdapterView$g;

    .line 8
    :cond_3
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->z:Lit/sephiroth/android/library/widget/AdapterView$g;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_4
    :goto_1
    return-void
.end method

.method public abstract setAdapter(Landroid/widget/Adapter;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 1
    iput-object p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->r:Landroid/view/View;

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x10

    if-lt v0, v2, :cond_0

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p1, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 6
    invoke-interface {p1}, Landroid/widget/Adapter;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 7
    :cond_2
    :goto_0
    invoke-direct {p0, v1}, Lit/sephiroth/android/library/widget/AdapterView;->t(Z)V

    return-void
.end method

.method public setFocusable(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 3
    :goto_1
    iput-boolean p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->x:Z

    if-nez p1, :cond_2

    .line 4
    iput-boolean v2, p0, Lit/sephiroth/android/library/widget/AdapterView;->y:Z

    :cond_2
    if-eqz p1, :cond_3

    if-eqz v0, :cond_4

    .line 5
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->m()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_2
    invoke-super {p0, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    return-void
.end method

.method public setFocusableInTouchMode(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 3
    :goto_1
    iput-boolean p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->y:Z

    if-eqz p1, :cond_2

    .line 4
    iput-boolean v2, p0, Lit/sephiroth/android/library/widget/AdapterView;->x:Z

    :cond_2
    if-eqz p1, :cond_4

    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->m()Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    invoke-super {p0, v1}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    return-void
.end method

.method protected setNextSelectedPositionInt(I)V
    .locals 3

    .line 1
    iput p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->n:I

    .line 2
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/AdapterView;->j(I)J

    move-result-wide v0

    iput-wide v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->o:J

    .line 3
    iget-boolean v2, p0, Lit/sephiroth/android/library/widget/AdapterView;->f:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lit/sephiroth/android/library/widget/AdapterView;->g:I

    if-nez v2, :cond_0

    if-ltz p1, :cond_0

    .line 4
    iput p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->c:I

    .line 5
    iput-wide v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->d:J

    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Don\'t call setOnClickListener for an AdapterView. You probably want setOnItemClickListener instead"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOnItemClickListener(Lit/sephiroth/android/library/widget/AdapterView$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->k:Lit/sephiroth/android/library/widget/AdapterView$d;

    return-void
.end method

.method public setOnItemLongClickListener(Lit/sephiroth/android/library/widget/AdapterView$e;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLongClickable(Z)V

    .line 3
    :cond_0
    iput-object p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->l:Lit/sephiroth/android/library/widget/AdapterView$e;

    return-void
.end method

.method public setOnItemSelectedListener(Lit/sephiroth/android/library/widget/AdapterView$f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->j:Lit/sephiroth/android/library/widget/AdapterView$f;

    return-void
.end method

.method protected setSelectedPositionInt(I)V
    .locals 2

    .line 1
    iput p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->p:I

    .line 2
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/AdapterView;->j(I)J

    move-result-wide v0

    iput-wide v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->q:J

    return-void
.end method

.method public abstract setSelection(I)V
.end method
