.class Lit/sephiroth/android/library/widget/ExpandableHListConnector;
.super Landroid/widget/BaseAdapter;
.source "ExpandableHListConnector.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;,
        Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;,
        Lit/sephiroth/android/library/widget/ExpandableHListConnector$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/ExpandableListAdapter;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:I

.field private final e:Landroid/database/DataSetObserver;


# direct methods
.method public constructor <init>(Landroid/widget/ExpandableListAdapter;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const v0, 0x7fffffff

    .line 2
    iput v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->d:I

    .line 3
    new-instance v0, Lit/sephiroth/android/library/widget/ExpandableHListConnector$a;

    invoke-direct {v0, p0}, Lit/sephiroth/android/library/widget/ExpandableHListConnector$a;-><init>(Lit/sephiroth/android/library/widget/ExpandableHListConnector;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->e:Landroid/database/DataSetObserver;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->b:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->m(Landroid/widget/ExpandableListAdapter;)V

    return-void
.end method

.method static synthetic a(Lit/sephiroth/android/library/widget/ExpandableHListConnector;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->l(ZZ)V

    return-void
.end method

.method private l(ZZ)V
    .locals 9

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->b:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    .line 3
    iput v2, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->c:I

    const/4 v3, -0x1

    if-eqz p2, :cond_3

    add-int/lit8 p2, v1, -0x1

    const/4 v4, 0x0

    :goto_0
    if-ltz p2, :cond_2

    .line 4
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;

    .line 5
    iget-wide v6, v5, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->d:J

    iget v8, v5, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->c:I

    invoke-virtual {p0, v6, v7, v8}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->f(JI)I

    move-result v6

    .line 6
    iget v7, v5, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->c:I

    if-eq v6, v7, :cond_1

    if-ne v6, v3, :cond_0

    .line 7
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    .line 8
    :cond_0
    iput v6, v5, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->c:I

    if-nez v4, :cond_1

    const/4 v4, 0x1

    :cond_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_3

    .line 9
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :cond_3
    const/4 p2, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v2, v1, :cond_6

    .line 10
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;

    .line 11
    iget v6, v5, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->b:I

    if-eq v6, v3, :cond_5

    if-eqz p1, :cond_4

    goto :goto_2

    .line 12
    :cond_4
    iget v7, v5, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->a:I

    sub-int/2addr v6, v7

    goto :goto_3

    .line 13
    :cond_5
    :goto_2
    iget-object v6, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->a:Landroid/widget/ExpandableListAdapter;

    iget v7, v5, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->c:I

    invoke-interface {v6, v7}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v6

    .line 14
    :goto_3
    iget v7, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->c:I

    add-int/2addr v7, v6

    iput v7, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->c:I

    .line 15
    iget v7, v5, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->c:I

    sub-int v4, v7, v4

    add-int/2addr p2, v4

    .line 16
    iput p2, v5, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->a:I

    add-int/2addr p2, v6

    .line 17
    iput p2, v5, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->b:I

    add-int/lit8 v2, v2, 0x1

    move v4, v7

    goto :goto_1

    :cond_6
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->a:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method b(I)Z
    .locals 2

    const/4 v0, 0x2

    const/4 v1, -0x1

    .line 1
    invoke-static {v0, p1, v1, v1}, Lit/sephiroth/android/library/widget/a;->c(IIII)Lit/sephiroth/android/library/widget/a;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->i(Lit/sephiroth/android/library/widget/a;)Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lit/sephiroth/android/library/widget/a;->g()V

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_0
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->c(Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;)Z

    move-result p1

    .line 5
    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->d()V

    return p1
.end method

.method c(Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;)Z
    .locals 3

    .line 1
    iget-object v0, p1, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->b:Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v2, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3
    invoke-direct {p0, v1, v1}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->l(ZZ)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 5
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->a:Landroid/widget/ExpandableListAdapter;

    iget-object p1, p1, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->b:Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;

    iget p1, p1, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->c:I

    invoke-interface {v0, p1}, Landroid/widget/ExpandableListAdapter;->onGroupCollapsed(I)V

    const/4 p1, 0x1

    return p1
.end method

.method d(I)Z
    .locals 2

    const/4 v0, 0x2

    const/4 v1, -0x1

    .line 1
    invoke-static {v0, p1, v1, v1}, Lit/sephiroth/android/library/widget/a;->c(IIII)Lit/sephiroth/android/library/widget/a;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->i(Lit/sephiroth/android/library/widget/a;)Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lit/sephiroth/android/library/widget/a;->g()V

    .line 4
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->e(Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;)Z

    move-result p1

    .line 5
    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->d()V

    return p1
.end method

.method e(Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;)Z
    .locals 6

    .line 1
    iget-object v0, p1, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->a:Lit/sephiroth/android/library/widget/a;

    iget v0, v0, Lit/sephiroth/android/library/widget/a;->a:I

    if-ltz v0, :cond_3

    .line 2
    iget v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->d:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget-object v0, p1, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->b:Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;

    if-eqz v0, :cond_1

    return v1

    .line 4
    :cond_1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v2, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->d:I

    const/4 v3, 0x1

    if-lt v0, v2, :cond_2

    .line 5
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;

    .line 6
    iget-object v2, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 7
    iget v0, v0, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->c:I

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->b(I)Z

    .line 8
    iget v0, p1, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->c:I

    if-le v0, v2, :cond_2

    sub-int/2addr v0, v3

    .line 9
    iput v0, p1, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->c:I

    .line 10
    :cond_2
    iget-object v0, p1, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->a:Lit/sephiroth/android/library/widget/a;

    iget v0, v0, Lit/sephiroth/android/library/widget/a;->a:I

    iget-object v2, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->a:Landroid/widget/ExpandableListAdapter;

    .line 11
    invoke-interface {v2, v0}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v4

    const/4 v2, -0x1

    .line 12
    invoke-static {v2, v2, v0, v4, v5}, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->L0(IIIJ)Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;

    move-result-object v0

    .line 13
    iget-object v2, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->b:Ljava/util/ArrayList;

    iget p1, p1, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->c:I

    invoke-virtual {v2, p1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 14
    invoke-direct {p0, v1, v1}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->l(ZZ)V

    .line 15
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 16
    iget-object p1, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->a:Landroid/widget/ExpandableListAdapter;

    iget v0, v0, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->c:I

    invoke-interface {p1, v0}, Landroid/widget/ExpandableListAdapter;->onGroupExpanded(I)V

    return v3

    .line 17
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Need group"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method f(JI)I
    .locals 15

    move-object v0, p0

    .line 1
    iget-object v1, v0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->a:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v1}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_0

    return v2

    :cond_0
    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v5, p1, v3

    if-nez v5, :cond_1

    return v2

    :cond_1
    const/4 v3, 0x0

    move/from16 v4, p3

    .line 2
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v1, v5

    .line 3
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x64

    add-long/2addr v6, v8

    .line 5
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->g()Landroid/widget/ExpandableListAdapter;

    move-result-object v8

    if-nez v8, :cond_2

    return v2

    :cond_2
    move v9, v4

    move v10, v9

    :goto_0
    const/4 v11, 0x0

    .line 6
    :cond_3
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    cmp-long v14, v12, v6

    if-gtz v14, :cond_b

    .line 7
    invoke-interface {v8, v4}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v12

    cmp-long v14, v12, p1

    if-nez v14, :cond_4

    return v4

    :cond_4
    if-ne v9, v1, :cond_5

    const/4 v12, 0x1

    goto :goto_2

    :cond_5
    const/4 v12, 0x0

    :goto_2
    if-nez v10, :cond_6

    const/4 v13, 0x1

    goto :goto_3

    :cond_6
    const/4 v13, 0x0

    :goto_3
    if-eqz v12, :cond_7

    if-eqz v13, :cond_7

    goto :goto_5

    :cond_7
    if-nez v13, :cond_a

    if-eqz v11, :cond_8

    if-nez v12, :cond_8

    goto :goto_4

    :cond_8
    if-nez v12, :cond_9

    if-nez v11, :cond_3

    if-nez v13, :cond_3

    :cond_9
    add-int/lit8 v10, v10, -0x1

    move v4, v10

    const/4 v11, 0x1

    goto :goto_1

    :cond_a
    :goto_4
    add-int/lit8 v9, v9, 0x1

    move v4, v9

    goto :goto_0

    :cond_b
    :goto_5
    return v2
.end method

.method g()Landroid/widget/ExpandableListAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->a:Landroid/widget/ExpandableListAdapter;

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->a:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v0

    iget v1, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->c:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->g()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    .line 2
    instance-of v1, v0, Landroid/widget/Filterable;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->j(I)Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;

    move-result-object p1

    .line 2
    iget-object v0, p1, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->a:Lit/sephiroth/android/library/widget/a;

    iget v1, v0, Lit/sephiroth/android/library/widget/a;->d:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 3
    iget-object v1, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->a:Landroid/widget/ExpandableListAdapter;

    iget v0, v0, Lit/sephiroth/android/library/widget/a;->a:I

    invoke-interface {v1, v0}, Landroid/widget/ExpandableListAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 4
    iget-object v1, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->a:Landroid/widget/ExpandableListAdapter;

    iget v2, v0, Lit/sephiroth/android/library/widget/a;->a:I

    iget v0, v0, Lit/sephiroth/android/library/widget/a;->b:I

    invoke-interface {v1, v2, v0}, Landroid/widget/ExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    .line 5
    :goto_0
    invoke-virtual {p1}, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->d()V

    return-object v0

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Flat list position is of unknown type"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getItemId(I)J
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->j(I)Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->a:Landroid/widget/ExpandableListAdapter;

    iget-object v1, p1, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->a:Lit/sephiroth/android/library/widget/a;

    iget v1, v1, Lit/sephiroth/android/library/widget/a;->a:I

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v0

    .line 3
    iget-object v2, p1, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->a:Lit/sephiroth/android/library/widget/a;

    iget v3, v2, Lit/sephiroth/android/library/widget/a;->d:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 4
    iget-object v2, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->a:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v2, v0, v1}, Landroid/widget/ExpandableListAdapter;->getCombinedGroupId(J)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 5
    iget-object v3, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->a:Landroid/widget/ExpandableListAdapter;

    iget v4, v2, Lit/sephiroth/android/library/widget/a;->a:I

    iget v2, v2, Lit/sephiroth/android/library/widget/a;->b:I

    invoke-interface {v3, v4, v2}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v2

    .line 6
    iget-object v4, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->a:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v4, v0, v1, v2, v3}, Landroid/widget/ExpandableListAdapter;->getCombinedChildId(JJ)J

    move-result-wide v0

    .line 7
    :goto_0
    invoke-virtual {p1}, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->d()V

    return-wide v0

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Flat list position is of unknown type"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getItemViewType(I)I
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->j(I)Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;

    move-result-object p1

    .line 2
    iget-object v0, p1, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->a:Lit/sephiroth/android/library/widget/a;

    .line 3
    iget-object v1, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->a:Landroid/widget/ExpandableListAdapter;

    instance-of v2, v1, Landroid/widget/HeterogeneousExpandableList;

    const/4 v3, 0x2

    if-eqz v2, :cond_1

    .line 4
    check-cast v1, Landroid/widget/HeterogeneousExpandableList;

    .line 5
    iget v2, v0, Lit/sephiroth/android/library/widget/a;->d:I

    if-ne v2, v3, :cond_0

    .line 6
    iget v0, v0, Lit/sephiroth/android/library/widget/a;->a:I

    invoke-interface {v1, v0}, Landroid/widget/HeterogeneousExpandableList;->getGroupType(I)I

    move-result v0

    goto :goto_0

    .line 7
    :cond_0
    iget v2, v0, Lit/sephiroth/android/library/widget/a;->a:I

    iget v0, v0, Lit/sephiroth/android/library/widget/a;->b:I

    invoke-interface {v1, v2, v0}, Landroid/widget/HeterogeneousExpandableList;->getChildType(II)I

    move-result v0

    .line 8
    invoke-interface {v1}, Landroid/widget/HeterogeneousExpandableList;->getGroupTypeCount()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 9
    :cond_1
    iget v0, v0, Lit/sephiroth/android/library/widget/a;->d:I

    if-ne v0, v3, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    .line 10
    :goto_0
    invoke-virtual {p1}, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->d()V

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    .line 1
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->j(I)Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->a:Lit/sephiroth/android/library/widget/a;

    iget v2, v1, Lit/sephiroth/android/library/widget/a;->d:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 3
    iget-object p1, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->a:Landroid/widget/ExpandableListAdapter;

    iget v1, v1, Lit/sephiroth/android/library/widget/a;->a:I

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->b()Z

    move-result v2

    invoke-interface {p1, v1, v2, p2, p3}, Landroid/widget/ExpandableListAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    goto :goto_1

    :cond_0
    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 4
    iget-object v2, v0, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->b:Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;

    iget v2, v2, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->b:I

    if-ne v2, p1, :cond_1

    const/4 v7, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 5
    :goto_0
    iget-object v4, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->a:Landroid/widget/ExpandableListAdapter;

    iget v5, v1, Lit/sephiroth/android/library/widget/a;->a:I

    iget v6, v1, Lit/sephiroth/android/library/widget/a;->b:I

    move-object v8, p2

    move-object v9, p3

    invoke-interface/range {v4 .. v9}, Landroid/widget/ExpandableListAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 6
    :goto_1
    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->d()V

    return-object p1

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Flat list position is of unknown type"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getViewTypeCount()I
    .locals 2

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->a:Landroid/widget/ExpandableListAdapter;

    instance-of v1, v0, Landroid/widget/HeterogeneousExpandableList;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Landroid/widget/HeterogeneousExpandableList;

    .line 3
    invoke-interface {v0}, Landroid/widget/HeterogeneousExpandableList;->getGroupTypeCount()I

    move-result v1

    invoke-interface {v0}, Landroid/widget/HeterogeneousExpandableList;->getChildTypeCount()I

    move-result v0

    add-int/2addr v1, v0

    return v1

    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method h()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->a:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method i(Lit/sephiroth/android/library/widget/a;)Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->b:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v4, v3, -0x1

    if-nez v3, :cond_0

    .line 3
    iget v7, v1, Lit/sephiroth/android/library/widget/a;->a:I

    iget v6, v1, Lit/sephiroth/android/library/widget/a;->d:I

    iget v8, v1, Lit/sephiroth/android/library/widget/a;->b:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v5, v7

    invoke-static/range {v5 .. v10}, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->c(IIIILit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;I)Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v3, 0x0

    const/4 v10, 0x0

    :cond_1
    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-gt v10, v4, :cond_6

    sub-int v3, v4, v10

    .line 4
    div-int/2addr v3, v6

    add-int/2addr v3, v10

    .line 5
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v15, v8

    check-cast v15, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;

    .line 6
    iget v13, v1, Lit/sephiroth/android/library/widget/a;->a:I

    iget v8, v15, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->c:I

    if-le v13, v8, :cond_2

    add-int/lit8 v10, v3, 0x1

    goto :goto_0

    :cond_2
    if-ge v13, v8, :cond_3

    add-int/lit8 v4, v3, -0x1

    goto :goto_0

    :cond_3
    if-ne v13, v8, :cond_1

    .line 7
    iget v12, v1, Lit/sephiroth/android/library/widget/a;->d:I

    if-ne v12, v6, :cond_4

    .line 8
    iget v11, v15, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->a:I

    iget v14, v1, Lit/sephiroth/android/library/widget/a;->b:I

    move/from16 v16, v3

    invoke-static/range {v11 .. v16}, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->c(IIIILit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;I)Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;

    move-result-object v1

    return-object v1

    :cond_4
    if-ne v12, v7, :cond_5

    .line 9
    iget v2, v15, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->a:I

    iget v14, v1, Lit/sephiroth/android/library/widget/a;->b:I

    add-int/2addr v2, v14

    add-int/lit8 v11, v2, 0x1

    move/from16 v16, v3

    invoke-static/range {v11 .. v16}, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->c(IIIILit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;I)Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;

    move-result-object v1

    return-object v1

    :cond_5
    return-object v5

    .line 10
    :cond_6
    iget v8, v1, Lit/sephiroth/android/library/widget/a;->d:I

    if-eq v8, v6, :cond_7

    return-object v5

    :cond_7
    if-le v10, v3, :cond_8

    add-int/lit8 v3, v10, -0x1

    .line 11
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;

    .line 12
    iget v3, v2, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->b:I

    iget v7, v1, Lit/sephiroth/android/library/widget/a;->a:I

    iget v2, v2, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->c:I

    sub-int v2, v7, v2

    add-int v5, v3, v2

    .line 13
    iget v6, v1, Lit/sephiroth/android/library/widget/a;->d:I

    iget v8, v1, Lit/sephiroth/android/library/widget/a;->b:I

    const/4 v9, 0x0

    invoke-static/range {v5 .. v10}, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->c(IIIILit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;I)Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;

    move-result-object v1

    return-object v1

    :cond_8
    if-ge v4, v3, :cond_9

    add-int/2addr v7, v4

    .line 14
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;

    .line 15
    iget v3, v2, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->a:I

    iget v2, v2, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->c:I

    iget v4, v1, Lit/sephiroth/android/library/widget/a;->a:I

    sub-int/2addr v2, v4

    sub-int v2, v3, v2

    .line 16
    iget v3, v1, Lit/sephiroth/android/library/widget/a;->d:I

    iget v5, v1, Lit/sephiroth/android/library/widget/a;->b:I

    const/4 v6, 0x0

    invoke-static/range {v2 .. v7}, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->c(IIIILit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;I)Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;

    move-result-object v1

    return-object v1

    :cond_9
    return-object v5
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->g()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->isEmpty()Z

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
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->j(I)Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;

    move-result-object p1

    .line 2
    iget-object v0, p1, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->a:Lit/sephiroth/android/library/widget/a;

    .line 3
    iget v1, v0, Lit/sephiroth/android/library/widget/a;->d:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 4
    iget-object v1, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->a:Landroid/widget/ExpandableListAdapter;

    iget v2, v0, Lit/sephiroth/android/library/widget/a;->a:I

    iget v0, v0, Lit/sephiroth/android/library/widget/a;->b:I

    invoke-interface {v1, v2, v0}, Landroid/widget/ExpandableListAdapter;->isChildSelectable(II)Z

    move-result v2

    .line 5
    :cond_0
    invoke-virtual {p1}, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->d()V

    return v2
.end method

.method j(I)Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;
    .locals 10

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->b:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    if-nez v1, :cond_0

    const/4 v4, 0x2

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v3, p1

    move v5, p1

    .line 3
    invoke-static/range {v3 .. v8}, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->c(IIIILit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;I)Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v1, 0x0

    move v3, v2

    const/4 v2, 0x0

    :goto_0
    if-gt v1, v3, :cond_5

    sub-int v2, v3, v1

    .line 4
    div-int/lit8 v2, v2, 0x2

    add-int v9, v2, v1

    .line 5
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;

    .line 6
    iget v2, v8, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->b:I

    if-le p1, v2, :cond_2

    add-int/lit8 v1, v9, 0x1

    :cond_1
    :goto_1
    move v2, v9

    goto :goto_0

    .line 7
    :cond_2
    iget v4, v8, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->a:I

    if-ge p1, v4, :cond_3

    add-int/lit8 v3, v9, -0x1

    goto :goto_1

    :cond_3
    if-ne p1, v4, :cond_4

    const/4 v5, 0x2

    .line 8
    iget v6, v8, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->c:I

    const/4 v7, -0x1

    move v4, p1

    invoke-static/range {v4 .. v9}, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->c(IIIILit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;I)Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;

    move-result-object p1

    return-object p1

    :cond_4
    if-gt p1, v2, :cond_1

    add-int/lit8 v4, v4, 0x1

    sub-int v7, p1, v4

    const/4 v5, 0x1

    .line 9
    iget v6, v8, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->c:I

    move v4, p1

    invoke-static/range {v4 .. v9}, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->c(IIIILit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;I)Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;

    move-result-object p1

    return-object p1

    :cond_5
    if-le v1, v2, :cond_6

    add-int/lit8 v2, v1, -0x1

    .line 10
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;

    .line 11
    iget v2, v0, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->b:I

    sub-int v2, p1, v2

    iget v0, v0, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->c:I

    add-int/2addr v2, v0

    :goto_2
    move v8, v1

    move v5, v2

    goto :goto_3

    :cond_6
    if-ge v3, v2, :cond_7

    add-int/lit8 v1, v3, 0x1

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;

    .line 13
    iget v2, v0, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->c:I

    iget v0, v0, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->a:I

    sub-int/2addr v0, p1

    sub-int/2addr v2, v0

    goto :goto_2

    :goto_3
    const/4 v4, 0x2

    const/4 v6, -0x1

    const/4 v7, 0x0

    move v3, p1

    .line 14
    invoke-static/range {v3 .. v8}, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->c(IIIILit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;I)Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;

    move-result-object p1

    return-object p1

    .line 15
    :cond_7
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Unknown state"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public k(I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    iget-object v2, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;

    .line 3
    iget v2, v2, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->c:I

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public m(Landroid/widget/ExpandableListAdapter;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->a:Landroid/widget/ExpandableListAdapter;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->e:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3
    :cond_0
    iput-object p1, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->a:Landroid/widget/ExpandableListAdapter;

    .line 4
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->e:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ExpandableListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method

.method n(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->a:Landroid/widget/ExpandableListAdapter;

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v0

    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_2

    .line 4
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;

    iget v3, v3, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->c:I

    if-lt v3, v0, :cond_1

    return-void

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 5
    :cond_2
    iput-object p1, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->b:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, v2, p1}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->l(ZZ)V

    :cond_3
    :goto_1
    return-void
.end method

.method public o(I)V
    .locals 0

    .line 1
    iput p1, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->d:I

    return-void
.end method
