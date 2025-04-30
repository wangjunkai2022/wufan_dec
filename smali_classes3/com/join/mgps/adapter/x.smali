.class public Lcom/join/mgps/adapter/x;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "FragmentPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/x$a;,
        Lcom/join/mgps/adapter/x$b;
    }
.end annotation


# instance fields
.field a:Landroidx/fragment/app/FragmentManager;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/x$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/adapter/x;->a:Landroidx/fragment/app/FragmentManager;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentManager;",
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/x$a;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 4
    iput-object p1, p0, Lcom/join/mgps/adapter/x;->a:Landroidx/fragment/app/FragmentManager;

    .line 5
    iput-object p2, p0, Lcom/join/mgps/adapter/x;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/x;->a:Landroidx/fragment/app/FragmentManager;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/adapter/x;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4
    invoke-virtual {p0, v1}, Lcom/join/mgps/adapter/x;->getItem(I)Landroidx/fragment/app/Fragment;

    move-result-object v2

    .line 5
    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentTransaction;->detach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/adapter/x;->c()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/adapter/x;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 8
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/x$a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/x;->b:Ljava/util/List;

    return-object v0
.end method

.method public d(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/x$a;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/x;->b:Ljava/util/List;

    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentPagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/x;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/x;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/x$a;

    iget-object p1, p1, Lcom/join/mgps/adapter/x$a;->c:Landroidx/fragment/app/Fragment;

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentPagerAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/x;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/x$a;

    iget-object p1, p1, Lcom/join/mgps/adapter/x$a;->a:Ljava/lang/String;

    return-object p1
.end method
