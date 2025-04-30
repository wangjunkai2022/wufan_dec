.class public Lcom/join/mgps/activity/arena/GameRoomListActivity;
.super Lcom/join/mgps/activity/FriendActivity;
.source "GameRoomListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/arena/GameRoomListActivity$z;,
        Lcom/join/mgps/activity/arena/GameRoomListActivity$w;,
        Lcom/join/mgps/activity/arena/GameRoomListActivity$y;,
        Lcom/join/mgps/activity/arena/GameRoomListActivity$x;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c0042
.end annotation


# static fields
.field private static final c2:Ljava/lang/String; = "GameRoomListActivity"

.field private static final d2:I = 0x1

.field private static final e2:I = 0x2

.field private static final f2:I = 0x3

.field private static g2:Z = false

.field private static final h2:I

.field private static final i2:I

.field private static final j2:I = 0x1

.field private static final k2:I = 0x3e8


# instance fields
.field A0:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private A1:Ljava/lang/String;

.field B0:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private B1:Ljava/lang/String;

.field C0:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private C1:Landroid/os/Handler;

.field D0:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private final D1:Lcom/join/mgps/fragment/roomlist/c$n;

.field E0:Landroid/widget/ProgressBar;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private E1:Lcom/join/mgps/dialog/x0;

.field F0:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field F1:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field G0:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field G1:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field H0:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field H1:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field I0:Z
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field I1:J

.field J0:Lcom/join/mgps/customview/AlwaysMarqueeTextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field J1:Lcom/join/mgps/Util/b;
    .annotation build Lorg/androidannotations/annotations/Bean;
    .end annotation
.end field

.field K0:Landroidx/viewpager/widget/ViewPager;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field K1:Lcom/join/mgps/rpc/d;

.field L0:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field private L1:Landroid/os/CountDownTimer;

.field M0:Lcom/join/mgps/dto/GameConfig;

.field private M1:Lcom/join/mgps/dto/BattleChallengeConfig;

.field private N0:Lcom/join/mgps/fragment/roomlist/d;

.field N1:Lcom/join/mgps/rpc/k;

.field private O0:Lcom/join/mgps/fragment/roomlist/d;

.field O1:Lcom/join/mgps/Util/p2$a;

.field private P0:Lcom/join/mgps/fragment/roomlist/b;

.field private P1:I

.field private Q0:Lcom/join/mgps/socket/fight/arena/b;

.field Q1:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private R0:Lcom/papa91/battle/protocol/BattleArea;

.field R1:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private final S0:Lcom/join/mgps/socket/fight/arena/b$b;

.field S1:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private volatile T0:Z

.field T1:Landroid/content/Context;

.field private volatile U0:Z

.field U1:Lcom/join/mgps/activity/arena/GameRoomListActivity$z;

.field V0:I

.field V1:Lcom/join/mgps/adapter/t1;

.field private final W0:Lapp/mgsim/arena/SocketListener$NotifyObserver;

.field W1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private volatile X0:Z

.field X1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private volatile Y0:Z

.field private Y1:I

.field private final Z0:Ljava/lang/Object;

.field Z1:Lcom/join/mgps/dto/FriendBean;

.field a1:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field a2:Landroid/app/Dialog;

.field b1:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field b2:Landroid/os/Handler;

.field c1:I

.field d1:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field e1:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/papa91/battle/protocol/SimpleRoom;",
            ">;"
        }
    .end annotation
.end field

.field private f1:Z

.field private g1:Z

.field private h1:Lcom/join/mgps/socket/fight/arena/a;

.field private i1:Landroidx/fragment/app/FragmentManager;

.field j1:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field k1:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private l1:Lcom/join/mgps/customview/g0;

.field m1:Z

.field private n1:Lcom/papa91/battle/protocol/BattleArea;

.field o0:Lcom/join/mgps/dto/GameInfoBean;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private final o1:Lcom/join/mgps/customview/g0$e;

.field p0:Z
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private p1:Lcom/join/mgps/dto/ArenaGameRoomListConfig;

.field q0:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field q1:Z

.field r0:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field r1:Lcom/join/mgps/activity/arena/GameRoomListActivity$x;

.field s0:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field s1:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field t0:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field t1:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field u0:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field u1:Z

.field v0:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private v1:Landroid/app/Dialog;

.field w0:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private w1:Landroid/widget/TextView;

.field x0:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private x1:Landroid/view/animation/Animation;

.field y0:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private y1:I

.field z0:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private z1:Lcom/papa91/battle/protocol/GameRoom;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "#ffffff"

    .line 1
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/join/mgps/activity/arena/GameRoomListActivity;->h2:I

    .line 2
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->i2:I

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/FriendActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->N0:Lcom/join/mgps/fragment/roomlist/d;

    .line 3
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->O0:Lcom/join/mgps/fragment/roomlist/d;

    .line 4
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->P0:Lcom/join/mgps/fragment/roomlist/b;

    .line 5
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomListActivity$k;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity$k;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity;)V

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->S0:Lcom/join/mgps/socket/fight/arena/b$b;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->T0:Z

    .line 7
    iput-boolean v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->U0:Z

    .line 8
    new-instance v1, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity;)V

    iput-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->W0:Lapp/mgsim/arena/SocketListener$NotifyObserver;

    .line 9
    iput-boolean v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->X0:Z

    .line 10
    iput-boolean v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->Y0:Z

    .line 11
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->Z0:Ljava/lang/Object;

    .line 12
    iput v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->c1:I

    .line 13
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->d1:Ljava/util/HashMap;

    .line 14
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->e1:Ljava/util/LinkedHashMap;

    .line 15
    iput-boolean v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->f1:Z

    .line 16
    iput-boolean v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->g1:Z

    .line 17
    iput-boolean v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->m1:Z

    .line 18
    new-instance v1, Lcom/join/mgps/activity/arena/GameRoomListActivity$v;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity$v;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity;)V

    iput-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->o1:Lcom/join/mgps/customview/g0$e;

    const/4 v1, 0x1

    .line 19
    iput-boolean v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->q1:Z

    .line 20
    iput-boolean v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->u1:Z

    const/4 v0, 0x3

    .line 21
    iput v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->y1:I

    .line 22
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomListActivity$d;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity$d;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity;)V

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->C1:Landroid/os/Handler;

    .line 23
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomListActivity$e;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity$e;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity;)V

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->D1:Lcom/join/mgps/fragment/roomlist/c$n;

    const-wide/16 v0, 0x0

    .line 24
    iput-wide v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->I1:J

    .line 25
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomListActivity$f;

    const-wide/16 v4, 0x2710

    const-wide/16 v6, 0x3e8

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/join/mgps/activity/arena/GameRoomListActivity$f;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity;JJ)V

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->L1:Landroid/os/CountDownTimer;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->X1:Ljava/util/List;

    const/16 v0, -0x400

    .line 27
    iput v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->Y1:I

    .line 28
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/join/mgps/activity/arena/GameRoomListActivity$m;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity$m;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->b2:Landroid/os/Handler;

    return-void
.end method

