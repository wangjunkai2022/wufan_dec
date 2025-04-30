.class public abstract Lcom/join/mgps/base/BaseQuickAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "BaseQuickAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/base/BaseQuickAdapter$i;,
        Lcom/join/mgps/base/BaseQuickAdapter$j;,
        Lcom/join/mgps/base/BaseQuickAdapter$h;,
        Lcom/join/mgps/base/BaseQuickAdapter$g;,
        Lcom/join/mgps/base/BaseQuickAdapter$k;,
        Lcom/join/mgps/base/BaseQuickAdapter$l;,
        Lcom/join/mgps/base/BaseQuickAdapter$m;,
        Lcom/join/mgps/base/BaseQuickAdapter$AnimationType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Lcom/join/mgps/base/b;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "TK;>;"
    }
.end annotation


# static fields
.field public static final ALPHAIN:I = 0x1

.field public static final EMPTY_VIEW:I = 0x555

.field public static final FOOTER_VIEW:I = 0x333

.field public static final HEADER_VIEW:I = 0x111

.field public static final LOADING_VIEW:I = 0x222

.field public static final SCALEIN:I = 0x2

.field public static final SLIDEIN_BOTTOM:I = 0x3

.field public static final SLIDEIN_LEFT:I = 0x4

.field public static final SLIDEIN_RIGHT:I = 0x5

.field protected static final TAG:Ljava/lang/String; = "BaseQuickAdapter"


# instance fields
.field private footerViewAsFlow:Z

.field private headerViewAsFlow:Z

.field protected mContext:Landroid/content/Context;

.field private mCustomAnimation:Lh1/b;

.field protected mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mDuration:I

.field private mEmptyLayout:Landroid/widget/FrameLayout;

.field private mEnableLoadMoreEndClick:Z

.field private mFirstOnlyEnable:Z

.field private mFootAndEmptyEnable:Z

.field private mFooterLayout:Landroid/widget/LinearLayout;

.field private mHeadAndEmptyEnable:Z

.field private mHeaderLayout:Landroid/widget/LinearLayout;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsUseEmpty:Z

.field private mLastPosition:I

.field protected mLayoutInflater:Landroid/view/LayoutInflater;

.field protected mLayoutResId:I

.field private mLoadMoreEnable:Z

.field private mLoadMoreView:Lcom/join/mgps/base/c;

.field private mLoading:Z

.field private mNextLoadEnable:Z

.field private mOnItemChildClickListener:Lcom/join/mgps/base/BaseQuickAdapter$g;

.field private mOnItemChildLongClickListener:Lcom/join/mgps/base/BaseQuickAdapter$h;

.field private mOnItemClickListener:Lcom/join/mgps/base/BaseQuickAdapter$i;

.field private mOnItemLongClickListener:Lcom/join/mgps/base/BaseQuickAdapter$j;

.field private mOpenAnimationEnable:Z

.field private mPreLoadNumber:I

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mRequestLoadMoreListener:Lcom/join/mgps/base/BaseQuickAdapter$k;

.field private mSelectAnimation:Lh1/b;

.field private mSpanSizeLookup:Lcom/join/mgps/base/BaseQuickAdapter$l;

.field private mStartUpFetchPosition:I

.field private mUpFetchEnable:Z

.field private mUpFetchListener:Lcom/join/mgps/base/BaseQuickAdapter$m;

