.class public Lcom/join/android/app/component/video/d;
.super Ljava/lang/Object;
.source "RvListVideoHelper.java"


# static fields
.field private static h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/join/android/app/component/video/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Ljava/lang/String;

.field b:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

.field c:I

.field d:I

.field e:I

.field f:Landroidx/recyclerview/widget/RecyclerView;

.field g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/join/android/app/component/video/d;->h:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/join/android/app/component/video/d;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/join/android/app/component/video/d;->a:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lcom/join/android/app/component/video/d;->f:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/join/android/app/component/video/d;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    sget-object v1, Lcom/join/android/app/component/video/d;->h:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/android/app/component/video/b;

    invoke-virtual {v3}, Lcom/papa/gsyvideoplayer/c;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/android/app/component/video/b;

    invoke-virtual {v3}, Lcom/join/android/app/component/video/b;->i0()V

    .line 6
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_2

    .line 8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 9
    invoke-static {v0}, Lcom/join/android/app/component/video/d;->s(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private static d([I)I
    .locals 4

    const/4 v0, 0x0

    .line 1
    aget v1, p0, v0

    .line 2
    array-length v2, p0

    :goto_0
    if-ge v0, v2, :cond_1

    aget v3, p0, v0

    if-le v3, v1, :cond_0

    move v1, v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static e([I)I
    .locals 4

    const/4 v0, 0x0

    .line 1
    aget v1, p0, v0

    .line 2
    array-length v2, p0

    :goto_0
    if-ge v0, v2, :cond_1

    aget v3, p0, v0

    if-ge v3, v1, :cond_0

    move v1, v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static f(Landroidx/recyclerview/widget/RecyclerView;)I
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    .line 2
    instance-of v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_1

    .line 3
    check-cast p0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result p0

    goto :goto_0

    .line 4
    :cond_1
    instance-of v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v0, :cond_2

    .line 5
    check-cast p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result v0

    new-array v0, v0, [I

    .line 6
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstCompletelyVisibleItemPositions([I)[I

    .line 7
    invoke-static {v0}, Lcom/join/android/app/component/video/d;->e([I)I

    move-result p0

    goto :goto_0

    .line 8
    :cond_2
    check-cast p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result p0

    :goto_0
    return p0
.end method

.method public static g(Landroidx/recyclerview/widget/RecyclerView;)I
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    .line 2
    instance-of v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_1

    .line 3
    check-cast p0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p0

    goto :goto_0

    .line 4
    :cond_1
    instance-of v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v0, :cond_2

    .line 5
    check-cast p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result v0

    new-array v0, v0, [I

    .line 6
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemPositions([I)[I

    .line 7
    invoke-static {v0}, Lcom/join/android/app/component/video/d;->e([I)I

    move-result p0

    goto :goto_0

    .line 8
    :cond_2
    check-cast p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p0

    :goto_0
    return p0
.end method

.method public static h(Landroidx/recyclerview/widget/RecyclerView;)I
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    .line 2
    instance-of v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_1

    .line 3
    check-cast p0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result p0

    goto :goto_0

    .line 4
    :cond_1
    instance-of v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v0, :cond_2

    .line 5
    check-cast p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result v0

    new-array v0, v0, [I

    .line 6
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findLastCompletelyVisibleItemPositions([I)[I

    .line 7
    invoke-static {v0}, Lcom/join/android/app/component/video/d;->d([I)I

    move-result p0

    goto :goto_0

    .line 8
    :cond_2
    check-cast p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result p0

    :goto_0
    return p0
.end method

.method public static i(Landroidx/recyclerview/widget/RecyclerView;)I
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    .line 2
    instance-of v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_1

    .line 3
    check-cast p0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p0

    goto :goto_0

    .line 4
    :cond_1
    instance-of v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v0, :cond_2

    .line 5
    check-cast p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result v0

    new-array v0, v0, [I

    .line 6
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findLastVisibleItemPositions([I)[I

    .line 7
    invoke-static {v0}, Lcom/join/android/app/component/video/d;->d([I)I

    move-result p0

    goto :goto_0

    .line 8
    :cond_2
    check-cast p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p0

    :goto_0
    return p0
.end method

.method public static j(Ljava/lang/String;Ljava/lang/String;IZ)Lcom/join/android/app/component/video/b;
    .locals 6

    .line 1
    sget-object v0, Lcom/join/android/app/component/video/d;->h:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/android/app/component/video/b;

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    .line 2
    new-instance v0, Lcom/join/android/app/component/video/b;

    invoke-direct {v0}, Lcom/join/android/app/component/video/b;-><init>()V

    .line 3
    invoke-virtual {v0, p2}, Lcom/papa/gsyvideoplayer/c;->x(I)V

    .line 4
    invoke-virtual {v0, p1}, Lcom/papa/gsyvideoplayer/c;->k(Ljava/lang/String;)V

    .line 5
    new-instance p1, Lcom/papa/gsyvideoplayer/model/c;

    const/4 p2, 0x4

    const-string p3, "enable-accurate-seek"

    const/4 v1, 0x1

    invoke-direct {p1, p2, p3, v1}, Lcom/papa/gsyvideoplayer/model/c;-><init>(ILjava/lang/String;I)V

    .line 6
    new-instance p3, Lcom/papa/gsyvideoplayer/model/c;

    const-string v2, "analyzeduration"

    invoke-direct {p3, v1, v2, v1}, Lcom/papa/gsyvideoplayer/model/c;-><init>(ILjava/lang/String;I)V

    .line 7
    new-instance v2, Lcom/papa/gsyvideoplayer/model/c;

    const/16 v3, 0x1e

    const-string v4, "analyzemaxduration"

    invoke-direct {v2, v1, v4, v3}, Lcom/papa/gsyvideoplayer/model/c;-><init>(ILjava/lang/String;I)V

    .line 8
    new-instance v1, Lcom/papa/gsyvideoplayer/model/c;

    const/4 v3, 0x2

    const/16 v4, 0x30

    const-string v5, "skip_loop_filter"

    invoke-direct {v1, v3, v5, v4}, Lcom/papa/gsyvideoplayer/model/c;-><init>(ILjava/lang/String;I)V

    .line 9
    new-instance v1, Lcom/papa/gsyvideoplayer/model/c;

    const/4 v3, 0x0

    const-string v4, "packet-buffering"

    invoke-direct {v1, p2, v4, v3}, Lcom/papa/gsyvideoplayer/model/c;-><init>(ILjava/lang/String;I)V

    .line 10
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    invoke-virtual {v0, p2}, Lcom/papa/gsyvideoplayer/c;->X(Ljava/util/List;)V

    .line 16
    sget-object p1, Lcom/join/android/app/component/video/d;->h:Ljava/util/Map;

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public static declared-synchronized n(Ljava/lang/String;)V
    .locals 4

    const-class v0, Lcom/join/android/app/component/video/d;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/join/android/app/component/video/d;->h:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 2
    sget-object v1, Lcom/join/android/app/component/video/d;->h:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/android/app/component/video/b;

    invoke-virtual {v3}, Lcom/papa/gsyvideoplayer/c;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/android/app/component/video/b;

    invoke-virtual {v2}, Lcom/join/android/app/component/video/b;->f0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 5
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static p(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/join/android/app/component/video/d;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2
    sget-object v0, Lcom/join/android/app/component/video/d;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/android/app/component/video/b;

    invoke-virtual {v2}, Lcom/papa/gsyvideoplayer/c;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/android/app/component/video/b;

    invoke-virtual {v1}, Lcom/join/android/app/component/video/b;->g0()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static q(Ljava/lang/String;Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/join/android/app/component/video/d;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2
    sget-object v0, Lcom/join/android/app/component/video/d;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/android/app/component/video/b;

    invoke-virtual {v2}, Lcom/papa/gsyvideoplayer/c;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/android/app/component/video/b;

    invoke-virtual {v1, p1}, Lcom/join/android/app/component/video/b;->h0(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static s(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/join/android/app/component/video/d;->h:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public declared-synchronized a(I)V
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    iput p1, p0, Lcom/join/android/app/component/video/d;->g:I

    .line 2
    iget-object v0, p0, Lcom/join/android/app/component/video/d;->b:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/android/app/component/video/d;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    iput-object v0, p0, Lcom/join/android/app/component/video/d;->b:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/component/video/d;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/join/android/app/component/video/d;->f(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result v0

    iput v0, p0, Lcom/join/android/app/component/video/d;->c:I

    .line 5
    iget-object v0, p0, Lcom/join/android/app/component/video/d;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/join/android/app/component/video/d;->h(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result v0

    iput v0, p0, Lcom/join/android/app/component/video/d;->d:I

    .line 6
    iget v1, p0, Lcom/join/android/app/component/video/d;->c:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/join/android/app/component/video/d;->e:I

    .line 7
    iget-object v1, p0, Lcom/join/android/app/component/video/d;->b:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_3

    .line 8
    iget-object v0, p0, Lcom/join/android/app/component/video/d;->b:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    instance-of v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v1, :cond_2

    .line 9
    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 10
    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v0

    .line 11
    iget-object v1, p0, Lcom/join/android/app/component/video/d;->b:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v1

    div-int/2addr v1, v0

    .line 12
    iget-object v2, p0, Lcom/join/android/app/component/video/d;->b:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v2

    rem-int/2addr v2, v0

    if-nez v2, :cond_1

    .line 13
    iget-object v0, p0, Lcom/join/android/app/component/video/d;->b:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v0

    iput v0, p0, Lcom/join/android/app/component/video/d;->e:I

    sub-int/2addr v0, p1

    .line 14
    iput v0, p0, Lcom/join/android/app/component/video/d;->c:I

    goto :goto_0

    :cond_1
    mul-int v1, v1, v0

    .line 15
    iput v1, p0, Lcom/join/android/app/component/video/d;->c:I

    add-int/2addr v1, p1

    .line 16
    iput v1, p0, Lcom/join/android/app/component/video/d;->e:I

    goto :goto_0

    .line 17
    :cond_2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v0

    iput v0, p0, Lcom/join/android/app/component/video/d;->e:I

    sub-int/2addr v0, p1

    .line 18
    iput v0, p0, Lcom/join/android/app/component/video/d;->c:I

    .line 19
    :cond_3
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "autoPlayVideoMini: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/join/android/app/component/video/d;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "last:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/join/android/app/component/video/d;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    iget v0, p0, Lcom/join/android/app/component/video/d;->c:I

    :goto_1
    iget v1, p0, Lcom/join/android/app/component/video/d;->e:I

    if-ge v0, v1, :cond_8

    .line 22
    iget-object v1, p0, Lcom/join/android/app/component/video/d;->b:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v1, :cond_7

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 23
    iget-object v1, p0, Lcom/join/android/app/component/video/d;->b:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0912d4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_3

    .line 24
    :cond_4
    instance-of v2, v1, Lcom/join/android/app/component/video/MultiStandVideo;

    if-eqz v2, :cond_7

    .line 25
    check-cast v1, Lcom/join/android/app/component/video/MultiStandVideo;

    .line 26
    invoke-virtual {v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "autoPlayVideoMini: CURRENT_STATE_PLAYING:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/join/android/app/component/video/MultiStandVideo;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "      position:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 28
    :cond_5
    invoke-virtual {v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_6

    const/4 v2, 0x0

    .line 29
    invoke-virtual {v1, v2}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onVideoResume(Z)V

    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "autoPlayVideoMini:CURRENT_STATE_PAUSE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/join/android/app/component/video/MultiStandVideo;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "      position:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 31
    :cond_6
    invoke-virtual {v1}, Lcom/join/android/app/component/video/MultiStandVideo;->startPlayLogic()V

    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "autoPlayVideoMini:startPlayLogic: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/join/android/app/component/video/MultiStandVideo;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "      position:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    :goto_2
    invoke-virtual {v1}, Lcom/join/android/app/component/video/MultiStandVideo;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 34
    :cond_8
    sget-object v0, Lcom/join/android/app/component/video/d;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    sget-object v1, Lcom/join/android/app/component/video/d;->h:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 37
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/android/app/component/video/b;

    .line 38
    invoke-virtual {v3}, Lcom/papa/gsyvideoplayer/c;->q()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/join/android/app/component/video/d;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 39
    invoke-virtual {v3}, Lcom/join/android/app/component/video/b;->i0()V

    .line 40
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 41
    :cond_a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_b

    .line 42
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 43
    invoke-static {v0}, Lcom/join/android/app/component/video/d;->s(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception p1

    goto :goto_6

    :catch_0
    move-exception p1

    .line 44
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    :cond_b
    monitor-exit p0

    return-void

    :goto_6
    monitor-exit p0

    goto :goto_8

    :goto_7
    throw p1

    :goto_8
    goto :goto_7
.end method

.method public declared-synchronized b(I)V
    .locals 10

    monitor-enter p0

    .line 1
    :try_start_0
    iput p1, p0, Lcom/join/android/app/component/video/d;->g:I

    .line 2
    iget-object v0, p0, Lcom/join/android/app/component/video/d;->b:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/android/app/component/video/d;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    iput-object v0, p0, Lcom/join/android/app/component/video/d;->b:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/component/video/d;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/join/android/app/component/video/d;->f(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result v0

    iput v0, p0, Lcom/join/android/app/component/video/d;->c:I

    .line 5
    iget-object v0, p0, Lcom/join/android/app/component/video/d;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/join/android/app/component/video/d;->h(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result v0

    iput v0, p0, Lcom/join/android/app/component/video/d;->d:I

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "autoPlayVideoMini: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/join/android/app/component/video/d;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "last:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/join/android/app/component/video/d;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 8
    iget v1, p0, Lcom/join/android/app/component/video/d;->d:I

    iget-object v2, p0, Lcom/join/android/app/component/video/d;->b:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x5

    const/4 v4, 0x2

    const v5, 0x7f0912d4

    const/4 v6, 0x0

    if-lt v1, v2, :cond_6

    .line 9
    iget v1, p0, Lcom/join/android/app/component/video/d;->d:I

    const/4 v2, 0x0

    :goto_0
    iget v7, p0, Lcom/join/android/app/component/video/d;->c:I

    if-lt v1, v7, :cond_c

    if-lt v2, p1, :cond_1

    goto/16 :goto_6

    .line 10
    :cond_1
    iget-object v7, p0, Lcom/join/android/app/component/video/d;->b:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v7, :cond_5

    invoke-virtual {v7, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 11
    iget-object v7, p0, Lcom/join/android/app/component/video/d;->b:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v7, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_2

    goto :goto_2

    .line 12
    :cond_2
    instance-of v8, v7, Lcom/join/android/app/component/video/MultiStandVideo;

    if-eqz v8, :cond_5

    .line 13
    check-cast v7, Lcom/join/android/app/component/video/MultiStandVideo;

    .line 14
    invoke-virtual {v7}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    move-result v8

    if-ne v8, v4, :cond_3

    .line 15
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "autoPlayVideoMini1: CURRENT_STATE_PLAYING:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/join/android/app/component/video/MultiStandVideo;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "      position:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 16
    :cond_3
    invoke-virtual {v7}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    move-result v8

    if-ne v8, v3, :cond_4

    .line 17
    invoke-virtual {v7, v6}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onVideoResume(Z)V

    .line 18
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "autoPlayVideoMini1:CURRENT_STATE_PAUSE: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/join/android/app/component/video/MultiStandVideo;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "      position:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 19
    :cond_4
    invoke-virtual {v7}, Lcom/join/android/app/component/video/MultiStandVideo;->startPlayLogic()V

    .line 20
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "autoPlayVideoMini1:startPlayLogic: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/join/android/app/component/video/MultiStandVideo;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "      position:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 21
    invoke-virtual {v7}, Lcom/join/android/app/component/video/MultiStandVideo;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    .line 22
    :cond_6
    iget v1, p0, Lcom/join/android/app/component/video/d;->c:I

    const/4 v2, 0x0

    :goto_3
    iget v7, p0, Lcom/join/android/app/component/video/d;->d:I

    if-gt v1, v7, :cond_c

    if-lt v2, p1, :cond_7

    goto/16 :goto_6

    .line 23
    :cond_7
    iget-object v7, p0, Lcom/join/android/app/component/video/d;->b:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v7, :cond_b

    invoke-virtual {v7, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_b

    .line 24
    iget-object v7, p0, Lcom/join/android/app/component/video/d;->b:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v7, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_8

    goto :goto_5

    .line 25
    :cond_8
    instance-of v8, v7, Lcom/join/android/app/component/video/MultiStandVideo;

    if-eqz v8, :cond_b

    .line 26
    check-cast v7, Lcom/join/android/app/component/video/MultiStandVideo;

    .line 27
    invoke-virtual {v7}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    move-result v8

    if-ne v8, v4, :cond_9

    .line 28
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "autoPlayVideoMini12: CURRENT_STATE_PLAYING:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/join/android/app/component/video/MultiStandVideo;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "      position:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 29
    :cond_9
    invoke-virtual {v7}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    move-result v8

    if-ne v8, v3, :cond_a

    .line 30
    invoke-virtual {v7, v6}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onVideoResume(Z)V

    .line 31
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "autoPlayVideoMini12:CURRENT_STATE_PAUSE: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/join/android/app/component/video/MultiStandVideo;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "      position:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 32
    :cond_a
    invoke-virtual {v7}, Lcom/join/android/app/component/video/MultiStandVideo;->startPlayLogic()V

    .line 33
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "autoPlayVideoMini12:startPlayLogic: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/join/android/app/component/video/MultiStandVideo;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "      position:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_4
    add-int/lit8 v2, v2, 0x1

    .line 34
    invoke-virtual {v7}, Lcom/join/android/app/component/video/MultiStandVideo;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    .line 35
    :cond_c
    :goto_6
    sget-object p1, Lcom/join/android/app/component/video/d;->h:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_f

    .line 36
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 37
    sget-object v1, Lcom/join/android/app/component/video/d;->h:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 38
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/android/app/component/video/b;

    .line 39
    invoke-virtual {v3}, Lcom/papa/gsyvideoplayer/c;->q()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/join/android/app/component/video/d;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 40
    invoke-virtual {v3}, Lcom/join/android/app/component/video/b;->i0()V

    .line 41
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 42
    :cond_e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_f

    .line 43
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 44
    invoke-static {v0}, Lcom/join/android/app/component/video/d;->s(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_8

    :catch_0
    move-exception p1

    .line 45
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    :cond_f
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_a

    :goto_9
    throw p1

    :goto_a
    goto :goto_9
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/video/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public l()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/video/d;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/join/android/app/component/video/d;->c(Ljava/lang/String;)V

    return-void
.end method

.method public m()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/video/d;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/join/android/app/component/video/d;->n(Ljava/lang/String;)V

    return-void
.end method

.method public o()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/android/app/component/video/d;->g:I

    invoke-virtual {p0, v0}, Lcom/join/android/app/component/video/d;->a(I)V

    return-void
.end method

.method public r()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/android/app/component/video/d;->g:I

    invoke-virtual {p0, v0}, Lcom/join/android/app/component/video/d;->b(I)V

    return-void
.end method
