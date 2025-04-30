.class public Lin/srain/cube/views/GridViewWithHeaderAndFooter;
.super Landroid/widget/GridView;
.source "GridViewWithHeaderAndFooter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/srain/cube/views/GridViewWithHeaderAndFooter$e;,
        Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;,
        Lin/srain/cube/views/GridViewWithHeaderAndFooter$c;,
        Lin/srain/cube/views/GridViewWithHeaderAndFooter$b;
    }
.end annotation


# static fields
.field public static n:Z = false

.field private static final o:Ljava/lang/String; = "GridViewHeaderAndFooter"


# instance fields
.field private a:Landroid/widget/AdapterView$OnItemClickListener;

.field private b:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private c:I

.field private d:Landroid/view/View;

.field private e:I

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lin/srain/cube/views/GridViewWithHeaderAndFooter$b;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lin/srain/cube/views/GridViewWithHeaderAndFooter$b;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/widget/ListAdapter;

.field private i:Lin/srain/cube/views/GridViewWithHeaderAndFooter$e;

.field private j:F

.field private k:F

.field private l:F

.field private m:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->c:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->d:Landroid/view/View;

    .line 4
    iput p1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->e:I

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->f:Ljava/util/ArrayList;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->g:Ljava/util/ArrayList;

    .line 7
    invoke-direct {p0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->i()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 9
    iput p1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->c:I

    const/4 p2, 0x0

    .line 10
    iput-object p2, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->d:Landroid/view/View;

    .line 11
    iput p1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->e:I

    .line 12
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->f:Ljava/util/ArrayList;

    .line 13
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->g:Ljava/util/ArrayList;

    .line 14
    invoke-direct {p0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->i()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 16
    iput p1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->c:I

    const/4 p2, 0x0

    .line 17
    iput-object p2, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->d:Landroid/view/View;

    .line 18
    iput p1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->e:I

    .line 19
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->f:Ljava/util/ArrayList;

    .line 20
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->g:Ljava/util/ArrayList;

    .line 21
    invoke-direct {p0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->i()V

    return-void
.end method

.method static synthetic a(Lin/srain/cube/views/GridViewWithHeaderAndFooter;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->a:Landroid/widget/AdapterView$OnItemClickListener;

    return-object p0
.end method

.method static synthetic b(Lin/srain/cube/views/GridViewWithHeaderAndFooter;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->getNumColumnsCompatible()I

    move-result p0

    return p0
.end method

.method static synthetic c(Lin/srain/cube/views/GridViewWithHeaderAndFooter;)Landroid/widget/AdapterView$OnItemLongClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->b:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-object p0
.end method

.method private getColumnWidthCompatible()I
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 2
    invoke-super {p0}, Landroid/widget/GridView;->getColumnWidth()I

    move-result v0

    return v0

    .line 3
    :cond_0
    :try_start_0
    const-class v0, Landroid/widget/GridView;

    const-string v1, "mColumnWidth"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 5
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 6
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 7
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getItemClickHandler()Lin/srain/cube/views/GridViewWithHeaderAndFooter$e;
    .locals 2

    .line 1
    iget-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->i:Lin/srain/cube/views/GridViewWithHeaderAndFooter$e;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lin/srain/cube/views/GridViewWithHeaderAndFooter$e;-><init>(Lin/srain/cube/views/GridViewWithHeaderAndFooter;Lin/srain/cube/views/GridViewWithHeaderAndFooter$a;)V

    iput-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->i:Lin/srain/cube/views/GridViewWithHeaderAndFooter$e;

    .line 3
    :cond_0
    iget-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->i:Lin/srain/cube/views/GridViewWithHeaderAndFooter$e;

    return-object v0
.end method

.method private getNumColumnsCompatible()I
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 2
    invoke-super {p0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v0

    return v0

    .line 3
    :cond_0
    :try_start_0
    const-class v0, Landroid/widget/GridView;

    const-string v1, "mNumColumns"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 5
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    nop

    .line 6
    iget v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    return v0

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can not determine the mNumColumns for this API platform, please call setNumColumns to set it."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private i()V
    .locals 0

    return-void
.end method

.method private k(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Lin/srain/cube/views/GridViewWithHeaderAndFooter$b;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lin/srain/cube/views/GridViewWithHeaderAndFooter$b;

    .line 3
    iget-object v2, v2, Lin/srain/cube/views/GridViewWithHeaderAndFooter$b;->a:Landroid/view/View;

    if-ne v2, p1, :cond_0

    .line 4
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public d(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->e(Landroid/view/View;Ljava/lang/Object;Z)V

    return-void
.end method

.method public e(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot add header view to grid -- setAdapter has already been called."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 5
    new-instance v2, Lin/srain/cube/views/GridViewWithHeaderAndFooter$b;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lin/srain/cube/views/GridViewWithHeaderAndFooter$b;-><init>(Lin/srain/cube/views/GridViewWithHeaderAndFooter$a;)V

    .line 6
    new-instance v3, Lin/srain/cube/views/GridViewWithHeaderAndFooter$c;

    invoke-virtual {p0}, Landroid/widget/GridView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lin/srain/cube/views/GridViewWithHeaderAndFooter$c;-><init>(Lin/srain/cube/views/GridViewWithHeaderAndFooter;Landroid/content/Context;)V

    if-eqz v1, :cond_2

    .line 7
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v6, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    new-instance v4, Landroid/widget/AbsListView$LayoutParams;

    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v4, v5, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    :cond_2
    invoke-virtual {v3, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 10
    iput-object p1, v2, Lin/srain/cube/views/GridViewWithHeaderAndFooter$b;->a:Landroid/view/View;

    .line 11
    iput-object v3, v2, Lin/srain/cube/views/GridViewWithHeaderAndFooter$b;->b:Landroid/view/ViewGroup;

    .line 12
    iput-object p2, v2, Lin/srain/cube/views/GridViewWithHeaderAndFooter$b;->c:Ljava/lang/Object;

    .line 13
    iput-boolean p3, v2, Lin/srain/cube/views/GridViewWithHeaderAndFooter$b;->d:Z

    .line 14
    iget-object p1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->g:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_3

    .line 15
    check-cast v0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;

    invoke-virtual {v0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->e()V

    :cond_3
    return-void
.end method

.method public f(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->g(Landroid/view/View;Ljava/lang/Object;Z)V

    return-void
.end method

.method public g(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot add header view to grid -- setAdapter has already been called."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 5
    new-instance v2, Lin/srain/cube/views/GridViewWithHeaderAndFooter$b;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lin/srain/cube/views/GridViewWithHeaderAndFooter$b;-><init>(Lin/srain/cube/views/GridViewWithHeaderAndFooter$a;)V

    .line 6
    new-instance v3, Lin/srain/cube/views/GridViewWithHeaderAndFooter$c;

    invoke-virtual {p0}, Landroid/widget/GridView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lin/srain/cube/views/GridViewWithHeaderAndFooter$c;-><init>(Lin/srain/cube/views/GridViewWithHeaderAndFooter;Landroid/content/Context;)V

    if-eqz v1, :cond_2

    .line 7
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v6, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    new-instance v4, Landroid/widget/AbsListView$LayoutParams;

    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v4, v5, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    :cond_2
    invoke-virtual {v3, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 10
    iput-object p1, v2, Lin/srain/cube/views/GridViewWithHeaderAndFooter$b;->a:Landroid/view/View;

    .line 11
    iput-object v3, v2, Lin/srain/cube/views/GridViewWithHeaderAndFooter$b;->b:Landroid/view/ViewGroup;

    .line 12
    iput-object p2, v2, Lin/srain/cube/views/GridViewWithHeaderAndFooter$b;->c:Ljava/lang/Object;

    .line 13
    iput-boolean p3, v2, Lin/srain/cube/views/GridViewWithHeaderAndFooter$b;->d:Z

    .line 14
    iget-object p1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->f:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_3

    .line 15
    check-cast v0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;

    invoke-virtual {v0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->e()V

    :cond_3
    return-void
.end method

.method public getFooterViewCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderViewCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHorizontalSpacing()I
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 1
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 2
    const-class v0, Landroid/widget/GridView;

    const-string v1, "mHorizontalSpacing"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 4
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    .line 5
    :cond_0
    invoke-super {p0}, Landroid/widget/GridView;->getHorizontalSpacing()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getOriginalAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->h:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getRowHeight()I
    .locals 6

    .line 1
    iget v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->e:I

    if-lez v0, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 3
    invoke-direct {p0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->getNumColumnsCompatible()I

    move-result v1

    const/4 v2, -0x1

    if-eqz v0, :cond_3

    .line 4
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iget-object v3, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->f:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->g:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    mul-int v3, v3, v1

    if-gt v0, v3, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-direct {p0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->getColumnWidthCompatible()I

    move-result v0

    .line 6
    invoke-virtual {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    iget-object v4, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->f:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    mul-int v1, v1, v4

    iget-object v4, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->d:Landroid/view/View;

    invoke-interface {v3, v1, v4, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    const/4 v4, 0x0

    if-nez v3, :cond_2

    .line 8
    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v3, v2, v5, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    .line 9
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    :cond_2
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v5, v3, Landroid/widget/AbsListView$LayoutParams;->height:I

    .line 11
    invoke-static {v2, v4, v5}, Landroid/widget/GridView;->getChildMeasureSpec(III)I

    move-result v2

    const/high16 v5, 0x40000000    # 2.0f

    .line 12
    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget v3, v3, Landroid/widget/AbsListView$LayoutParams;->width:I

    .line 13
    invoke-static {v0, v4, v3}, Landroid/widget/GridView;->getChildMeasureSpec(III)I

    move-result v0

    .line 14
    invoke-virtual {v1, v0, v2}, Landroid/view/View;->measure(II)V

    .line 15
    iput-object v1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->d:Landroid/view/View;

    .line 16
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->e:I

    return v0

    :cond_3
    :goto_0
    return v2
.end method

.method public getVerticalSpacing()I
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 1
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 2
    const-class v0, Landroid/widget/GridView;

    const-string v1, "mVerticalSpacing"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 4
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    .line 5
    :cond_0
    invoke-super {p0}, Landroid/widget/GridView;->getVerticalSpacing()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h(I)I
    .locals 1

    if-ltz p1, :cond_0

    .line 1
    iget-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lin/srain/cube/views/GridViewWithHeaderAndFooter$b;

    iget-object p1, p1, Lin/srain/cube/views/GridViewWithHeaderAndFooter$b;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public j()V
    .locals 1

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->e:I

    return-void
.end method

.method public l(Landroid/view/View;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    check-cast v0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;

    invoke-virtual {v0, p1}, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->f(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 4
    :cond_0
    iget-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->g:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->k(Landroid/view/View;Ljava/util/ArrayList;)V

    :cond_1
    return v1
.end method

.method public m(Landroid/view/View;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    check-cast v0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;

    invoke-virtual {v0, p1}, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->g(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 4
    :cond_0
    iget-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->f:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->k(Landroid/view/View;Ljava/util/ArrayList;)V

    :cond_1
    return v1
.end method

.method public n()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, v1}, Landroid/widget/GridView;->smoothScrollToPositionFromTop(II)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->setSelection(I)V

    :goto_0
    return-void
.end method

.method public o(I)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, v1, p1}, Landroid/widget/GridView;->smoothScrollToPositionFromTop(III)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->setSelection(I)V

    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/GridView;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->d:Landroid/view/View;

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 4
    iget v2, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->j:F

    iget v3, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->l:F

    sub-float v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->j:F

    .line 5
    iget v2, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->k:F

    iget v3, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->m:F

    sub-float v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->k:F

    .line 6
    iput v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->l:F

    .line 7
    iput v1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->m:F

    .line 8
    iget v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->j:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->k:F

    iput v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->j:F

    .line 10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->l:F

    .line 11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->m:F

    .line 12
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/GridView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onMeasure(II)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    instance-of p2, p1, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;

    if-eqz p2, :cond_0

    .line 4
    check-cast p1, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;

    invoke-direct {p0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->getNumColumnsCompatible()I

    move-result p2

    invoke-virtual {p1, p2}, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->h(I)V

    .line 5
    invoke-virtual {p0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->getRowHeight()I

    move-result p2

    invoke-virtual {p1, p2}, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->i(I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 3

    .line 2
    iput-object p1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->h:Landroid/widget/ListAdapter;

    .line 3
    iget-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    new-instance v0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;

    iget-object v1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->f:Ljava/util/ArrayList;

    iget-object v2, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->g:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, p1}, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    .line 6
    invoke-direct {p0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->getNumColumnsCompatible()I

    move-result p1

    const/4 v1, 0x1

    if-le p1, v1, :cond_2

    .line 7
    invoke-virtual {v0, p1}, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->h(I)V

    .line 8
    :cond_2
    invoke-virtual {p0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->getRowHeight()I

    move-result p1

    invoke-virtual {v0, p1}, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->i(I)V

    .line 9
    invoke-super {p0, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_1
    return-void
.end method

.method public setClipChildren(Z)V
    .locals 0

    return-void
.end method

.method public setClipChildrenSupper(Z)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/GridView;->setClipChildren(Z)V

    return-void
.end method

.method public setNumColumns(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 2
    iput p1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->c:I

    .line 3
    invoke-virtual {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    instance-of v1, v0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;

    if-eqz v1, :cond_0

    .line 5
    check-cast v0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;

    invoke-virtual {v0, p1}, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->h(I)V

    :cond_0
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->a:Landroid/widget/AdapterView$OnItemClickListener;

    .line 2
    invoke-direct {p0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->getItemClickHandler()Lin/srain/cube/views/GridViewWithHeaderAndFooter$e;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->b:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 2
    invoke-direct {p0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->getItemClickHandler()Lin/srain/cube/views/GridViewWithHeaderAndFooter$e;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-void
.end method
