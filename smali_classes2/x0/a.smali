.class public Lx0/a;
.super Ljava/lang/Object;
.source "FragmentChangeManager.java"


# instance fields
.field private a:Landroidx/fragment/app/FragmentManager;

.field private b:I

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private d:I


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentManager;",
            "I",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lx0/a;->a:Landroidx/fragment/app/FragmentManager;

    .line 3
    iput p2, p0, Lx0/a;->b:I

    .line 4
    iput-object p3, p0, Lx0/a;->c:Ljava/util/ArrayList;

    .line 5
    invoke-direct {p0}, Lx0/a;->c()V

    return-void
.end method

.method private c()V
    .locals 4

    .line 1
    iget-object v0, p0, Lx0/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 2
    iget-object v2, p0, Lx0/a;->a:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    iget v3, p0, Lx0/a;->b:I

    invoke-virtual {v2, v3, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lx0/a;->d(I)V

    return-void
.end method


# virtual methods
.method public a()Landroidx/fragment/app/Fragment;
    .locals 2

    .line 1
    iget-object v0, p0, Lx0/a;->c:Ljava/util/ArrayList;

    iget v1, p0, Lx0/a;->d:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lx0/a;->d:I

    return v0
.end method

.method public d(I)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lx0/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lx0/a;->a:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lx0/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    if-ne v0, p1, :cond_0

    .line 4
    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 6
    :goto_1
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7
    :cond_1
    iput p1, p0, Lx0/a;->d:I

    return-void
.end method