.method static synthetic A1(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/join/mgps/socket/fight/arena/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->Q0:Lcom/join/mgps/socket/fight/arena/b;

    return-object p0
.end method

.method private A3(Lapp/mgsim/arena/ArenaResponse;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->Z0:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p1, Lapp/mgsim/arena/ArenaResponse;->request:Lapp/mgsim/arena/ArenaRequest;

    iget v1, v1, Lapp/mgsim/arena/ArenaRequest;->roomType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 3
    iget-boolean v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->g1:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->O0:Lcom/join/mgps/fragment/roomlist/d;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->U0:Z

    if-eqz v1, :cond_2

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->O0:Lcom/join/mgps/fragment/roomlist/d;

    iget-object p1, p1, Lapp/mgsim/arena/ArenaResponse;->request:Lapp/mgsim/arena/ArenaRequest;

    iget p1, p1, Lapp/mgsim/arena/ArenaRequest;->roomId:I

    invoke-virtual {v1, p1}, Lcom/join/mgps/fragment/roomlist/c;->J0(I)V

    goto :goto_0

    .line 5
    :cond_1
    iget-boolean v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->f1:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->N0:Lcom/join/mgps/fragment/roomlist/d;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->T0:Z

    if-eqz v1, :cond_2

    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->N0:Lcom/join/mgps/fragment/roomlist/d;

    iget-object p1, p1, Lapp/mgsim/arena/ArenaResponse;->request:Lapp/mgsim/arena/ArenaRequest;

    iget p1, p1, Lapp/mgsim/arena/ArenaRequest;->roomId:I

    invoke-virtual {v1, p1}, Lcom/join/mgps/fragment/roomlist/c;->J0(I)V

    .line 7
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic B1(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/join/mgps/fragment/roomlist/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->O0:Lcom/join/mgps/fragment/roomlist/d;

    return-object p0
.end method

.method private B3(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->E1:Lcom/join/mgps/dialog/x0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->E1:Lcom/join/mgps/dialog/x0;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/Util/a0;->c0(Landroid/content/Context;)Lcom/join/mgps/Util/a0;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lcom/join/mgps/Util/z;->z(Landroid/content/Context;Ljava/lang/String;Z)Lcom/join/mgps/dialog/x0;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->E1:Lcom/join/mgps/dialog/x0;

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dialog/x0;->b()V

    return-void
.end method

.method static synthetic C1(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/join/mgps/dto/BattleChallengeConfig;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->M1:Lcom/join/mgps/dto/BattleChallengeConfig;

    return-object p0
.end method

.method static synthetic D1(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/join/mgps/fragment/roomlist/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->N0:Lcom/join/mgps/fragment/roomlist/d;

    return-object p0
.end method

.method static synthetic E1(Lcom/join/mgps/activity/arena/GameRoomListActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->o3()V

    return-void
.end method

.method static synthetic F1(Lcom/join/mgps/activity/arena/GameRoomListActivity;Lcom/join/mgps/dto/ArenaGameRoomListConfig;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->K2(Lcom/join/mgps/dto/ArenaGameRoomListConfig;)I

    move-result p0

    return p0
.end method

.method static synthetic G1(Lcom/join/mgps/activity/arena/GameRoomListActivity;Lapp/mgsim/arena/ArenaResponse;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->A3(Lapp/mgsim/arena/ArenaResponse;)V

    return-void
.end method

.method private G3()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->x1:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->w1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->x1:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method static synthetic H1(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/join/mgps/dto/ArenaGameRoomListConfig;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->p1:Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    return-object p0
.end method

.method static synthetic I1(Lcom/join/mgps/activity/arena/GameRoomListActivity;Lcom/papa91/battle/protocol/BattleArea;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->p3(Lcom/papa91/battle/protocol/BattleArea;)V

    return-void
.end method

.method static synthetic J1()I
    .locals 1

    .line 1
    sget v0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->i2:I

    return v0
.end method

.method static synthetic K1()I
    .locals 1

    .line 1
    sget v0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->h2:I

    return v0
.end method

.method private K2(Lcom/join/mgps/dto/ArenaGameRoomListConfig;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->getCurrent_collection_cfg()Lcom/join/mgps/dto/GameConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameConfig;->getElite_match_switch()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2
    :goto_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->getCurrent_collection_cfg()Lcom/join/mgps/dto/GameConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameConfig;->getGeneral_match_switch()I

    move-result p1

    if-ne p1, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    return v0
.end method

.method static synthetic L1(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/papa91/battle/protocol/BattleArea;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->R0:Lcom/papa91/battle/protocol/BattleArea;

    return-object p0
.end method

.method static synthetic M1(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->f1:Z

    return p0
.end method

.method static synthetic N1(Lcom/join/mgps/activity/arena/GameRoomListActivity;Lcom/papa91/battle/protocol/BattleArea;)Lcom/papa91/battle/protocol/BattleArea;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->R0:Lcom/papa91/battle/protocol/BattleArea;

    return-object p1
.end method

.method static synthetic O1(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->g1:Z

    return p0
.end method

.method static synthetic P1(Lcom/join/mgps/activity/arena/GameRoomListActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->y1:I

    return p0
.end method

.method static synthetic Q1(Lcom/join/mgps/activity/arena/GameRoomListActivity;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->y1:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->y1:I

    return v0
.end method

.method static synthetic R1(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->B1:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic S1(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->w1:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic T1(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->C1:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic U1(Lcom/join/mgps/activity/arena/GameRoomListActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->G3()V

    return-void
.end method

.method private V0()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/k;->n0()Lcom/join/mgps/rpc/impl/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/rpc/impl/k;->m0()Lq1/j;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->T1:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lq1/j;->u(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/activity/arena/GameRoomListActivity$j;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity$j;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method static synthetic V1(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/join/mgps/dialog/x0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->E1:Lcom/join/mgps/dialog/x0;

    return-object p0
.end method

.method private V2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->S1:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method static synthetic W1(Lcom/join/mgps/activity/arena/GameRoomListActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->V2()V

    return-void
.end method

.method private W2()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->R1:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 2
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomListActivity$z;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity$z;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity;)V

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->U1:Lcom/join/mgps/activity/arena/GameRoomListActivity$z;

    .line 3
    new-instance v1, Lcom/join/mgps/activity/arena/GameRoomListActivity$g;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity$g;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/arena/GameRoomListActivity$z;->e(Lcom/join/mgps/activity/arena/GameRoomListActivity$w;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->R1:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->U1:Lcom/join/mgps/activity/arena/GameRoomListActivity$z;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5
    iput-object p0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->T1:Landroid/content/Context;

    .line 6
    invoke-static {p0}, Lcom/join/android/app/common/utils/j;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/j;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/android/app/common/utils/j;->j(Landroid/app/Activity;)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3ffe666666666666L    # 1.9

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 7
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->Q1:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v3, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->T1:Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 8
    new-instance v0, Lcom/join/mgps/adapter/t1;

    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->T1:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/t1;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->V1:Lcom/join/mgps/adapter/t1;

    .line 9
    new-instance v1, Lcom/join/mgps/activity/arena/GameRoomListActivity$h;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity$h;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/t1;->f(Lcom/join/mgps/adapter/t1$e;)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->V1:Lcom/join/mgps/adapter/t1;

    invoke-virtual {v0}, Lcom/join/mgps/adapter/t1;->b()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->W1:Ljava/util/List;

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->Q1:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->V1:Lcom/join/mgps/adapter/t1;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 12
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->V0()V

    .line 13
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->e3()V

    return-void
.end method

.method static synthetic X1(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->Z2()Z

    move-result p0

    return p0
.end method

.method private X2(Lcom/join/mgps/dto/ArenaGameRoomListConfig;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->getCurrent_collection_cfg()Lcom/join/mgps/dto/GameConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameConfig;->getElite_match_switch()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    .line 2
    iput-boolean v3, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->q1:Z

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->x0:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->x0:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    :goto_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->getCurrent_collection_cfg()Lcom/join/mgps/dto/GameConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameConfig;->getGeneral_match_switch()I

    move-result p1

    if-ne p1, v1, :cond_2

    .line 6
    iput-boolean v3, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->q1:Z

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->A0:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->A0:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9
    :goto_1
    iget-boolean p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->q1:Z

    if-eqz p1, :cond_3

    .line 10
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->j1:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method static synthetic Y1(Lcom/join/mgps/activity/arena/GameRoomListActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->Y1:I

    return p0
.end method

.method static synthetic Z1(Lcom/join/mgps/activity/arena/GameRoomListActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->Y1:I

    return p1
.end method

.method private Z2()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic a2(Lcom/join/mgps/activity/arena/GameRoomListActivity;Lcom/join/mgps/dto/ArenaPopupInfoBean;Ljava/util/List;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->t2(Lcom/join/mgps/dto/ArenaPopupInfoBean;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method static synthetic b2(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/papa91/battle/protocol/BattleArea;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->n1:Lcom/papa91/battle/protocol/BattleArea;

    return-object p0
.end method

.method static synthetic c2(Lcom/join/mgps/activity/arena/GameRoomListActivity;Lcom/papa91/battle/protocol/BattleArea;)Lcom/papa91/battle/protocol/BattleArea;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->n1:Lcom/papa91/battle/protocol/BattleArea;

    return-object p1
.end method

.method private synthetic c3(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/f1;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->K0:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->L2()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->K0:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method

.method static synthetic d2(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->A1:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e2(Lcom/join/mgps/activity/arena/GameRoomListActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->A1:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic f2(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/papa91/battle/protocol/GameRoom;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->z1:Lcom/papa91/battle/protocol/GameRoom;

    return-object p0
.end method

.method static synthetic g2(Lcom/join/mgps/activity/arena/GameRoomListActivity;Lcom/papa91/battle/protocol/GameRoom;)Lcom/papa91/battle/protocol/GameRoom;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->z1:Lcom/papa91/battle/protocol/GameRoom;

    return-object p1
.end method

.method static synthetic h2(Lcom/join/mgps/activity/arena/GameRoomListActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->T0:Z

    return p1
.end method

.method static synthetic i2(Lcom/join/mgps/activity/arena/GameRoomListActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->U0:Z

    return p1
.end method

.method static synthetic j2(Lcom/join/mgps/activity/arena/GameRoomListActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->p2()V

    return-void
.end method

.method private m3(Lapp/mgsim/arena/ArenaResponse;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->Z0:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p1, Lapp/mgsim/arena/ArenaResponse;->request:Lapp/mgsim/arena/ArenaRequest;

    iget v1, v1, Lapp/mgsim/arena/ArenaRequest;->roomType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 3
    iget-boolean v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->g1:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->O0:Lcom/join/mgps/fragment/roomlist/d;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->U0:Z

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->O0:Lcom/join/mgps/fragment/roomlist/d;

    iget-object p1, p1, Lapp/mgsim/arena/ArenaResponse;->request:Lapp/mgsim/arena/ArenaRequest;

    iget p1, p1, Lapp/mgsim/arena/ArenaRequest;->roomId:I

    invoke-virtual {v1, p1}, Lcom/join/mgps/fragment/roomlist/d;->C0(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-boolean v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->f1:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->N0:Lcom/join/mgps/fragment/roomlist/d;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->T0:Z

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->N0:Lcom/join/mgps/fragment/roomlist/d;

    iget-object p1, p1, Lapp/mgsim/arena/ArenaResponse;->request:Lapp/mgsim/arena/ArenaRequest;

    iget p1, p1, Lapp/mgsim/arena/ArenaRequest;->roomId:I

    invoke-virtual {v1, p1}, Lcom/join/mgps/fragment/roomlist/d;->C0(I)V

    .line 7
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private o3()V
    .locals 4

    const-string v0, "---retryLogin---"

    .line 1
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->h3(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->C3()V

    const-string v0, "register_type_GameRoomListActivity"

    .line 3
    invoke-static {v0}, Lapp/mgsim/arena/ArenaRequestFactory;->login(Ljava/lang/String;)Lapp/mgsim/arena/ArenaRequest;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->K0:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->p1:Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->getCurrent_collection_cfg()Lcom/join/mgps/dto/GameConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameConfig;->getElite_match_switch()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 5
    iput-boolean v3, v0, Lapp/mgsim/arena/ArenaRequest;->isElite:Z

    .line 6
    iput-boolean v2, v0, Lapp/mgsim/arena/ArenaRequest;->isRefreshing:Z

    const/4 v1, 0x2

    .line 7
    iput v1, v0, Lapp/mgsim/arena/ArenaRequest;->roomType:I

    goto :goto_0

    .line 8
    :cond_0
    iput-boolean v2, v0, Lapp/mgsim/arena/ArenaRequest;->isElite:Z

    .line 9
    iput-boolean v2, v0, Lapp/mgsim/arena/ArenaRequest;->isRefreshing:Z

    .line 10
    iput v3, v0, Lapp/mgsim/arena/ArenaRequest;->roomType:I

    .line 11
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->Q0:Lcom/join/mgps/socket/fight/arena/b;

    invoke-virtual {v1, v0}, Lcom/join/mgps/socket/fight/arena/b;->f(Lapp/mgsim/arena/ArenaRequest;)V

    return-void
.end method

.method private p2()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->L1:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    return-void
.end method

.method private p3(Lcom/papa91/battle/protocol/BattleArea;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "register_type_GameRoomListActivity"

    .line 1
    invoke-static {v0, p1}, Lapp/mgsim/arena/ArenaRequestFactory;->changeBattleArea(Ljava/lang/String;Lcom/papa91/battle/protocol/BattleArea;)Lapp/mgsim/arena/ArenaRequest;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->Q0:Lcom/join/mgps/socket/fight/arena/b;

    invoke-virtual {v0, p1}, Lcom/join/mgps/socket/fight/arena/b;->f(Lapp/mgsim/arena/ArenaRequest;)V

    return-void
.end method

.method private s2(Landroid/widget/PopupWindow;Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    return v0

    .line 2
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->v2(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method private t2(Lcom/join/mgps/dto/ArenaPopupInfoBean;Ljava/util/List;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/ArenaPopupInfoBean;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ArenaPopupInfoShareBean;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArenaPopupInfoBean;->getJump_info()Lcom/join/mgps/dto/BannerBean;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v1, "arenadialog"

    const/4 v2, 0x1

    if-eqz p2, :cond_4

    .line 2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/dto/ArenaPopupInfoShareBean;

    .line 3
    invoke-virtual {v5}, Lcom/join/mgps/dto/ArenaPopupInfoShareBean;->getId()I

    move-result v6

    invoke-virtual {p1}, Lcom/join/mgps/dto/ArenaPopupInfoBean;->getId()I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArenaPopupInfoBean;->getDaily_count()I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/join/mgps/dto/ArenaPopupInfoShareBean;->setDaily_count(I)V

    .line 5
    invoke-virtual {v5}, Lcom/join/mgps/dto/ArenaPopupInfoShareBean;->getLastShowTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/join/mgps/Util/x;->t(J)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 6
    invoke-virtual {v5}, Lcom/join/mgps/dto/ArenaPopupInfoShareBean;->getHasShowCount()I

    move-result v4

    invoke-virtual {v5}, Lcom/join/mgps/dto/ArenaPopupInfoShareBean;->getDaily_count()I

    move-result v6

    if-ge v4, v6, :cond_1

    .line 7
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->v3(Lcom/join/mgps/dto/ArenaPopupInfoBean;)V

    .line 8
    invoke-virtual {v5}, Lcom/join/mgps/dto/ArenaPopupInfoShareBean;->getHasShowCount()I

    move-result p1

    add-int/2addr p1, v2

    invoke-virtual {v5, p1}, Lcom/join/mgps/dto/ArenaPopupInfoShareBean;->setHasShowCount(I)V

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v5, v0, v1}, Lcom/join/mgps/dto/ArenaPopupInfoShareBean;->setLastShowTime(J)V

    .line 10
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->L0:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->arenaDialogAdData()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object p1

    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    return v2

    :cond_1
    const/4 v4, 0x1

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {v5, v2}, Lcom/join/mgps/dto/ArenaPopupInfoShareBean;->setHasShowCount(I)V

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v5, v3, v4}, Lcom/join/mgps/dto/ArenaPopupInfoShareBean;->setLastShowTime(J)V

    .line 13
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->v3(Lcom/join/mgps/dto/ArenaPopupInfoBean;)V

    .line 14
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->L0:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->arenaDialogAdData()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object p1

    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    const-string p1, "22222222222222"

    .line 15
    invoke-static {v1, p1}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_3
    if-nez v4, :cond_5

    .line 16
    new-instance v0, Lcom/join/mgps/dto/ArenaPopupInfoShareBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/ArenaPopupInfoShareBean;-><init>()V

    .line 17
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArenaPopupInfoBean;->getId()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/join/mgps/dto/ArenaPopupInfoShareBean;->setId(I)V

    .line 18
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArenaPopupInfoBean;->getDaily_count()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/join/mgps/dto/ArenaPopupInfoShareBean;->setDaily_count(I)V

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/join/mgps/dto/ArenaPopupInfoShareBean;->setLastShowTime(J)V

    .line 20
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/ArenaPopupInfoShareBean;->setHasShowCount(I)V

    .line 21
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->L0:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->arenaDialogAdData()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 23
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->v3(Lcom/join/mgps/dto/ArenaPopupInfoBean;)V

    const-string p1, "3333333333"

    .line 24
    invoke-static {v1, p1}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 25
    :cond_4
    new-instance p2, Lcom/join/mgps/dto/ArenaPopupInfoShareBean;

    invoke-direct {p2}, Lcom/join/mgps/dto/ArenaPopupInfoShareBean;-><init>()V

    .line 26
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArenaPopupInfoBean;->getId()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/join/mgps/dto/ArenaPopupInfoShareBean;->setId(I)V

    .line 27
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArenaPopupInfoBean;->getDaily_count()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/join/mgps/dto/ArenaPopupInfoShareBean;->setDaily_count(I)V

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p2, v3, v4}, Lcom/join/mgps/dto/ArenaPopupInfoShareBean;->setLastShowTime(J)V

    .line 29
    invoke-virtual {p2, v2}, Lcom/join/mgps/dto/ArenaPopupInfoShareBean;->setHasShowCount(I)V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    iget-object p2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->L0:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {p2}, Lcom/join/mgps/pref/PrefDef_;->arenaDialogAdData()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object p2

    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 33
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->v3(Lcom/join/mgps/dto/ArenaPopupInfoBean;)V

    const-string p1, "4444444444"

    .line 34
    invoke-static {v1, p1}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_5
    return v0
.end method

.method private v2(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 1
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    .line 3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    float-to-int p2, p2

    .line 4
    aget v3, v1, v0

    const/4 v4, 0x1

    if-ge v3, v2, :cond_1

    aget v3, v1, v4

    if-ge v3, p2, :cond_1

    aget v3, v1, v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v3, v5

    if-ge v2, v3, :cond_1

    aget v1, v1, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v1, p1

    if-ge p2, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private v3(Lcom/join/mgps/dto/ArenaPopupInfoBean;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->a2:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->a2:Landroid/app/Dialog;

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/Util/a0;->c0(Landroid/content/Context;)Lcom/join/mgps/Util/a0;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArenaPopupInfoBean;->getJump_info()Lcom/join/mgps/dto/BannerBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/BannerBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArenaPopupInfoBean;->getJump_info()Lcom/join/mgps/dto/BannerBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/BannerBean;->getPic_remote()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/join/mgps/activity/arena/GameRoomListActivity$n;

    invoke-direct {v3, p0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity$n;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity;Lcom/join/mgps/dto/ArenaPopupInfoBean;)V

    .line 7
    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/join/mgps/Util/z;->P(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dialog/h0$c;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->a2:Landroid/app/Dialog;

    .line 8
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->a2:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->b2:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/join/mgps/dto/ArenaPopupInfoBean;->getShow_time()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static synthetic y1(Lcom/join/mgps/activity/arena/GameRoomListActivity;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->c3(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method private y3()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->r2()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->z1:Lcom/papa91/battle/protocol/GameRoom;

    .line 3
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->B1:Ljava/lang/String;

    const-string v1, ""

    .line 4
    iput-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->A1:Ljava/lang/String;

    const/4 v2, 0x3

    .line 5
    iput v2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->y1:I

    const v2, 0x7f010027

    .line 6
    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->x1:Landroid/view/animation/Animation;

    .line 7
    new-instance v2, Landroid/app/Dialog;

    const v3, 0x7f1204e3

    invoke-direct {v2, p0, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->v1:Landroid/app/Dialog;

    .line 8
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0c0162

    invoke-virtual {v2, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0910e6

    .line 9
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->w1:Landroid/widget/TextView;

    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->y1:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->v1:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->v1:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/high16 v2, 0x43020000    # 130.0f

    .line 14
    invoke-static {p0, v2}, Lcom/join/mgps/Util/b0;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    const v2, 0x43888000    # 273.0f

    .line 15
    invoke-static {p0, v2}, Lcom/join/mgps/Util/b0;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v1, 0x11

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->v1:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->w1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->x1:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->C1:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method static synthetic z1(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lapp/mgsim/arena/SocketListener$NotifyObserver;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->W0:Lapp/mgsim/arena/SocketListener$NotifyObserver;

    return-object p0
.end method


# virtual methods
.method public A2(J)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->r2()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->p1:Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->T0:Z

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->v1:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->v1:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 5
    :cond_2
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->y3()V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->p1:Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->getCurrent_collection_cfg()Lcom/join/mgps/dto/GameConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameConfig;->getCollection_id()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "register_type_GameRoomListActivity"

    invoke-static {v1, p1, p2, v0}, Lapp/mgsim/arena/ArenaRequestFactory;->fastJoinRoom(Ljava/lang/String;JI)Lapp/mgsim/arena/ArenaRequest;

    move-result-object p1

    .line 7
    iget-object p2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->Q0:Lcom/join/mgps/socket/fight/arena/b;

    invoke-virtual {p2, p1}, Lcom/join/mgps/socket/fight/arena/b;->f(Lapp/mgsim/arena/ArenaRequest;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public B2()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->T1:Landroid/content/Context;

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->JoinLobbyroom:Lcom/papa/sim/statistic/Event;

    new-instance v2, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    iget-object v3, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->T1:Landroid/content/Context;

    invoke-static {v3}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->z1:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v4}, Lcom/papa91/battle/protocol/GameRoom;->getGameId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 2
    invoke-static {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity_;->u3(Landroid/content/Context;)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;->g(Z)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->A1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;->h(Ljava/lang/String;)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->z1:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v1}, Lcom/papa91/battle/protocol/GameRoom;->getGameName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;->d(Ljava/lang/String;)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->z1:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;->i(Lcom/papa91/battle/protocol/GameRoom;)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method

.method C2()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->p2()V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->T2()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->h1:Lcom/join/mgps/socket/fight/arena/a;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/a;->w()V

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->z2()V

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method C3()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->F0:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->t1:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->s1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->D0:Landroid/widget/TextView;

    const-string v1, "\u6570\u636e\u52a0\u8f7d\u4e2d..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->E0:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method D2()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    const-string v0, "\u83b7\u53d6\u6e38\u620f\u914d\u7f6e\u4fe1\u606f\u5931\u8d25\uff01"

    .line 1
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->showToast(Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/join/mgps/activity/arena/GameRoomListActivity$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity$a;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method D3()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/IntentUtil;->goLoginBattle(Landroid/content/Context;)Z

    return-void
.end method

.method E2(Ljava/lang/String;)V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->N1:Lcom/join/mgps/rpc/k;

    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->J1:Lcom/join/mgps/Util/b;

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v1

    iget-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->J1:Lcom/join/mgps/Util/b;

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/join/mgps/rpc/k;->E(ILjava/lang/String;J)Lcom/join/mgps/dto/ResultArenaBean;

    move-result-object v0

    const/16 v1, 0x2bd

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultArenaBean;->getData()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultArenaBean;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/BattleChallengeConfig;

    iput-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->M1:Lcom/join/mgps/dto/BattleChallengeConfig;

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultArenaBean;->getError()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->u2()V

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->M1:Lcom/join/mgps/dto/BattleChallengeConfig;

    invoke-virtual {v0}, Lcom/join/mgps/dto/BattleChallengeConfig;->getIsBattle()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x32

    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->H3(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x1f4

    .line 8
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->H3(Ljava/lang/String;I)V

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->T2()V

    .line 10
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->p2()V

    if-eqz v0, :cond_3

    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultArenaBean;->getError()I

    move-result p1

    if-ne p1, v1, :cond_3

    .line 12
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->u2()V

    goto :goto_0

    :cond_3
    const-string p1, "\u7cfb\u7edf\u9519\u8bef!"

    .line 13
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->showToast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 14
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->p2()V

    .line 15
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->T2()V

    .line 16
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "\u5f53\u524d\u7f51\u7edc\u4e0d\u53ef\u7528\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc!"

    .line 17
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string p1, "\u521b\u5efa\u623f\u95f4\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5\uff01"

    .line 18
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->showToast(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public E3()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->F0:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->t1:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->s1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->D0:Landroid/widget/TextView;

    const-string v2, "\u6682\u65e0\u6e38\u620f\u623f\u95f4"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->E0:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method F2()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->o0:Lcom/join/mgps/dto/GameInfoBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameInfoBean;->getCollection_id()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->o0:Lcom/join/mgps/dto/GameInfoBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameInfoBean;->getGame_id()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->o0:Lcom/join/mgps/dto/GameInfoBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameInfoBean;->getCollection_id()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    .line 4
    :goto_0
    invoke-static {p0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/join/mgps/Util/RequestBeanUtil;->getRequestArenaRoomListArgs(Ljava/lang/String;I)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->K1:Lcom/join/mgps/rpc/d;

    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/d;->q(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    invoke-virtual {v1}, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->getCurrent_collection_cfg()Lcom/join/mgps/dto/GameConfig;

    move-result-object v1

    if-nez v1, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->D2()V

    return-void

    .line 9
    :cond_1
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    invoke-virtual {v1}, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->getCurrent_collection_cfg()Lcom/join/mgps/dto/GameConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameConfig;->getCollection_id()Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_2

    goto :goto_2

    .line 11
    :cond_2
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    invoke-virtual {v2}, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->getGame_list()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    invoke-virtual {v2}, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->getGame_list()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_3

    goto :goto_1

    .line 12
    :cond_3
    iget-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->o0:Lcom/join/mgps/dto/GameInfoBean;

    invoke-virtual {v2, v1}, Lcom/join/mgps/dto/GameInfoBean;->setCollection_id(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->p1:Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    .line 14
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->Y2(Lcom/join/mgps/dto/ArenaGameRoomListConfig;)V

    goto :goto_3

    .line 15
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->D2()V

    return-void

    .line 16
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->D2()V

    return-void

    :cond_6
    const-string v0, "\u83b7\u53d6\u6e38\u620f\u914d\u7f6e\u4fe1\u606f\u5931\u8d25\uff01"

    .line 17
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->showToast(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->x3()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get game config exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->h3(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->D2()V

    :goto_3
    return-void
.end method

.method F3(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->R0:Lcom/papa91/battle/protocol/BattleArea;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->X1:Ljava/util/List;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->S1:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4
    :try_start_0
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->X1:Ljava/util/List;

    if-eqz p1, :cond_3

    .line 5
    iget p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->Y1:I

    const/16 v1, -0x400

    if-eq p1, v1, :cond_1

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->R1:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_1

    .line 7
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->X1:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_3

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->X1:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/GameInfoBean;

    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameInfoBean;->getCollection_id()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->o0:Lcom/join/mgps/dto/GameInfoBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameInfoBean;->getCollection_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 10
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->R1:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 12
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->U0()V

    goto :goto_2

    .line 13
    :cond_4
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->V0()V

    :goto_2
    return-void
.end method

.method public G2()Lcom/join/mgps/dto/ArenaGameRoomListConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->p1:Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    return-object v0
.end method

.method public H2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->U1:Lcom/join/mgps/activity/arena/GameRoomListActivity$z;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity$z;->b()Lcom/join/mgps/dto/GameInfoBean;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameInfoBean;->getCollection_id()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v0, ""

    :goto_1
    return-object v0
.end method

.method H3(Ljava/lang/String;I)V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startCreateRoom gameId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->h3(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->J1:Lcom/join/mgps/Util/b;

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v0

    const-string v1, "register_type_GameRoomListActivity"

    invoke-static {v1, p1, p2, v0}, Lapp/mgsim/arena/ArenaRequestFactory;->createRoom(Ljava/lang/String;Ljava/lang/String;II)Lapp/mgsim/arena/ArenaRequest;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->Q0:Lcom/join/mgps/socket/fight/arena/b;

    invoke-virtual {p2, p1}, Lcom/join/mgps/socket/fight/arena/b;->f(Lapp/mgsim/arena/ArenaRequest;)V

    return-void
.end method

.method public I2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameInfoBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->W1:Ljava/util/List;

    return-object v0
.end method

.method I3(Z)V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->O0:Lcom/join/mgps/fragment/roomlist/d;

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/fragment/roomlist/c;->T0()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->N0:Lcom/join/mgps/fragment/roomlist/d;

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/fragment/roomlist/c;->T0()V

    :cond_1
    :goto_0
    return-void
.end method

.method public J2()Lcom/join/mgps/dto/FriendBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->Z1:Lcom/join/mgps/dto/FriendBean;

    return-object v0
.end method

.method J3(IZ)V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->p1:Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->getCurrent_collection_cfg()Lcom/join/mgps/dto/GameConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameConfig;->getCollection_id()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "register_type_GameRoomListActivity"

    invoke-static {v1, v0, p1}, Lapp/mgsim/arena/ArenaRequestFactory;->subscribeRoomList(Ljava/lang/String;II)Lapp/mgsim/arena/ArenaRequest;

    move-result-object v0

    .line 2
    iput-boolean p2, v0, Lapp/mgsim/arena/ArenaRequest;->isRefreshing:Z

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 3
    iput-boolean p2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->f1:Z

    .line 4
    iput p2, v0, Lapp/mgsim/arena/ArenaRequest;->roomType:I

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, v0, Lapp/mgsim/arena/ArenaRequest;->isElite:Z

    goto :goto_0

    .line 6
    :cond_0
    iput-boolean p2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->g1:Z

    const/4 p1, 0x2

    .line 7
    iput p1, v0, Lapp/mgsim/arena/ArenaRequest;->roomType:I

    .line 8
    iput-boolean p2, v0, Lapp/mgsim/arena/ArenaRequest;->isElite:Z

    .line 9
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->Q0:Lcom/join/mgps/socket/fight/arena/b;

    invoke-virtual {p1, v0}, Lcom/join/mgps/socket/fight/arena/b;->f(Lapp/mgsim/arena/ArenaRequest;)V

    return-void
.end method

.method K3(Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->M2()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->q0:Landroid/widget/TextView;

    .line 2
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->M2()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->q0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->q0:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->M2()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->q0:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->M2()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public L2()F
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method L3()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->q0:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->M2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->G2()Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->G2()Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->getGame_list()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->G2()Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->getGame_list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->G2()Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->getGame_list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/GameConfig;

    .line 6
    iget-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->d1:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameConfig;->getGame_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    iget-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->d1:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameConfig;->getGame_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/GameConfig;->setRoom_count(I)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->l1:Lcom/join/mgps/customview/g0;

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->G2()Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->getGame_list()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/g0;->c(Ljava/util/List;)V

    goto :goto_1

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->l1:Lcom/join/mgps/customview/g0;

    if-eqz v0, :cond_3

    .line 11
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/g0;->c(Ljava/util/List;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public M2()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->p1:Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    const-string v1, ""

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-object v1

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->getCurrent_collection_cfg()Lcom/join/mgps/dto/GameConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameConfig;->getBattle_area()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->n1:Lcom/papa91/battle/protocol/BattleArea;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->p1:Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    if-eqz v2, :cond_2

    if-nez v0, :cond_2

    .line 5
    iget-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->Q0:Lcom/join/mgps/socket/fight/arena/b;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->Q0:Lcom/join/mgps/socket/fight/arena/b;

    invoke-virtual {v2}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/socket/fight/arena/ArenaService;->s()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6
    iget-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->n1:Lcom/papa91/battle/protocol/BattleArea;

    sget-object v3, Lcom/papa91/battle/protocol/BattleArea;->ALL:Lcom/papa91/battle/protocol/BattleArea;

    if-eq v2, v3, :cond_2

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->n1:Lcom/papa91/battle/protocol/BattleArea;

    invoke-static {v1}, Lcom/join/mgps/socket/fight/arena/c;->d(Lcom/papa91/battle/protocol/BattleArea;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->G2()Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    move-result-object v2

    const-string v3, ","

    if-eqz v2, :cond_4

    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->G2()Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->getGame_list()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->G2()Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->getGame_list()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 11
    iget-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->p1:Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    if-eqz v2, :cond_3

    if-nez v0, :cond_3

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->G2()Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->getGame_list()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\u6b3e\u6e38\u620f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 14
    :cond_4
    iget v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->c1:I

    if-lez v0, :cond_5

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->c1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\u4e2a\u623f\u95f4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_5
    return-object v1
.end method

.method M3()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->N0:Lcom/join/mgps/fragment/roomlist/d;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Lcom/join/mgps/fragment/roomlist/c;->l0()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->O0:Lcom/join/mgps/fragment/roomlist/d;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Lcom/join/mgps/fragment/roomlist/c;->l0()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 6
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->c1:I

    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->L3()V

    return-void
.end method

.method N2()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x1f4L
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/join/mgps/dto/CollectionCommentRequest;

    invoke-direct {v1}, Lcom/join/mgps/dto/CollectionCommentRequest;-><init>()V

    .line 3
    iget-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->o0:Lcom/join/mgps/dto/GameInfoBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GameInfoBean;->getCollection_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/CollectionCommentRequest;->setCollection_id(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/CollectionCommentRequest;->setUid(I)V

    .line 5
    invoke-static {p0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/RequestBeanUtil;->getDefalutRequestBean(Ljava/lang/Object;)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object v0

    .line 6
    invoke-static {}, Lcom/join/mgps/rpc/impl/c;->P1()Lcom/join/mgps/rpc/impl/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/rpc/impl/c;->O1()Lq1/c;

    move-result-object v1

    invoke-interface {v1, v0}, Lq1/c;->N1(Lcom/join/mgps/dto/CommonRequestBean;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/activity/arena/GameRoomListActivity$l;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity$l;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method N3(Lapp/mgsim/arena/ArenaResponse;Z)V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object p1, p1, Lapp/mgsim/arena/ArenaResponse;->data:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2
    aget-object p1, p1, v0

    check-cast p1, Lcom/papa91/battle/protocol/RoomCounter;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-boolean p2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->g1:Z

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->p1:Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->getCurrent_collection_cfg()Lcom/join/mgps/dto/GameConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/join/mgps/dto/GameConfig;->getElite_match_switch()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomCounter;->getElite()I

    move-result p2

    if-lez p2, :cond_1

    .line 5
    iget-object p2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->y0:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\uff08"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomCounter;->getElite()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\u623f\uff09"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->y0:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method O2(Lcom/papa91/battle/protocol/Notification;)V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->F0:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->J0:Lcom/join/mgps/customview/AlwaysMarqueeTextView;

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Notification;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->F0:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/join/mgps/activity/arena/GameRoomListActivity$p;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity$p;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity;Lcom/papa91/battle/protocol/Notification;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method O3(IZ)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    const/16 v0, 0x8

    if-eqz p2, :cond_0

    if-gtz p1, :cond_2

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->y0:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    if-gtz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->v0:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 3
    :cond_1
    iget-boolean p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->q1:Z

    if-eqz p1, :cond_2

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->p1:Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    if-eqz p1, :cond_2

    .line 5
    iget-object p2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->r0:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->getCurrent_collection_cfg()Lcom/join/mgps/dto/GameConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameConfig;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method

.method P2(Lapp/mgsim/arena/ArenaResponse;Z)V
    .locals 8
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->Z0:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-boolean v1, Lcom/join/mgps/activity/arena/GameRoomListActivity;->g2:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    const/16 p2, 0x14

    if-ge v2, p2, :cond_1

    .line 4
    invoke-static {}, Lcom/papa91/battle/protocol/SimpleRoom;->newBuilder()Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    move-result-object p2

    invoke-virtual {p2, v3}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->setAllowPeripheralJoin(Z)Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    move-result-object p2

    invoke-virtual {p2, v3}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->setAllowSpectatorJoin(Z)Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    move-result-object p2

    add-int/lit8 v1, v2, 0x64

    invoke-virtual {p2, v1}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->setCopper(I)Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    move-result-object p2

    mul-int/lit8 v4, v2, 0x5

    add-int/lit8 v4, v4, 0xa

    invoke-virtual {p2, v4}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->setPlaySeconds(I)Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    move-result-object p2

    sget-object v4, Lcom/papa91/battle/protocol/RoomState;->START:Lcom/papa91/battle/protocol/RoomState;

    invoke-virtual {p2, v4}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->setState(Lcom/papa91/battle/protocol/RoomState;)Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    move-result-object p2

    invoke-virtual {p2, v3}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->setHasPeripheralPlayer(Z)Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->setChallengeCoins(I)Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hulaoda"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->setNickname(Ljava/lang/String;)Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/papa91/battle/protocol/SimpleRoom;

    .line 5
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_1
    iget-object p2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->N0:Lcom/join/mgps/fragment/roomlist/d;

    if-eqz p2, :cond_2

    .line 7
    invoke-virtual {p2, p1, v3}, Lcom/join/mgps/fragment/roomlist/c;->e0(Ljava/util/List;Z)V

    .line 8
    :cond_2
    monitor-exit v0

    return-void

    :cond_3
    if-eqz p2, :cond_4

    .line 9
    iget-object p2, p1, Lapp/mgsim/arena/ArenaResponse;->data:Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    .line 10
    aget-object p2, p2, v3

    check-cast p2, Ljava/util/List;

    goto :goto_1

    .line 11
    :cond_4
    iget-object p2, p1, Lapp/mgsim/arena/ArenaResponse;->data:Ljava/lang/Object;

    check-cast p2, Ljava/util/List;

    :goto_1
    const-string v1, "---handlePushRoomListData--data print  begin "

    .line 12
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->h3(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->w2()V

    .line 14
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/papa91/battle/protocol/SimpleRoom;

    const-string v5, "GameRoomListActivity"

    .line 15
    invoke-static {v5, v4}, Lcom/join/mgps/socket/fight/arena/c;->r(Ljava/lang/String;Lcom/papa91/battle/protocol/SimpleRoom;)V

    .line 16
    iget-object v5, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->e1:Ljava/util/LinkedHashMap;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/papa91/battle/protocol/SimpleRoom;->getRoomId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/papa91/battle/protocol/SimpleRoom;->getGameId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->u3(Ljava/lang/String;I)V

    goto :goto_2

    :cond_5
    const-string v1, "---handlePushRoomListData--data print  end "

    .line 18
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->h3(Ljava/lang/String;)V

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlePushRoomListData ---response.request: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lapp/mgsim/arena/ArenaResponse;->request:Lapp/mgsim/arena/ArenaRequest;

    invoke-virtual {v4}, Lapp/mgsim/arena/ArenaRequest;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->h3(Ljava/lang/String;)V

    .line 20
    iget-object p1, p1, Lapp/mgsim/arena/ArenaResponse;->request:Lapp/mgsim/arena/ArenaRequest;

    iget p1, p1, Lapp/mgsim/arena/ArenaRequest;->roomType:I

    if-ne p1, v3, :cond_7

    .line 21
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->N0:Lcom/join/mgps/fragment/roomlist/d;

    if-eqz p1, :cond_9

    .line 22
    iget-boolean p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->f1:Z

    if-eqz p1, :cond_9

    .line 23
    iget-boolean p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->X0:Z

    if-eqz p1, :cond_6

    .line 24
    iput-boolean v2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->X0:Z

    .line 25
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->N0:Lcom/join/mgps/fragment/roomlist/d;

    iget-boolean v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->T0:Z

    invoke-virtual {p1, p2, v1}, Lcom/join/mgps/fragment/roomlist/c;->A0(Ljava/util/List;Z)V

    goto :goto_3

    .line 26
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->N0:Lcom/join/mgps/fragment/roomlist/d;

    iget-boolean v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->T0:Z

    invoke-virtual {p1, p2, v1}, Lcom/join/mgps/fragment/roomlist/c;->e0(Ljava/util/List;Z)V

    goto :goto_3

    .line 27
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->O0:Lcom/join/mgps/fragment/roomlist/d;

    if-eqz p1, :cond_9

    .line 28
    iget-boolean p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->g1:Z

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->p1:Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->getCurrent_collection_cfg()Lcom/join/mgps/dto/GameConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameConfig;->getElite_match_switch()I

    move-result p1

    if-ne p1, v3, :cond_9

    .line 29
    iget-boolean p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->Y0:Z

    if-eqz p1, :cond_8

    .line 30
    iput-boolean v2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->Y0:Z

    .line 31
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->O0:Lcom/join/mgps/fragment/roomlist/d;

    iget-boolean v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->U0:Z

    invoke-virtual {p1, p2, v1}, Lcom/join/mgps/fragment/roomlist/c;->A0(Ljava/util/List;Z)V

    goto :goto_3

    .line 32
    :cond_8
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->O0:Lcom/join/mgps/fragment/roomlist/d;

    iget-boolean v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->U0:Z

    invoke-virtual {p1, p2, v1}, Lcom/join/mgps/fragment/roomlist/c;->e0(Ljava/util/List;Z)V

    .line 33
    :cond_9
    :goto_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method Q2(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/papa91/battle/protocol/SimpleRoom;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->Z0:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-boolean v1, Lcom/join/mgps/activity/arena/GameRoomListActivity;->g2:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const-string v1, "---handleRoomListDelete--data print  begin "

    .line 3
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->h3(Ljava/lang/String;)V

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/papa91/battle/protocol/SimpleRoom;

    const-string v3, "GameRoomListActivity"

    .line 5
    invoke-static {v3, v2}, Lcom/join/mgps/socket/fight/arena/c;->r(Ljava/lang/String;Lcom/papa91/battle/protocol/SimpleRoom;)V

    goto :goto_0

    :cond_1
    const-string v1, "---handleRoomListDelete--data print  end "

    .line 6
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->h3(Ljava/lang/String;)V

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/papa91/battle/protocol/SimpleRoom;

    .line 10
    invoke-virtual {v3}, Lcom/papa91/battle/protocol/SimpleRoom;->getElite()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 11
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 12
    :cond_2
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    :goto_2
    iget-object v4, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->e1:Ljava/util/LinkedHashMap;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 14
    :try_start_1
    iget-object v5, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->e1:Ljava/util/LinkedHashMap;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/papa91/battle/protocol/SimpleRoom;->getRoomId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/papa91/battle/protocol/SimpleRoom;->getGameId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, -0x1

    invoke-virtual {p0, v3, v5}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->u3(Ljava/lang/String;I)V

    .line 16
    monitor-exit v4

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    .line 17
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->L3()V

    .line 18
    iget-boolean p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->f1:Z

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->T0:Z

    if-eqz p1, :cond_4

    .line 19
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->N0:Lcom/join/mgps/fragment/roomlist/d;

    if-eqz p1, :cond_4

    .line 20
    invoke-virtual {p1, v1}, Lcom/join/mgps/fragment/roomlist/d;->W0(Ljava/util/ArrayList;)V

    .line 21
    :cond_4
    iget-boolean p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->g1:Z

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->U0:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->p1:Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->getCurrent_collection_cfg()Lcom/join/mgps/dto/GameConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameConfig;->getElite_match_switch()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_5

    .line 22
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->O0:Lcom/join/mgps/fragment/roomlist/d;

    if-eqz p1, :cond_5

    .line 23
    invoke-virtual {p1, v2}, Lcom/join/mgps/fragment/roomlist/d;->W0(Ljava/util/ArrayList;)V

    .line 24
    :cond_5
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method R2(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/papa91/battle/protocol/SimpleRoom;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->Z0:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-boolean v1, Lcom/join/mgps/activity/arena/GameRoomListActivity;->g2:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const-string v1, "---handleRoomListUpdate--data print  begin "

    .line 3
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->h3(Ljava/lang/String;)V

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/papa91/battle/protocol/SimpleRoom;

    const-string v3, "GameRoomListActivity"

    .line 5
    invoke-static {v3, v2}, Lcom/join/mgps/socket/fight/arena/c;->r(Ljava/lang/String;Lcom/papa91/battle/protocol/SimpleRoom;)V

    goto :goto_0

    :cond_1
    const-string v1, "---handleRoomListUpdate--data print  end "

    .line 6
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->h3(Ljava/lang/String;)V

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/papa91/battle/protocol/SimpleRoom;

    .line 10
    invoke-virtual {v4}, Lcom/papa91/battle/protocol/SimpleRoom;->getElite()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 11
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 12
    :cond_2
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 13
    :cond_3
    iget-object v3, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->e1:Ljava/util/LinkedHashMap;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 14
    :try_start_1
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 15
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 16
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_2
    const/4 v9, 0x1

    if-ge v8, v6, :cond_5

    .line 17
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/papa91/battle/protocol/SimpleRoom;

    .line 18
    iget-object v11, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->e1:Ljava/util/LinkedHashMap;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Lcom/papa91/battle/protocol/SimpleRoom;->getRoomId()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 19
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Lcom/papa91/battle/protocol/SimpleRoom;->getRoomId()I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ""

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9, v10}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 20
    :cond_4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Lcom/papa91/battle/protocol/SimpleRoom;->getRoomId()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11, v10}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Lcom/papa91/battle/protocol/SimpleRoom;->getGameId()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ""

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10, v9}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->u3(Ljava/lang/String;I)V

    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 22
    :cond_5
    :goto_4
    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->size()I

    move-result p1

    if-ge v7, p1, :cond_7

    .line 23
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/SimpleRoom;

    if-eqz p1, :cond_6

    .line 24
    iget-object v6, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->e1:Ljava/util/LinkedHashMap;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getRoomId()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ""

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 26
    iget-object v6, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->e1:Ljava/util/LinkedHashMap;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getRoomId()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ""

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 27
    :cond_7
    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->size()I

    move-result p1

    if-lez p1, :cond_8

    .line 28
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->e1:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v4}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 29
    :cond_8
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    :try_start_2
    iget-boolean p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->f1:Z

    if-eqz p1, :cond_9

    iget-boolean p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->T0:Z

    if-eqz p1, :cond_9

    .line 31
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->N0:Lcom/join/mgps/fragment/roomlist/d;

    if-eqz p1, :cond_9

    .line 32
    invoke-virtual {p1, v1}, Lcom/join/mgps/fragment/roomlist/d;->X0(Ljava/util/ArrayList;)V

    .line 33
    :cond_9
    iget-boolean p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->g1:Z

    if-eqz p1, :cond_a

    iget-boolean p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->U0:Z

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->p1:Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->getCurrent_collection_cfg()Lcom/join/mgps/dto/GameConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameConfig;->getElite_match_switch()I

    move-result p1

    if-ne p1, v9, :cond_a

    .line 34
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->O0:Lcom/join/mgps/fragment/roomlist/d;

    if-eqz p1, :cond_a

    .line 35
    invoke-virtual {p1, v2}, Lcom/join/mgps/fragment/roomlist/d;->X0(Ljava/util/ArrayList;)V

    .line 36
    :cond_a
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception p1

    .line 37
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :catchall_1
    move-exception p1

    .line 38
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method S2()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->Q0:Lcom/join/mgps/socket/fight/arena/b;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->Q0:Lcom/join/mgps/socket/fight/arena/b;

    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/ArenaService;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->K0:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->p1:Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->getCurrent_collection_cfg()Lcom/join/mgps/dto/GameConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameConfig;->getElite_match_switch()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 3
    invoke-virtual {p0, v2, v1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->y2(ZZ)V

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p0, v1, v1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->y2(ZZ)V

    goto :goto_1

    :cond_1
    const-string v0, "register_type_GameRoomListActivity"

    .line 5
    invoke-static {v0}, Lapp/mgsim/arena/ArenaRequestFactory;->login(Ljava/lang/String;)Lapp/mgsim/arena/ArenaRequest;

    move-result-object v0

    .line 6
    iput-boolean v1, v0, Lapp/mgsim/arena/ArenaRequest;->isRefreshing:Z

    .line 7
    iget-object v3, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->K0:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v3}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v3

    if-ne v3, v2, :cond_2

    iget-object v3, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->p1:Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->getCurrent_collection_cfg()Lcom/join/mgps/dto/GameConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/dto/GameConfig;->getElite_match_switch()I

    move-result v3

    if-ne v3, v2, :cond_2

    .line 8
    iput-boolean v2, v0, Lapp/mgsim/arena/ArenaRequest;->isElite:Z

    const/4 v1, 0x2

    .line 9
    iput v1, v0, Lapp/mgsim/arena/ArenaRequest;->roomType:I

    goto :goto_0

    .line 10
    :cond_2
    iput-boolean v1, v0, Lapp/mgsim/arena/ArenaRequest;->isElite:Z

    .line 11
    iput v2, v0, Lapp/mgsim/arena/ArenaRequest;->roomType:I

    .line 12
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->Q0:Lcom/join/mgps/socket/fight/arena/b;

    invoke-virtual {v1, v0}, Lcom/join/mgps/socket/fight/arena/b;->f(Lapp/mgsim/arena/ArenaRequest;)V

    :goto_1
    return-void
.end method

.method T2()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->E1:Lcom/join/mgps/dialog/x0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->E1:Lcom/join/mgps/dialog/x0;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method U0()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->o0:Lcom/join/mgps/dto/GameInfoBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameInfoBean;->getCollection_id()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->o0:Lcom/join/mgps/dto/GameInfoBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameInfoBean;->getGame_id()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->o0:Lcom/join/mgps/dto/GameInfoBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameInfoBean;->getCollection_id()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    .line 4
    :goto_0
    invoke-static {p0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/join/mgps/Util/RequestBeanUtil;->getRequestArenaRoomListArgs(Ljava/lang/String;I)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/join/mgps/rpc/impl/c;->P1()Lcom/join/mgps/rpc/impl/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/rpc/impl/c;->O1()Lq1/c;

    move-result-object v1

    invoke-interface {v1, v0}, Lq1/c;->q(Lcom/join/mgps/dto/CommonRequestBean;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/activity/arena/GameRoomListActivity$i;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity$i;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 6
    :catch_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->D2()V

    :goto_1
    return-void
.end method

.method U2()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->F0:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->t1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->s1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method Y2(Lcom/join/mgps/dto/ArenaGameRoomListConfig;)V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->r0:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->getCurrent_collection_cfg()Lcom/join/mgps/dto/GameConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameConfig;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->s3(I)V

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->j1:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->X2(Lcom/join/mgps/dto/ArenaGameRoomListConfig;)V

    .line 5
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->K2(Lcom/join/mgps/dto/ArenaGameRoomListConfig;)I

    move-result v1

    .line 6
    iget-object v3, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->r1:Lcom/join/mgps/activity/arena/GameRoomListActivity$x;

    if-nez v3, :cond_0

    .line 7
    new-instance v3, Lcom/join/mgps/activity/arena/GameRoomListActivity$x;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    invoke-direct {v3, p0, p1, v4}, Lcom/join/mgps/activity/arena/GameRoomListActivity$x;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity;Lcom/join/mgps/dto/ArenaGameRoomListConfig;Landroidx/fragment/app/FragmentManager;)V

    iput-object v3, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->r1:Lcom/join/mgps/activity/arena/GameRoomListActivity$x;

    .line 8
    iget-object v3, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->K0:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v3, v1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 9
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->K0:Landroidx/viewpager/widget/ViewPager;

    iget-object v3, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->r1:Lcom/join/mgps/activity/arena/GameRoomListActivity$x;

    invoke-virtual {v1, v3}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 10
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->K0:Landroidx/viewpager/widget/ViewPager;

    new-instance v3, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;

    invoke-direct {v3, p0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity;Lcom/join/mgps/dto/ArenaGameRoomListConfig;)V

    invoke-virtual {v1, v3}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    goto :goto_0

    .line 11
    :cond_0
    invoke-static {v3, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity$x;->b(Lcom/join/mgps/activity/arena/GameRoomListActivity$x;Lcom/join/mgps/dto/ArenaGameRoomListConfig;)Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    .line 12
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->r1:Lcom/join/mgps/activity/arena/GameRoomListActivity$x;

    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 13
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->K0:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 14
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->Q0:Lcom/join/mgps/socket/fight/arena/b;

    invoke-virtual {p1}, Lcom/join/mgps/socket/fight/arena/b;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 15
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->S2()V

    goto :goto_1

    .line 16
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->Q0:Lcom/join/mgps/socket/fight/arena/b;

    invoke-virtual {p1}, Lcom/join/mgps/socket/fight/arena/b;->bindService()V

    .line 17
    :goto_1
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->p1:Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    if-eqz p1, :cond_5

    .line 18
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->getCurrent_collection_cfg()Lcom/join/mgps/dto/GameConfig;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 19
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->N0:Lcom/join/mgps/fragment/roomlist/d;

    const/4 v1, 0x2

    if-eqz p1, :cond_3

    .line 20
    iget-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->p1:Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    invoke-virtual {v2}, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->getCurrent_collection_cfg()Lcom/join/mgps/dto/GameConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/GameConfig;->getOnly_show_mobile_gamers_room()I

    move-result v2

    if-ne v2, v0, :cond_2

    const/4 v2, 0x2

    goto :goto_2

    :cond_2
    const/4 v2, 0x1

    :goto_2
    iput v2, p1, Lcom/join/mgps/fragment/roomlist/c;->A:I

    .line 21
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->O0:Lcom/join/mgps/fragment/roomlist/d;

    if-eqz p1, :cond_5

    .line 22
    iget-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->p1:Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    invoke-virtual {v2}, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->getCurrent_collection_cfg()Lcom/join/mgps/dto/GameConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/GameConfig;->getOnly_show_mobile_gamers_room()I

    move-result v2

    if-ne v2, v0, :cond_4

    const/4 v0, 0x2

    :cond_4
    iput v0, p1, Lcom/join/mgps/fragment/roomlist/c;->A:I

    :cond_5
    return-void
.end method

.method a3()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->r2()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->K0:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    const-string v1, "\u6b63\u5728\u52a0\u8f7d\u6570\u636e\uff0c\u8bf7\u7a0d\u7b49..."

    if-nez v0, :cond_2

    .line 3
    iget-boolean v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->T0:Z

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->N0:Lcom/join/mgps/fragment/roomlist/d;

    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->o1:Lcom/join/mgps/customview/g0$e;

    iget-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->Q0:Lcom/join/mgps/socket/fight/arena/b;

    invoke-virtual {v2}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/socket/fight/arena/ArenaService;->m()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->R0:Lcom/papa91/battle/protocol/BattleArea;

    invoke-static {v3}, Lcom/join/mgps/socket/fight/arena/c;->b(Lcom/papa91/battle/protocol/BattleArea;)Lapp/mgsim/arena/AreaInfo;

    move-result-object v3

    iget v4, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->V0:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/join/mgps/fragment/roomlist/c;->M0(Lcom/join/mgps/customview/g0$e;Ljava/util/concurrent/ConcurrentHashMap;Lapp/mgsim/arena/AreaInfo;I)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->K0:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->p1:Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->getCurrent_collection_cfg()Lcom/join/mgps/dto/GameConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameConfig;->getElite_match_switch()I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 7
    iget-boolean v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->U0:Z

    if-eqz v0, :cond_3

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->O0:Lcom/join/mgps/fragment/roomlist/d;

    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->o1:Lcom/join/mgps/customview/g0$e;

    iget-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->Q0:Lcom/join/mgps/socket/fight/arena/b;

    invoke-virtual {v2}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/socket/fight/arena/ArenaService;->m()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->R0:Lcom/papa91/battle/protocol/BattleArea;

    invoke-static {v3}, Lcom/join/mgps/socket/fight/arena/c;->b(Lcom/papa91/battle/protocol/BattleArea;)Lapp/mgsim/arena/AreaInfo;

    move-result-object v3

    iget v4, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->V0:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/join/mgps/fragment/roomlist/c;->M0(Lcom/join/mgps/customview/g0$e;Ljava/util/concurrent/ConcurrentHashMap;Lapp/mgsim/arena/AreaInfo;I)V

    goto :goto_0

    .line 9
    :cond_3
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->showToast(Ljava/lang/String;)V

    .line 10
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->L0:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->firstArenaFilterVisit()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/d;->j(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->L0:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->firstArenaFilterVisit()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->G0:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0806ae

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    return-void
.end method

.method afterViews()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->o0:Lcom/join/mgps/dto/GameInfoBean;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/join/mgps/rpc/impl/c;->P1()Lcom/join/mgps/rpc/impl/c;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->K1:Lcom/join/mgps/rpc/d;

    .line 4
    invoke-static {}, Lcom/join/mgps/rpc/impl/k;->n0()Lcom/join/mgps/rpc/impl/k;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->N1:Lcom/join/mgps/rpc/k;

    .line 5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, 0x1

    .line 7
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 9
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->H1:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->k2(Landroid/view/View;)V

    const/16 v1, 0x14

    if-lt v0, v1, :cond_2

    .line 10
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/activity/arena/d;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/arena/d;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 12
    :cond_2
    :goto_0
    new-instance v0, Lcom/join/mgps/socket/fight/arena/a;

    new-instance v1, Lcom/join/mgps/activity/arena/GameRoomListActivity$q;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity$q;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/join/mgps/socket/fight/arena/a;-><init>(Landroid/app/Activity;Lcom/join/mgps/socket/fight/arena/a$y;)V

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->h1:Lcom/join/mgps/socket/fight/arena/a;

    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->u0:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/join/mgps/activity/arena/GameRoomListActivity$r;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity$r;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->x0:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/join/mgps/activity/arena/GameRoomListActivity$s;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity$s;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->A0:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/join/mgps/activity/arena/GameRoomListActivity$t;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity$t;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    new-instance v0, Lcom/join/mgps/socket/fight/arena/b;

    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->S0:Lcom/join/mgps/socket/fight/arena/b$b;

    invoke-direct {v0, p0, v1}, Lcom/join/mgps/socket/fight/arena/b;-><init>(Landroid/app/Activity;Lcom/join/mgps/socket/fight/arena/b$b;)V

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->Q0:Lcom/join/mgps/socket/fight/arena/b;

    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->s1:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/join/mgps/activity/arena/GameRoomListActivity$u;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity$u;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->v0:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->y0:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->C0:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 21
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 22
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->C3()V

    .line 23
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->n3()V

    goto :goto_1

    .line 24
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->x3()V

    .line 25
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->L0:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->firstArenaFilterVisit()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/d;->j(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 26
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->G0:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0806ae

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 27
    :cond_4
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->W2()V

    .line 28
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->i1:Landroidx/fragment/app/FragmentManager;

    .line 29
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 30
    :try_start_1
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 31
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 32
    :goto_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->N2()V

    return-void
.end method

.method public b3(ILjava/lang/String;Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->r2()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "\u6b63\u5728\u52a0\u5165\u623f\u95f4..."

    .line 2
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->B3(Ljava/lang/String;)V

    const-string v0, "register_type_GameRoomListActivity"

    .line 3
    invoke-static {v0, p1, p2, p3}, Lapp/mgsim/arena/ArenaRequestFactory;->joinRoom(Ljava/lang/String;ILjava/lang/String;Z)Lapp/mgsim/arena/ArenaRequest;

    move-result-object p1

    .line 4
    iget-object p2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->Q0:Lcom/join/mgps/socket/fight/arena/b;

    invoke-virtual {p2, p1}, Lcom/join/mgps/socket/fight/arena/b;->f(Lapp/mgsim/arena/ArenaRequest;)V

    return-void
.end method

.method close()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->V2()V

    return-void
.end method

.method d3()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->s0:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/join/mgps/rpc/g;->x:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/lobby_active/index/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method e3()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->o0:Lcom/join/mgps/dto/GameInfoBean;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/FriendActivity;->b:Lcom/join/mgps/fragment/u1;

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameInfoBean;->getCollection_id()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->W1:Ljava/util/List;

    invoke-virtual {v1, v0, v2}, Lcom/join/mgps/fragment/u1;->G0(Ljava/lang/String;Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public f3(I)V
    .locals 2

    const/4 v0, 0x0

    if-lez p1, :cond_0

    .line 1
    iget v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->P1:I

    if-ltz v1, :cond_1

    :cond_0
    if-gez p1, :cond_2

    iget v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->P1:I

    if-lez v1, :cond_2

    .line 2
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->O1:Lcom/join/mgps/Util/p2$a;

    invoke-virtual {v1}, Lcom/join/mgps/Util/p2$a;->g()V

    .line 3
    iput v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->P1:I

    .line 4
    :cond_2
    iget v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->P1:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->P1:I

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->O1:Lcom/join/mgps/Util/p2$a;

    invoke-virtual {p1}, Lcom/join/mgps/Util/p2$a;->h()I

    move-result p1

    if-le v1, p1, :cond_3

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->O1:Lcom/join/mgps/Util/p2$a;

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/p2$a;->l(Z)V

    goto :goto_0

    .line 7
    :cond_3
    iget p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->P1:I

    if-gez p1, :cond_4

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->O1:Lcom/join/mgps/Util/p2$a;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/p2$a;->l(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public g3(I)V
    .locals 0

    return-void
.end method

.method h3(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method handleFailure(Lapp/mgsim/arena/ArenaResponse;)V
    .locals 10
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->T2()V

    .line 2
    iget v0, p1, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    const/16 v1, 0x101

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u786e\u5b9a"

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x4

    const-string v8, "dialog_error_hint"

    const/16 v9, 0x10

    if-ne v0, v9, :cond_0

    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->h1:Lcom/join/mgps/socket/fight/arena/a;

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v6

    iget p1, p1, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v7, v5

    const-string p1, "\u65e0\u6cd5\u52a0\u5165\uff0c\u4f60\u88ab\u7981\u6b62\u52a0\u5165\u8be5\u623f\u95f4"

    aput-object p1, v7, v4

    aput-object v2, v7, v3

    invoke-virtual {v0, v8, v7}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const/16 v9, 0x11

    if-ne v0, v9, :cond_1

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->h1:Lcom/join/mgps/socket/fight/arena/a;

    new-array v2, v7, [Ljava/lang/Object;

    aput-object v1, v2, v6

    iget p1, p1, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v5

    const-string p1, "\u8be5\u623f\u95f4\u4e3a\u6bd4\u8d5b\u4e13\u7528\u623f\u95f4,\u975e\u53c2\u8d5b\u9009\u624b\u65e0\u6cd5\u52a0\u5165"

    aput-object p1, v2, v4

    const-string p1, "\u6211\u77e5\u9053\u4e86"

    aput-object p1, v2, v3

    invoke-virtual {v0, v8, v2}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    const/16 v9, 0x9

    if-ne v0, v9, :cond_2

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->h1:Lcom/join/mgps/socket/fight/arena/a;

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v6

    iget p1, p1, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v7, v5

    const-string p1, "\u623f\u95f4\u4eba\u6570\u5df2\u6ee1\u4f60\u65e0\u6cd5\u52a0\u5165\u623f\u95f4!"

    aput-object p1, v7, v4

    aput-object v2, v7, v3

    invoke-virtual {v0, v8, v7}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    const/4 v9, 0x7

    if-ne v0, v9, :cond_3

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->h1:Lcom/join/mgps/socket/fight/arena/a;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v9, 0x100

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v1, v6

    iget v6, p1, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v5

    const-string v5, "\u5bc6\u7801\u8f93\u5165\u9519\u8bef\uff0c\u8bf7\u91cd\u8bd5!"

    aput-object v5, v1, v4

    const-string v4, "\u53d6\u6d88"

    aput-object v4, v1, v3

    aput-object v2, v1, v7

    const/4 v2, 0x5

    aput-object p1, v1, v2

    invoke-virtual {v0, v8, v1}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_3
    const/16 v9, 0x8

    if-ne v0, v9, :cond_4

    .line 7
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->m3(Lapp/mgsim/arena/ArenaResponse;)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->h1:Lcom/join/mgps/socket/fight/arena/a;

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v6

    iget p1, p1, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v7, v5

    const-string p1, "\u623f\u95f4\u5df2\u7ecf\u88ab\u89e3\u6563!"

    aput-object p1, v7, v4

    aput-object v2, v7, v3

    invoke-virtual {v0, v8, v7}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_4
    const/16 v9, 0xb

    if-ne v0, v9, :cond_5

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->h1:Lcom/join/mgps/socket/fight/arena/a;

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v6

    iget p1, p1, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v7, v5

    const-string p1, "\u94dc\u677f\u4e0d\u8db3\uff0c\u65e0\u6cd5\u521b\u5efa\u623f\u95f4!"

    aput-object p1, v7, v4

    aput-object v2, v7, v3

    invoke-virtual {v0, v8, v7}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_5
    const/16 v9, 0xd

    if-ne v0, v9, :cond_6

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->h1:Lcom/join/mgps/socket/fight/arena/a;

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v6

    iget p1, p1, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v7, v5

    const-string p1, "\u94dc\u677f\u4e0d\u8db3\uff0c\u65e0\u6cd5\u52a0\u5165\u623f\u95f4"

    aput-object p1, v7, v4

    aput-object v2, v7, v3

    invoke-virtual {v0, v8, v7}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_6
    const/16 v1, 0xa

    if-ne v0, v1, :cond_7

    .line 11
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->A3(Lapp/mgsim/arena/ArenaResponse;)V

    return-void

    :cond_7
    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_8

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->h1:Lcom/join/mgps/socket/fight/arena/a;

    new-array v1, v7, [Ljava/lang/Object;

    const/16 v7, 0x102

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v1, v6

    iget v6, p1, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v5

    iget-object p1, p1, Lapp/mgsim/arena/ArenaResponse;->errorInfo:Ljava/lang/String;

    aput-object p1, v1, v4

    aput-object v2, v1, v3

    invoke-virtual {v0, v8, v1}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 13
    :cond_8
    invoke-static {p1}, Lcom/join/mgps/socket/fight/arena/c;->g(Lapp/mgsim/arena/ArenaResponse;)Ljava/lang/String;

    move-result-object v0

    .line 14
    iget-object v1, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    const-string v2, "cmd_quick_join_room"

    if-ne v1, v2, :cond_9

    .line 15
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5feb\u901f\u52a0\u5165\u623f\u95f4\u5931\u8d25 "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " , \u8bf7\u91cd\u8bd5!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->B1:Ljava/lang/String;

    return-void

    .line 16
    :cond_9
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->showToast(Ljava/lang/String;)V

    .line 17
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    const-string v1, "cmd_subscribe_game_roomlist"

    if-ne v0, v1, :cond_a

    .line 18
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->C2()V

    return-void

    .line 19
    :cond_a
    iget-object p1, p1, Lapp/mgsim/arena/ArenaResponse;->request:Lapp/mgsim/arena/ArenaRequest;

    if-eqz p1, :cond_b

    iget-boolean v0, p1, Lapp/mgsim/arena/ArenaRequest;->isRefreshing:Z

    if-eqz v0, :cond_b

    .line 20
    iget-boolean p1, p1, Lapp/mgsim/arena/ArenaRequest;->isElite:Z

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->I3(Z)V

    :cond_b
    return-void
.end method

.method i3()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    const/4 v1, 0x4

    .line 2
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/join/mgps/rpc/g;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/static/match_v2/index.html"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    const-string v1, "11"

    .line 4
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setFrom(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    return-void
.end method

.method iv_back()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->p0:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/activity/NewArenaMainActivty_;->F1(Landroid/content/Context;)Lcom/join/mgps/activity/NewArenaMainActivty_$h;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method public j3(Z)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 1
    iput-boolean v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->X0:Z

    goto :goto_0

    .line 2
    :cond_0
    iput-boolean v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->Y0:Z

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->Q0:Lcom/join/mgps/socket/fight/arena/b;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->Q0:Lcom/join/mgps/socket/fight/arena/b;

    invoke-virtual {v1}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->s()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez p1, :cond_1

    .line 4
    invoke-virtual {p0, v0, v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->J3(IZ)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x2

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->J3(IZ)V

    goto :goto_1

    :cond_2
    const-string v1, "register_type_GameRoomListActivity"

    .line 6
    invoke-static {v1}, Lapp/mgsim/arena/ArenaRequestFactory;->login(Ljava/lang/String;)Lapp/mgsim/arena/ArenaRequest;

    move-result-object v1

    .line 7
    iput-boolean v0, v1, Lapp/mgsim/arena/ArenaRequest;->isRefreshing:Z

    .line 8
    iput-boolean p1, v1, Lapp/mgsim/arena/ArenaRequest;->isElite:Z

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->Q0:Lcom/join/mgps/socket/fight/arena/b;

    invoke-virtual {p1, v1}, Lcom/join/mgps/socket/fight/arena/b;->f(Lapp/mgsim/arena/ArenaRequest;)V

    :goto_1
    return v0
.end method

.method k2(Landroid/view/View;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/Util/p2$a;

    invoke-direct {v0, p1}, Lcom/join/mgps/Util/p2$a;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->O1:Lcom/join/mgps/Util/p2$a;

    return-void
.end method

.method k3(I)V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->X0:Z

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->Y0:Z

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->f1:Z

    .line 4
    iput-boolean v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->g1:Z

    .line 5
    iput-boolean v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->T0:Z

    .line 6
    iput-boolean v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->U0:Z

    .line 7
    iget-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->E1:Lcom/join/mgps/dialog/x0;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    iget-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->E1:Lcom/join/mgps/dialog/x0;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 9
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->O0:Lcom/join/mgps/fragment/roomlist/d;

    if-eqz v2, :cond_1

    .line 10
    invoke-virtual {v2}, Lcom/join/mgps/fragment/roomlist/c;->T0()V

    .line 11
    :cond_1
    iget-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->N0:Lcom/join/mgps/fragment/roomlist/d;

    if-eqz v2, :cond_2

    .line 12
    invoke-virtual {v2}, Lcom/join/mgps/fragment/roomlist/c;->T0()V

    .line 13
    :cond_2
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->p2()V

    .line 14
    iget-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->C1:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 15
    iget-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->v1:Landroid/app/Dialog;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 16
    iget-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->v1:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 17
    :cond_3
    iget-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->h1:Lcom/join/mgps/socket/fight/arena/a;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/join/mgps/socket/fight/arena/a;->w()V

    :cond_4
    const/16 v2, 0x8

    if-ne p1, v0, :cond_8

    .line 18
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->O0:Lcom/join/mgps/fragment/roomlist/d;

    if-eqz p1, :cond_5

    .line 19
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v3, v0}, Lcom/join/mgps/fragment/roomlist/c;->A0(Ljava/util/List;Z)V

    .line 20
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->N0:Lcom/join/mgps/fragment/roomlist/d;

    if-eqz p1, :cond_6

    .line 21
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v3, v0}, Lcom/join/mgps/fragment/roomlist/c;->A0(Ljava/util/List;Z)V

    .line 22
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->n1:Lcom/papa91/battle/protocol/BattleArea;

    if-eqz p1, :cond_7

    .line 23
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->R0:Lcom/papa91/battle/protocol/BattleArea;

    .line 24
    :cond_7
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->S2()V

    .line 25
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->F0:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 26
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->t1:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 27
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->s1:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_8
    const/4 v0, 0x2

    if-ne p1, v0, :cond_9

    const/4 p1, 0x0

    .line 28
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->p1:Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    .line 29
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->F0:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 30
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->t1:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 31
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->s1:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_9
    const/4 v0, 0x3

    if-ne p1, v0, :cond_a

    .line 32
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->F0:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 33
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->t1:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 34
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->s1:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_a
    :goto_0
    return-void
.end method

.method l2()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getAccount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getAccount()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->r1:Lcom/join/mgps/activity/arena/GameRoomListActivity$x;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->K0:Landroidx/viewpager/widget/ViewPager;

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/arena/GameRoomListActivity$x;->getItem(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 5
    instance-of v1, v0, Lcom/join/mgps/fragment/roomlist/c;

    if-eqz v1, :cond_1

    .line 6
    check-cast v0, Lcom/join/mgps/fragment/roomlist/c;

    invoke-virtual {v0}, Lcom/join/mgps/fragment/roomlist/c;->h0()V

    :cond_1
    return-void

    .line 7
    :cond_2
    :goto_0
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/IntentUtil;->goChangeNickname(Landroid/content/Context;)V

    return-void
.end method

.method public l3()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->K0:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->j3(Z)Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->K0:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->O0:Lcom/join/mgps/fragment/roomlist/d;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->j3(Z)Z

    :cond_1
    :goto_0
    return-void
.end method

.method m2()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->p1:Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    if-eqz v0, :cond_5

    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->N0:Lcom/join/mgps/fragment/roomlist/d;

    if-nez v0, :cond_0

    goto :goto_3

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getAccount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getAccount()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 4
    :cond_1
    iget-wide v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->I1:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->I1:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "btnFastGame so fast ,waiting a moment!"

    .line 5
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->h3(Ljava/lang/String;)V

    goto :goto_1

    .line 6
    :cond_3
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->I1:J

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->N0:Lcom/join/mgps/fragment/roomlist/d;

    invoke-virtual {v0}, Lcom/join/mgps/fragment/roomlist/c;->Q0()V

    :goto_1
    return-void

    .line 8
    :cond_4
    :goto_2
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/IntentUtil;->goChangeNickname(Landroid/content/Context;)V

    :cond_5
    :goto_3
    return-void
.end method

.method n2()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->r1:Lcom/join/mgps/activity/arena/GameRoomListActivity$x;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->K0:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/arena/GameRoomListActivity$x;->getItem(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/fragment/roomlist/c;

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/fragment/roomlist/c;->z0()V

    return-void
.end method

.method n3()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->J1:Lcom/join/mgps/Util/b;

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->J1:Lcom/join/mgps/Util/b;

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->N1:Lcom/join/mgps/rpc/k;

    invoke-interface {v2, v1, v0}, Lcom/join/mgps/rpc/k;->P(ILjava/lang/String;)Lcom/join/mgps/dto/ResultArenaBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultArenaBean;->getError()I

    move-result v1

    if-nez v1, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultArenaBean;->getData()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultArenaBean;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lapp/mgsim/arena/ArenaLobbyServer;

    invoke-virtual {v1}, Lapp/mgsim/arena/ArenaLobbyServer;->getDisabled()I

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    new-instance v1, Lapp/mgsim/arena/ArenaResponse;

    invoke-direct {v1}, Lapp/mgsim/arena/ArenaResponse;-><init>()V

    const/16 v2, 0x3e9

    .line 8
    iput v2, v1, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultArenaBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lapp/mgsim/arena/ArenaLobbyServer;

    invoke-virtual {v0}, Lapp/mgsim/arena/ArenaLobbyServer;->getDisabledMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lapp/mgsim/arena/ArenaResponse;->errorInfo:Ljava/lang/String;

    .line 10
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->handleFailure(Lapp/mgsim/arena/ArenaResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->U2()V

    .line 13
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->F2()V

    return-void
.end method

.method public o(Lcom/join/mgps/dto/FriendBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/FriendActivity;->o(Lcom/join/mgps/dto/FriendBean;)V

    return-void
.end method

.method o2(Lcom/join/mgps/customview/g0;Landroid/view/View;)Z
    .locals 2

    const-string v0, "v.setOnClickListener"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object p1, p1, Lcom/join/mgps/customview/g0;->t:Landroid/view/View;

    if-eqz p1, :cond_1

    if-eq p1, p2, :cond_1

    .line 3
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 4
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x0

    if-nez p1, :cond_2

    .line 5
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x0

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    :goto_0
    if-eqz p1, :cond_4

    .line 7
    iget-boolean p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->m1:Z

    if-eqz p1, :cond_3

    goto :goto_1

    .line 8
    :cond_3
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return v1

    .line 9
    :cond_4
    :goto_1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 10
    iput-boolean v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->m1:Z

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/join/mgps/activity/FriendActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    const/16 p2, 0x3f7

    if-ne p1, p2, :cond_0

    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->T1:Landroid/content/Context;

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    sget-object p2, Lcom/papa/sim/statistic/Event;->JoinLobbyroom:Lcom/papa/sim/statistic/Event;

    new-instance p3, Lcom/papa/sim/statistic/Ext;

    invoke-direct {p3}, Lcom/papa/sim/statistic/Ext;-><init>()V

    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->T1:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->z1:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v1}, Lcom/papa91/battle/protocol/GameRoom;->getGameId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object p3

    const-string v0, "1"

    invoke-virtual {p3, v0}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 3
    invoke-static {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity_;->u3(Landroid/content/Context;)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;->g(Z)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    move-result-object p1

    iget-object p2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->A1:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;->h(Ljava/lang/String;)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    move-result-object p1

    iget-object p2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->z1:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {p2}, Lcom/papa91/battle/protocol/GameRoom;->getGameName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;->d(Ljava/lang/String;)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    move-result-object p1

    iget-object p2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->z1:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;->i(Lcom/papa91/battle/protocol/GameRoom;)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    const/16 p2, 0x3f6

    if-ne p1, p2, :cond_2

    if-eqz p3, :cond_2

    const-string p1, "gameId"

    .line 4
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 6
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->A2(J)V

    goto :goto_1

    :cond_1
    const/16 p2, 0x2711

    if-ne p1, p2, :cond_2

    if-eqz p3, :cond_2

    const-string p1, "mGameInfo"

    .line 7
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/GameInfoBean;

    if-eqz p1, :cond_2

    .line 8
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->o0:Lcom/join/mgps/dto/GameInfoBean;

    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->F2()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 10
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "BATTLE_ROOM_LIST"

    .line 1
    iput-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->i:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->o0:Lcom/join/mgps/dto/GameInfoBean;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameInfoBean;->getGame_id()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->h:Ljava/lang/String;

    .line 4
    :cond_0
    invoke-super {p0, p1}, Lcom/join/mgps/activity/FriendActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->p2()V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->T2()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->h1:Lcom/join/mgps/socket/fight/arena/a;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/a;->w()V

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->z2()V

    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->q2()V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->Q0:Lcom/join/mgps/socket/fight/arena/b;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->Q0:Lcom/join/mgps/socket/fight/arena/b;

    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->W0:Lapp/mgsim/arena/SocketListener$NotifyObserver;

    invoke-virtual {v0, v1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->A(Ljava/lang/Object;)V

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->Q0:Lcom/join/mgps/socket/fight/arena/b;

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->g()V

    .line 11
    :cond_2
    invoke-super {p0}, Lcom/join/mgps/activity/FriendActivity;->onDestroy()V

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->u1:Z

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->iv_back()V

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method q2()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/join/mgps/socket/fight/arena/ArenaService_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.join.mgps.socket.fight.arena.cancel_subscribe"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method q3(ILcom/join/mgps/dto/ArenaGameRoomListConfig;)Landroidx/fragment/app/Fragment;
    .locals 2

    const-string v0, "isElite"

    if-nez p1, :cond_2

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->N0:Lcom/join/mgps/fragment/roomlist/d;

    if-nez p1, :cond_1

    .line 2
    new-instance p1, Lcom/join/mgps/fragment/roomlist/d;

    invoke-direct {p1}, Lcom/join/mgps/fragment/roomlist/d;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->N0:Lcom/join/mgps/fragment/roomlist/d;

    .line 3
    iget-object p2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->D1:Lcom/join/mgps/fragment/roomlist/c$n;

    invoke-virtual {p1, p2}, Lcom/join/mgps/fragment/roomlist/c;->G0(Lcom/join/mgps/fragment/roomlist/c$n;)V

    .line 4
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const/4 p2, 0x0

    .line 5
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 6
    iget-boolean p2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->I0:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->o0:Lcom/join/mgps/dto/GameInfoBean;

    invoke-virtual {p2}, Lcom/join/mgps/dto/GameInfoBean;->getGame_id()Ljava/lang/String;

    move-result-object p2

    const-string v0, "filterGameId"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_0
    iget-object p2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->N0:Lcom/join/mgps/fragment/roomlist/d;

    invoke-virtual {p2, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->N0:Lcom/join/mgps/fragment/roomlist/d;

    return-object p1

    :cond_2
    const/4 v1, 0x1

    if-ne p1, v1, :cond_6

    .line 9
    invoke-virtual {p2}, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->getCurrent_collection_cfg()Lcom/join/mgps/dto/GameConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameConfig;->getElite_match_switch()I

    move-result p1

    if-ne p1, v1, :cond_4

    .line 10
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->O0:Lcom/join/mgps/fragment/roomlist/d;

    if-nez p1, :cond_3

    .line 11
    new-instance p1, Lcom/join/mgps/fragment/roomlist/d;

    invoke-direct {p1}, Lcom/join/mgps/fragment/roomlist/d;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->O0:Lcom/join/mgps/fragment/roomlist/d;

    .line 12
    iget-object p2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->D1:Lcom/join/mgps/fragment/roomlist/c$n;

    invoke-virtual {p1, p2}, Lcom/join/mgps/fragment/roomlist/c;->G0(Lcom/join/mgps/fragment/roomlist/c$n;)V

    .line 13
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 14
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 15
    iget-object p2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->O0:Lcom/join/mgps/fragment/roomlist/d;

    invoke-virtual {p2, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 16
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->O0:Lcom/join/mgps/fragment/roomlist/d;

    return-object p1

    .line 17
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->P0:Lcom/join/mgps/fragment/roomlist/b;

    if-nez p1, :cond_5

    new-instance p1, Lcom/join/mgps/fragment/roomlist/b;

    invoke-direct {p1}, Lcom/join/mgps/fragment/roomlist/b;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->P0:Lcom/join/mgps/fragment/roomlist/b;

    .line 18
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->P0:Lcom/join/mgps/fragment/roomlist/b;

    return-object p1

    :cond_6
    const/4 p2, 0x2

    if-ne p1, p2, :cond_8

    .line 19
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->P0:Lcom/join/mgps/fragment/roomlist/b;

    if-nez p1, :cond_7

    new-instance p1, Lcom/join/mgps/fragment/roomlist/b;

    invoke-direct {p1}, Lcom/join/mgps/fragment/roomlist/b;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->P0:Lcom/join/mgps/fragment/roomlist/b;

    .line 20
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->P0:Lcom/join/mgps/fragment/roomlist/b;

    return-object p1

    :cond_8
    const/4 p1, 0x0

    return-object p1
.end method

.method r2()Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u5f53\u524d\u7f51\u7edc\u4e0d\u53ef\u7528\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc!"

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->showToast(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method r3()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    return-void
.end method

.method s3(I)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->a1:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v1, 0x8

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->b1:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const p1, 0x7f09096d

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v1, Lcom/join/mgps/activity/arena/GameRoomListActivity$b;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity$b;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->b1:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->a1:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method showToast(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->Z2()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public t3(Lcom/join/mgps/dto/FriendBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->Z1:Lcom/join/mgps/dto/FriendBean;

    return-void
.end method

.method u2()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/IntentUtil;->goLoginBattle(Landroid/content/Context;)Z

    return-void
.end method

.method u3(Ljava/lang/String;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->d1:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->d1:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, p2

    if-gez v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v0

    .line 3
    :goto_1
    iget-object p2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->d1:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method w2()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->d1:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->e1:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    return-void
.end method

.method w3(Lcom/papa91/battle/protocol/BattleArea;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->n1:Lcom/papa91/battle/protocol/BattleArea;

    .line 2
    iget v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->V0:I

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/BattleArea;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->V0:I

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->Q0:Lcom/join/mgps/socket/fight/arena/b;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->Q0:Lcom/join/mgps/socket/fight/arena/b;

    invoke-virtual {p1}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->s()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->p1:Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->getCurrent_collection_cfg()Lcom/join/mgps/dto/GameConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameConfig;->getBattle_area()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->q0:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->M2()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public x2(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->r2()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 2
    iget-boolean v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->U0:Z

    if-nez v0, :cond_2

    return-void

    .line 3
    :cond_1
    iget-boolean v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->T0:Z

    if-nez v0, :cond_2

    return-void

    :cond_2
    const-string v0, "\u6b63\u5728\u521b\u5efa\u623f\u95f4..."

    .line 4
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->B3(Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->p2()V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->L1:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    if-eqz p2, :cond_3

    .line 7
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->E2(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->H3(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method x3()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->F0:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->t1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->s1:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method y2(ZZ)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v0, 0x1

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    .line 1
    iput-boolean v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->X0:Z

    .line 2
    :cond_0
    invoke-virtual {p0, v0, p2}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->J3(IZ)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->p1:Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->getCurrent_collection_cfg()Lcom/join/mgps/dto/GameConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameConfig;->getElite_match_switch()I

    move-result p1

    if-ne p1, v0, :cond_3

    if-eqz p2, :cond_2

    .line 4
    iput-boolean v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->Y0:Z

    :cond_2
    const/4 p1, 0x2

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->J3(IZ)V

    :cond_3
    :goto_0
    if-nez p2, :cond_4

    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->C3()V

    :cond_4
    return-void
.end method

.method z2()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->C1:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->v1:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->u1:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->v1:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public z3(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->O1:Lcom/join/mgps/Util/p2$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/p2$a;->l(Z)V

    :cond_0
    return-void
.end method
