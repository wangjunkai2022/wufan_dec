.class public Lcom/flipboard/bottomsheet/BottomSheetLayout;
.super Landroid/widget/FrameLayout;
.source "BottomSheetLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flipboard/bottomsheet/BottomSheetLayout$j;,
        Lcom/flipboard/bottomsheet/BottomSheetLayout$State;,
        Lcom/flipboard/bottomsheet/BottomSheetLayout$i;,
        Lcom/flipboard/bottomsheet/BottomSheetLayout$h;
    }
.end annotation


# static fields
.field private static final I:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/flipboard/bottomsheet/BottomSheetLayout;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final J:J = 0x12cL


# instance fields
.field private final A:Z

.field private final B:I

.field private C:I

.field private D:I

.field private E:F

.field private F:F

.field private G:F

.field private H:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

.field private a:Ljava/lang/Runnable;

.field private b:Landroid/graphics/Rect;

.field private c:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

.field private d:Z

.field private e:Landroid/animation/TimeInterpolator;

.field public f:Z

.field private g:Z

.field private h:F

.field private i:Landroid/view/VelocityTracker;

.field private j:F

.field private k:F

.field private l:Lcom/flipboard/bottomsheet/c;

.field private m:Lcom/flipboard/bottomsheet/c;

.field private n:Z

.field private o:Z

.field private p:Landroid/animation/Animator;

.field private q:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/flipboard/bottomsheet/b;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/flipboard/bottomsheet/BottomSheetLayout$j;",
            ">;"
        }
    .end annotation
.end field

.field private s:Landroid/view/View$OnLayoutChangeListener;

.field private t:Landroid/view/View;

.field private u:Z

.field private v:I

.field private w:Z

.field private x:F

