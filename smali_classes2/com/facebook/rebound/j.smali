.class public Lcom/facebook/rebound/j;
.super Ljava/lang/Object;
.source "SpringChain.java"

# interfaces
.implements Lcom/facebook/rebound/m;


# static fields
.field private static final g:Lcom/facebook/rebound/l;

.field private static final h:I = 0x28

.field private static final i:I = 0x6

.field private static final j:I = 0x46

.field private static final k:I = 0xa

.field private static l:I


# instance fields
.field private final a:Lcom/facebook/rebound/o;

.field private final b:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/facebook/rebound/m;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/facebook/rebound/i;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private final e:Lcom/facebook/rebound/k;

.field private final f:Lcom/facebook/rebound/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/facebook/rebound/l;->c()Lcom/facebook/rebound/l;

    move-result-object v0

    sput-object v0, Lcom/facebook/rebound/j;->g:Lcom/facebook/rebound/l;

    const/4 v0, 0x0

    .line 2
    sput v0, Lcom/facebook/rebound/j;->l:I

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    const/16 v0, 0x28

    const/4 v1, 0x6

    const/16 v2, 0x46

    const/16 v3, 0xa

    .line 1
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/facebook/rebound/j;-><init>(IIII)V

    return-void
.end method

.method private constructor <init>(IIII)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Lcom/facebook/rebound/o;->m()Lcom/facebook/rebound/o;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rebound/j;->a:Lcom/facebook/rebound/o;

    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/rebound/j;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/rebound/j;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/facebook/rebound/j;->d:I

    int-to-double v0, p1

    int-to-double p1, p2

    .line 7
    invoke-static {v0, v1, p1, p2}, Lcom/facebook/rebound/k;->b(DD)Lcom/facebook/rebound/k;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/rebound/j;->e:Lcom/facebook/rebound/k;

    int-to-double p2, p3

    int-to-double v0, p4

    .line 8
    invoke-static {p2, p3, v0, v1}, Lcom/facebook/rebound/k;->b(DD)Lcom/facebook/rebound/k;

    move-result-object p2

    iput-object p2, p0, Lcom/facebook/rebound/j;->f:Lcom/facebook/rebound/k;

    .line 9
    sget-object p3, Lcom/facebook/rebound/j;->g:Lcom/facebook/rebound/l;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "main spring "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/facebook/rebound/j;->l:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/facebook/rebound/j;->l:I

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p1, p4}, Lcom/facebook/rebound/l;->a(Lcom/facebook/rebound/k;Ljava/lang/String;)Z

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "attachment spring "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p4, Lcom/facebook/rebound/j;->l:I

    add-int/lit8 v0, p4, 0x1

    sput v0, Lcom/facebook/rebound/j;->l:I

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p2, p1}, Lcom/facebook/rebound/l;->a(Lcom/facebook/rebound/k;Ljava/lang/String;)Z

    return-void
.end method

.method public static f()Lcom/facebook/rebound/j;
    .locals 1

    .line 1
    new-instance v0, Lcom/facebook/rebound/j;

    invoke-direct {v0}, Lcom/facebook/rebound/j;-><init>()V

    return-object v0
.end method

