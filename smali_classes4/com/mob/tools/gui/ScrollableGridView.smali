.class public Lcom/mob/tools/gui/ScrollableGridView;
.super Landroid/widget/GridView;

# interfaces
.implements Lcom/mob/tools/gui/Scrollable;


# instance fields
.field private osListener:Lcom/mob/tools/gui/Scrollable$OnScrollListener;

.field private pullEnable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/ScrollableGridView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/ScrollableGridView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/ScrollableGridView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$002(Lcom/mob/tools/gui/ScrollableGridView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mob/tools/gui/ScrollableGridView;->pullEnable:Z

    return p1
.end method

.method private init(Landroid/content/Context;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setCacheColorHint(I)V

    .line 2
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/mob/tools/gui/ScrollableGridView;->pullEnable:Z

    .line 4
    new-instance p1, Lcom/mob/tools/gui/ScrollableGridView$1;

    invoke-direct {p1, p0}, Lcom/mob/tools/gui/ScrollableGridView$1;-><init>(Lcom/mob/tools/gui/ScrollableGridView;)V

    iput-object p1, p0, Lcom/mob/tools/gui/ScrollableGridView;->osListener:Lcom/mob/tools/gui/Scrollable$OnScrollListener;

    return-void
.end method


# virtual methods
.method protected computeVerticalScrollOffset()I
    .locals 7

    .line 1
    invoke-super {p0}, Landroid/widget/GridView;->computeVerticalScrollOffset()I

    move-result v6

    .line 2
    iget-object v0, p0, Lcom/mob/tools/gui/ScrollableGridView;->osListener:Lcom/mob/tools/gui/Scrollable$OnScrollListener;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v3, v6

    .line 3
    invoke-interface/range {v0 .. v5}, Lcom/mob/tools/gui/Scrollable$OnScrollListener;->onScrollChanged(Lcom/mob/tools/gui/Scrollable;IIII)V

    :cond_0
    return v6
.end method

.method public isReadyToPull()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mob/tools/gui/ScrollableGridView;->pullEnable:Z

    return v0
.end method