.field private y:F

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/flipboard/bottomsheet/BottomSheetLayout$a;

    const-class v1, Ljava/lang/Float;

    const-string v2, "sheetTranslation"

    invoke-direct {v0, v1, v2}, Lcom/flipboard/bottomsheet/BottomSheetLayout$a;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->I:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->b:Landroid/graphics/Rect;

    .line 3
    sget-object p1, Lcom/flipboard/bottomsheet/BottomSheetLayout$State;->HIDDEN:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    iput-object p1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->c:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->d:Z

    .line 5
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const v1, 0x3fcccccd    # 1.6f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->e:Landroid/animation/TimeInterpolator;

    .line 6
    new-instance v0, Lcom/flipboard/bottomsheet/BottomSheetLayout$i;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/flipboard/bottomsheet/BottomSheetLayout$i;-><init>(Lcom/flipboard/bottomsheet/BottomSheetLayout$a;)V

    iput-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->l:Lcom/flipboard/bottomsheet/c;

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->n:Z

    .line 8
    iput-boolean v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->o:Z

    .line 9
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->q:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 10
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->r:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 11
    iput-boolean v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->u:Z

    .line 12
    iput p1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->z:I

    .line 13
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->A:Z

    .line 14
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07006e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->B:I

    .line 15
    iput p1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->C:I

    .line 16
    iput p1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->D:I

    .line 17
    invoke-direct {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->x()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, p1, p2, v0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->b:Landroid/graphics/Rect;

    .line 21
    sget-object p1, Lcom/flipboard/bottomsheet/BottomSheetLayout$State;->HIDDEN:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    iput-object p1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->c:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    const/4 p1, 0x0

    .line 22
    iput-boolean p1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->d:Z

    .line 23
    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    const p3, 0x3fcccccd    # 1.6f

    invoke-direct {p2, p3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object p2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->e:Landroid/animation/TimeInterpolator;

    .line 24
    new-instance p2, Lcom/flipboard/bottomsheet/BottomSheetLayout$i;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Lcom/flipboard/bottomsheet/BottomSheetLayout$i;-><init>(Lcom/flipboard/bottomsheet/BottomSheetLayout$a;)V

    iput-object p2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->l:Lcom/flipboard/bottomsheet/c;

    const/4 p2, 0x1

    .line 25
    iput-boolean p2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->n:Z

    .line 26
    iput-boolean p2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->o:Z

    .line 27
    new-instance p3, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p3}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p3, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->q:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 28
    new-instance p3, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p3}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p3, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->r:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 29
    iput-boolean p2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->u:Z

    .line 30
    iput p1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->z:I

    .line 31
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f050002

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->A:Z

    .line 32
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f07006e

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->B:I

    .line 33
    iput p1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->C:I

    .line 34
    iput p1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->D:I

    .line 35
    invoke-direct {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->x()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 37
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->b:Landroid/graphics/Rect;

    .line 38
    sget-object p1, Lcom/flipboard/bottomsheet/BottomSheetLayout$State;->HIDDEN:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    iput-object p1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->c:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    const/4 p1, 0x0

    .line 39
    iput-boolean p1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->d:Z

    .line 40
    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    const p3, 0x3fcccccd    # 1.6f

    invoke-direct {p2, p3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object p2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->e:Landroid/animation/TimeInterpolator;

    .line 41
    new-instance p2, Lcom/flipboard/bottomsheet/BottomSheetLayout$i;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Lcom/flipboard/bottomsheet/BottomSheetLayout$i;-><init>(Lcom/flipboard/bottomsheet/BottomSheetLayout$a;)V

    iput-object p2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->l:Lcom/flipboard/bottomsheet/c;

    const/4 p2, 0x1

    .line 42
    iput-boolean p2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->n:Z

    .line 43
    iput-boolean p2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->o:Z

    .line 44
    new-instance p3, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p3}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p3, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->q:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 45
    new-instance p3, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p3}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p3, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->r:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 46
    iput-boolean p2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->u:Z

    .line 47
    iput p1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->z:I

    .line 48
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f050002

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->A:Z

    .line 49
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f07006e

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->B:I

    .line 50
    iput p1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->C:I

    .line 51
    iput p1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->D:I

    .line 52
    invoke-direct {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->x()V

    return-void
.end method

.method public static B(Landroid/content/Context;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f050002

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method private C(F)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->A:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->C:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->D:I

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

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

.method public static E(Landroid/content/Context;)I
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->B(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f07006e

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    return p0
.end method

.method private K(F)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->m:Lcom/flipboard/bottomsheet/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getMaxSheetTranslation()F

    move-result v2

    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getPeekSheetTranslation()F

    move-result v3

    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getContentView()Landroid/view/View;

    move-result-object v5

    move v1, p1

    move-object v4, p0

    invoke-interface/range {v0 .. v5}, Lcom/flipboard/bottomsheet/c;->b(FFFLcom/flipboard/bottomsheet/BottomSheetLayout;Landroid/view/View;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v6, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->l:Lcom/flipboard/bottomsheet/c;

    if-eqz v6, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getMaxSheetTranslation()F

    move-result v8

    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getPeekSheetTranslation()F

    move-result v9

    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getContentView()Landroid/view/View;

    move-result-object v11

    move v7, p1

    move-object v10, p0

    invoke-interface/range {v6 .. v11}, Lcom/flipboard/bottomsheet/c;->b(FFFLcom/flipboard/bottomsheet/BottomSheetLayout;Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/flipboard/bottomsheet/BottomSheetLayout;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->h:F

    return p0
.end method

.method static synthetic b(Lcom/flipboard/bottomsheet/BottomSheetLayout;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->setSheetTranslation(F)V

    return-void
.end method

.method static synthetic c(Lcom/flipboard/bottomsheet/BottomSheetLayout;Lcom/flipboard/bottomsheet/c;)Lcom/flipboard/bottomsheet/c;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->m:Lcom/flipboard/bottomsheet/c;

    return-object p1
.end method

.method static synthetic d(Lcom/flipboard/bottomsheet/BottomSheetLayout;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->a:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic e(Lcom/flipboard/bottomsheet/BottomSheetLayout;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->a:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic f(Lcom/flipboard/bottomsheet/BottomSheetLayout;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->p:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic g(Lcom/flipboard/bottomsheet/BottomSheetLayout;)Lcom/flipboard/bottomsheet/BottomSheetLayout$State;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->c:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    return-object p0
.end method

.method private getDefaultPeekTranslation()F
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->x:F

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getSheetView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    :goto_0
    return v0
.end method

.method static synthetic h(Lcom/flipboard/bottomsheet/BottomSheetLayout;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->v:I

    return p0
.end method

.method static synthetic i(Lcom/flipboard/bottomsheet/BottomSheetLayout;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->v:I

    return p1
.end method

.method static synthetic j(Lcom/flipboard/bottomsheet/BottomSheetLayout;Lcom/flipboard/bottomsheet/BottomSheetLayout$State;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->setState(Lcom/flipboard/bottomsheet/BottomSheetLayout$State;)V

    return-void
.end method

.method static synthetic k(Lcom/flipboard/bottomsheet/BottomSheetLayout;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->setSheetLayerTypeIfEnabled(I)V

    return-void
.end method

.method static synthetic l(Lcom/flipboard/bottomsheet/BottomSheetLayout;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->q:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method private o(Landroid/view/View;FF)Z
    .locals 10

    .line 1
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 2
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 4
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 5
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v5

    sub-int/2addr v4, v5

    .line 6
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v6

    sub-int/2addr v5, v6

    .line 7
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v7

    sub-int/2addr v6, v7

    .line 8
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v4, v4

    const/4 v8, 0x1

    cmpl-float v9, p2, v4

    if-lez v9, :cond_0

    int-to-float v6, v6

    cmpg-float v6, p2, v6

    if-gez v6, :cond_0

    int-to-float v6, v5

    cmpl-float v6, p3, v6

    if-lez v6, :cond_0

    int-to-float v6, v7

    cmpg-float v6, p3, v6

    if-gez v6, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_1

    sub-float v4, p2, v4

    int-to-float v5, v5

    sub-float v5, p3, v5

    .line 9
    invoke-direct {p0, v3, v4, v5}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->o(Landroid/view/View;FF)Z

    move-result v3

    if-eqz v3, :cond_1

    return v8

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, -0x1

    .line 10
    invoke-virtual {p1, p2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p1

    return p1
.end method

.method private p()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->p:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method private static q(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method

.method private s(Ljava/lang/Runnable;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->c:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    sget-object v1, Lcom/flipboard/bottomsheet/BottomSheetLayout$State;->HIDDEN:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->a:Ljava/lang/Runnable;

    return-void

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->a:Ljava/lang/Runnable;

    .line 4
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getSheetView()Landroid/view/View;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->s:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 6
    invoke-direct {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->p()V

    .line 7
    sget-object v0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->I:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 9
    iget-object v1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->e:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 10
    new-instance v1, Lcom/flipboard/bottomsheet/BottomSheetLayout$g;

    invoke-direct {v1, p0, p1}, Lcom/flipboard/bottomsheet/BottomSheetLayout$g;-><init>(Lcom/flipboard/bottomsheet/BottomSheetLayout;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 11
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 12
    iput-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->p:Landroid/animation/Animator;

    .line 13
    iput v3, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->C:I

    .line 14
    iget p1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->z:I

    iput p1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->D:I

    return-void
.end method

.method private setSheetLayerTypeIfEnabled(I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->o:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getSheetView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private setSheetTranslation(F)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getMaxSheetTranslation()F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->h:F

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p1

    int-to-double v0, p1

    iget p1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->h:F

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v0, v2

    double-to-int p1, v0

    .line 3
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->b:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 4
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getSheetView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->h:F

    sub-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 5
    iget p1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->h:F

    invoke-direct {p0, p1}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->K(F)V

    .line 6
    iget-boolean p1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->n:Z

    if-eqz p1, :cond_1

    .line 7
    iget p1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->h:F

    invoke-direct {p0, p1}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->u(F)F

    move-result p1

    .line 8
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->t:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 9
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->t:Landroid/view/View;

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private setState(Lcom/flipboard/bottomsheet/BottomSheetLayout$State;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->c:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    if-eq p1, v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->c:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    .line 3
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->r:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flipboard/bottomsheet/BottomSheetLayout$j;

    .line 4
    invoke-interface {v1, p1}, Lcom/flipboard/bottomsheet/BottomSheetLayout$j;->a(Lcom/flipboard/bottomsheet/BottomSheetLayout$State;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private u(F)F
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->m:Lcom/flipboard/bottomsheet/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getMaxSheetTranslation()F

    move-result v2

    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getPeekSheetTranslation()F

    move-result v3

    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getContentView()Landroid/view/View;

    move-result-object v5

    move v1, p1

    move-object v4, p0

    invoke-interface/range {v0 .. v5}, Lcom/flipboard/bottomsheet/c;->a(FFFLcom/flipboard/bottomsheet/BottomSheetLayout;Landroid/view/View;)F

    move-result p1

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->l:Lcom/flipboard/bottomsheet/c;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getMaxSheetTranslation()F

    move-result v2

    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getPeekSheetTranslation()F

    move-result v3

    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getContentView()Landroid/view/View;

    move-result-object v5

    move v1, p1

    move-object v4, p0

    invoke-interface/range {v0 .. v5}, Lcom/flipboard/bottomsheet/c;->a(FFFLcom/flipboard/bottomsheet/BottomSheetLayout;Landroid/view/View;)F

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private v()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getSheetView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getSheetView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private w()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getSheetView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getSheetView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->x:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private x()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->j:F

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->k:F

    .line 4
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->t:Landroid/view/View;

    const/high16 v1, -0x1000000

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 6
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->t:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 7
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->t:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    .line 8
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 9
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 10
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 11
    iget v2, v0, Landroid/graphics/Point;->x:I

    iput v2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->z:I

    .line 12
    iput v2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->D:I

    .line 13
    iput v1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->y:F

    .line 14
    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    int-to-float v1, v2

    const v2, 0x3fe38e39

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->x:F

    return-void
.end method

.method private y()V
    .locals 5

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->h:F

    .line 2
    iget-object v1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->b:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 3
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getSheetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 4
    iget-object v1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->t:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 5
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->t:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private z()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->p:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public A()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->c:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    sget-object v1, Lcom/flipboard/bottomsheet/BottomSheetLayout$State;->HIDDEN:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public D()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->p()V

    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->setSheetLayerTypeIfEnabled(I)V

    .line 3
    sget-object v0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->I:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getPeekSheetTranslation()F

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 5
    iget-object v1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->e:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 6
    new-instance v1, Lcom/flipboard/bottomsheet/BottomSheetLayout$c;

    invoke-direct {v1, p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout$c;-><init>(Lcom/flipboard/bottomsheet/BottomSheetLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 7
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 8
    iput-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->p:Landroid/animation/Animator;

    .line 9
    sget-object v0, Lcom/flipboard/bottomsheet/BottomSheetLayout$State;->PEEKED:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    invoke-direct {p0, v0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->setState(Lcom/flipboard/bottomsheet/BottomSheetLayout$State;)V

    return-void
.end method

.method public F(Lcom/flipboard/bottomsheet/b;)V
    .locals 1
    .param p1    # Lcom/flipboard/bottomsheet/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "onSheetDismissedListener == null"

    .line 1
    invoke-static {p1, v0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->q(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->q:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public G(Lcom/flipboard/bottomsheet/BottomSheetLayout$j;)V
    .locals 1
    .param p1    # Lcom/flipboard/bottomsheet/BottomSheetLayout$j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "onSheetStateChangeListener == null"

    .line 1
    invoke-static {p1, v0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->q(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->r:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public H()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->n:Z

    return v0
.end method

.method public I(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->J(Landroid/view/View;Lcom/flipboard/bottomsheet/c;)V

    return-void
.end method

.method public J(Landroid/view/View;Lcom/flipboard/bottomsheet/c;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->c:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    sget-object v1, Lcom/flipboard/bottomsheet/BottomSheetLayout$State;->HIDDEN:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    if-eq v0, v1, :cond_0

    .line 2
    new-instance v0, Lcom/flipboard/bottomsheet/BottomSheetLayout$d;

    invoke-direct {v0, p0, p1, p2}, Lcom/flipboard/bottomsheet/BottomSheetLayout$d;-><init>(Lcom/flipboard/bottomsheet/BottomSheetLayout;Landroid/view/View;Lcom/flipboard/bottomsheet/c;)V

    .line 3
    invoke-direct {p0, v0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->s(Ljava/lang/Runnable;)V

    return-void

    .line 4
    :cond_0
    sget-object v0, Lcom/flipboard/bottomsheet/BottomSheetLayout$State;->PREPARING:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    invoke-direct {p0, v0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->setState(Lcom/flipboard/bottomsheet/BottomSheetLayout$State;)V

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x1

    const/4 v2, -0x2

    const/4 v3, -0x1

    if-nez v0, :cond_2

    .line 6
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-boolean v4, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->A:Z

    if-eqz v4, :cond_1

    const/4 v4, -0x2

    goto :goto_0

    :cond_1
    const/4 v4, -0x1

    :goto_0
    invoke-direct {v0, v4, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 7
    :cond_2
    iget-boolean v4, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->A:Z

    if-eqz v4, :cond_4

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-ne v4, v2, :cond_4

    .line 8
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-ne v2, v3, :cond_3

    .line 9
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 10
    :cond_3
    iget v1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->B:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 11
    iget v2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->z:I

    sub-int v1, v2, v1

    .line 12
    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->C:I

    sub-int/2addr v2, v1

    .line 13
    iput v2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->D:I

    .line 14
    :cond_4
    invoke-super {p0, p1, v3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 15
    invoke-direct {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->y()V

    .line 16
    iput-object p2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->m:Lcom/flipboard/bottomsheet/c;

    .line 17
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    new-instance v0, Lcom/flipboard/bottomsheet/BottomSheetLayout$e;

    invoke-direct {v0, p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout$e;-><init>(Lcom/flipboard/bottomsheet/BottomSheetLayout;)V

    invoke-virtual {p2, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    iput p2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->v:I

    .line 19
    new-instance p2, Lcom/flipboard/bottomsheet/BottomSheetLayout$f;

    invoke-direct {p2, p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout$f;-><init>(Lcom/flipboard/bottomsheet/BottomSheetLayout;)V

    iput-object p2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->s:Landroid/view/View$OnLayoutChangeListener;

    .line 20
    invoke-virtual {p1, p2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->setContentView(Landroid/view/View;)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "You may not declare more then one child of bottom sheet. The sheet view must be added dynamically with showWithSheetView()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addView(Landroid/view/View;I)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    invoke-virtual {p0, p1}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;II)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 7
    invoke-virtual {p0, p1}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/ViewGroup$LayoutParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 5
    invoke-virtual {p0, p1}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup$LayoutParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 6
    invoke-virtual {p0, p1}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getInterceptContentTouch()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->u:Z

    return v0
.end method

.method public getMaxSheetTranslation()F
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getSheetView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    :goto_0
    int-to-float v0, v0

    return v0
.end method

.method public getPeekOnDismiss()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->d:Z

    return v0
.end method

.method public getPeekSheetTranslation()F
    .locals 2

    .line 1
    iget v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->y:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getDefaultPeekTranslation()F

    move-result v0

    :cond_0
    return v0
.end method

.method public getSheetView()Landroid/view/View;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getState()Lcom/flipboard/bottomsheet/BottomSheetLayout$State;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->c:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    return-object v0
.end method

.method public m(Lcom/flipboard/bottomsheet/b;)V
    .locals 1
    .param p1    # Lcom/flipboard/bottomsheet/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "onSheetDismissedListener == null"

    .line 1
    invoke-static {p1, v0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->q(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->q:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public n(Lcom/flipboard/bottomsheet/BottomSheetLayout$j;)V
    .locals 1
    .param p1    # Lcom/flipboard/bottomsheet/BottomSheetLayout$j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "onSheetStateChangeListener == null"

    .line 1
    invoke-static {p1, v0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->q(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->r:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->i:Landroid/view/VelocityTracker;

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->i:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 3
    invoke-direct {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->p()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    iput-boolean v2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->w:Z

    .line 3
    :cond_1
    iget-boolean v3, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->u:Z

    if-nez v3, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->h:F

    sub-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->C(F)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    .line 4
    :cond_2
    iput-boolean v2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->w:Z

    goto :goto_3

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 5
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->A()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->w:Z

    .line 6
    :goto_3
    iget-boolean p1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->w:Z

    return p1
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p2    # Landroid/view/KeyEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    .line 1
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->A()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    :cond_0
    return v1

    .line 5
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 8
    :cond_2
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->A()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 9
    iget-object p1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->c:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    sget-object p2, Lcom/flipboard/bottomsheet/BottomSheetLayout$State;->EXPANDED:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    if-ne p1, p2, :cond_3

    iget-boolean p1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->d:Z

    if-eqz p1, :cond_3

    .line 10
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->D()V

    goto :goto_0

    .line 11
    :cond_3
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->r()V

    :goto_0
    return v1

    .line 12
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p1

    int-to-double p1, p1

    iget p3, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->h:F

    float-to-double p3, p3

    invoke-static {p3, p4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p3

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr p1, p3

    double-to-int p1, p1

    .line 3
    iget-object p2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->b:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p3

    const/4 p4, 0x0

    invoke-virtual {p2, p4, p4, p3, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->A()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->z()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-boolean v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->w:Z

    if-nez v0, :cond_2

    .line 4
    invoke-virtual {p0, p1}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 5
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    .line 6
    iput-boolean v1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->f:Z

    .line 7
    iput-boolean v1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->g:Z

    .line 8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->E:F

    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->F:F

    .line 10
    iget v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->h:F

    iput v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->G:F

    .line 11
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->c:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    iput-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->H:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    .line 12
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->i:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->i:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 14
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getMaxSheetTranslation()F

    move-result v0

    .line 15
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getPeekSheetTranslation()F

    move-result v2

    .line 16
    iget v3, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->E:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    .line 17
    iget v4, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->F:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-float/2addr v4, v5

    .line 18
    iget-boolean v5, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->f:Z

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v5, :cond_7

    iget-boolean v5, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->g:Z

    if-nez v5, :cond_7

    .line 19
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v9, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->k:F

    cmpl-float v5, v5, v9

    if-lez v5, :cond_4

    const/4 v5, 0x1

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    :goto_0
    iput-boolean v5, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->f:Z

    .line 20
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->k:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_5

    const/4 v4, 0x1

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    :goto_1
    iput-boolean v4, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->g:Z

    .line 21
    iget-boolean v4, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->f:Z

    if-eqz v4, :cond_7

    .line 22
    iget-object v3, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->c:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    sget-object v4, Lcom/flipboard/bottomsheet/BottomSheetLayout$State;->PEEKED:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    if-ne v3, v4, :cond_6

    .line 23
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    .line 24
    iget v4, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->h:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v3, v7, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 25
    invoke-virtual {v3, v6}, Landroid/view/MotionEvent;->setAction(I)V

    .line 26
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getSheetView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 27
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 28
    :cond_6
    iput-boolean v1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->g:Z

    .line 29
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->E:F

    .line 30
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->F:F

    const/4 v3, 0x0

    .line 31
    :cond_7
    iget v4, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->G:F

    add-float/2addr v4, v3

    .line 32
    iget-boolean v5, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->f:Z

    if-eqz v5, :cond_13

    cmpg-float v3, v3, v7

    if-gez v3, :cond_8

    const/4 v3, 0x1

    goto :goto_2

    :cond_8
    const/4 v3, 0x0

    .line 33
    :goto_2
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getSheetView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    iget v11, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->h:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v12

    int-to-float v12, v12

    sub-float/2addr v11, v12

    add-float/2addr v10, v11

    invoke-direct {p0, v5, v9, v10}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->o(Landroid/view/View;FF)Z

    move-result v5

    .line 34
    iget-object v9, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->c:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    sget-object v10, Lcom/flipboard/bottomsheet/BottomSheetLayout$State;->EXPANDED:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    const/4 v11, 0x2

    if-ne v9, v10, :cond_9

    if-eqz v3, :cond_9

    if-nez v5, :cond_9

    .line 35
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->E:F

    .line 36
    iget v3, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->h:F

    iput v3, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->G:F

    .line 37
    iget-object v3, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->i:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 38
    sget-object v3, Lcom/flipboard/bottomsheet/BottomSheetLayout$State;->PEEKED:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    invoke-direct {p0, v3}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->setState(Lcom/flipboard/bottomsheet/BottomSheetLayout$State;)V

    .line 39
    invoke-direct {p0, v11}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->setSheetLayerTypeIfEnabled(I)V

    .line 40
    iget v4, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->h:F

    .line 41
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    .line 42
    invoke-virtual {v3, v6}, Landroid/view/MotionEvent;->setAction(I)V

    .line 43
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getSheetView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 44
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 45
    :cond_9
    iget-object v3, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->c:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    sget-object v5, Lcom/flipboard/bottomsheet/BottomSheetLayout$State;->PEEKED:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    if-ne v3, v5, :cond_a

    cmpl-float v3, v4, v0

    if-lez v3, :cond_a

    .line 46
    invoke-direct {p0, v0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->setSheetTranslation(F)V

    .line 47
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 48
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 49
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 50
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getSheetView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 51
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 52
    invoke-direct {p0, v10}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->setState(Lcom/flipboard/bottomsheet/BottomSheetLayout$State;)V

    .line 53
    invoke-direct {p0, v1}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->setSheetLayerTypeIfEnabled(I)V

    .line 54
    :cond_a
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->c:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    if-ne v0, v10, :cond_b

    .line 55
    iget v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->h:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {p1, v7, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 56
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getSheetView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_4

    :cond_b
    cmpg-float v0, v4, v2

    if-gez v0, :cond_c

    sub-float v0, v2, v4

    const/high16 v1, 0x40800000    # 4.0f

    div-float/2addr v0, v1

    sub-float v4, v2, v0

    .line 57
    :cond_c
    invoke-direct {p0, v4}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->setSheetTranslation(F)V

    .line 58
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v6, :cond_e

    .line 59
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->H:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    if-ne v0, v10, :cond_d

    .line 60
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->t()V

    goto :goto_3

    .line 61
    :cond_d
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->D()V

    .line 62
    :cond_e
    :goto_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v8, :cond_18

    cmpg-float p1, v4, v2

    if-gez p1, :cond_f

    .line 63
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->r()V

    goto/16 :goto_4

    .line 64
    :cond_f
    iget-object p1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->i:Landroid/view/VelocityTracker;

    const/16 v0, 0x3e8

    invoke-virtual {p1, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 65
    iget-object p1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->i:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p1

    .line 66
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->j:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_11

    .line 67
    iget p1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->h:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    div-int/2addr v0, v11

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_10

    .line 68
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->t()V

    goto :goto_4

    .line 69
    :cond_10
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->D()V

    goto :goto_4

    :cond_11
    cmpg-float p1, p1, v7

    if-gez p1, :cond_12

    .line 70
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->t()V

    goto :goto_4

    .line 71
    :cond_12
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->D()V

    goto :goto_4

    .line 72
    :cond_13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->h:F

    sub-float/2addr v2, v3

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_14

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->C(F)Z

    move-result v0

    if-nez v0, :cond_15

    :cond_14
    const/4 v1, 0x1

    .line 73
    :cond_15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v8, :cond_16

    if-eqz v1, :cond_16

    iget-boolean v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->u:Z

    if-eqz v0, :cond_16

    .line 74
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->r()V

    return v8

    .line 75
    :cond_16
    iget-boolean v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->A:Z

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getX()F

    move-result v0

    iget v1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->C:I

    int-to-float v1, v1

    sub-float v7, v0, v1

    :cond_17
    iget v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->h:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {p1, v7, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 76
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getSheetView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_18
    :goto_4
    return v8
.end method

.method public r()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->s(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    invoke-super {p0, p1, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2
    iget-object p1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->t:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-super {p0, p1, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setDefaultViewTransformer(Lcom/flipboard/bottomsheet/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->l:Lcom/flipboard/bottomsheet/c;

    return-void
.end method

.method public setInterceptContentTouch(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->u:Z

    return-void
.end method

.method public setPeekOnDismiss(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->d:Z

    return-void
.end method

.method public setPeekSheetTranslation(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->y:F

    return-void
.end method

.method public setShouldDimContentView(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->n:Z

    return-void
.end method

.method public setUseHardwareLayerWhileAnimating(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->o:Z

    return-void
.end method

.method public t()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->p()V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->setSheetLayerTypeIfEnabled(I)V

    .line 3
    sget-object v1, Lcom/flipboard/bottomsheet/BottomSheetLayout;->I:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v2, v2, [F

    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getMaxSheetTranslation()F

    move-result v3

    aput v3, v2, v0

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 5
    iget-object v1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->e:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 6
    new-instance v1, Lcom/flipboard/bottomsheet/BottomSheetLayout$b;

    invoke-direct {v1, p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout$b;-><init>(Lcom/flipboard/bottomsheet/BottomSheetLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 7
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 8
    iput-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout;->p:Landroid/animation/Animator;

    .line 9
    sget-object v0, Lcom/flipboard/bottomsheet/BottomSheetLayout$State;->EXPANDED:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    invoke-direct {p0, v0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->setState(Lcom/flipboard/bottomsheet/BottomSheetLayout$State;)V

    return-void
.end method
