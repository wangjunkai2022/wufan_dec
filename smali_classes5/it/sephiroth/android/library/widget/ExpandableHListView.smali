.class public Lit/sephiroth/android/library/widget/ExpandableHListView;
.super Lit/sephiroth/android/library/widget/HListView;
.source "ExpandableHListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lit/sephiroth/android/library/widget/ExpandableHListView$SavedState;,
        Lit/sephiroth/android/library/widget/ExpandableHListView$b;,
        Lit/sephiroth/android/library/widget/ExpandableHListView$c;,
        Lit/sephiroth/android/library/widget/ExpandableHListView$d;,
        Lit/sephiroth/android/library/widget/ExpandableHListView$f;,
        Lit/sephiroth/android/library/widget/ExpandableHListView$e;
    }
.end annotation


# static fields
.field private static final A3:[I

.field public static final i3:I = 0x0

.field public static final j3:I = 0x1

.field public static final k3:I = 0x2

.field public static final l3:J = 0xffffffffL

.field private static final m3:J = 0xffffffffL

.field private static final n3:J = 0x7fffffff00000000L

.field private static final o3:J = -0x8000000000000000L

.field private static final p3:J = 0x20L

.field private static final q3:J = 0x3fL

.field private static final r3:J = -0x1L

.field private static final s3:J = 0x7fffffffL

.field public static final t3:I = -0x1

.field private static final u3:I = -0x2

.field private static final v3:[I

.field private static final w3:[I

.field private static final x3:[I

.field private static final y3:[I

.field private static final z3:[[I


# instance fields
.field private N2:Lit/sephiroth/android/library/widget/ExpandableHListConnector;

.field private O2:Landroid/widget/ExpandableListAdapter;

.field private P2:I

.field private Q2:I

.field private R2:I

.field private S2:I

.field private T2:I

.field private U2:I

.field private V2:Landroid/graphics/drawable/Drawable;

.field private W2:Landroid/graphics/drawable/Drawable;

.field private X2:Landroid/graphics/drawable/Drawable;

.field private final Y2:Landroid/graphics/Rect;

.field private final Z2:Landroid/graphics/Rect;

.field private a3:I

.field private b3:I

.field private c3:I

.field private d3:I

.field private e3:Lit/sephiroth/android/library/widget/ExpandableHListView$e;

.field private f3:Lit/sephiroth/android/library/widget/ExpandableHListView$f;

.field private g3:Lit/sephiroth/android/library/widget/ExpandableHListView$d;

.field private h3:Lit/sephiroth/android/library/widget/ExpandableHListView$c;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v0, 0x0

    new-array v1, v0, [I

    .line 1
    sput-object v1, Lit/sephiroth/android/library/widget/ExpandableHListView;->v3:[I

    const/4 v2, 0x1

    new-array v3, v2, [I

    const v4, 0x10100a8

    aput v4, v3, v0

    .line 2
    sput-object v3, Lit/sephiroth/android/library/widget/ExpandableHListView;->w3:[I

    new-array v4, v2, [I

    const v5, 0x10100a9

    aput v5, v4, v0

    .line 3
    sput-object v4, Lit/sephiroth/android/library/widget/ExpandableHListView;->x3:[I

    const/4 v5, 0x2

    new-array v6, v5, [I

    .line 4
    fill-array-data v6, :array_0

    sput-object v6, Lit/sephiroth/android/library/widget/ExpandableHListView;->y3:[I

    const/4 v7, 0x4

    new-array v7, v7, [[I

    aput-object v1, v7, v0

    aput-object v3, v7, v2

    aput-object v4, v7, v5

    const/4 v1, 0x3

    aput-object v6, v7, v1

    .line 5
    sput-object v7, Lit/sephiroth/android/library/widget/ExpandableHListView;->z3:[[I

    new-array v1, v2, [I

    const v2, 0x10100a6

    aput v2, v1, v0

    .line 6
    sput-object v1, Lit/sephiroth/android/library/widget/ExpandableHListView;->A3:[I

    return-void

    :array_0
    .array-data 4
        0x10100a8
        0x10100a9
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lit/sephiroth/android/library/widget/ExpandableHListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f040266

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lit/sephiroth/android/library/widget/ExpandableHListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lit/sephiroth/android/library/widget/HListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->Y2:Landroid/graphics/Rect;

    .line 5
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->Z2:Landroid/graphics/Rect;

    .line 6
    sget-object v0, Lcom/join/android/app/mgsim/wufun/R$styleable;->ExpandableHListView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x5

    .line 7
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lit/sephiroth/android/library/widget/ExpandableHListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x1

    .line 8
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lit/sephiroth/android/library/widget/ExpandableHListView;->setChildIndicator(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x7

    .line 9
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->Q2:I

    const/16 p2, 0x8

    .line 10
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->P2:I

    const/4 p2, 0x6

    .line 11
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->R2:I

    const/4 p2, 0x2

    .line 12
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->S2:I

    const/4 p2, 0x3

    .line 13
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->U2:I

    const/4 p2, 0x4

    .line 14
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->T2:I

    .line 15
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->X2:Landroid/graphics/drawable/Drawable;

    .line 16
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private g2(I)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getHeaderViewsCount()I

    move-result v0

    add-int/2addr p1, v0

    return p1
.end method

.method private h2(Lit/sephiroth/android/library/widget/a;)J
    .locals 2

    .line 1
    iget v0, p1, Lit/sephiroth/android/library/widget/a;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->O2:Landroid/widget/ExpandableListAdapter;

    iget v1, p1, Lit/sephiroth/android/library/widget/a;->a:I

    iget p1, p1, Lit/sephiroth/android/library/widget/a;->b:I

    invoke-interface {v0, v1, p1}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v0

    return-wide v0

    .line 3
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->O2:Landroid/widget/ExpandableListAdapter;

    iget p1, p1, Lit/sephiroth/android/library/widget/a;->a:I

    invoke-interface {v0, p1}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private k2(I)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getHeaderViewsCount()I

    move-result v0

    sub-int/2addr p1, v0

    return p1
.end method

.method private l2(Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;)Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 1
    iget-object v0, p1, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->a:Lit/sephiroth/android/library/widget/a;

    iget v0, v0, Lit/sephiroth/android/library/widget/a;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 2
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->V2:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    .line 3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 4
    iget-object v2, p1, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->b:Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget v4, v2, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->b:I

    iget v2, v2, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->a:I

    if-ne v4, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 5
    :goto_1
    invoke-virtual {p1}, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->b()Z

    move-result p1

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    or-int/2addr p1, v1

    .line 6
    sget-object v1, Lit/sephiroth/android/library/widget/ExpandableHListView;->z3:[[I

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_4

    .line 7
    :cond_3
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->W2:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    .line 8
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 9
    iget-object v1, p1, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->a:Lit/sephiroth/android/library/widget/a;

    iget v1, v1, Lit/sephiroth/android/library/widget/a;->c:I

    iget-object p1, p1, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->b:Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;

    iget p1, p1, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->b:I

    if-ne v1, p1, :cond_4

    sget-object p1, Lit/sephiroth/android/library/widget/ExpandableHListView;->A3:[I

    goto :goto_3

    :cond_4
    sget-object p1, Lit/sephiroth/android/library/widget/ExpandableHListView;->v3:[I

    .line 10
    :goto_3
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_5
    :goto_4
    return-object v0
.end method

.method public static m2(J)I
    .locals 8

    const/4 v0, -0x1

    const-wide v1, 0xffffffffL

    cmp-long v3, p0, v1

    if-nez v3, :cond_0

    return v0

    :cond_0
    const-wide/high16 v3, -0x8000000000000000L

    and-long v5, p0, v3

    cmp-long v7, v5, v3

    if-eqz v7, :cond_1

    return v0

    :cond_1
    and-long/2addr p0, v1

    long-to-int p1, p0

    return p1
.end method

.method public static n2(II)J
    .locals 4

    int-to-long v0, p0

    const-wide/32 v2, 0x7fffffff

    and-long/2addr v0, v2

    const/16 p0, 0x20

    shl-long/2addr v0, p0

    const-wide/high16 v2, -0x8000000000000000L

    or-long/2addr v0, v2

    int-to-long p0, p1

    const-wide/16 v2, -0x1

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static o2(I)J
    .locals 4

    int-to-long v0, p0

    const-wide/32 v2, 0x7fffffff

    and-long/2addr v0, v2

    const/16 p0, 0x20

    shl-long/2addr v0, p0

    return-wide v0
.end method

.method public static p2(J)I
    .locals 3

    const-wide v0, 0xffffffffL

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const-wide v0, 0x7fffffff00000000L

    and-long/2addr p0, v0

    const/16 v0, 0x20

    shr-long/2addr p0, v0

    long-to-int p1, p0

    return p1
.end method

.method public static q2(J)I
    .locals 3

    const-wide v0, 0xffffffffL

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    and-long/2addr p0, v0

    cmp-long v2, p0, v0

    if-nez v2, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private t2(I)Z
    .locals 2

    .line 1
    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->s:I

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getFooterViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    .line 2
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getHeaderViewsCount()I

    move-result v1

    if-lt p1, v1, :cond_1

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private u2()V
    .locals 1

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->W2:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->c3:I

    .line 3
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->W2:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->d3:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->c3:I

    .line 5
    iput v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->d3:I

    :goto_0
    return-void
.end method

.method private v2()V
    .locals 1

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->V2:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->a3:I

    .line 3
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->V2:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->b3:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->a3:I

    .line 5
    iput v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->b3:I

    :goto_0
    return-void
.end method


# virtual methods
.method U(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 6

    .line 1
    invoke-direct {p0, p2}, Lit/sephiroth/android/library/widget/ExpandableHListView;->t2(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lit/sephiroth/android/library/widget/AdapterView$b;

    invoke-direct {v0, p1, p2, p3, p4}, Lit/sephiroth/android/library/widget/AdapterView$b;-><init>(Landroid/view/View;IJ)V

    return-object v0

    .line 3
    :cond_0
    invoke-direct {p0, p2}, Lit/sephiroth/android/library/widget/ExpandableHListView;->k2(I)I

    move-result p2

    .line 4
    iget-object p3, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->N2:Lit/sephiroth/android/library/widget/ExpandableHListConnector;

    invoke-virtual {p3, p2}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->j(I)Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;

    move-result-object p2

    .line 5
    iget-object p3, p2, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->a:Lit/sephiroth/android/library/widget/a;

    .line 6
    invoke-direct {p0, p3}, Lit/sephiroth/android/library/widget/ExpandableHListView;->h2(Lit/sephiroth/android/library/widget/a;)J

    move-result-wide v4

    .line 7
    invoke-virtual {p3}, Lit/sephiroth/android/library/widget/a;->a()J

    move-result-wide v2

    .line 8
    invoke-virtual {p2}, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->d()V

    .line 9
    new-instance p2, Lit/sephiroth/android/library/widget/ExpandableHListView$b;

    move-object v0, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lit/sephiroth/android/library/widget/ExpandableHListView$b;-><init>(Landroid/view/View;JJ)V

    return-object p2
.end method

.method public d2(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->N2:Lit/sephiroth/android/library/widget/ExpandableHListConnector;

    invoke-virtual {v0, p1}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->b(I)Z

    move-result v0

    .line 2
    iget-object v1, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->e3:Lit/sephiroth/android/library/widget/ExpandableHListView$e;

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1, p1}, Lit/sephiroth/android/library/widget/ExpandableHListView$e;->a(I)V

    :cond_0
    return v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 1
    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/HListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->W2:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->V2:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getHeaderViewsCount()I

    move-result v0

    .line 4
    iget v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->s:I

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getFooterViewsCount()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRight()I

    move-result v3

    const/4 v4, -0x4

    .line 6
    iget-object v5, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->Y2:Landroid/graphics/Rect;

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    const/4 v7, 0x0

    .line 8
    iget v8, p0, Lit/sephiroth/android/library/widget/AdapterView;->a:I

    sub-int/2addr v8, v0

    :goto_0
    if-ge v7, v6, :cond_a

    if-gez v8, :cond_1

    goto/16 :goto_4

    :cond_1
    if-le v8, v1, :cond_2

    goto/16 :goto_5

    .line 9
    :cond_2
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v9

    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v10

    if-ltz v10, :cond_9

    if-le v9, v3, :cond_3

    goto/16 :goto_4

    .line 12
    :cond_3
    iget-object v11, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->N2:Lit/sephiroth/android/library/widget/ExpandableHListConnector;

    invoke-virtual {v11, v8}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->j(I)Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;

    move-result-object v11

    .line 13
    iget-object v12, v11, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->a:Lit/sephiroth/android/library/widget/a;

    iget v12, v12, Lit/sephiroth/android/library/widget/a;->d:I

    if-eq v12, v4, :cond_5

    if-ne v12, v2, :cond_4

    .line 14
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    iget v12, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->T2:I

    add-int/2addr v4, v12

    iput v4, v5, Landroid/graphics/Rect;->top:I

    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v4, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->T2:I

    add-int/2addr v0, v4

    iput v0, v5, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 16
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    iget v12, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->P2:I

    add-int/2addr v4, v12

    iput v4, v5, Landroid/graphics/Rect;->top:I

    .line 17
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v4, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->P2:I

    add-int/2addr v0, v4

    iput v0, v5, Landroid/graphics/Rect;->bottom:I

    .line 18
    :goto_1
    iget-object v0, v11, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->a:Lit/sephiroth/android/library/widget/a;

    iget v4, v0, Lit/sephiroth/android/library/widget/a;->d:I

    .line 19
    :cond_5
    iget v0, v5, Landroid/graphics/Rect;->top:I

    iget v12, v5, Landroid/graphics/Rect;->bottom:I

    if-eq v0, v12, :cond_8

    .line 20
    iget-object v0, v11, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->a:Lit/sephiroth/android/library/widget/a;

    iget v0, v0, Lit/sephiroth/android/library/widget/a;->d:I

    if-ne v0, v2, :cond_6

    .line 21
    iget v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->U2:I

    add-int/2addr v9, v0

    iput v9, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v10, v0

    .line 22
    iput v10, v5, Landroid/graphics/Rect;->right:I

    goto :goto_2

    .line 23
    :cond_6
    iget v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->Q2:I

    add-int/2addr v9, v0

    iput v9, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v10, v0

    .line 24
    iput v10, v5, Landroid/graphics/Rect;->right:I

    .line 25
    :goto_2
    invoke-direct {p0, v11}, Lit/sephiroth/android/library/widget/ExpandableHListView;->l2(Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 26
    iget-object v9, v11, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->a:Lit/sephiroth/android/library/widget/a;

    iget v9, v9, Lit/sephiroth/android/library/widget/a;->d:I

    if-ne v9, v2, :cond_7

    .line 27
    iget v9, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->S2:I

    iget v10, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->c3:I

    iget v12, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->d3:I

    iget-object v13, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->Z2:Landroid/graphics/Rect;

    invoke-static {v9, v10, v12, v5, v13}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_3

    .line 28
    :cond_7
    iget v9, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->R2:I

    iget v10, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->a3:I

    iget v12, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->b3:I

    iget-object v13, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->Z2:Landroid/graphics/Rect;

    invoke-static {v9, v10, v12, v5, v13}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 29
    :goto_3
    iget-object v9, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->Z2:Landroid/graphics/Rect;

    invoke-virtual {v0, v9}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 30
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 31
    :cond_8
    invoke-virtual {v11}, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->d()V

    :cond_9
    :goto_4
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :cond_a
    :goto_5
    return-void
.end method

.method public e2(I)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lit/sephiroth/android/library/widget/ExpandableHListView;->f2(IZ)Z

    move-result p1

    return p1
.end method

.method public f2(IZ)Z
    .locals 3

    const/4 v0, 0x2

    const/4 v1, -0x1

    .line 1
    invoke-static {v0, p1, v1, v1}, Lit/sephiroth/android/library/widget/a;->c(IIII)Lit/sephiroth/android/library/widget/a;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->N2:Lit/sephiroth/android/library/widget/ExpandableHListConnector;

    invoke-virtual {v1, v0}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->i(Lit/sephiroth/android/library/widget/a;)Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/a;->g()V

    .line 4
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->N2:Lit/sephiroth/android/library/widget/ExpandableHListConnector;

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->e(Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;)Z

    move-result v0

    .line 5
    iget-object v2, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->f3:Lit/sephiroth/android/library/widget/ExpandableHListView$f;

    if-eqz v2, :cond_0

    .line 6
    invoke-interface {v2, p1}, Lit/sephiroth/android/library/widget/ExpandableHListView$f;->a(I)V

    :cond_0
    if-eqz p2, :cond_1

    .line 7
    iget-object p2, v1, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->a:Lit/sephiroth/android/library/widget/a;

    iget p2, p2, Lit/sephiroth/android/library/widget/a;->c:I

    .line 8
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getHeaderViewsCount()I

    move-result v2

    add-int/2addr p2, v2

    .line 9
    iget-object v2, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->O2:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result p1

    add-int/2addr p1, p2

    invoke-virtual {p0, p1, p2}, Lit/sephiroth/android/library/widget/AbsHListView;->Q0(II)V

    .line 10
    :cond_1
    invoke-virtual {v1}, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->d()V

    return v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/ExpandableHListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 2
    invoke-super {p0}, Lit/sephiroth/android/library/widget/HListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->O2:Landroid/widget/ExpandableListAdapter;

    return-object v0
.end method

.method public getSelectedId()J
    .locals 5

    .line 1
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/ExpandableHListView;->getSelectedPosition()J

    move-result-wide v0

    const-wide v2, 0xffffffffL

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 2
    :cond_0
    invoke-static {v0, v1}, Lit/sephiroth/android/library/widget/ExpandableHListView;->p2(J)I

    move-result v2

    .line 3
    invoke-static {v0, v1}, Lit/sephiroth/android/library/widget/ExpandableHListView;->q2(J)I

    move-result v3

    if-nez v3, :cond_1

    .line 4
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->O2:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0, v2}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v0

    return-wide v0

    .line 5
    :cond_1
    iget-object v3, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->O2:Landroid/widget/ExpandableListAdapter;

    invoke-static {v0, v1}, Lit/sephiroth/android/library/widget/ExpandableHListView;->m2(J)I

    move-result v0

    invoke-interface {v3, v2, v0}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedPosition()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    .line 2
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/ExpandableHListView;->i2(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public i2(I)J
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/ExpandableHListView;->t2(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide v0, 0xffffffffL

    return-wide v0

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/ExpandableHListView;->k2(I)I

    move-result p1

    .line 3
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->N2:Lit/sephiroth/android/library/widget/ExpandableHListConnector;

    invoke-virtual {v0, p1}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->j(I)Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;

    move-result-object p1

    .line 4
    iget-object v0, p1, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->a:Lit/sephiroth/android/library/widget/a;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/a;->a()J

    move-result-wide v0

    .line 5
    invoke-virtual {p1}, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->d()V

    return-wide v0
.end method

.method public j2(J)I
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lit/sephiroth/android/library/widget/a;->f(J)Lit/sephiroth/android/library/widget/a;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->N2:Lit/sephiroth/android/library/widget/ExpandableHListConnector;

    invoke-virtual {p2, p1}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->i(Lit/sephiroth/android/library/widget/a;)Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;

    move-result-object p2

    .line 3
    invoke-virtual {p1}, Lit/sephiroth/android/library/widget/a;->g()V

    .line 4
    iget-object p1, p2, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->a:Lit/sephiroth/android/library/widget/a;

    iget p1, p1, Lit/sephiroth/android/library/widget/a;->c:I

    .line 5
    invoke-virtual {p2}, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->d()V

    .line 6
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/ExpandableHListView;->g2(I)I

    move-result p1

    return p1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/HListView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    const-class v0, Lit/sephiroth/android/library/widget/ExpandableHListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/HListView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    const-class v0, Lit/sephiroth/android/library/widget/ExpandableHListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lit/sephiroth/android/library/widget/ExpandableHListView$SavedState;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 3
    :cond_0
    check-cast p1, Lit/sephiroth/android/library/widget/ExpandableHListView$SavedState;

    .line 4
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 5
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->N2:Lit/sephiroth/android/library/widget/ExpandableHListConnector;

    if-eqz v0, :cond_1

    iget-object p1, p1, Lit/sephiroth/android/library/widget/ExpandableHListView$SavedState;->a:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {v0, p1}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->n(Ljava/util/ArrayList;)V

    :cond_1
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/ExpandableHListView;->v2()V

    .line 2
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/ExpandableHListView;->u2()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 1
    invoke-super {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2
    new-instance v1, Lit/sephiroth/android/library/widget/ExpandableHListView$SavedState;

    iget-object v2, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->N2:Lit/sephiroth/android/library/widget/ExpandableHListConnector;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->h()Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {v1, v0, v2}, Lit/sephiroth/android/library/widget/ExpandableHListView$SavedState;-><init>(Landroid/os/Parcelable;Ljava/util/ArrayList;)V

    return-object v1
.end method

.method public q(Landroid/view/View;IJ)Z
    .locals 1

    .line 1
    invoke-direct {p0, p2}, Lit/sephiroth/android/library/widget/ExpandableHListView;->t2(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2, p3, p4}, Lit/sephiroth/android/library/widget/AbsHListView;->q(Landroid/view/View;IJ)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-direct {p0, p2}, Lit/sephiroth/android/library/widget/ExpandableHListView;->k2(I)I

    move-result p2

    .line 4
    invoke-virtual {p0, p1, p2, p3, p4}, Lit/sephiroth/android/library/widget/ExpandableHListView;->r2(Landroid/view/View;IJ)Z

    move-result p1

    return p1
.end method

.method r1(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 3

    .line 1
    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->a:I

    add-int/2addr p3, v0

    if-ltz p3, :cond_2

    .line 2
    invoke-direct {p0, p3}, Lit/sephiroth/android/library/widget/ExpandableHListView;->k2(I)I

    move-result v0

    .line 3
    iget-object v1, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->N2:Lit/sephiroth/android/library/widget/ExpandableHListConnector;

    invoke-virtual {v1, v0}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->j(I)Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;

    move-result-object v0

    .line 4
    iget-object v1, v0, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->a:Lit/sephiroth/android/library/widget/a;

    iget v1, v1, Lit/sephiroth/android/library/widget/a;->d:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->b:Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;

    iget v2, v1, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->b:I

    iget v1, v1, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->a:I

    if-eq v2, v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->d()V

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    iget-object p3, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->X2:Landroid/graphics/drawable/Drawable;

    .line 7
    invoke-virtual {p3, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 8
    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 9
    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->d()V

    return-void

    .line 10
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lit/sephiroth/android/library/widget/HListView;->r1(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    return-void
.end method

.method r2(Landroid/view/View;IJ)Z
    .locals 9

    .line 1
    iget-object p3, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->N2:Lit/sephiroth/android/library/widget/ExpandableHListConnector;

    invoke-virtual {p3, p2}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->j(I)Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;

    move-result-object p2

    .line 2
    iget-object p3, p2, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->a:Lit/sephiroth/android/library/widget/a;

    invoke-direct {p0, p3}, Lit/sephiroth/android/library/widget/ExpandableHListView;->h2(Lit/sephiroth/android/library/widget/a;)J

    move-result-wide v5

    .line 3
    iget-object p3, p2, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->a:Lit/sephiroth/android/library/widget/a;

    iget p4, p3, Lit/sephiroth/android/library/widget/a;->d:I

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v0, 0x2

    if-ne p4, v0, :cond_3

    .line 4
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->g3:Lit/sephiroth/android/library/widget/ExpandableHListView$d;

    if-eqz v0, :cond_0

    .line 5
    iget v3, p3, Lit/sephiroth/android/library/widget/a;->a:I

    move-object v1, p0

    move-object v2, p1

    move-wide v4, v5

    invoke-interface/range {v0 .. v5}, Lit/sephiroth/android/library/widget/ExpandableHListView$d;->a(Lit/sephiroth/android/library/widget/ExpandableHListView;Landroid/view/View;IJ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p2}, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->d()V

    return v7

    .line 7
    :cond_0
    invoke-virtual {p2}, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    iget-object p1, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->N2:Lit/sephiroth/android/library/widget/ExpandableHListConnector;

    invoke-virtual {p1, p2}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->c(Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;)Z

    .line 9
    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->playSoundEffect(I)V

    .line 10
    iget-object p1, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->e3:Lit/sephiroth/android/library/widget/ExpandableHListView$e;

    if-eqz p1, :cond_5

    .line 11
    iget-object p3, p2, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->a:Lit/sephiroth/android/library/widget/a;

    iget p3, p3, Lit/sephiroth/android/library/widget/a;->a:I

    invoke-interface {p1, p3}, Lit/sephiroth/android/library/widget/ExpandableHListView$e;->a(I)V

    goto :goto_0

    .line 12
    :cond_1
    iget-object p1, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->N2:Lit/sephiroth/android/library/widget/ExpandableHListConnector;

    invoke-virtual {p1, p2}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->e(Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;)Z

    .line 13
    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->playSoundEffect(I)V

    .line 14
    iget-object p1, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->f3:Lit/sephiroth/android/library/widget/ExpandableHListView$f;

    if-eqz p1, :cond_2

    .line 15
    iget-object p3, p2, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->a:Lit/sephiroth/android/library/widget/a;

    iget p3, p3, Lit/sephiroth/android/library/widget/a;->a:I

    invoke-interface {p1, p3}, Lit/sephiroth/android/library/widget/ExpandableHListView$f;->a(I)V

    .line 16
    :cond_2
    iget-object p1, p2, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->a:Lit/sephiroth/android/library/widget/a;

    iget p3, p1, Lit/sephiroth/android/library/widget/a;->a:I

    .line 17
    iget p1, p1, Lit/sephiroth/android/library/widget/a;->c:I

    .line 18
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getHeaderViewsCount()I

    move-result p4

    add-int/2addr p1, p4

    .line 19
    iget-object p4, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->O2:Landroid/widget/ExpandableListAdapter;

    invoke-interface {p4, p3}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result p3

    add-int/2addr p3, p1

    invoke-virtual {p0, p3, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->Q0(II)V

    goto :goto_0

    .line 20
    :cond_3
    iget-object p3, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->h3:Lit/sephiroth/android/library/widget/ExpandableHListView$c;

    if-eqz p3, :cond_4

    .line 21
    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->playSoundEffect(I)V

    .line 22
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->h3:Lit/sephiroth/android/library/widget/ExpandableHListView$c;

    iget-object p2, p2, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->a:Lit/sephiroth/android/library/widget/a;

    iget v3, p2, Lit/sephiroth/android/library/widget/a;->a:I

    iget v4, p2, Lit/sephiroth/android/library/widget/a;->b:I

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v6}, Lit/sephiroth/android/library/widget/ExpandableHListView$c;->a(Lit/sephiroth/android/library/widget/ExpandableHListView;Landroid/view/View;IIJ)Z

    move-result p1

    return p1

    :cond_4
    const/4 v7, 0x0

    .line 23
    :cond_5
    :goto_0
    invoke-virtual {p2}, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->d()V

    return v7
.end method

.method public s2(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->N2:Lit/sephiroth/android/library/widget/ExpandableHListConnector;

    invoke-virtual {v0, p1}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->k(I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/ExpandableHListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ExpandableListAdapter;)V
    .locals 1

    .line 3
    iput-object p1, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->O2:Landroid/widget/ExpandableListAdapter;

    if-eqz p1, :cond_0

    .line 4
    new-instance v0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;

    invoke-direct {v0, p1}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;-><init>(Landroid/widget/ExpandableListAdapter;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->N2:Lit/sephiroth/android/library/widget/ExpandableHListConnector;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->N2:Lit/sephiroth/android/library/widget/ExpandableHListConnector;

    .line 6
    :goto_0
    iget-object p1, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->N2:Lit/sephiroth/android/library/widget/ExpandableHListConnector;

    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/HListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    .line 2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "For ExpandableListView, use setAdapter(ExpandableListAdapter) instead of setAdapter(ListAdapter)"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setChildDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->X2:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setChildIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->W2:Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/ExpandableHListView;->u2()V

    return-void
.end method

.method public setGroupIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->V2:Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/ExpandableHListView;->v2()V

    return-void
.end method

.method public setOnChildClickListener(Lit/sephiroth/android/library/widget/ExpandableHListView$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->h3:Lit/sephiroth/android/library/widget/ExpandableHListView$c;

    return-void
.end method

.method public setOnGroupClickListener(Lit/sephiroth/android/library/widget/ExpandableHListView$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->g3:Lit/sephiroth/android/library/widget/ExpandableHListView$d;

    return-void
.end method

.method public setOnGroupCollapseListener(Lit/sephiroth/android/library/widget/ExpandableHListView$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->e3:Lit/sephiroth/android/library/widget/ExpandableHListView$e;

    return-void
.end method

.method public setOnGroupExpandListener(Lit/sephiroth/android/library/widget/ExpandableHListView$f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->f3:Lit/sephiroth/android/library/widget/ExpandableHListView$f;

    return-void
.end method

.method public setOnItemClickListener(Lit/sephiroth/android/library/widget/AdapterView$d;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/AdapterView;->setOnItemClickListener(Lit/sephiroth/android/library/widget/AdapterView$d;)V

    return-void
.end method

.method public setSelectedGroup(I)V
    .locals 1

    .line 1
    invoke-static {p1}, Lit/sephiroth/android/library/widget/a;->e(I)Lit/sephiroth/android/library/widget/a;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->N2:Lit/sephiroth/android/library/widget/ExpandableHListConnector;

    invoke-virtual {v0, p1}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->i(Lit/sephiroth/android/library/widget/a;)Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lit/sephiroth/android/library/widget/a;->g()V

    .line 4
    iget-object p1, v0, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->a:Lit/sephiroth/android/library/widget/a;

    iget p1, p1, Lit/sephiroth/android/library/widget/a;->c:I

    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/ExpandableHListView;->g2(I)I

    move-result p1

    .line 5
    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/HListView;->setSelection(I)V

    .line 6
    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->d()V

    return-void
.end method

.method public w2(IIZ)Z
    .locals 1

    .line 1
    invoke-static {p1, p2}, Lit/sephiroth/android/library/widget/a;->d(II)Lit/sephiroth/android/library/widget/a;

    move-result-object p2

    .line 2
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->N2:Lit/sephiroth/android/library/widget/ExpandableHListConnector;

    invoke-virtual {v0, p2}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->i(Lit/sephiroth/android/library/widget/a;)Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;

    move-result-object v0

    if-nez v0, :cond_2

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/ExpandableHListView;->e2(I)Z

    .line 4
    iget-object p1, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->N2:Lit/sephiroth/android/library/widget/ExpandableHListConnector;

    invoke-virtual {p1, p2}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->i(Lit/sephiroth/android/library/widget/a;)Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Could not find child"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_2
    :goto_0
    iget-object p1, v0, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->a:Lit/sephiroth/android/library/widget/a;

    iget p1, p1, Lit/sephiroth/android/library/widget/a;->c:I

    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/ExpandableHListView;->g2(I)I

    move-result p1

    .line 7
    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/HListView;->setSelection(I)V

    .line 8
    invoke-virtual {p2}, Lit/sephiroth/android/library/widget/a;->g()V

    .line 9
    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->d()V

    const/4 p1, 0x1

    return p1
.end method
