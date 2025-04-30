.class Lcom/join/mgps/fragment/z1$a;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "FriendMessageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/z1;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/z1;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/z1;Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/z1$a;->a:Lcom/join/mgps/fragment/z1;

    invoke-direct {p0, p2}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/z1$a;->a:Lcom/join/mgps/fragment/z1;

    iget-object v0, v0, Lcom/join/mgps/fragment/z1;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/z1$a;->a:Lcom/join/mgps/fragment/z1;

    iget-object v0, v0, Lcom/join/mgps/fragment/z1;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    return-object p1
.end method
