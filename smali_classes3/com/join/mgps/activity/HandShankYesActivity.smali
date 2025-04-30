.class public Lcom/join/mgps/activity/HandShankYesActivity;
.super Lcom/join/mgps/activity/HandShankBaseActivity;
.source "HandShankYesActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/HandShankYesActivity$d;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c02be
.end annotation


# instance fields
.field c:Landroid/widget/ListView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Landroid/widget/FrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private g:Lcom/join/mgps/activity/HandShankYesActivity$d;

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/papa/controller/core/ControllerManager$c;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/db/tables/HandShankTable;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/HandShankTable;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/join/mgps/db/tables/HandShankTable;",
            ">;"
        }
    .end annotation
.end field

.field l:Lcom/join/mgps/customview/HandShankAdView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field m:Lcom/join/mgps/rpc/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/HandShankBaseActivity;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/HandShankYesActivity;->i:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic U0(Lcom/join/mgps/activity/HandShankYesActivity;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/HandShankYesActivity;->Z0()Z

    move-result p0

    return p0
.end method

.method static synthetic V0(Lcom/join/mgps/activity/HandShankYesActivity;)Ljava/util/LinkedList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/HandShankYesActivity;->k:Ljava/util/LinkedList;

    return-object p0
.end method

.method private Y0(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/papa/controller/core/ControllerManager$c;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankYesActivity;->h:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/HandShankYesActivity;->h:Ljava/util/ArrayList;

    .line 3
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/HandShankBaseActivity;->G0(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/HandShankYesActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 8
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/papa/controller/core/ControllerManager$c;

    .line 9
    new-instance v3, Lcom/join/mgps/db/tables/HandShankTable;

    invoke-direct {v3}, Lcom/join/mgps/db/tables/HandShankTable;-><init>()V

    .line 10
    invoke-virtual {v2}, Lcom/papa/controller/core/ControllerManager$c;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/join/mgps/db/tables/HandShankTable;->setName(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v2}, Lcom/papa/controller/core/ControllerManager$c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/join/mgps/db/tables/HandShankTable;->setAddress(Ljava/lang/String;)V

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/join/mgps/db/tables/HandShankTable;->setTime(Ljava/lang/Long;)V

    .line 13
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v2}, Lcom/join/mgps/db/tables/HandShankTable;->setIsConnect(Ljava/lang/Boolean;)V

    .line 14
    iget-object v4, p0, Lcom/join/mgps/activity/HandShankYesActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 15
    :cond_2
    iget-object v4, p0, Lcom/join/mgps/activity/HandShankYesActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object v4, p0, Lcom/join/mgps/activity/HandShankYesActivity;->k:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 17
    iget-object v4, p0, Lcom/join/mgps/activity/HandShankYesActivity;->k:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 18
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/HandShankYesActivity;->e1(Ljava/lang/Boolean;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 19
    :cond_3
    iget-object v1, p0, Lcom/join/mgps/activity/HandShankYesActivity;->d:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 20
    iget-object v1, p0, Lcom/join/mgps/activity/HandShankYesActivity;->g:Lcom/join/mgps/activity/HandShankYesActivity$d;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_2

    .line 21
    :cond_4
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/HandShankYesActivity;->e1(Ljava/lang/Boolean;)V

    .line 22
    :goto_2
    iget-object v1, p0, Lcom/join/mgps/activity/HandShankYesActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_5

    .line 23
    iget-object p1, p0, Lcom/join/mgps/activity/HandShankYesActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 24
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_3
    return-void
.end method

.method private Z0()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankYesActivity;->k:Ljava/util/LinkedList;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankYesActivity;->k:Ljava/util/LinkedList;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/join/mgps/activity/HandShankYesActivity;->k:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/db/tables/HandShankTable;

    .line 4
    invoke-virtual {v3}, Lcom/join/mgps/db/tables/HandShankTable;->getIsConnect()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    .line 5
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :goto_0
    return v1
.end method

.method private b1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankYesActivity;->d:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3
    :cond_0
    invoke-static {}, Ln1/x;->p()Ln1/x;

    move-result-object v0

    invoke-virtual {v0}, Ln1/x;->o()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/HandShankYesActivity;->j:Ljava/util/List;

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankYesActivity;->k:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankYesActivity;->k:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/join/mgps/activity/HandShankYesActivity;->j:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankYesActivity;->g:Lcom/join/mgps/activity/HandShankYesActivity$d;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private d1()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankYesActivity;->d:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankYesActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/db/tables/HandShankTable;

    .line 3
    iget-object v3, p0, Lcom/join/mgps/activity/HandShankYesActivity;->j:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/HandShankYesActivity;->h1(Lcom/join/mgps/db/tables/HandShankTable;)V

    move-object v1, v2

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {v1}, Lcom/join/mgps/db/tables/HandShankTable;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/join/mgps/activity/HandShankYesActivity;->i1(Ljava/lang/String;)V

    .line 6
    :cond_2
    invoke-static {}, Ln1/x;->p()Ln1/x;

    move-result-object v0

    invoke-virtual {v0}, Ln1/x;->o()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/HandShankYesActivity;->j:Ljava/util/List;

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankYesActivity;->k:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankYesActivity;->k:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/join/mgps/activity/HandShankYesActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankYesActivity;->j:Ljava/util/List;

    iget-object v1, p0, Lcom/join/mgps/activity/HandShankYesActivity;->i:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankYesActivity;->k:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/join/mgps/activity/HandShankYesActivity;->j:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankYesActivity;->g:Lcom/join/mgps/activity/HandShankYesActivity$d;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankYesActivity;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankYesActivity;->j:Ljava/util/List;

    iget-object v1, p0, Lcom/join/mgps/activity/HandShankYesActivity;->k:Ljava/util/LinkedList;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankYesActivity;->k:Ljava/util/LinkedList;

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/HandShankYesActivity;->g1(Ljava/util/List;)V

    return-void
.end method

.method private i1(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/dialog/u0;

    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/u0;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v0, p1}, Lcom/join/mgps/dialog/u0;->c(Ljava/lang/String;)V

    .line 3
    new-instance p1, Lcom/join/mgps/activity/HandShankYesActivity$b;

    invoke-direct {p1, p0, v0}, Lcom/join/mgps/activity/HandShankYesActivity$b;-><init>(Lcom/join/mgps/activity/HandShankYesActivity;Lcom/join/mgps/dialog/u0;)V

    invoke-virtual {v0, p1}, Lcom/join/mgps/dialog/u0;->a(Landroid/view/View$OnClickListener;)V

    .line 4
    new-instance p1, Lcom/join/mgps/activity/HandShankYesActivity$c;

    invoke-direct {p1, p0, v0}, Lcom/join/mgps/activity/HandShankYesActivity$c;-><init>(Lcom/join/mgps/activity/HandShankYesActivity;Lcom/join/mgps/dialog/u0;)V

    invoke-virtual {v0, p1}, Lcom/join/mgps/dialog/u0;->b(Landroid/view/View$OnClickListener;)V

    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private initView()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankYesActivity;->e:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 2
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0c02bf

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/join/mgps/activity/HandShankYesActivity;->j:Ljava/util/List;

    .line 4
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/join/mgps/activity/HandShankYesActivity;->k:Ljava/util/LinkedList;

    .line 5
    iget-object v2, p0, Lcom/join/mgps/activity/HandShankYesActivity;->j:Ljava/util/List;

    invoke-static {}, Ln1/x;->p()Ln1/x;

    move-result-object v4

    invoke-virtual {v4}, Ln1/x;->o()Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6
    iget-object v2, p0, Lcom/join/mgps/activity/HandShankYesActivity;->k:Ljava/util/LinkedList;

    iget-object v4, p0, Lcom/join/mgps/activity/HandShankYesActivity;->j:Ljava/util/List;

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 7
    new-instance v2, Lcom/join/mgps/activity/HandShankYesActivity$d;

    invoke-direct {v2, p0, v3}, Lcom/join/mgps/activity/HandShankYesActivity$d;-><init>(Lcom/join/mgps/activity/HandShankYesActivity;Lcom/join/mgps/activity/HandShankYesActivity$a;)V

    iput-object v2, p0, Lcom/join/mgps/activity/HandShankYesActivity;->g:Lcom/join/mgps/activity/HandShankYesActivity$d;

    .line 8
    iget-object v2, p0, Lcom/join/mgps/activity/HandShankYesActivity;->c:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 9
    iget-object v2, p0, Lcom/join/mgps/activity/HandShankYesActivity;->c:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/join/mgps/activity/HandShankYesActivity;->g:Lcom/join/mgps/activity/HandShankYesActivity$d;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v2, 0x7f09086a

    .line 10
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/join/mgps/activity/HandShankYesActivity$a;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/HandShankYesActivity$a;-><init>(Lcom/join/mgps/activity/HandShankYesActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    invoke-virtual {p0}, Lcom/join/mgps/activity/HandShankBaseActivity;->J0()Z

    move-result v0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankYesActivity;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 13
    :cond_0
    invoke-direct {p0}, Lcom/join/mgps/activity/HandShankYesActivity;->Z0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankYesActivity;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankYesActivity;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public K0(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/papa/controller/core/ControllerManager$c;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lcom/join/mgps/activity/HandShankYesActivity;->Y0(Ljava/util/List;)V

    return-void
.end method

.method W0()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method X0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getHandShankAdList()Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/HandShankYesActivity;->m:Lcom/join/mgps/rpc/d;

    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/d;->r0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getCode()I

    move-result v1

    const/16 v2, 0x258

    if-ne v1, v2, :cond_0

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/HandShankYesActivity;->l:Lcom/join/mgps/customview/HandShankAdView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/HandShankAdBean;

    invoke-virtual {v1, v0}, Lcom/join/mgps/customview/HandShankAdView;->m(Lcom/join/mgps/dto/HandShankAdBean;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankYesActivity;->l:Lcom/join/mgps/customview/HandShankAdView;

    invoke-virtual {v0}, Lcom/join/mgps/customview/HandShankAdView;->i()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankYesActivity;->l:Lcom/join/mgps/customview/HandShankAdView;

    invoke-virtual {v0}, Lcom/join/mgps/customview/HandShankAdView;->i()V

    :goto_0
    return-void
.end method

.method public a1()V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/HandShankYesActivity;->X0()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankYesActivity;->l:Lcom/join/mgps/customview/HandShankAdView;

    invoke-virtual {v0}, Lcom/join/mgps/customview/HandShankAdView;->l()V

    :goto_0
    return-void
.end method

.method afterView()V
    .locals 7
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/c;->P1()Lcom/join/mgps/rpc/impl/c;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/HandShankYesActivity;->m:Lcom/join/mgps/rpc/d;

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/HandShankYesActivity;->a1()V

    .line 3
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v1

    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->isTourist()Z

    move-result v3

    const-string v4, ""

    const-string v5, ""

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/papa/sim/statistic/p;->a0(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)V

    .line 4
    invoke-direct {p0}, Lcom/join/mgps/activity/HandShankYesActivity;->initView()V

    return-void
.end method

.method c1()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    const/4 v1, 0x4

    .line 2
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    const-string v1, "http://h5.5fun.com/wf_shoubing.html"

    .line 3
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    return-void
.end method

.method protected declared-synchronized e1(Ljava/lang/Boolean;)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/HandShankYesActivity;->d1()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/join/mgps/activity/HandShankYesActivity;->b1()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method f1()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.BLUETOOTH_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method g1(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/HandShankTable;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Ln1/x;->p()Ln1/x;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/db/tables/HandShankTable;

    .line 3
    invoke-static {}, Lcom/join/mgps/joystick/map/a;->b()Lcom/join/mgps/joystick/map/a;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/db/tables/HandShankTable;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/join/mgps/joystick/map/a;->f(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    invoke-static {}, Ln1/x;->p()Ln1/x;

    move-result-object v2

    invoke-virtual {v2, v1}, Ln1/x;->n(Lcom/join/mgps/db/tables/HandShankTable;)V

    goto :goto_0

    .line 5
    :cond_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method h1(Lcom/join/mgps/db/tables/HandShankTable;)V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {}, Ln1/x;->p()Ln1/x;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/HandShankTable;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln1/x;->q(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Lcom/papa/sim/statistic/JoyStickConfig;

    invoke-direct {v0}, Lcom/papa/sim/statistic/JoyStickConfig;-><init>()V

    .line 4
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/JoyStickConfig;->setUid(I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/JoyStickConfig;->setUid(I)V

    .line 7
    :goto_0
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/HandShankTable;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/JoyStickConfig;->setGamepad_name(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/HandShankTable;->getAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, ":"

    const-string v3, "_"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/JoyStickConfig;->setGamepad_mac(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/HandShankTable;->getTime()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/JoyStickConfig;->setUpdate_time(J)V

    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/HandShankBaseActivity;->P0(Z)V

    .line 2
    invoke-super {p0}, Lcom/join/mgps/activity/HandShankBaseActivity;->onResume()V

    return-void
.end method