.field private mUpFetching:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mNextLoadEnable:Z

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mLoadMoreEnable:Z

    .line 4
    iput-boolean v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mLoading:Z

    .line 5
    new-instance v1, Lcom/join/mgps/base/d;

    invoke-direct {v1}, Lcom/join/mgps/base/d;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mLoadMoreView:Lcom/join/mgps/base/c;

    .line 6
    iput-boolean v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mEnableLoadMoreEndClick:Z

    const/4 v1, 0x1

    .line 7
    iput-boolean v1, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mFirstOnlyEnable:Z

    .line 8
    iput-boolean v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mOpenAnimationEnable:Z

    .line 9
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mInterpolator:Landroid/view/animation/Interpolator;

    const/16 v0, 0x12c

    .line 10
    iput v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mDuration:I

    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mLastPosition:I

    .line 12
    new-instance v0, Lh1/a;

    invoke-direct {v0}, Lh1/a;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mSelectAnimation:Lh1/b;

    .line 13
    iput-boolean v1, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mIsUseEmpty:Z

    .line 14
    iput v1, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mPreLoadNumber:I

    .line 15
    iput v1, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mStartUpFetchPosition:I

    if-nez p2, :cond_0

    .line 16
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    iput-object p2, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mData:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 17
    iput p1, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mLayoutResId:I

    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, v0, p1}, Lcom/join/mgps/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/base/BaseQuickAdapter;Landroidx/recyclerview/widget/LinearLayoutManager;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/base/BaseQuickAdapter;->isFullScreen(Landroidx/recyclerview/widget/LinearLayoutManager;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/join/mgps/base/BaseQuickAdapter;[I)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/base/BaseQuickAdapter;->getTheBiggestNumber([I)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/join/mgps/base/BaseQuickAdapter;)Lcom/join/mgps/base/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mLoadMoreView:Lcom/join/mgps/base/c;

    return-object p0
.end method

.method static synthetic access$300(Lcom/join/mgps/base/BaseQuickAdapter;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mEnableLoadMoreEndClick:Z

    return p0
.end method

.method static synthetic access$400(Lcom/join/mgps/base/BaseQuickAdapter;)Lcom/join/mgps/base/BaseQuickAdapter$l;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mSpanSizeLookup:Lcom/join/mgps/base/BaseQuickAdapter$l;

    return-object p0
.end method

.method private addAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mOpenAnimationEnable:Z

    if-eqz v0, :cond_3

    .line 2
    iget-boolean v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mFirstOnlyEnable:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v0

    iget v1, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mLastPosition:I

    if-le v0, v1, :cond_3

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mCustomAnimation:Lh1/b;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mSelectAnimation:Lh1/b;

    .line 5
    :goto_0
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v0, v1}, Lh1/b;->a(Landroid/view/View;)[Landroid/animation/Animator;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 6
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/join/mgps/base/BaseQuickAdapter;->startAnim(Landroid/animation/Animator;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result p1

    iput p1, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mLastPosition:I

    :cond_3
    return-void
.end method

.method private autoLoadMore(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/base/BaseQuickAdapter;->getLoadMoreViewCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/base/BaseQuickAdapter;->getItemCount()I

    move-result v0

    iget v1, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mPreLoadNumber:I

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mLoadMoreView:Lcom/join/mgps/base/c;

    invoke-virtual {p1}, Lcom/join/mgps/base/c;->e()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    return-void

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mLoadMoreView:Lcom/join/mgps/base/c;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/join/mgps/base/c;->j(I)V

    .line 5
    iget-boolean p1, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mLoading:Z

    if-nez p1, :cond_3

    .line 6
    iput-boolean v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mLoading:Z

    .line 7
    iget-object p1, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mRequestLoadMoreListener:Lcom/join/mgps/base/BaseQuickAdapter$k;

    if-eqz p1, :cond_3

    .line 8
    invoke-interface {p1}, Lcom/join/mgps/base/BaseQuickAdapter$k;->onLoadMoreRequested()V

    :cond_3
    return-void
.end method

.method private autoUpFetch(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/base/BaseQuickAdapter;->isUpFetchEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/join/mgps/base/BaseQuickAdapter;->isUpFetching()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mStartUpFetchPosition:I

    if-gt p1, v0, :cond_1

    iget-object p1, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mUpFetchListener:Lcom/join/mgps/base/BaseQuickAdapter$m;

    if-eqz p1, :cond_1

    .line 3
    invoke-interface {p1}, Lcom/join/mgps/base/BaseQuickAdapter$m;->a()V

    :cond_1
    :goto_0
    return-void
.end method

.method private checkNotNull()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/base/BaseQuickAdapter;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "please bind recyclerView first!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private compatibilityDataSizeChanged(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mData:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ne v0, p1, :cond_1

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method private createGenericKInstance(Ljava/lang/Class;Landroid/view/View;)Lcom/join/mgps/base/b;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Landroid/view/View;",
            ")TK;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->isMemberClass()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Class;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v1

    const-class v4, Landroid/view/View;

    aput-object v4, v3, v2

    invoke-virtual {p1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    .line 3
    invoke-virtual {p1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v1

    aput-object p2, v0, v2

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/base/b;

    return-object p1

    :cond_0
    new-array v0, v2, [Ljava/lang/Class;

    .line 5
    const-class v3, Landroid/view/View;

    aput-object v3, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    .line 6
    invoke-virtual {p1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, v1

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/base/b;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getExpandableItem(I)Lj1/a;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/join/mgps/base/BaseQuickAdapter;->isExpandable(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lj1/a;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getFooterViewPosition()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/base/BaseQuickAdapter;->getEmptyViewCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 2
    iget-boolean v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mHeadAndEmptyEnable:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/join/mgps/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mFootAndEmptyEnable:Z

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, -0x1

    return v0

    .line 4
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v0

    iget-object v1, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private getHeaderViewPosition()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/base/BaseQuickAdapter;->getEmptyViewCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 2
    iget-boolean v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mHeadAndEmptyEnable:Z

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, -0x1

    return v0

    :cond_1
    return v1
.end method

.method private getInstancedGenericKClass(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 5

    .line 1
    const-class v0, Lcom/join/mgps/base/b;

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object p1

    .line 2
    instance-of v1, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_2

    .line 3
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p1

    .line 4
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 5
    instance-of v4, v3, Ljava/lang/Class;

    if-eqz v4, :cond_0

    .line 6
    check-cast v3, Ljava/lang/Class;

    .line 7
    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    .line 8
    :cond_0
    instance-of v4, v3, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_1

    .line 9
    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 10
    instance-of v4, v3, Ljava/lang/Class;

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Ljava/lang/Class;

    invoke-virtual {v0, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 11
    check-cast v3, Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/reflect/GenericSignatureFormatError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/TypeNotPresentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/MalformedParameterizedTypeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/reflect/MalformedParameterizedTypeException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/TypeNotPresentException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/reflect/GenericSignatureFormatError;->printStackTrace()V

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mData:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method private getLoadingView(Landroid/view/ViewGroup;)Lcom/join/mgps/base/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")TK;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mLoadMoreView:Lcom/join/mgps/base/c;

    invoke-virtual {v0}, Lcom/join/mgps/base/c;->b()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/base/BaseQuickAdapter;->getItemView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/join/mgps/base/BaseQuickAdapter;->createBaseViewHolder(Landroid/view/View;)Lcom/join/mgps/base/b;

    move-result-object p1

    .line 3
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/join/mgps/base/BaseQuickAdapter$c;

    invoke-direct {v1, p0}, Lcom/join/mgps/base/BaseQuickAdapter$c;-><init>(Lcom/join/mgps/base/BaseQuickAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method private getTheBiggestNumber([I)I
    .locals 4

    const/4 v0, -0x1

    if-eqz p1, :cond_2

    .line 1
    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v3, p1, v2

    if-le v3, v0, :cond_1

    move v0, v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method private isFullScreen(Landroidx/recyclerview/widget/LinearLayoutManager;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/join/mgps/base/BaseQuickAdapter;->getItemCount()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private openLoadMore(Lcom/join/mgps/base/BaseQuickAdapter$k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mRequestLoadMoreListener:Lcom/join/mgps/base/BaseQuickAdapter$k;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mNextLoadEnable:Z

    .line 3
    iput-boolean p1, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mLoadMoreEnable:Z

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mLoading:Z

    return-void
.end method

.method private recursiveCollapse(I)I
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/mgps/base/BaseQuickAdapter;->isExpandable(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    check-cast v0, Lj1/a;

    .line 4
    invoke-interface {v0}, Lj1/a;->b()Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    .line 5
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {v0}, Lj1/a;->h()I

    move-result v0

    add-int/lit8 p1, p1, 0x1

    .line 7
    iget-object v2, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge p1, v2, :cond_3

    .line 8
    iget-object v3, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mData:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 9
    instance-of v4, v3, Lj1/a;

    if-eqz v4, :cond_2

    move-object v4, v3

    check-cast v4, Lj1/a;

    invoke-interface {v4}, Lj1/a;->h()I

    move-result v4

    if-gt v4, v0, :cond_2

    goto :goto_1

    .line 10
    :cond_2
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 11
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mData:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 12
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    return p1

    :cond_4
    :goto_2
    return v1
.end method

.method private recursiveExpand(ILjava/util/List;)I
    .locals 5
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr p1, v1

    add-int/lit8 p1, p1, -0x1

    .line 3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 4
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lj1/a;

    if-eqz v2, :cond_0

    .line 5
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj1/a;

    .line 6
    invoke-interface {v2}, Lj1/a;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/join/mgps/base/BaseQuickAdapter;->hasSubItems(Lj1/a;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7
    invoke-interface {v2}, Lj1/a;->c()Ljava/util/List;

    move-result-object v2

    .line 8
    iget-object v3, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mData:Ljava/util/List;

    add-int/lit8 v4, p1, 0x1

    invoke-interface {v3, v4, v2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 9
    invoke-direct {p0, v4, v2}, Lcom/join/mgps/base/BaseQuickAdapter;->recursiveExpand(ILjava/util/List;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_0
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/base/BaseQuickAdapter;->addData(ILjava/lang/Object;)V

    return-void
.end method

.method public addData(ILjava/lang/Object;)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    const/4 p1, 0x1

    .line 3
    invoke-direct {p0, p1}, Lcom/join/mgps/base/BaseQuickAdapter;->compatibilityDataSizeChanged(I)V

    return-void
.end method

.method public addData(ILjava/util/Collection;)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p2    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TT;>;)V"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v0

    add-int/2addr p1, v0

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    .line 9
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/join/mgps/base/BaseQuickAdapter;->compatibilityDataSizeChanged(I)V

    return-void
.end method

.method public addData(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object p1, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mData:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0}, Lcom/join/mgps/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, p1}, Lcom/join/mgps/base/BaseQuickAdapter;->compatibilityDataSizeChanged(I)V

    return-void
.end method

.method public addData(Ljava/util/Collection;)V
    .locals 2
    .param p1    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TT;>;)V"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 11
    iget-object v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/join/mgps/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v1

    add-int/2addr v0, v1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    .line 12
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/join/mgps/base/BaseQuickAdapter;->compatibilityDataSizeChanged(I)V

    return-void
.end method

.method public addFooterView(Landroid/view/View;)I
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lcom/join/mgps/base/BaseQuickAdapter;->addFooterView(Landroid/view/View;II)I

    move-result p1

    return p1
.end method

.method public addFooterView(Landroid/view/View;I)I
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/join/mgps/base/BaseQuickAdapter;->addFooterView(Landroid/view/View;II)I

    move-result p1

    return p1
.end method

.method public addFooterView(Landroid/view/View;II)I
    .locals 4

    .line 3
    iget-object v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mFooterLayout:Landroid/widget/LinearLayout;

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mFooterLayout:Landroid/widget/LinearLayout;

    const/4 v3, -0x2

    if-ne p3, v2, :cond_0

    .line 5
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 6
    iget-object p3, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mFooterLayout:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 7
    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 8
    iget-object p3, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mFooterLayout:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v3, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    :cond_1
    :goto_0
    iget-object p3, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mFooterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p3

    if-ltz p2, :cond_2

    if-le p2, p3, :cond_3

    :cond_2
    move p2, p3

    .line 10
    :cond_3
    iget-object p3, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mFooterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 11
    iget-object p1, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mFooterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    if-ne p1, v2, :cond_4

    .line 12
    invoke-direct {p0}, Lcom/join/mgps/base/BaseQuickAdapter;->getFooterViewPosition()I

    move-result p1

    if-eq p1, v1, :cond_4

    .line 13
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    :cond_4
    return p2
.end method

.method public addHeaderView(Landroid/view/View;)I
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/base/BaseQuickAdapter;->addHeaderView(Landroid/view/View;I)I

    move-result p1

    return p1
.end method

.method public addHeaderView(Landroid/view/View;I)I
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/join/mgps/base/BaseQuickAdapter;->addHeaderView(Landroid/view/View;II)I

    move-result p1

    return p1
.end method

.method public addHeaderView(Landroid/view/View;II)I
    .locals 4

    .line 3
    iget-object v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mHeaderLayout:Landroid/widget/LinearLayout;

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mHeaderLayout:Landroid/widget/LinearLayout;

    const/4 v3, -0x2

    if-ne p3, v2, :cond_0

    .line 5
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 6
    iget-object p3, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mHeaderLayout:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 7
    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 8
    iget-object p3, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mHeaderLayout:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v3, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    :cond_1
    :goto_0
    iget-object p3, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mHeaderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p3

    if-ltz p2, :cond_2

    if-le p2, p3, :cond_3

    :cond_2
    move p2, p3

    .line 10
    :cond_3
    iget-object p3, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mHeaderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 11
    iget-object p1, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mHeaderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    if-ne p1, v2, :cond_4

    .line 12
    invoke-direct {p0}, Lcom/join/mgps/base/BaseQuickAdapter;->getHeaderViewPosition()I

    move-result p1

    if-eq p1, v1, :cond_4

    .line 13
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    :cond_4
    return p2
.end method

.method public bindToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/base/BaseQuickAdapter;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/base/BaseQuickAdapter;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/base/BaseQuickAdapter;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Don\'t bind twice"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected bindViewClickListener(Lcom/join/mgps/base/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/base/BaseQuickAdapter;->getOnItemClickListener()Lcom/join/mgps/base/BaseQuickAdapter$i;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3
    new-instance v1, Lcom/join/mgps/base/BaseQuickAdapter$e;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/base/BaseQuickAdapter$e;-><init>(Lcom/join/mgps/base/BaseQuickAdapter;Lcom/join/mgps/base/b;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/base/BaseQuickAdapter;->getOnItemLongClickListener()Lcom/join/mgps/base/BaseQuickAdapter$j;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 5
    new-instance v1, Lcom/join/mgps/base/BaseQuickAdapter$f;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/base/BaseQuickAdapter$f;-><init>(Lcom/join/mgps/base/BaseQuickAdapter;Lcom/join/mgps/base/b;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_2
    return-void
.end method

.method public closeLoadAnimation()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mOpenAnimationEnable:Z

    return-void
.end method

.method public collapse(I)I
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 8
    invoke-virtual {p0, p1, v0, v0}, Lcom/join/mgps/base/BaseQuickAdapter;->collapse(IZZ)I

    move-result p1

    return p1
.end method

.method public collapse(IZ)I
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 9
    invoke-virtual {p0, p1, p2, v0}, Lcom/join/mgps/base/BaseQuickAdapter;->collapse(IZZ)I

    move-result p1

    return p1
.end method

.method public collapse(IZZ)I
    .locals 3
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v0

    sub-int v0, p1, v0

    .line 2
    invoke-direct {p0, v0}, Lcom/join/mgps/base/BaseQuickAdapter;->getExpandableItem(I)Lj1/a;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 3
    :cond_0
    invoke-direct {p0, v0}, Lcom/join/mgps/base/BaseQuickAdapter;->recursiveCollapse(I)I

    move-result v0

    .line 4
    invoke-interface {v1, v2}, Lj1/a;->a(Z)V

    if-eqz p3, :cond_2

    if-eqz p2, :cond_1

    .line 5
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    add-int/lit8 p1, p1, 0x1

    .line 6
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_2
    :goto_0
    return v0
.end method

.method protected abstract convert(Lcom/join/mgps/base/b;Ljava/lang/Object;)V
    .param p1    # Lcom/join/mgps/base/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TT;)V"
        }
    .end annotation
.end method

.method protected convertPayloads(Lcom/join/mgps/base/b;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0
    .param p1    # Lcom/join/mgps/base/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TT;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method protected createBaseViewHolder(Landroid/view/View;)Lcom/join/mgps/base/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TK;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0, v0}, Lcom/join/mgps/base/BaseQuickAdapter;->getInstancedGenericKClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 4
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    .line 5
    new-instance v0, Lcom/join/mgps/base/b;

    invoke-direct {v0, p1}, Lcom/join/mgps/base/b;-><init>(Landroid/view/View;)V

    goto :goto_1

    .line 6
    :cond_1
    invoke-direct {p0, v1, p1}, Lcom/join/mgps/base/BaseQuickAdapter;->createGenericKInstance(Ljava/lang/Class;Landroid/view/View;)Lcom/join/mgps/base/b;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    .line 7
    :cond_2
    new-instance v0, Lcom/join/mgps/base/b;

    invoke-direct {v0, p1}, Lcom/join/mgps/base/b;-><init>(Landroid/view/View;)V

    :goto_2
    return-object v0
.end method

.method protected createBaseViewHolder(Landroid/view/ViewGroup;I)Lcom/join/mgps/base/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TK;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2, p1}, Lcom/join/mgps/base/BaseQuickAdapter;->getItemView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/base/BaseQuickAdapter;->createBaseViewHolder(Landroid/view/View;)Lcom/join/mgps/base/b;

    move-result-object p1

    return-object p1
.end method

.method public disableLoadMoreIfNotFullPage()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/base/BaseQuickAdapter;->checkNotNull()V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/base/BaseQuickAdapter;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/base/BaseQuickAdapter;->disableLoadMoreIfNotFullPage(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public disableLoadMoreIfNotFullPage(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 4

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lcom/join/mgps/base/BaseQuickAdapter;->setEnableLoadMore(Z)V

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 5
    :cond_1
    instance-of v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    const-wide/16 v2, 0x32

    if-eqz v1, :cond_2

    .line 6
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 7
    new-instance v1, Lcom/join/mgps/base/BaseQuickAdapter$a;

    invoke-direct {v1, p0, v0}, Lcom/join/mgps/base/BaseQuickAdapter$a;-><init>(Lcom/join/mgps/base/BaseQuickAdapter;Landroidx/recyclerview/widget/LinearLayoutManager;)V

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 8
    :cond_2
    instance-of v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v1, :cond_3

    .line 9
    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 10
    new-instance v1, Lcom/join/mgps/base/BaseQuickAdapter$b;

    invoke-direct {v1, p0, v0}, Lcom/join/mgps/base/BaseQuickAdapter$b;-><init>(Lcom/join/mgps/base/BaseQuickAdapter;Landroidx/recyclerview/widget/StaggeredGridLayoutManager;)V

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public enableLoadMoreEndClick(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mEnableLoadMoreEndClick:Z

    return-void
.end method

.method public expand(I)I
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 15
    invoke-virtual {p0, p1, v0, v0}, Lcom/join/mgps/base/BaseQuickAdapter;->expand(IZZ)I

    move-result p1

    return p1
.end method

.method public expand(IZ)I
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 14
    invoke-virtual {p0, p1, p2, v0}, Lcom/join/mgps/base/BaseQuickAdapter;->expand(IZZ)I

    move-result p1

    return p1
.end method

.method public expand(IZZ)I
    .locals 6
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v0

    sub-int v0, p1, v0

    .line 2
    invoke-direct {p0, v0}, Lcom/join/mgps/base/BaseQuickAdapter;->getExpandableItem(I)Lj1/a;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 3
    :cond_0
    invoke-virtual {p0, v1}, Lcom/join/mgps/base/BaseQuickAdapter;->hasSubItems(Lj1/a;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    .line 4
    invoke-interface {v1, v4}, Lj1/a;->a(Z)V

    .line 5
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return v2

    .line 6
    :cond_1
    invoke-interface {v1}, Lj1/a;->b()Z

    move-result v3

    if-nez v3, :cond_2

    .line 7
    invoke-interface {v1}, Lj1/a;->c()Ljava/util/List;

    move-result-object v3

    .line 8
    iget-object v5, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mData:Ljava/util/List;

    add-int/2addr v0, v4

    invoke-interface {v5, v0, v3}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 9
    invoke-direct {p0, v0, v3}, Lcom/join/mgps/base/BaseQuickAdapter;->recursiveExpand(ILjava/util/List;)I

    move-result v0

    add-int/2addr v2, v0

    .line 10
    invoke-interface {v1, v4}, Lj1/a;->a(Z)V

    :cond_2
    if-eqz p3, :cond_4

    if-eqz p2, :cond_3

    .line 11
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    add-int/2addr p1, v4

    .line 12
    invoke-virtual {p0, p1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto :goto_0

    .line 13
    :cond_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_4
    :goto_0
    return v2
.end method

.method public expandAll(IZ)I
    .locals 1

    const/4 v0, 0x1

    xor-int/2addr p2, v0

    .line 17
    invoke-virtual {p0, p1, v0, p2}, Lcom/join/mgps/base/BaseQuickAdapter;->expandAll(IZZ)I

    move-result p1

    return p1
.end method

.method public expandAll(IZZ)I
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v0

    sub-int v0, p1, v0

    .line 2
    invoke-direct {p0, v0}, Lcom/join/mgps/base/BaseQuickAdapter;->getExpandableItem(I)Lj1/a;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 3
    :cond_0
    invoke-virtual {p0, v1}, Lcom/join/mgps/base/BaseQuickAdapter;->hasSubItems(Lj1/a;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    .line 4
    invoke-interface {v1, v4}, Lj1/a;->a(Z)V

    .line 5
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return v2

    :cond_1
    const/4 v1, 0x0

    add-int/2addr v0, v4

    .line 6
    iget-object v3, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 7
    invoke-virtual {p0, v0}, Lcom/join/mgps/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 8
    :cond_2
    invoke-virtual {p0, p1, v2, v2}, Lcom/join/mgps/base/BaseQuickAdapter;->expand(IZZ)I

    move-result v3

    .line 9
    :goto_0
    iget-object v5, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mData:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_5

    .line 10
    invoke-virtual {p0, v0}, Lcom/join/mgps/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 11
    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_1

    .line 12
    :cond_3
    invoke-virtual {p0, v5}, Lcom/join/mgps/base/BaseQuickAdapter;->isExpandable(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 13
    invoke-virtual {p0}, Lcom/join/mgps/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual {p0, v5, v2, v2}, Lcom/join/mgps/base/BaseQuickAdapter;->expand(IZZ)I

    move-result v5

    add-int/2addr v3, v5

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    if-eqz p3, :cond_7

    if-eqz p2, :cond_6

    .line 14
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    add-int/2addr p1, v4

    .line 15
    invoke-virtual {p0, p1, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto :goto_2

    .line 16
    :cond_6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_7
    :goto_2
    return v3
.end method

.method public expandAll()V
    .locals 2

    .line 18
    iget-object v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0}, Lcom/join/mgps/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v1

    add-int/2addr v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v1, 0x0

    .line 19
    invoke-virtual {p0, v0, v1, v1}, Lcom/join/mgps/base/BaseQuickAdapter;->expandAll(IZZ)I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getData()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mData:Ljava/util/List;

    return-object v0
.end method

.method protected getDefItemViewType(I)I
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public getEmptyView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mEmptyLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getEmptyViewCount()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mEmptyLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mIsUseEmpty:Z

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public getFooterLayout()Landroid/widget/LinearLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mFooterLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getFooterLayoutCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mFooterLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getFooterViewsCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/base/BaseQuickAdapter;->getFooterLayoutCount()I

    move-result v0

    return v0
.end method

.method public getHeaderLayout()Landroid/widget/LinearLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mHeaderLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getHeaderLayoutCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mHeaderLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getHeaderViewsCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemCount()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/base/BaseQuickAdapter;->getEmptyViewCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_1

    .line 2
    iget-boolean v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mHeadAndEmptyEnable:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/join/mgps/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mFootAndEmptyEnable:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/join/mgps/base/BaseQuickAdapter;->getFooterLayoutCount()I

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v0

    iget-object v1, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/join/mgps/base/BaseQuickAdapter;->getFooterLayoutCount()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/join/mgps/base/BaseQuickAdapter;->getLoadMoreViewCount()I

    move-result v1

    add-int/2addr v1, v0

    :cond_2
    :goto_0
    return v1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method protected getItemView(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getItemViewType(I)I
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/base/BaseQuickAdapter;->getEmptyViewCount()I

    move-result v0

    const/16 v1, 0x111

    const/16 v2, 0x333

    const/4 v3, 0x1

    if-ne v0, v3, :cond_6

    .line 2
    iget-boolean v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mHeadAndEmptyEnable:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/join/mgps/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v4, 0x555

    if-eqz p1, :cond_4

    if-eq p1, v3, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    return v4

    :cond_1
    return v2

    :cond_2
    if-eqz v0, :cond_3

    return v4

    :cond_3
    return v2

    :cond_4
    if-eqz v0, :cond_5

    return v1

    :cond_5
    return v4

    .line 3
    :cond_6
    invoke-virtual {p0}, Lcom/join/mgps/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v0

    if-ge p1, v0, :cond_7

    return v1

    :cond_7
    sub-int/2addr p1, v0

    .line 4
    iget-object v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_8

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/base/BaseQuickAdapter;->getDefItemViewType(I)I

    move-result p1

    return p1

    :cond_8
    sub-int/2addr p1, v0

    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/base/BaseQuickAdapter;->getFooterLayoutCount()I

    move-result v0

    if-ge p1, v0, :cond_9

    return v2

    :cond_9
    const/16 p1, 0x222

    return p1
.end method

.method public getLoadMoreViewCount()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mRequestLoadMoreListener:Lcom/join/mgps/base/BaseQuickAdapter$k;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mLoadMoreEnable:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mNextLoadEnable:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mLoadMoreView:Lcom/join/mgps/base/c;

    invoke-virtual {v0}, Lcom/join/mgps/base/c;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public getLoadMoreViewPosition()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v0

    iget-object v1, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/join/mgps/base/BaseQuickAdapter;->getFooterLayoutCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final getOnItemChildClickListener()Lcom/join/mgps/base/BaseQuickAdapter$g;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mOnItemChildClickListener:Lcom/join/mgps/base/BaseQuickAdapter$g;

    return-object v0
.end method

.method public final getOnItemChildLongClickListener()Lcom/join/mgps/base/BaseQuickAdapter$h;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mOnItemChildLongClickListener:Lcom/join/mgps/base/BaseQuickAdapter$h;

    return-object v0
.end method

.method public final getOnItemClickListener()Lcom/join/mgps/base/BaseQuickAdapter$i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mOnItemClickListener:Lcom/join/mgps/base/BaseQuickAdapter$i;

    return-object v0
.end method

.method public final getOnItemLongClickListener()Lcom/join/mgps/base/BaseQuickAdapter$j;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mOnItemLongClickListener:Lcom/join/mgps/base/BaseQuickAdapter$j;

    return-object v0
.end method

.method public getParentPosition(Ljava/lang/Object;)I
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/base/BaseQuickAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    .line 2
    :cond_0
    instance-of v2, p1, Lj1/a;

    if-eqz v2, :cond_1

    .line 3
    check-cast p1, Lj1/a;

    invoke-interface {p1}, Lj1/a;->h()I

    move-result p1

    goto :goto_0

    :cond_1
    const p1, 0x7fffffff

    :goto_0
    if-nez p1, :cond_2

    return v0

    :cond_2
    if-ne p1, v1, :cond_3

    return v1

    :cond_3
    :goto_1
    if-ltz v0, :cond_5

    .line 4
    iget-object v2, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 5
    instance-of v3, v2, Lj1/a;

    if-eqz v3, :cond_4

    .line 6
    check-cast v2, Lj1/a;

    .line 7
    invoke-interface {v2}, Lj1/a;->h()I

    move-result v3

    if-ltz v3, :cond_4

    invoke-interface {v2}, Lj1/a;->h()I

    move-result v2

    if-ge v2, p1, :cond_4

    return v0

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_5
    return v1
.end method

.method protected getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method public getViewByPosition(II)Landroid/view/View;
    .locals 1
    .param p2    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/base/BaseQuickAdapter;->checkNotNull()V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/base/BaseQuickAdapter;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/join/mgps/base/BaseQuickAdapter;->getViewByPosition(Landroidx/recyclerview/widget/RecyclerView;II)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getViewByPosition(Landroidx/recyclerview/widget/RecyclerView;II)Landroid/view/View;
    .locals 1
    .param p3    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForLayoutPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/base/b;

    if-nez p1, :cond_1

    return-object v0

    .line 4
    :cond_1
    invoke-virtual {p1, p3}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public hasSubItems(Lj1/a;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-interface {p1}, Lj1/a;->c()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isExpandable(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    instance-of p1, p1, Lj1/a;

    return p1
.end method

.method public isFirstOnly(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mFirstOnlyEnable:Z

    return-void
.end method

.method protected isFixedViewType(I)Z
    .locals 1

    const/16 v0, 0x555

    if-eq p1, v0, :cond_1

    const/16 v0, 0x111

    if-eq p1, v0, :cond_1

    const/16 v0, 0x333

    if-eq p1, v0, :cond_1

    const/16 v0, 0x222

    if-ne p1, v0, :cond_0

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

.method public isFooterViewAsFlow()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->footerViewAsFlow:Z

    return v0
.end method

.method public isHeaderViewAsFlow()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->headerViewAsFlow:Z

    return v0
.end method

.method public isLoadMoreEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mLoadMoreEnable:Z

    return v0
.end method

.method public isLoading()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mLoading:Z

    return v0
.end method

.method public isUpFetchEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mUpFetchEnable:Z

    return v0
.end method

.method public isUpFetching()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mUpFetching:Z

    return v0
.end method

.method public isUseEmpty(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mIsUseEmpty:Z

    return-void
.end method

.method public loadMoreComplete()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/base/BaseQuickAdapter;->getLoadMoreViewCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mLoading:Z

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mNextLoadEnable:Z

    .line 4
    iget-object v1, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mLoadMoreView:Lcom/join/mgps/base/c;

    invoke-virtual {v1, v0}, Lcom/join/mgps/base/c;->j(I)V

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/base/BaseQuickAdapter;->getLoadMoreViewPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method public loadMoreEnd()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/join/mgps/base/BaseQuickAdapter;->loadMoreEnd(Z)V

    return-void
.end method

.method public loadMoreEnd(Z)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/base/BaseQuickAdapter;->getLoadMoreViewCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mLoading:Z

    .line 4
    iput-boolean v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mNextLoadEnable:Z

    .line 5
    iget-object v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mLoadMoreView:Lcom/join/mgps/base/c;

    invoke-virtual {v0, p1}, Lcom/join/mgps/base/c;->i(Z)V

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/base/BaseQuickAdapter;->getLoadMoreViewPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mLoadMoreView:Lcom/join/mgps/base/c;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/join/mgps/base/c;->j(I)V

    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/base/BaseQuickAdapter;->getLoadMoreViewPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :goto_0
    return-void
.end method

.method public loadMoreFail()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/base/BaseQuickAdapter;->getLoadMoreViewCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mLoading:Z

    .line 3
    iget-object v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mLoadMoreView:Lcom/join/mgps/base/c;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/join/mgps/base/c;->j(I)V

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/base/BaseQuickAdapter;->getLoadMoreViewPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method public notifyLoadMoreToLoading()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mLoadMoreView:Lcom/join/mgps/base/c;

    invoke-virtual {v0}, Lcom/join/mgps/base/c;->e()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mLoadMoreView:Lcom/join/mgps/base/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/join/mgps/base/c;->j(I)V

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/base/BaseQuickAdapter;->getLoadMoreViewPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    .line 3
    instance-of v0, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_0

    .line 4
    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 5
    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanSizeLookup()Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object v0

    .line 6
    new-instance v1, Lcom/join/mgps/base/BaseQuickAdapter$d;

    invoke-direct {v1, p0, p1, v0}, Lcom/join/mgps/base/BaseQuickAdapter$d;-><init>(Lcom/join/mgps/base/BaseQuickAdapter;Landroidx/recyclerview/widget/GridLayoutManager;Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/join/mgps/base/b;

    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/base/BaseQuickAdapter;->onBindViewHolder(Lcom/join/mgps/base/b;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    check-cast p1, Lcom/join/mgps/base/b;

    invoke-virtual {p0, p1, p2, p3}, Lcom/join/mgps/base/BaseQuickAdapter;->onBindViewHolder(Lcom/join/mgps/base/b;ILjava/util/List;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/join/mgps/base/b;I)V
    .locals 2
    .param p1    # Lcom/join/mgps/base/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p2}, Lcom/join/mgps/base/BaseQuickAdapter;->autoUpFetch(I)V

    .line 4
    invoke-direct {p0, p2}, Lcom/join/mgps/base/BaseQuickAdapter;->autoLoadMore(I)V

    .line 5
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/16 v1, 0x111

    if-eq v0, v1, :cond_1

    const/16 v1, 0x222

    if-eq v0, v1, :cond_0

    const/16 v1, 0x333

    if-eq v0, v1, :cond_1

    const/16 v1, 0x555

    if-eq v0, v1, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0, p2}, Lcom/join/mgps/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/base/BaseQuickAdapter;->convert(Lcom/join/mgps/base/b;Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p2, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mLoadMoreView:Lcom/join/mgps/base/c;

    invoke-virtual {p2, p1}, Lcom/join/mgps/base/c;->a(Lcom/join/mgps/base/b;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onBindViewHolder(Lcom/join/mgps/base/b;ILjava/util/List;)V
    .locals 2
    .param p1    # Lcom/join/mgps/base/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 8
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/base/BaseQuickAdapter;->onBindViewHolder(Lcom/join/mgps/base/b;I)V

    return-void

    .line 10
    :cond_0
    invoke-direct {p0, p2}, Lcom/join/mgps/base/BaseQuickAdapter;->autoUpFetch(I)V

    .line 11
    invoke-direct {p0, p2}, Lcom/join/mgps/base/BaseQuickAdapter;->autoLoadMore(I)V

    .line 12
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/16 v1, 0x111

    if-eq v0, v1, :cond_2

    const/16 v1, 0x222

    if-eq v0, v1, :cond_1

    const/16 v1, 0x333

    if-eq v0, v1, :cond_2

    const/16 v1, 0x555

    if-eq v0, v1, :cond_2

    .line 13
    invoke-virtual {p0}, Lcom/join/mgps/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0, p2}, Lcom/join/mgps/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/join/mgps/base/BaseQuickAdapter;->convertPayloads(Lcom/join/mgps/base/b;Ljava/lang/Object;Ljava/util/List;)V

    goto :goto_0

    .line 14
    :cond_1
    iget-object p2, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mLoadMoreView:Lcom/join/mgps/base/c;

    invoke-virtual {p2, p1}, Lcom/join/mgps/base/c;->a(Lcom/join/mgps/base/b;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onCreateDefViewHolder(Landroid/view/ViewGroup;I)Lcom/join/mgps/base/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TK;"
        }
    .end annotation

    .line 1
    iget p2, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mLayoutResId:I

    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/base/BaseQuickAdapter;->createBaseViewHolder(Landroid/view/ViewGroup;I)Lcom/join/mgps/base/b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/base/BaseQuickAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/join/mgps/base/b;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/join/mgps/base/b;
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TK;"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    .line 3
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const/16 v0, 0x111

    if-eq p2, v0, :cond_5

    const/16 v0, 0x222

    if-eq p2, v0, :cond_4

    const/16 v0, 0x333

    if-eq p2, v0, :cond_2

    const/16 v0, 0x555

    if-eq p2, v0, :cond_0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/base/BaseQuickAdapter;->onCreateDefViewHolder(Landroid/view/ViewGroup;I)Lcom/join/mgps/base/b;

    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/base/BaseQuickAdapter;->bindViewClickListener(Lcom/join/mgps/base/b;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mEmptyLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 7
    instance-of p2, p1, Landroid/view/ViewGroup;

    if-eqz p2, :cond_1

    .line 8
    check-cast p1, Landroid/view/ViewGroup;

    iget-object p2, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mEmptyLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mEmptyLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Lcom/join/mgps/base/BaseQuickAdapter;->createBaseViewHolder(Landroid/view/View;)Lcom/join/mgps/base/b;

    move-result-object p1

    goto :goto_0

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mFooterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 11
    instance-of p2, p1, Landroid/view/ViewGroup;

    if-eqz p2, :cond_3

    .line 12
    check-cast p1, Landroid/view/ViewGroup;

    iget-object p2, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mFooterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 13
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mFooterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Lcom/join/mgps/base/BaseQuickAdapter;->createBaseViewHolder(Landroid/view/View;)Lcom/join/mgps/base/b;

    move-result-object p1

    goto :goto_0

    .line 14
    :cond_4
    invoke-direct {p0, p1}, Lcom/join/mgps/base/BaseQuickAdapter;->getLoadingView(Landroid/view/ViewGroup;)Lcom/join/mgps/base/b;

    move-result-object p1

    goto :goto_0

    .line 15
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mHeaderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 16
    instance-of p2, p1, Landroid/view/ViewGroup;

    if-eqz p2, :cond_6

    .line 17
    check-cast p1, Landroid/view/ViewGroup;

    iget-object p2, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mHeaderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 18
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mHeaderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Lcom/join/mgps/base/BaseQuickAdapter;->createBaseViewHolder(Landroid/view/View;)Lcom/join/mgps/base/b;

    move-result-object p1

    .line 19
    :goto_0
    invoke-virtual {p1, p0}, Lcom/join/mgps/base/b;->n(Lcom/join/mgps/base/BaseQuickAdapter;)Lcom/join/mgps/base/b;

    return-object p1
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/join/mgps/base/b;

    invoke-virtual {p0, p1}, Lcom/join/mgps/base/BaseQuickAdapter;->onViewAttachedToWindow(Lcom/join/mgps/base/b;)V

    return-void
.end method

.method public onViewAttachedToWindow(Lcom/join/mgps/base/b;)V
    .locals 2
    .param p1    # Lcom/join/mgps/base/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/16 v1, 0x555

    if-eq v0, v1, :cond_1

    const/16 v1, 0x111

    if-eq v0, v1, :cond_1

    const/16 v1, 0x333

    if-eq v0, v1, :cond_1

    const/16 v1, 0x222

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lcom/join/mgps/base/BaseQuickAdapter;->addAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/base/BaseQuickAdapter;->setFullSpan(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :goto_1
    return-void
.end method

.method public openLoadAnimation()V
    .locals 1

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mOpenAnimationEnable:Z

    return-void
.end method

.method public openLoadAnimation(I)V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mOpenAnimationEnable:Z

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mCustomAnimation:Lh1/b;

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Lh1/f;

    invoke-direct {p1}, Lh1/f;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mSelectAnimation:Lh1/b;

    goto :goto_0

    .line 4
    :cond_1
    new-instance p1, Lh1/e;

    invoke-direct {p1}, Lh1/e;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mSelectAnimation:Lh1/b;

    goto :goto_0

    .line 5
    :cond_2
    new-instance p1, Lh1/d;

    invoke-direct {p1}, Lh1/d;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mSelectAnimation:Lh1/b;

    goto :goto_0

    .line 6
    :cond_3
    new-instance p1, Lh1/c;

    invoke-direct {p1}, Lh1/c;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mSelectAnimation:Lh1/b;

    goto :goto_0

    .line 7
    :cond_4
    new-instance p1, Lh1/a;

    invoke-direct {p1}, Lh1/a;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mSelectAnimation:Lh1/b;

    :goto_0
    return-void
.end method

.method public openLoadAnimation(Lh1/b;)V
    .locals 1

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mOpenAnimationEnable:Z

    .line 9
    iput-object p1, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mCustomAnimation:Lh1/b;

    return-void
.end method

.method public final refreshNotifyItemChanged(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method public final refreshNotifyItemChanged(ILjava/lang/Object;)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    return-void
.end method

.method public remove(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v0

    add-int/2addr p1, v0

    .line 3
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0}, Lcom/join/mgps/base/BaseQuickAdapter;->compatibilityDataSizeChanged(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public removeAllFooterView()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/base/BaseQuickAdapter;->getFooterLayoutCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mFooterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/base/BaseQuickAdapter;->getFooterViewPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 4
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    :cond_1
    return-void
.end method

.method public removeAllHeaderView()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mHeaderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/base/BaseQuickAdapter;->getHeaderViewPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 4
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    :cond_1
    return-void
.end method

.method public removeFooterView(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/base/BaseQuickAdapter;->getFooterLayoutCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mFooterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mFooterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    if-nez p1, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/join/mgps/base/BaseQuickAdapter;->getFooterViewPosition()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 5
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    :cond_1
    return-void
.end method

.method public removeHeaderView(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mHeaderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mHeaderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    if-nez p1, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/join/mgps/base/BaseQuickAdapter;->getHeaderViewPosition()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 5
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    :cond_1
    return-void
.end method

.method public replaceData(Ljava/util/Collection;)V
    .locals 1
    .param p1    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mData:Ljava/util/List;

    if-eq p1, v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setAutoLoadMoreSize(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/base/BaseQuickAdapter;->setPreLoadNumber(I)V

    return-void
.end method

.method public setData(ILjava/lang/Object;)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method public setDuration(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mDuration:I

    return-void
.end method

.method public setEmptyView(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/base/BaseQuickAdapter;->checkNotNull()V

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/base/BaseQuickAdapter;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/base/BaseQuickAdapter;->setEmptyView(ILandroid/view/ViewGroup;)V

    return-void
.end method

.method public setEmptyView(ILandroid/view/ViewGroup;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/join/mgps/base/BaseQuickAdapter;->setEmptyView(Landroid/view/View;)V

    return-void
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 6

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/base/BaseQuickAdapter;->getItemCount()I

    move-result v0

    .line 6
    iget-object v1, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mEmptyLayout:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 7
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mEmptyLayout:Landroid/widget/FrameLayout;

    .line 8
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v1, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 10
    iget v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 11
    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 12
    :cond_0
    iget-object v4, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mEmptyLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 13
    :goto_0
    iget-object v4, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mEmptyLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 14
    iget-object v4, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mEmptyLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 15
    iput-boolean v3, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mIsUseEmpty:Z

    if-eqz v1, :cond_4

    .line 16
    invoke-virtual {p0}, Lcom/join/mgps/base/BaseQuickAdapter;->getEmptyViewCount()I

    move-result p1

    if-ne p1, v3, :cond_4

    .line 17
    iget-boolean p1, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mHeadAndEmptyEnable:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/join/mgps/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    .line 18
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/base/BaseQuickAdapter;->getItemCount()I

    move-result p1

    if-le p1, v0, :cond_3

    .line 19
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    goto :goto_1

    .line 20
    :cond_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_4
    :goto_1
    return-void
.end method

.method public setEnableLoadMore(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/base/BaseQuickAdapter;->getLoadMoreViewCount()I

    move-result v0

    .line 2
    iput-boolean p1, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mLoadMoreEnable:Z

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/base/BaseQuickAdapter;->getLoadMoreViewCount()I

    move-result p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    if-nez p1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/base/BaseQuickAdapter;->getLoadMoreViewPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mLoadMoreView:Lcom/join/mgps/base/c;

    invoke-virtual {p1, v1}, Lcom/join/mgps/base/c;->j(I)V

    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/base/BaseQuickAdapter;->getLoadMoreViewPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setFooterView(Landroid/view/View;)I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lcom/join/mgps/base/BaseQuickAdapter;->setFooterView(Landroid/view/View;II)I

    move-result p1

    return p1
.end method

.method public setFooterView(Landroid/view/View;I)I
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/join/mgps/base/BaseQuickAdapter;->setFooterView(Landroid/view/View;II)I

    move-result p1

    return p1
.end method

.method public setFooterView(Landroid/view/View;II)I
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mFooterLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-gt v0, p2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p3, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mFooterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p2}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 5
    iget-object p3, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mFooterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    return p2

    .line 6
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/join/mgps/base/BaseQuickAdapter;->addFooterView(Landroid/view/View;II)I

    move-result p1

    return p1
.end method

.method public setFooterViewAsFlow(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/base/BaseQuickAdapter;->footerViewAsFlow:Z

    return-void
.end method

.method protected setFullSpan(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->setFullSpan(Z)V

    :cond_0
    return-void
.end method

.method public setHeaderAndEmpty(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/base/BaseQuickAdapter;->setHeaderFooterEmpty(ZZ)V

    return-void
.end method

.method public setHeaderFooterEmpty(ZZ)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mHeadAndEmptyEnable:Z

    .line 2
    iput-boolean p2, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mFootAndEmptyEnable:Z

    return-void
.end method

.method public setHeaderView(Landroid/view/View;)I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lcom/join/mgps/base/BaseQuickAdapter;->setHeaderView(Landroid/view/View;II)I

    move-result p1

    return p1
.end method

.method public setHeaderView(Landroid/view/View;I)I
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/join/mgps/base/BaseQuickAdapter;->setHeaderView(Landroid/view/View;II)I

    move-result p1

    return p1
.end method

.method public setHeaderView(Landroid/view/View;II)I
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mHeaderLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-gt v0, p2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p3, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mHeaderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p2}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 5
    iget-object p3, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mHeaderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    return p2

    .line 6
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/join/mgps/base/BaseQuickAdapter;->addHeaderView(Landroid/view/View;II)I

    move-result p1

    return p1
.end method

.method public setHeaderViewAsFlow(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/base/BaseQuickAdapter;->headerViewAsFlow:Z

    return-void
.end method

.method public setLoadMoreView(Lcom/join/mgps/base/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mLoadMoreView:Lcom/join/mgps/base/c;

    return-void
.end method

.method public setNewData(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    iput-object p1, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mData:Ljava/util/List;

    .line 2
    iget-object p1, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mRequestLoadMoreListener:Lcom/join/mgps/base/BaseQuickAdapter$k;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mNextLoadEnable:Z

    .line 4
    iput-boolean p1, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mLoadMoreEnable:Z

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mLoading:Z

    .line 6
    iget-object v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mLoadMoreView:Lcom/join/mgps/base/c;

    invoke-virtual {v0, p1}, Lcom/join/mgps/base/c;->j(I)V

    :cond_1
    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mLastPosition:I

    .line 8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setNewDiffData(Landroidx/recyclerview/widget/DiffUtil$DiffResult;Ljava/util/List;)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/DiffUtil$DiffResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/DiffUtil$DiffResult;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/base/BaseQuickAdapter;->getEmptyViewCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 9
    invoke-virtual {p0, p2}, Lcom/join/mgps/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    return-void

    .line 10
    :cond_0
    new-instance v0, Lcom/join/mgps/base/diff/a;

    invoke-direct {v0, p0}, Lcom/join/mgps/base/diff/a;-><init>(Lcom/join/mgps/base/BaseQuickAdapter;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/ListUpdateCallback;)V

    .line 11
    iput-object p2, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mData:Ljava/util/List;

    return-void
.end method

.method public setNewDiffData(Lcom/join/mgps/base/diff/b;)V
    .locals 1
    .param p1    # Lcom/join/mgps/base/diff/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/base/diff/b<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/base/BaseQuickAdapter;->setNewDiffData(Lcom/join/mgps/base/diff/b;Z)V

    return-void
.end method

.method public setNewDiffData(Lcom/join/mgps/base/diff/b;Z)V
    .locals 2
    .param p1    # Lcom/join/mgps/base/diff/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/base/diff/b<",
            "TT;>;Z)V"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/base/BaseQuickAdapter;->getEmptyViewCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/base/diff/b;->d()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/base/diff/b;->f(Ljava/util/List;)V

    .line 5
    invoke-static {p1, p2}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;Z)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object p2

    .line 6
    new-instance v0, Lcom/join/mgps/base/diff/a;

    invoke-direct {v0, p0}, Lcom/join/mgps/base/diff/a;-><init>(Lcom/join/mgps/base/BaseQuickAdapter;)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/ListUpdateCallback;)V

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/base/diff/b;->d()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mData:Ljava/util/List;

    return-void
.end method

.method public setNotDoAnimationCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mLastPosition:I

    return-void
.end method

.method public setOnItemChildClickListener(Lcom/join/mgps/base/BaseQuickAdapter$g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mOnItemChildClickListener:Lcom/join/mgps/base/BaseQuickAdapter$g;

    return-void
.end method

.method public setOnItemChildLongClickListener(Lcom/join/mgps/base/BaseQuickAdapter$h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mOnItemChildLongClickListener:Lcom/join/mgps/base/BaseQuickAdapter$h;

    return-void
.end method

.method public setOnItemClick(Landroid/view/View;I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/base/BaseQuickAdapter;->getOnItemClickListener()Lcom/join/mgps/base/BaseQuickAdapter$i;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/join/mgps/base/BaseQuickAdapter$i;->onItemClick(Lcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public setOnItemClickListener(Lcom/join/mgps/base/BaseQuickAdapter$i;)V
    .locals 0
    .param p1    # Lcom/join/mgps/base/BaseQuickAdapter$i;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mOnItemClickListener:Lcom/join/mgps/base/BaseQuickAdapter$i;

    return-void
.end method

.method public setOnItemLongClick(Landroid/view/View;I)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/base/BaseQuickAdapter;->getOnItemLongClickListener()Lcom/join/mgps/base/BaseQuickAdapter$j;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/join/mgps/base/BaseQuickAdapter$j;->a(Lcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)Z

    move-result p1

    return p1
.end method

.method public setOnItemLongClickListener(Lcom/join/mgps/base/BaseQuickAdapter$j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mOnItemLongClickListener:Lcom/join/mgps/base/BaseQuickAdapter$j;

    return-void
.end method

.method public setOnLoadMoreListener(Lcom/join/mgps/base/BaseQuickAdapter$k;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/base/BaseQuickAdapter;->openLoadMore(Lcom/join/mgps/base/BaseQuickAdapter$k;)V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/base/BaseQuickAdapter;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-nez p1, :cond_0

    .line 3
    invoke-direct {p0, p2}, Lcom/join/mgps/base/BaseQuickAdapter;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_0
    return-void
.end method

.method public setPreLoadNumber(I)V
    .locals 1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    .line 1
    iput p1, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mPreLoadNumber:I

    :cond_0
    return-void
.end method

.method public setSpanSizeLookup(Lcom/join/mgps/base/BaseQuickAdapter$l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mSpanSizeLookup:Lcom/join/mgps/base/BaseQuickAdapter$l;

    return-void
.end method

.method public setStartUpFetchPosition(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mStartUpFetchPosition:I

    return-void
.end method

.method public setUpFetchEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mUpFetchEnable:Z

    return-void
.end method

.method public setUpFetchListener(Lcom/join/mgps/base/BaseQuickAdapter$m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mUpFetchListener:Lcom/join/mgps/base/BaseQuickAdapter$m;

    return-void
.end method

.method public setUpFetching(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mUpFetching:Z

    return-void
.end method

.method protected startAnim(Landroid/animation/Animator;I)V
    .locals 2

    .line 1
    iget p2, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mDuration:I

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/animation/Animator;->start()V

    .line 2
    iget-object p2, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void
.end method
