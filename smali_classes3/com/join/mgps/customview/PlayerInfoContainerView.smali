.class public Lcom/join/mgps/customview/PlayerInfoContainerView;
.super Landroid/widget/LinearLayout;
.source "PlayerInfoContainerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/PlayerInfoContainerView$a;,
        Lcom/join/mgps/customview/PlayerInfoContainerView$b;
    }
.end annotation


# instance fields
.field private a:[Lcom/join/mgps/customview/PlayerInfoContainerView$b;

.field b:Landroid/app/Activity;

.field c:I

.field d:Lapp/mgsim/arena/UserType;

.field private e:Lcom/join/mgps/customview/PlayerInfoContainerView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x4

    new-array v1, v0, [Lcom/join/mgps/customview/PlayerInfoContainerView$b;

    .line 2
    iput-object v1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView;->a:[Lcom/join/mgps/customview/PlayerInfoContainerView$b;

    .line 3
    iput v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView;->c:I

    .line 4
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/PlayerInfoContainerView;->b(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x4

    new-array v0, p2, [Lcom/join/mgps/customview/PlayerInfoContainerView$b;

    .line 6
    iput-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView;->a:[Lcom/join/mgps/customview/PlayerInfoContainerView$b;

    .line 7
    iput p2, p0, Lcom/join/mgps/customview/PlayerInfoContainerView;->c:I

    .line 8
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/PlayerInfoContainerView;->b(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/customview/PlayerInfoContainerView;)Lcom/join/mgps/customview/PlayerInfoContainerView$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView;->e:Lcom/join/mgps/customview/PlayerInfoContainerView$a;

    return-object p0
.end method

.method private b(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2
    iget-object v1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView;->a:[Lcom/join/mgps/customview/PlayerInfoContainerView$b;

    new-instance v2, Lcom/join/mgps/customview/PlayerInfoContainerView$b;

    const/4 v3, 0x1

    invoke-direct {v2, p0, p1, p0, v3}, Lcom/join/mgps/customview/PlayerInfoContainerView$b;-><init>(Lcom/join/mgps/customview/PlayerInfoContainerView;Landroid/content/Context;Landroid/view/ViewGroup;I)V

    aput-object v2, v1, v0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView;->a:[Lcom/join/mgps/customview/PlayerInfoContainerView$b;

    new-instance v1, Lcom/join/mgps/customview/PlayerInfoContainerView$b;

    const/4 v2, 0x2

    invoke-direct {v1, p0, p1, p0, v2}, Lcom/join/mgps/customview/PlayerInfoContainerView$b;-><init>(Lcom/join/mgps/customview/PlayerInfoContainerView;Landroid/content/Context;Landroid/view/ViewGroup;I)V

    aput-object v1, v0, v3

    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView;->a:[Lcom/join/mgps/customview/PlayerInfoContainerView$b;

    new-instance v1, Lcom/join/mgps/customview/PlayerInfoContainerView$b;

    const/4 v3, 0x3

    invoke-direct {v1, p0, p1, p0, v3}, Lcom/join/mgps/customview/PlayerInfoContainerView$b;-><init>(Lcom/join/mgps/customview/PlayerInfoContainerView;Landroid/content/Context;Landroid/view/ViewGroup;I)V

    aput-object v1, v0, v2

    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView;->a:[Lcom/join/mgps/customview/PlayerInfoContainerView$b;

    new-instance v1, Lcom/join/mgps/customview/PlayerInfoContainerView$b;

    const/4 v2, 0x4

    invoke-direct {v1, p0, p1, p0, v2}, Lcom/join/mgps/customview/PlayerInfoContainerView$b;-><init>(Lcom/join/mgps/customview/PlayerInfoContainerView;Landroid/content/Context;Landroid/view/ViewGroup;I)V

    aput-object v1, v0, v3

    return-void
.end method


# virtual methods
.method public c(Lcom/papa91/battle/protocol/GameRoom;ILandroid/app/Activity;)V
    .locals 8

    .line 1
    iput-object p3, p0, Lcom/join/mgps/customview/PlayerInfoContainerView;->b:Landroid/app/Activity;

    .line 2
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getSeatsNumber()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView;->c:I

    .line 3
    invoke-static {p3}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/join/mgps/socket/fight/arena/c;->f(Lcom/papa91/battle/protocol/GameRoom;Lcom/join/mgps/Util/b;)Lapp/mgsim/arena/UserType;

    move-result-object p3

    iput-object p3, p0, Lcom/join/mgps/customview/PlayerInfoContainerView;->d:Lapp/mgsim/arena/UserType;

    .line 4
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getLeader()I

    move-result p3

    .line 5
    iget v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView;->c:I

    const/16 v1, 0x8

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v0, v4, :cond_15

    if-eq v0, v3, :cond_10

    if-eq v0, v2, :cond_9

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto/16 :goto_14

    .line 6
    :cond_0
    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 7
    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 8
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 9
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView;->a:[Lcom/join/mgps/customview/PlayerInfoContainerView$b;

    aget-object v0, v0, v5

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getP1()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v1

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getP1()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v6

    invoke-virtual {v6}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    move-result v6

    if-ne v6, p3, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getP1()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v7

    invoke-virtual {v7}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    move-result v7

    if-ne v7, p2, :cond_2

    const/4 v7, 0x1

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    :goto_1
    invoke-virtual {v0, v1, v6, v7}, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->f(Lcom/papa91/battle/protocol/RoomPosition;ZZ)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView;->a:[Lcom/join/mgps/customview/PlayerInfoContainerView$b;

    aget-object v0, v0, v4

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getP2()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v1

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getP2()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v6

    invoke-virtual {v6}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    move-result v6

    if-ne v6, p3, :cond_3

    const/4 v6, 0x1

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    :goto_2
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getP2()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v7

    invoke-virtual {v7}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    move-result v7

    if-ne v7, p2, :cond_4

    const/4 v7, 0x1

    goto :goto_3

    :cond_4
    const/4 v7, 0x0

    :goto_3
    invoke-virtual {v0, v1, v6, v7}, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->f(Lcom/papa91/battle/protocol/RoomPosition;ZZ)V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView;->a:[Lcom/join/mgps/customview/PlayerInfoContainerView$b;

    aget-object v0, v0, v3

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getP3()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v1

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getP3()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v3

    invoke-virtual {v3}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    move-result v3

    if-ne v3, p3, :cond_5

    const/4 v3, 0x1

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    :goto_4
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getP3()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v6

    invoke-virtual {v6}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    move-result v6

    if-ne v6, p2, :cond_6

    const/4 v6, 0x1

    goto :goto_5

    :cond_6
    const/4 v6, 0x0

    :goto_5
    invoke-virtual {v0, v1, v3, v6}, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->f(Lcom/papa91/battle/protocol/RoomPosition;ZZ)V

    .line 13
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView;->a:[Lcom/join/mgps/customview/PlayerInfoContainerView$b;

    aget-object v0, v0, v2

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getP4()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v1

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getP4()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v2

    invoke-virtual {v2}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    move-result v2

    if-ne v2, p3, :cond_7

    const/4 p3, 0x1

    goto :goto_6

    :cond_7
    const/4 p3, 0x0

    :goto_6
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getP4()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object p1

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    move-result p1

    if-ne p1, p2, :cond_8

    goto :goto_7

    :cond_8
    const/4 v4, 0x0

    :goto_7
    invoke-virtual {v0, v1, p3, v4}, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->f(Lcom/papa91/battle/protocol/RoomPosition;ZZ)V

    goto/16 :goto_14

    .line 14
    :cond_9
    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 15
    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 16
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 17
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView;->a:[Lcom/join/mgps/customview/PlayerInfoContainerView$b;

    aget-object v0, v0, v5

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getP1()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v1

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getP1()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v2

    invoke-virtual {v2}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    move-result v2

    if-ne v2, p3, :cond_a

    const/4 v2, 0x1

    goto :goto_8

    :cond_a
    const/4 v2, 0x0

    :goto_8
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getP1()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v6

    invoke-virtual {v6}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    move-result v6

    if-ne v6, p2, :cond_b

    const/4 v6, 0x1

    goto :goto_9

    :cond_b
    const/4 v6, 0x0

    :goto_9
    invoke-virtual {v0, v1, v2, v6}, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->f(Lcom/papa91/battle/protocol/RoomPosition;ZZ)V

    .line 19
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView;->a:[Lcom/join/mgps/customview/PlayerInfoContainerView$b;

    aget-object v0, v0, v4

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getP2()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v1

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getP2()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v2

    invoke-virtual {v2}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    move-result v2

    if-ne v2, p3, :cond_c

    const/4 v2, 0x1

    goto :goto_a

    :cond_c
    const/4 v2, 0x0

    :goto_a
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getP2()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v6

    invoke-virtual {v6}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    move-result v6

    if-ne v6, p2, :cond_d

    const/4 v6, 0x1

    goto :goto_b

    :cond_d
    const/4 v6, 0x0

    :goto_b
    invoke-virtual {v0, v1, v2, v6}, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->f(Lcom/papa91/battle/protocol/RoomPosition;ZZ)V

    .line 20
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView;->a:[Lcom/join/mgps/customview/PlayerInfoContainerView$b;

    aget-object v0, v0, v3

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getP3()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v1

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getP3()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v2

    invoke-virtual {v2}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    move-result v2

    if-ne v2, p3, :cond_e

    const/4 p3, 0x1

    goto :goto_c

    :cond_e
    const/4 p3, 0x0

    :goto_c
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getP3()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object p1

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    move-result p1

    if-ne p1, p2, :cond_f

    goto :goto_d

    :cond_f
    const/4 v4, 0x0

    :goto_d
    invoke-virtual {v0, v1, p3, v4}, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->f(Lcom/papa91/battle/protocol/RoomPosition;ZZ)V

    goto/16 :goto_14

    .line 21
    :cond_10
    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 22
    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 23
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 24
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 25
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView;->a:[Lcom/join/mgps/customview/PlayerInfoContainerView$b;

    aget-object v0, v0, v5

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getP1()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v1

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getP1()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v2

    invoke-virtual {v2}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    move-result v2

    if-ne v2, p3, :cond_11

    const/4 v2, 0x1

    goto :goto_e

    :cond_11
    const/4 v2, 0x0

    :goto_e
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getP1()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v3

    invoke-virtual {v3}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    move-result v3

    if-ne v3, p2, :cond_12

    const/4 v3, 0x1

    goto :goto_f

    :cond_12
    const/4 v3, 0x0

    :goto_f
    invoke-virtual {v0, v1, v2, v3}, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->f(Lcom/papa91/battle/protocol/RoomPosition;ZZ)V

    .line 26
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView;->a:[Lcom/join/mgps/customview/PlayerInfoContainerView$b;

    aget-object v0, v0, v4

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getP2()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v1

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getP2()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v2

    invoke-virtual {v2}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    move-result v2

    if-ne v2, p3, :cond_13

    const/4 p3, 0x1

    goto :goto_10

    :cond_13
    const/4 p3, 0x0

    :goto_10
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getP2()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object p1

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    move-result p1

    if-ne p1, p2, :cond_14

    goto :goto_11

    :cond_14
    const/4 v4, 0x0

    :goto_11
    invoke-virtual {v0, v1, p3, v4}, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->f(Lcom/papa91/battle/protocol/RoomPosition;ZZ)V

    goto :goto_14

    .line 27
    :cond_15
    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 28
    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 29
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 30
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 31
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView;->a:[Lcom/join/mgps/customview/PlayerInfoContainerView$b;

    aget-object v0, v0, v5

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getP1()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v1

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getP1()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v2

    invoke-virtual {v2}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    move-result v2

    if-ne v2, p3, :cond_16

    const/4 p3, 0x1

    goto :goto_12

    :cond_16
    const/4 p3, 0x0

    :goto_12
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getP1()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object p1

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    move-result p1

    if-ne p1, p2, :cond_17

    goto :goto_13

    :cond_17
    const/4 v4, 0x0

    :goto_13
    invoke-virtual {v0, v1, p3, v4}, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->f(Lcom/papa91/battle/protocol/RoomPosition;ZZ)V

    :goto_14
    return-void
.end method

.method public setPlayerInfoCallback(Lcom/join/mgps/customview/PlayerInfoContainerView$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView;->e:Lcom/join/mgps/customview/PlayerInfoContainerView$a;

    return-void
.end method