.method public static g(IIII)Lcom/facebook/rebound/j;
    .locals 1

    .line 1
    new-instance v0, Lcom/facebook/rebound/j;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/facebook/rebound/j;-><init>(IIII)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/facebook/rebound/i;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/facebook/rebound/j;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/facebook/rebound/j;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/rebound/m;

    .line 3
    iget v2, p0, Lcom/facebook/rebound/j;->d:I

    const/4 v3, -0x1

    if-ne v0, v2, :cond_0

    add-int/lit8 v2, v0, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    if-ge v0, v2, :cond_1

    add-int/lit8 v2, v0, -0x1

    const/4 v0, -0x1

    goto :goto_1

    :cond_1
    if-le v0, v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    :goto_0
    const/4 v2, -0x1

    :goto_1
    if-le v0, v3, :cond_3

    .line 4
    iget-object v4, p0, Lcom/facebook/rebound/j;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 5
    iget-object v4, p0, Lcom/facebook/rebound/j;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rebound/i;

    invoke-virtual {p1}, Lcom/facebook/rebound/i;->f()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/facebook/rebound/i;->x(D)Lcom/facebook/rebound/i;

    :cond_3
    if-le v2, v3, :cond_4

    .line 6
    iget-object v0, p0, Lcom/facebook/rebound/j;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    .line 7
    iget-object v0, p0, Lcom/facebook/rebound/j;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rebound/i;

    invoke-virtual {p1}, Lcom/facebook/rebound/i;->f()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/facebook/rebound/i;->x(D)Lcom/facebook/rebound/i;

    .line 8
    :cond_4
    invoke-interface {v1, p1}, Lcom/facebook/rebound/m;->a(Lcom/facebook/rebound/i;)V

    return-void
.end method

.method public b(Lcom/facebook/rebound/i;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/rebound/j;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/facebook/rebound/j;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rebound/m;

    invoke-interface {v0, p1}, Lcom/facebook/rebound/m;->b(Lcom/facebook/rebound/i;)V

    return-void
.end method

.method public c(Lcom/facebook/rebound/i;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/rebound/j;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/facebook/rebound/j;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rebound/m;

    invoke-interface {v0, p1}, Lcom/facebook/rebound/m;->c(Lcom/facebook/rebound/i;)V

    return-void
.end method

.method public d(Lcom/facebook/rebound/i;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/rebound/j;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/facebook/rebound/j;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rebound/m;

    invoke-interface {v0, p1}, Lcom/facebook/rebound/m;->d(Lcom/facebook/rebound/i;)V

    return-void
.end method

.method public e(Lcom/facebook/rebound/m;)Lcom/facebook/rebound/j;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/rebound/j;->a:Lcom/facebook/rebound/o;

    invoke-virtual {v0}, Lcom/facebook/rebound/c;->d()Lcom/facebook/rebound/i;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/rebound/i;->a(Lcom/facebook/rebound/m;)Lcom/facebook/rebound/i;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/rebound/j;->f:Lcom/facebook/rebound/k;

    invoke-virtual {v0, v1}, Lcom/facebook/rebound/i;->B(Lcom/facebook/rebound/k;)Lcom/facebook/rebound/i;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/facebook/rebound/j;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lcom/facebook/rebound/j;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/rebound/i;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/rebound/j;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public i()Lcom/facebook/rebound/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/rebound/j;->f:Lcom/facebook/rebound/k;

    return-object v0
.end method

.method public j()Lcom/facebook/rebound/i;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/rebound/j;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget v1, p0, Lcom/facebook/rebound/j;->d:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rebound/i;

    return-object v0
.end method

.method public k()Lcom/facebook/rebound/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/rebound/j;->e:Lcom/facebook/rebound/k;

    return-object v0
.end method

.method public l(I)Lcom/facebook/rebound/j;
    .locals 2

    .line 1
    iput p1, p0, Lcom/facebook/rebound/j;->d:I

    .line 2
    iget-object v0, p0, Lcom/facebook/rebound/j;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/rebound/i;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/facebook/rebound/j;->a:Lcom/facebook/rebound/o;

    invoke-virtual {p1}, Lcom/facebook/rebound/c;->f()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rebound/i;

    .line 4
    iget-object v1, p0, Lcom/facebook/rebound/j;->f:Lcom/facebook/rebound/k;

    invoke-virtual {v0, v1}, Lcom/facebook/rebound/i;->B(Lcom/facebook/rebound/k;)Lcom/facebook/rebound/i;

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/rebound/j;->j()Lcom/facebook/rebound/i;

    move-result-object p1

    iget-object v0, p0, Lcom/facebook/rebound/j;->e:Lcom/facebook/rebound/k;

    invoke-virtual {p1, v0}, Lcom/facebook/rebound/i;->B(Lcom/facebook/rebound/k;)Lcom/facebook/rebound/i;

    return-object p0
.end method
