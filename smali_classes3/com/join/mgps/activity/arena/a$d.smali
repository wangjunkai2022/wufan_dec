.class Lcom/join/mgps/activity/arena/a$d;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "ArenaGameListFragmentMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/arena/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/arena/a;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/arena/a;Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/arena/a$d;->a:Lcom/join/mgps/activity/arena/a;

    .line 2
    invoke-direct {p0, p2}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/a$d;->a:Lcom/join/mgps/activity/arena/a;

    invoke-static {v0}, Lcom/join/mgps/activity/arena/a;->P(Lcom/join/mgps/activity/arena/a;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/a$d;->a:Lcom/join/mgps/activity/arena/a;

    invoke-static {v0, p1}, Lcom/join/mgps/activity/arena/a;->O(Lcom/join/mgps/activity/arena/a;I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/a$d;->a:Lcom/join/mgps/activity/arena/a;

    invoke-static {v0}, Lcom/join/mgps/activity/arena/a;->P(Lcom/join/mgps/activity/arena/a;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/GameTypeBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameTypeBean;->getTitle()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
