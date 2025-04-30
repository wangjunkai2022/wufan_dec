.class Lit/sephiroth/android/library/widget/a;
.super Ljava/lang/Object;
.source "ExpandableHListPosition.java"


# static fields
.field private static final e:I = 0x5

.field private static f:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lit/sephiroth/android/library/widget/a;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:I = 0x1

.field public static final h:I = 0x2


# instance fields
.field public a:I

.field public b:I

.field c:I

.field public d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lit/sephiroth/android/library/widget/a;->f:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static b()Lit/sephiroth/android/library/widget/a;
    .locals 3

    .line 1
    sget-object v0, Lit/sephiroth/android/library/widget/a;->f:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lit/sephiroth/android/library/widget/a;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 3
    sget-object v1, Lit/sephiroth/android/library/widget/a;->f:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lit/sephiroth/android/library/widget/a;

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-direct {v1}, Lit/sephiroth/android/library/widget/a;->h()V

    return-object v1

    .line 6
    :cond_0
    :try_start_1
    new-instance v1, Lit/sephiroth/android/library/widget/a;

    invoke-direct {v1}, Lit/sephiroth/android/library/widget/a;-><init>()V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 7
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static c(IIII)Lit/sephiroth/android/library/widget/a;
    .locals 1

    .line 1
    invoke-static {}, Lit/sephiroth/android/library/widget/a;->b()Lit/sephiroth/android/library/widget/a;

    move-result-object v0

    .line 2
    iput p0, v0, Lit/sephiroth/android/library/widget/a;->d:I

    .line 3
    iput p1, v0, Lit/sephiroth/android/library/widget/a;->a:I

    .line 4
    iput p2, v0, Lit/sephiroth/android/library/widget/a;->b:I

    .line 5
    iput p3, v0, Lit/sephiroth/android/library/widget/a;->c:I

    return-object v0
.end method

.method static d(II)Lit/sephiroth/android/library/widget/a;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, p0, p1, v1}, Lit/sephiroth/android/library/widget/a;->c(IIII)Lit/sephiroth/android/library/widget/a;

    move-result-object p0

    return-object p0
.end method

.method static e(I)Lit/sephiroth/android/library/widget/a;
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, p0, v1, v1}, Lit/sephiroth/android/library/widget/a;->c(IIII)Lit/sephiroth/android/library/widget/a;

    move-result-object p0

    return-object p0
.end method

.method static f(J)Lit/sephiroth/android/library/widget/a;
    .locals 3

    const-wide v0, 0xffffffffL

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-static {}, Lit/sephiroth/android/library/widget/a;->b()Lit/sephiroth/android/library/widget/a;

    move-result-object v0

    .line 2
    invoke-static {p0, p1}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v1

    iput v1, v0, Lit/sephiroth/android/library/widget/a;->a:I

    .line 3
    invoke-static {p0, p1}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 4
    iput v2, v0, Lit/sephiroth/android/library/widget/a;->d:I

    .line 5
    invoke-static {p0, p1}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result p0

    iput p0, v0, Lit/sephiroth/android/library/widget/a;->b:I

    goto :goto_0

    :cond_1
    const/4 p0, 0x2

    .line 6
    iput p0, v0, Lit/sephiroth/android/library/widget/a;->d:I

    :goto_0
    return-object v0
.end method

.method private h()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lit/sephiroth/android/library/widget/a;->a:I

    .line 2
    iput v0, p0, Lit/sephiroth/android/library/widget/a;->b:I

    .line 3
    iput v0, p0, Lit/sephiroth/android/library/widget/a;->c:I

    .line 4
    iput v0, p0, Lit/sephiroth/android/library/widget/a;->d:I

    return-void
.end method


# virtual methods
.method a()J
    .locals 2

    .line 1
    iget v0, p0, Lit/sephiroth/android/library/widget/a;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lit/sephiroth/android/library/widget/a;->a:I

    iget v1, p0, Lit/sephiroth/android/library/widget/a;->b:I

    invoke-static {v0, v1}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v0

    return-wide v0

    .line 2
    :cond_0
    iget v0, p0, Lit/sephiroth/android/library/widget/a;->a:I

    invoke-static {v0}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public g()V
    .locals 3

    .line 1
    sget-object v0, Lit/sephiroth/android/library/widget/a;->f:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lit/sephiroth/android/library/widget/a;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    .line 3
    sget-object v1, Lit/sephiroth/android/library/widget/a;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
