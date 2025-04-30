.class public Lit/sephiroth/android/library/widget/b;
.super Ljava/lang/Object;
.source "HeaderViewListAdapter.java"

# interfaces
.implements Landroid/widget/WrapperListAdapter;
.implements Landroid/widget/Filterable;


# static fields
.field static final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lit/sephiroth/android/library/widget/HListView$c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Landroid/widget/ListAdapter;

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lit/sephiroth/android/library/widget/HListView$c;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lit/sephiroth/android/library/widget/HListView$c;",
            ">;"
        }
    .end annotation
.end field

.field d:Z

.field private final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lit/sephiroth/android/library/widget/b;->f:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lit/sephiroth/android/library/widget/HListView$c;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lit/sephiroth/android/library/widget/HListView$c;",
            ">;",
            "Landroid/widget/ListAdapter;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p3, p0, Lit/sephiroth/android/library/widget/b;->a:Landroid/widget/ListAdapter;

    .line 3
    instance-of p3, p3, Landroid/widget/Filterable;

    iput-boolean p3, p0, Lit/sephiroth/android/library/widget/b;->e:Z

    if-nez p1, :cond_0

    .line 4
    sget-object p1, Lit/sephiroth/android/library/widget/b;->f:Ljava/util/ArrayList;

    iput-object p1, p0, Lit/sephiroth/android/library/widget/b;->b:Ljava/util/ArrayList;

    goto :goto_0

    .line 5
    :cond_0
    iput-object p1, p0, Lit/sephiroth/android/library/widget/b;->b:Ljava/util/ArrayList;

    :goto_0
    if-nez p2, :cond_1

    .line 6
    sget-object p1, Lit/sephiroth/android/library/widget/b;->f:Ljava/util/ArrayList;

    iput-object p1, p0, Lit/sephiroth/android/library/widget/b;->c:Ljava/util/ArrayList;

    goto :goto_1

    .line 7
    :cond_1
    iput-object p2, p0, Lit/sephiroth/android/library/widget/b;->c:Ljava/util/ArrayList;

    .line 8
    :goto_1
    iget-object p1, p0, Lit/sephiroth/android/library/widget/b;->b:Ljava/util/ArrayList;

    .line 9
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/b;->a(Ljava/util/ArrayList;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lit/sephiroth/android/library/widget/b;->c:Ljava/util/ArrayList;

    .line 10
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/b;->a(Ljava/util/ArrayList;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    iput-boolean p1, p0, Lit/sephiroth/android/library/widget/b;->d:Z

    return-void
.end method

.method private a(Ljava/util/ArrayList;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lit/sephiroth/android/library/widget/HListView$c;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/HListView$c;

    .line 2
    iget-boolean v0, v0, Lit/sephiroth/android/library/widget/HListView$c;->c:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/b;->a:Landroid/widget/ListAdapter;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v2, p0, Lit/sephiroth/android/library/widget/b;->d:Z

    if-eqz v2, :cond_0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public b()I
    .locals 1

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public d(Landroid/view/View;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lit/sephiroth/android/library/widget/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2
    iget-object v2, p0, Lit/sephiroth/android/library/widget/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lit/sephiroth/android/library/widget/HListView$c;

    .line 3
    iget-object v2, v2, Lit/sephiroth/android/library/widget/HListView$c;->a:Landroid/view/View;

    if-ne v2, p1, :cond_1

    .line 4
    iget-object p1, p0, Lit/sephiroth/android/library/widget/b;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Lit/sephiroth/android/library/widget/b;->b:Ljava/util/ArrayList;

    .line 6
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/b;->a(Ljava/util/ArrayList;)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lit/sephiroth/android/library/widget/b;->c:Ljava/util/ArrayList;

    .line 7
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/b;->a(Ljava/util/ArrayList;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/b;->d:Z

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public e(Landroid/view/View;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lit/sephiroth/android/library/widget/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2
    iget-object v2, p0, Lit/sephiroth/android/library/widget/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lit/sephiroth/android/library/widget/HListView$c;

    .line 3
    iget-object v2, v2, Lit/sephiroth/android/library/widget/HListView$c;->a:Landroid/view/View;

    if-ne v2, p1, :cond_1

    .line 4
    iget-object p1, p0, Lit/sephiroth/android/library/widget/b;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Lit/sephiroth/android/library/widget/b;->b:Ljava/util/ArrayList;

    .line 6
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/b;->a(Ljava/util/ArrayList;)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lit/sephiroth/android/library/widget/b;->c:Ljava/util/ArrayList;

    .line 7
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/b;->a(Ljava/util/ArrayList;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/b;->d:Z

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public getCount()I
    .locals 2

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/b;->a:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/b;->b()I

    move-result v0

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/b;->c()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lit/sephiroth/android/library/widget/b;->a:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/b;->b()I

    move-result v0

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/b;->c()I

    move-result v1

    goto :goto_0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/b;->e:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lit/sephiroth/android/library/widget/b;->a:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/b;->c()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lit/sephiroth/android/library/widget/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lit/sephiroth/android/library/widget/HListView$c;

    iget-object p1, p1, Lit/sephiroth/android/library/widget/HListView$c;->b:Ljava/lang/Object;

    return-object p1

    :cond_0
    sub-int/2addr p1, v0

    const/4 v0, 0x0

    .line 3
    iget-object v1, p0, Lit/sephiroth/android/library/widget/b;->a:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 5
    iget-object v0, p0, Lit/sephiroth/android/library/widget/b;->a:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    iget-object v1, p0, Lit/sephiroth/android/library/widget/b;->c:Ljava/util/ArrayList;

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lit/sephiroth/android/library/widget/HListView$c;

    iget-object p1, p1, Lit/sephiroth/android/library/widget/HListView$c;->b:Ljava/lang/Object;

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/b;->c()I

    move-result v0

    .line 2
    iget-object v1, p0, Lit/sephiroth/android/library/widget/b;->a:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    if-lt p1, v0, :cond_0

    sub-int/2addr p1, v0

    .line 3
    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 4
    iget-object v0, p0, Lit/sephiroth/android/library/widget/b;->a:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/b;->c()I

    move-result v0

    .line 2
    iget-object v1, p0, Lit/sephiroth/android/library/widget/b;->a:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    if-lt p1, v0, :cond_0

    sub-int/2addr p1, v0

    .line 3
    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 4
    iget-object v0, p0, Lit/sephiroth/android/library/widget/b;->a:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x2

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/b;->c()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 2
    iget-object p2, p0, Lit/sephiroth/android/library/widget/b;->b:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lit/sephiroth/android/library/widget/HListView$c;

    iget-object p1, p1, Lit/sephiroth/android/library/widget/HListView$c;->a:Landroid/view/View;

    return-object p1

    :cond_0
    sub-int/2addr p1, v0

    const/4 v0, 0x0

    .line 3
    iget-object v1, p0, Lit/sephiroth/android/library/widget/b;->a:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 5
    iget-object v0, p0, Lit/sephiroth/android/library/widget/b;->a:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    iget-object p2, p0, Lit/sephiroth/android/library/widget/b;->c:Ljava/util/ArrayList;

    sub-int/2addr p1, v0

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lit/sephiroth/android/library/widget/HListView$c;

    iget-object p1, p1, Lit/sephiroth/android/library/widget/HListView$c;->a:Landroid/view/View;

    return-object p1
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/b;->a:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getWrappedAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/b;->a:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/b;->a:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/b;->a:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

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

.method public isEnabled(I)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/b;->c()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lit/sephiroth/android/library/widget/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lit/sephiroth/android/library/widget/HListView$c;

    iget-boolean p1, p1, Lit/sephiroth/android/library/widget/HListView$c;->c:Z

    return p1

    :cond_0
    sub-int/2addr p1, v0

    const/4 v0, 0x0

    .line 3
    iget-object v1, p0, Lit/sephiroth/android/library/widget/b;->a:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 5
    :try_start_0
    iget-object v1, p0, Lit/sephiroth/android/library/widget/b;->a:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v1

    .line 6
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    :cond_1
    iget-object v1, p0, Lit/sephiroth/android/library/widget/b;->c:Ljava/util/ArrayList;

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lit/sephiroth/android/library/widget/HListView$c;

    iget-boolean p1, p1, Lit/sephiroth/android/library/widget/HListView$c;->c:Z

    return p1
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/b;->a:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/b;->a:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    return-void
.end method
