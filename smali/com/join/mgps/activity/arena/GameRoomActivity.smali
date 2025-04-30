.class public Lcom/join/mgps/activity/arena/GameRoomActivity;
.super Lcom/join/mgps/activity/FriendActivity;
.source "GameRoomActivity.java"

# interfaces
.implements Lcom/join/mgps/socket/fight/arena/a$y;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/arena/GameRoomActivity$w;,
        Lcom/join/mgps/activity/arena/GameRoomActivity$x;,
        Lcom/join/mgps/activity/arena/GameRoomActivity$BTN_STATE;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c0041
.end annotation


# static fields
.field private static final f2:I = 0x3e8

.field private static final g2:I = -0x1

.field private static final h2:I

.field private static final i2:I = 0x64

.field private static final j2:I = 0x66

.field private static final k2:I = 0x3e8

.field private static final l2:I = 0x9

.field private static final m2:I = 0x3e8


# instance fields
.field A0:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private final A1:Ljava/lang/Object;

.field B0:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private B1:Z

.field C0:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private C1:Z

.field D0:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field D1:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field E0:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field E1:Z

.field F0:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private F1:I

.field G0:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private final G1:Lcom/join/mgps/customview/PlayerInfoContainerView$a;

.field H0:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private H1:Lcom/join/mgps/socket/fight/arena/a;

.field I0:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private I1:Lcom/join/mgps/dialog/x0;

.field J0:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private J1:Landroid/graphics/drawable/Drawable;

.field K0:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private K1:Landroid/graphics/drawable/Drawable;

.field L0:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private L1:Z

.field M0:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private M1:Landroidx/fragment/app/FragmentManager;

.field N0:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private N1:Lcom/join/mgps/customview/input/a;

.field O0:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field O1:Lcom/join/mgps/rpc/k;

.field P0:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field P1:Lcom/join/mgps/dialog/o;

.field Q0:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field Q1:J

.field R0:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private R1:Lcom/join/mgps/dto/ArchiveBean;

.field S0:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field S1:Landroid/content/ClipboardManager;

.field T0:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private T1:Landroid/os/CountDownTimer;

.field U0:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private U1:Ljava/lang/String;

.field V0:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private V1:I

.field W0:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private W1:I

.field X0:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private X1:I

.field Y0:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private Y1:I

.field Z0:Landroid/widget/RadioButton;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private Z1:I

.field a1:Landroid/widget/RadioGroup;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private a2:Lcom/join/mgps/dto/ArenaGameInfo;

.field b1:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field b2:Lcom/join/mgps/rpc/k;

.field c1:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field c2:Lcom/join/mgps/rpc/k;

.field private d1:Lcom/join/mgps/customview/PlayerInfoContainerView;

.field private d2:Ljava/lang/String;

.field e1:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e2:Z

.field f1:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g1:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h1:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private i1:Ljava/lang/String;

.field private j1:Z

.field private k1:Z

.field private l1:Z

.field private m1:Z

.field n1:Landroid/content/Context;

.field o0:Lcom/join/mgps/dto/BattleChallengeConfig;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private o1:Lcom/join/mgps/socket/fight/arena/b;

.field p0:Lcom/join/mgps/Util/b;
    .annotation build Lorg/androidannotations/annotations/Bean;
    .end annotation
.end field

.field private final p1:Lcom/join/mgps/socket/fight/arena/b$b;

.field q0:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private final q1:Lapp/mgsim/arena/SocketListener$NotifyObserver;

.field volatile r0:Lcom/papa91/battle/protocol/GameRoom;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private r1:I

.field s0:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private s1:Landroid/os/Handler;

.field t0:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private t1:Ljava/lang/Runnable;

.field u0:Z
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private u1:Lcom/join/mgps/activity/arena/GameRoomActivity$BTN_STATE;

.field v0:Z
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private v1:Z

.field w0:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private final w1:Landroid/os/Handler;

.field x0:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private x1:I

.field y0:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private y1:Landroid/os/Handler;

.field z0:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private z1:Lapp/mgsim/arena/UserType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "#47817e"

    .line 1
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/join/mgps/activity/arena/GameRoomActivity;->h2:I

    return-void
.end method

.method public constructor <init>()V
    .locals 11

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/FriendActivity;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->w0:I

    .line 3
    iput v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->z0:I

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->j1:Z

    .line 5
    iput-boolean v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->k1:Z

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->l1:Z

    .line 7
    iput-boolean v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->m1:Z

    .line 8
    new-instance v2, Lcom/join/mgps/activity/arena/GameRoomActivity$p;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/arena/GameRoomActivity$p;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity;)V

    iput-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->p1:Lcom/join/mgps/socket/fight/arena/b$b;

    .line 9
    new-instance v2, Lcom/join/mgps/activity/arena/GameRoomActivity$r;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/arena/GameRoomActivity$r;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity;)V

    iput-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->q1:Lapp/mgsim/arena/SocketListener$NotifyObserver;

    .line 10
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->s1:Landroid/os/Handler;

    .line 11
    new-instance v2, Lcom/join/mgps/activity/arena/GameRoomActivity$t;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/arena/GameRoomActivity$t;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity;)V

    iput-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->t1:Ljava/lang/Runnable;

    .line 12
    iput-boolean v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->v1:Z

    .line 13
    new-instance v2, Lcom/join/mgps/activity/arena/GameRoomActivity$u;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/arena/GameRoomActivity$u;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity;)V

    iput-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->w1:Landroid/os/Handler;

    .line 14
    new-instance v2, Lcom/join/mgps/activity/arena/GameRoomActivity$v;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/arena/GameRoomActivity$v;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity;)V

    iput-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->y1:Landroid/os/Handler;

    .line 15
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->A1:Ljava/lang/Object;

    .line 16
    iput-boolean v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->C1:Z

    .line 17
    iput-boolean v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->E1:Z

    .line 18
    new-instance v2, Lcom/join/mgps/activity/arena/GameRoomActivity$b;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/arena/GameRoomActivity$b;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity;)V

    iput-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->G1:Lcom/join/mgps/customview/PlayerInfoContainerView$a;

    .line 19
    iput-boolean v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->L1:Z

    const/4 v2, 0x0

    .line 20
    iput-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->P1:Lcom/join/mgps/dialog/o;

    const-wide/16 v3, 0x0

    .line 21
    iput-wide v3, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->Q1:J

    .line 22
    new-instance v3, Lcom/join/mgps/activity/arena/GameRoomActivity$m;

    const-wide/16 v7, 0x2710

    const-wide/16 v9, 0x3e8

    move-object v5, v3

    move-object v6, p0

    invoke-direct/range {v5 .. v10}, Lcom/join/mgps/activity/arena/GameRoomActivity$m;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity;JJ)V

    iput-object v3, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->T1:Landroid/os/CountDownTimer;

    .line 23
    iput v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->Z1:I

    .line 24
    iput-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->a2:Lcom/join/mgps/dto/ArenaGameInfo;

    .line 25
    iput-boolean v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->e2:Z

    return-void
.end method

.method static synthetic A1(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lcom/join/mgps/socket/fight/arena/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->H1:Lcom/join/mgps/socket/fight/arena/a;

    return-object p0
.end method

.method static synthetic B1(Lcom/join/mgps/activity/arena/GameRoomActivity;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->w1:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic C1(Lcom/join/mgps/activity/arena/GameRoomActivity;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->y1:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic D1(Lcom/join/mgps/activity/arena/GameRoomActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->C1:Z

    return p0
.end method

.method static synthetic E1(Lcom/join/mgps/activity/arena/GameRoomActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->v1:Z

    return p0
.end method

.method private E2(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->H1:Lcom/join/mgps/socket/fight/arena/a;

    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/a;->w()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->I1:Lcom/join/mgps/dialog/x0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->I1:Lcom/join/mgps/dialog/x0;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :catch_0
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/Util/a0;->c0(Landroid/content/Context;)Lcom/join/mgps/Util/a0;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lcom/join/mgps/Util/z;->z(Landroid/content/Context;Ljava/lang/String;Z)Lcom/join/mgps/dialog/x0;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->I1:Lcom/join/mgps/dialog/x0;

    .line 5
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method static synthetic F1(Lcom/join/mgps/activity/arena/GameRoomActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->E2(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic G1(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lcom/join/mgps/dto/ArchiveBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->R1:Lcom/join/mgps/dto/ArchiveBean;

    return-object p0
.end method

.method static synthetic H1(Lcom/join/mgps/activity/arena/GameRoomActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->M2()V

    return-void
.end method

.method static synthetic I1(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lcom/join/mgps/activity/arena/GameRoomActivity$BTN_STATE;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->u1:Lcom/join/mgps/activity/arena/GameRoomActivity$BTN_STATE;

    return-object p0
.end method

.method static synthetic J1(Lcom/join/mgps/activity/arena/GameRoomActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/FriendActivity;->h:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic K1(Lcom/join/mgps/activity/arena/GameRoomActivity;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->s2()Z

    move-result p0

    return p0
.end method

.method private K2()V
    .locals 4

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->v1:Z

    const/16 v0, 0x9

    .line 2
    iput v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->x1:I

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->y1:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->y1:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method static synthetic L1(Lcom/join/mgps/activity/arena/GameRoomActivity;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->v2(I)V

    return-void
.end method

.method private L2(Lcom/papa91/battle/protocol/BattleServerAddr;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->a2()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getFastMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->d2:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/BattleServerAddr;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->O2(Lcom/papa91/battle/protocol/BattleServerAddr;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->d2:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->O2(Lcom/papa91/battle/protocol/BattleServerAddr;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/BattleServerAddr;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->O2(Lcom/papa91/battle/protocol/BattleServerAddr;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic M1(Lcom/join/mgps/activity/arena/GameRoomActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/FriendActivity;->h:Ljava/lang/String;

    return-object p0
.end method

.method private M2()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->a2()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->T1:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    const-string v0, "\u6b63\u5728\u542f\u52a8\u6e38\u620f..."

    .line 3
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->E2(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->o1:Lcom/join/mgps/socket/fight/arena/b;

    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v1}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    move-result v1

    const-string v2, "register_type_GameRoomActivity"

    invoke-static {v2, v1}, Lapp/mgsim/arena/ArenaRequestFactory;->startLobbyGame(Ljava/lang/String;I)Lapp/mgsim/arena/ArenaRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/socket/fight/arena/b;->f(Lapp/mgsim/arena/ArenaRequest;)V

    return-void
.end method

.method static synthetic N1(Lcom/join/mgps/activity/arena/GameRoomActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->k1:Z

    return p0
.end method

.method static synthetic O1(Lcom/join/mgps/activity/arena/GameRoomActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->j1:Z

    return p0
.end method

.method static synthetic P1(Lcom/join/mgps/activity/arena/GameRoomActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->j1:Z

    return p1
.end method

.method static synthetic Q1(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lapp/mgsim/arena/UserType;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->z1:Lapp/mgsim/arena/UserType;

    return-object p0
.end method

.method private Q2()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->D0:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->g1:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    const-string v3, "\u7b49\u5f85\u5f00\u59cb"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getElite()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->C0:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getVip_level()I

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->C0:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u7b49\u5f85\u5f00\u59cb\uff0c\u5f00\u59cb\u540e\u5c06\u6263\u9664\u4f60"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->A0:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\u94dc\u677f"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->C0:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getState()Lcom/papa91/battle/protocol/RoomState;

    move-result-object v0

    sget-object v3, Lcom/papa91/battle/protocol/RoomState;->START:Lcom/papa91/battle/protocol/RoomState;

    invoke-virtual {v0, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    sget-object v0, Lcom/join/mgps/activity/arena/GameRoomActivity$BTN_STATE;->BTN_GOTO_GAME_NOW:Lcom/join/mgps/activity/arena/GameRoomActivity$BTN_STATE;

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->u1:Lcom/join/mgps/activity/arena/GameRoomActivity$BTN_STATE;

    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->Z1()V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->g1:Landroid/widget/TextView;

    const-string v3, "(\u514d\u94dc\u677f)"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->C0:Landroid/widget/TextView;

    const-string v3, "\u6e38\u620f\u5df2\u5f00\u59cb\uff0c\u8bf7\u70b9\u51fb\u89c2\u6218\u52a0\u5165\u6e38\u620f\u3002"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->g1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->f1:Landroid/widget/ImageView;

    const v1, 0x7f080940

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->B0:Landroid/widget/TextView;

    const-string v1, "\u8fdb\u5165\u6e38\u620f\u5e76\u5750\u4e0b,\u5373\u53ef\u548c\u5176\u4ed6\u73a9\u5bb6\u4e00\u8d77\u8054\u673a\u5bf9\u6218"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->D0:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 17
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0}, Lcom/join/mgps/socket/fight/arena/c;->n(Lcom/papa91/battle/protocol/GameRoom;)Z

    move-result v0

    const v2, 0x7f080947

    const v3, 0x7f08094c

    const-string v4, "\u5f00\u59cb\u6e38\u620f\u540e,\u5c06\u6263\u9664\u60a8"

    if-eqz v0, :cond_4

    .line 18
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->Z1()V

    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->z1:Lapp/mgsim/arena/UserType;

    sget-object v1, Lapp/mgsim/arena/UserType;->SPECTATOR:Lapp/mgsim/arena/UserType;

    if-ne v0, v1, :cond_3

    .line 20
    sget-object v0, Lcom/join/mgps/activity/arena/GameRoomActivity$BTN_STATE;->BTN_STATE_WAITING_GAME:Lcom/join/mgps/activity/arena/GameRoomActivity$BTN_STATE;

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->u1:Lcom/join/mgps/activity/arena/GameRoomActivity$BTN_STATE;

    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->f1:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 22
    :cond_3
    sget-object v0, Lcom/join/mgps/activity/arena/GameRoomActivity$BTN_STATE;->BTN_STATE_START_GAME:Lcom/join/mgps/activity/arena/GameRoomActivity$BTN_STATE;

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->u1:Lcom/join/mgps/activity/arena/GameRoomActivity$BTN_STATE;

    .line 23
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->f1:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 24
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->B0:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 25
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getState()Lcom/papa91/battle/protocol/RoomState;

    move-result-object v0

    sget-object v5, Lcom/papa91/battle/protocol/RoomState;->WAIT:Lcom/papa91/battle/protocol/RoomState;

    invoke-virtual {v0, v5}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 26
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->z1:Lapp/mgsim/arena/UserType;

    sget-object v2, Lapp/mgsim/arena/UserType;->OWNER:Lapp/mgsim/arena/UserType;

    if-ne v0, v2, :cond_5

    .line 27
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->Z1()V

    .line 28
    sget-object v0, Lcom/join/mgps/activity/arena/GameRoomActivity$BTN_STATE;->BTN_STATE_WAITING_GAME:Lcom/join/mgps/activity/arena/GameRoomActivity$BTN_STATE;

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->u1:Lcom/join/mgps/activity/arena/GameRoomActivity$BTN_STATE;

    .line 29
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->C0:Landroid/widget/TextView;

    const-string v1, "\u7b49\u5f85\u73a9\u5bb6\u51c6\u5907\u540e\u5f00\u59cb\u6e38\u620f"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->f1:Landroid/widget/ImageView;

    const v1, 0x7f08094a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 31
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->B0:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 32
    :cond_5
    sget-object v2, Lapp/mgsim/arena/UserType;->TENANT:Lapp/mgsim/arena/UserType;

    if-ne v0, v2, :cond_9

    .line 33
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    iget-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->p0:Lcom/join/mgps/Util/b;

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v2

    invoke-static {v0, v2}, Lcom/join/mgps/socket/fight/arena/c;->h(Lcom/papa91/battle/protocol/GameRoom;I)Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getState()Lcom/papa91/battle/protocol/RoomPosition$State;

    move-result-object v0

    sget-object v2, Lcom/papa91/battle/protocol/RoomPosition$State;->WAIT:Lcom/papa91/battle/protocol/RoomPosition$State;

    if-ne v0, v2, :cond_8

    .line 35
    sget-object v0, Lcom/join/mgps/activity/arena/GameRoomActivity$BTN_STATE;->BTN_STATE_READY:Lcom/join/mgps/activity/arena/GameRoomActivity$BTN_STATE;

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->u1:Lcom/join/mgps/activity/arena/GameRoomActivity$BTN_STATE;

    .line 36
    iget-boolean v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->v1:Z

    if-eqz v0, :cond_6

    .line 37
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getHasJoinPassword()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 38
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->Z1()V

    goto/16 :goto_2

    .line 39
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getHasJoinPassword()Z

    move-result v0

    const v2, 0x7f080936

    const-string v3, "\u8bf7\u51c6\u5907\u540e\uff0c\u7b49\u623f\u4e3b\u5f00\u59cb\u6e38\u620f"

    if-nez v0, :cond_7

    .line 40
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->C0:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->g1:Landroid/widget/TextView;

    const-string v3, "(\u5012\u8ba1\u65f69s)"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->g1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 43
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->f1:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 44
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->K2()V

    goto/16 :goto_2

    .line 45
    :cond_7
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->Z1()V

    .line 46
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->C0:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->f1:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 48
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->B0:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 49
    :cond_8
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->Z1()V

    .line 50
    sget-object v0, Lcom/join/mgps/activity/arena/GameRoomActivity$BTN_STATE;->BTN_STATE_WAITING_GAME:Lcom/join/mgps/activity/arena/GameRoomActivity$BTN_STATE;

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->u1:Lcom/join/mgps/activity/arena/GameRoomActivity$BTN_STATE;

    .line 51
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->f1:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 52
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->B0:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 53
    :cond_9
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->Z1()V

    .line 54
    sget-object v0, Lcom/join/mgps/activity/arena/GameRoomActivity$BTN_STATE;->BTN_STATE_WAITING_GAME:Lcom/join/mgps/activity/arena/GameRoomActivity$BTN_STATE;

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->u1:Lcom/join/mgps/activity/arena/GameRoomActivity$BTN_STATE;

    .line 55
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->f1:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 56
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->B0:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 57
    :cond_a
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getState()Lcom/papa91/battle/protocol/RoomState;

    move-result-object v0

    sget-object v4, Lcom/papa91/battle/protocol/RoomState;->READY:Lcom/papa91/battle/protocol/RoomState;

    invoke-virtual {v0, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 58
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->z1:Lapp/mgsim/arena/UserType;

    sget-object v4, Lapp/mgsim/arena/UserType;->OWNER:Lapp/mgsim/arena/UserType;

    if-ne v0, v4, :cond_d

    .line 59
    sget-object v0, Lcom/join/mgps/activity/arena/GameRoomActivity$BTN_STATE;->BTN_STATE_START_GAME:Lcom/join/mgps/activity/arena/GameRoomActivity$BTN_STATE;

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->u1:Lcom/join/mgps/activity/arena/GameRoomActivity$BTN_STATE;

    .line 60
    iget-boolean v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->v1:Z

    if-eqz v0, :cond_b

    .line 61
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getHasJoinPassword()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 62
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->Z1()V

    goto :goto_2

    .line 63
    :cond_b
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getHasJoinPassword()Z

    move-result v0

    if-nez v0, :cond_c

    .line 64
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->C0:Landroid/widget/TextView;

    const-string v3, "\u5bf9\u65b9\u5df2\u51c6\u5907\uff0c\u8bf7\u5f00\u59cb\u6e38\u620f(9s)"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->g1:Landroid/widget/TextView;

    const-string v3, "(9s)"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->g1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 67
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->f1:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 68
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->K2()V

    goto :goto_2

    .line 69
    :cond_c
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->Z1()V

    .line 70
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->f1:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 71
    :cond_d
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->Z1()V

    .line 72
    sget-object v0, Lcom/join/mgps/activity/arena/GameRoomActivity$BTN_STATE;->BTN_STATE_WAITING_GAME:Lcom/join/mgps/activity/arena/GameRoomActivity$BTN_STATE;

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->u1:Lcom/join/mgps/activity/arena/GameRoomActivity$BTN_STATE;

    .line 73
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->f1:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 74
    :cond_e
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mBtnState-->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->u1:Lcom/join/mgps/activity/arena/GameRoomActivity$BTN_STATE;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameRoomActivity"

    invoke-static {v1, v0}, Lcom/join/mgps/Util/t0;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic R1(Lcom/join/mgps/activity/arena/GameRoomActivity;Lcom/papa91/battle/protocol/BattleServerAddr;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->L2(Lcom/papa91/battle/protocol/BattleServerAddr;)V

    return-void
.end method

.method static synthetic S1(Lcom/join/mgps/activity/arena/GameRoomActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r1:I

    return p0
.end method

.method static synthetic T1(Lcom/join/mgps/activity/arena/GameRoomActivity;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r1:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r1:I

    return v0
.end method

.method private T2()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->s1:Landroid/os/Handler;

    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->t1:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getState()Lcom/papa91/battle/protocol/RoomState;

    move-result-object v0

    sget-object v1, Lcom/papa91/battle/protocol/RoomState;->START:Lcom/papa91/battle/protocol/RoomState;

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getPlayerSeconds()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r1:I

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->I0:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/join/mgps/Util/x;->f(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->s1:Landroid/os/Handler;

    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->t1:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->I0:Landroid/widget/TextView;

    const-string v1, "\u7b49\u5f85\u5f00\u59cb"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method static synthetic U1(Lcom/join/mgps/activity/arena/GameRoomActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->t1:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic V1(Lcom/join/mgps/activity/arena/GameRoomActivity;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->s1:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic W1(Lcom/join/mgps/activity/arena/GameRoomActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->u2()V

    return-void
.end method

.method static synthetic X1(Lcom/join/mgps/activity/arena/GameRoomActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->x1:I

    return p0
.end method

.method static synthetic Y1(Lcom/join/mgps/activity/arena/GameRoomActivity;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->x1:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->x1:I

    return v0
.end method

.method private a2()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->T1:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    return-void
.end method

.method private d2()V
    .locals 2

    const-string v0, "clipboard"

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    const-string v1, ""

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private e2(Ljava/lang/String;)V
    .locals 1

    const-string v0, "clipboard"

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->S1:Landroid/content/ClipboardManager;

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private f2()Ljava/lang/String;
    .locals 14

    .line 1
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v2}, Lcom/papa91/battle/protocol/GameRoom;->getGameId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->i1:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "#\u5bf9\u6218"

    const-string v3, "$"

    const-string v4, "$\u623f\u95f4"

    const-string v5, "\u3011\u4e2d\u3010\u5927\u5385\u5bf9\u6218\u3011\u597d\u53cb"

    const-string v6, "\u5373\u53ef\u5728\u6e38\u620f\u3010"

    const v7, 0x1f448

    const-string v8, "\u609f\u996d\u6e38\u620f\u5385"

    const v9, 0x1f449

    const-string v10, "\u590d\u5236\u8fd9\u6761\u4fe1\u606f\uff0c\u6253\u5f00"

    const-string v11, "\uffe5"

    const/16 v12, 0x263a

    const v13, 0x1f511

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v9}, Lcom/join/mgps/activity/arena/GameRoomActivity;->h2(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v7}, Lcom/join/mgps/activity/arena/GameRoomActivity;->h2(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-direct {p0, v12}, Lcom/join/mgps/activity/arena/GameRoomActivity;->h2(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->p0:Lcom/join/mgps/Util/b;

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getNickname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v12}, Lcom/join/mgps/activity/arena/GameRoomActivity;->h2(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    .line 5
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getGameId()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v13}, Lcom/join/mgps/activity/arena/GameRoomActivity;->h2(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v13}, Lcom/join/mgps/activity/arena/GameRoomActivity;->h2(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getFightId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "#"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v13}, Lcom/join/mgps/activity/arena/GameRoomActivity;->h2(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 6
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v9}, Lcom/join/mgps/activity/arena/GameRoomActivity;->h2(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v7}, Lcom/join/mgps/activity/arena/GameRoomActivity;->h2(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-direct {p0, v12}, Lcom/join/mgps/activity/arena/GameRoomActivity;->h2(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->p0:Lcom/join/mgps/Util/b;

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getNickname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v12}, Lcom/join/mgps/activity/arena/GameRoomActivity;->h2(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    .line 8
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getGameId()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v13}, Lcom/join/mgps/activity/arena/GameRoomActivity;->h2(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v13}, Lcom/join/mgps/activity/arena/GameRoomActivity;->h2(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getFightId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "#&\u5bc6\u7801:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->i1:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private g2(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v3, "android.intent.category.LAUNCHER"

    .line 3
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    .line 7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    if-eqz p1, :cond_0

    .line 8
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 9
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 10
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    .line 11
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 12
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v0, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 15
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private h2(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private q2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->h1:Landroid/widget/TextView;

    new-instance v1, Lcom/join/mgps/activity/arena/GameRoomActivity$c;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/arena/GameRoomActivity$c;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->b1:Landroid/view/View;

    new-instance v1, Lcom/join/mgps/activity/arena/GameRoomActivity$d;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/arena/GameRoomActivity$d;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->J0:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/join/mgps/activity/arena/GameRoomActivity$e;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/arena/GameRoomActivity$e;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->Q0:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 5
    new-instance v1, Lcom/join/mgps/activity/arena/GameRoomActivity$f;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/arena/GameRoomActivity$f;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->e1:Landroid/view/View;

    new-instance v1, Lcom/join/mgps/activity/arena/GameRoomActivity$g;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/arena/GameRoomActivity$g;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->N0:Landroid/widget/ImageView;

    new-instance v1, Lcom/join/mgps/activity/arena/GameRoomActivity$h;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/arena/GameRoomActivity$h;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->O0:Landroid/view/View;

    new-instance v1, Lcom/join/mgps/activity/arena/GameRoomActivity$i;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/arena/GameRoomActivity$i;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private r2()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getP1()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 3
    iput v3, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->V1:I

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    move-result v0

    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->p0:Lcom/join/mgps/Util/b;

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 5
    iput v3, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->Z1:I

    .line 6
    :cond_1
    iput v2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->V1:I

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getP2()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    move-result v1

    if-nez v1, :cond_2

    .line 9
    iput v3, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->W1:I

    goto :goto_1

    .line 10
    :cond_2
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    move-result v0

    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->p0:Lcom/join/mgps/Util/b;

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 11
    iput v2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->Z1:I

    .line 12
    :cond_3
    iput v2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->W1:I

    .line 13
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getP3()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    move-result v1

    if-nez v1, :cond_4

    .line 15
    iput v3, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->X1:I

    goto :goto_2

    .line 16
    :cond_4
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    move-result v0

    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->p0:Lcom/join/mgps/Util/b;

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v1

    if-ne v0, v1, :cond_5

    const/4 v0, 0x2

    .line 17
    iput v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->Z1:I

    .line 18
    :cond_5
    iput v2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->X1:I

    .line 19
    :goto_2
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getP4()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    move-result v1

    if-nez v1, :cond_6

    .line 21
    iput v3, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->Y1:I

    goto :goto_3

    .line 22
    :cond_6
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    move-result v0

    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->p0:Lcom/join/mgps/Util/b;

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x3

    .line 23
    iput v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->Z1:I

    .line 24
    :cond_7
    iput v2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->Y1:I

    :goto_3
    return-void
.end method

.method private s2()Z
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

.method private u2()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/join/mgps/socket/fight/arena/ArenaService_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.join.mgps.socket.fight.arena.leave_room"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v1}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    move-result v1

    const-string v2, "gameId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private v2(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->z1:Lapp/mgsim/arena/UserType;

    sget-object v1, Lapp/mgsim/arena/UserType;->OWNER:Lapp/mgsim/arena/UserType;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->Q1:J

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->M2()V

    if-lez p1, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->z2()V

    goto :goto_0

    .line 5
    :cond_0
    sget-object p1, Lapp/mgsim/arena/UserType;->TENANT:Lapp/mgsim/arena/UserType;

    if-ne v0, p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->u1:Lcom/join/mgps/activity/arena/GameRoomActivity$BTN_STATE;

    sget-object v0, Lcom/join/mgps/activity/arena/GameRoomActivity$BTN_STATE;->BTN_STATE_READY:Lcom/join/mgps/activity/arena/GameRoomActivity$BTN_STATE;

    if-ne p1, v0, :cond_1

    .line 7
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->w2()V

    goto :goto_0

    .line 8
    :cond_1
    sget-object v0, Lcom/join/mgps/activity/arena/GameRoomActivity$BTN_STATE;->BTN_STATE_WAITING_GAME:Lcom/join/mgps/activity/arena/GameRoomActivity$BTN_STATE;

    if-ne p1, v0, :cond_2

    const-string p1, "\u7b49\u5f85\u6e38\u620f\u5f00\u59cb!"

    .line 9
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private w2()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->o1:Lcom/join/mgps/socket/fight/arena/b;

    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v1}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    move-result v1

    const-string v2, "register_type_GameRoomActivity"

    invoke-static {v2, v1}, Lapp/mgsim/arena/ArenaRequestFactory;->playerReadyGame(Ljava/lang/String;I)Lapp/mgsim/arena/ArenaRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/socket/fight/arena/b;->f(Lapp/mgsim/arena/ArenaRequest;)V

    return-void
.end method

.method static synthetic y1(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lcom/join/mgps/socket/fight/arena/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->o1:Lcom/join/mgps/socket/fight/arena/b;

    return-object p0
.end method

.method static synthetic z1(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lapp/mgsim/arena/SocketListener$NotifyObserver;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->q1:Lapp/mgsim/arena/SocketListener$NotifyObserver;

    return-object p0
.end method


# virtual methods
.method public A0(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-direct {p0, p2}, Lcom/join/mgps/activity/arena/GameRoomActivity;->e2(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->C2()V

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->N2()V

    :goto_0
    return-void
.end method

.method A2(I)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->a1:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->clearCheck()V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->Z0:Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->Z0:Landroid/widget/RadioButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_0
    return-void
.end method

.method B2()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    new-instance v0, Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-direct {v0}, Lcn/sharesdk/framework/Platform$ShareParams;-><init>()V

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/InnerShareParams;->setShareType(I)V

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->f2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/InnerShareParams;->setText(Ljava/lang/String;)V

    .line 4
    sget-object v1, Lcn/sharesdk/tencent/qq/QQ;->NAME:Ljava/lang/String;

    invoke-static {v1}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v1

    .line 5
    new-instance v2, Lcom/join/mgps/activity/arena/GameRoomActivity$l;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/arena/GameRoomActivity$l;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity;)V

    invoke-virtual {v1, v2}, Lcn/sharesdk/framework/Platform;->setPlatformActionListener(Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 6
    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/Platform;->share(Lcn/sharesdk/framework/Platform$ShareParams;)V

    return-void
.end method

.method public C(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->o1:Lcom/join/mgps/socket/fight/arena/b;

    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v1}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    move-result v1

    invoke-static {p1, v1}, Lapp/mgsim/arena/ArenaRequestFactory;->setRoomServerPlayMode(II)Lapp/mgsim/arena/ArenaRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/socket/fight/arena/b;->f(Lapp/mgsim/arena/ArenaRequest;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->A2(I)V

    return-void
.end method

.method C2()V
    .locals 1

    :try_start_0
    const-string v0, "com.tencent.mm"

    .line 1
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->g2(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "\u8bf7\u5148\u5b89\u88c5\u5fae\u4fe1"

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method D2(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->m1:Z

    .line 2
    invoke-static {p0}, Lcom/join/mgps/Util/a0;->c0(Landroid/content/Context;)Lcom/join/mgps/Util/a0;

    move-result-object p1

    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomActivity$o;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/GameRoomActivity$o;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity;)V

    invoke-virtual {p1, p0, v0}, Lcom/join/mgps/Util/z;->o(Landroid/content/Context;Lcom/join/mgps/Util/z$n0;)Landroid/app/Dialog;

    return-void
.end method

.method F2()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->H1:Lcom/join/mgps/socket/fight/arena/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/a;->w()V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->H1:Lcom/join/mgps/socket/fight/arena/a;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "\u5bf9\u4e0d\u8d77\uff0c\u60a8\u957f\u65f6\u95f4\u672a\u5f00\u59cb\u6e38\u620f\uff0c\u60a8\u5df2\u88ab\u8e22\u51fa\u623f\u95f4!"

    aput-object v3, v1, v2

    const-string v2, "toast_kic_out_room"

    invoke-virtual {v0, v2, v1}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method G2()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->P1:Lcom/join/mgps/dialog/o;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/join/mgps/dialog/o;

    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/o;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->P1:Lcom/join/mgps/dialog/o;

    .line 3
    :cond_0
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomActivity$j;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/GameRoomActivity$j;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity;)V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->P1:Lcom/join/mgps/dialog/o;

    iget-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v1, v2, v0}, Lcom/join/mgps/dialog/o;->f(Lcom/papa91/battle/protocol/GameRoom;Lcom/join/mgps/dialog/o$d;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->P1:Lcom/join/mgps/dialog/o;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->P1:Lcom/join/mgps/dialog/o;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method

.method H2()V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->o0:Lcom/join/mgps/dto/BattleChallengeConfig;

    invoke-virtual {v0}, Lcom/join/mgps/dto/BattleChallengeConfig;->getIsBattle()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-string v4, "set_challenge_gold"

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->H1:Lcom/join/mgps/socket/fight/arena/a;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->o0:Lcom/join/mgps/dto/BattleChallengeConfig;

    aput-object v5, v3, v2

    iget-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v2}, Lcom/papa91/battle/protocol/GameRoom;->getChallengeCoins()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-virtual {v0, v4, v3}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->H1:Lcom/join/mgps/socket/fight/arena/a;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->o0:Lcom/join/mgps/dto/BattleChallengeConfig;

    aput-object v5, v3, v2

    iget-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->t0:Ljava/lang/String;

    aput-object v2, v3, v1

    invoke-virtual {v0, v4, v3}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method I2()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->H1:Lcom/join/mgps/socket/fight/arena/a;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, 0x101

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    const-string v3, "\u4f60\u57282\u5206\u949f\u5185\u65e0\u5f00\u59cb\uff0c\u623f\u95f4\u5df2\u88ab\u89e3\u6563\uff01"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "\u786e\u5b9a"

    aput-object v3, v1, v2

    const-string v2, "dialog_error_hint"

    invoke-virtual {v0, v2, v1}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->H1:Lcom/join/mgps/socket/fight/arena/a;

    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/a;->x()Landroid/app/Dialog;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/activity/arena/GameRoomActivity$q;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/arena/GameRoomActivity$q;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method J2()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->Z0:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->H1:Lcom/join/mgps/socket/fight/arena/a;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/join/mgps/socket/fight/arena/a;->w()V

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->H1:Lcom/join/mgps/socket/fight/arena/a;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "svr_play_mode"

    invoke-virtual {v1, v0, v2}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public L(Ljava/lang/String;)V
    .locals 1

    const-string v0, "kick_info"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "toast_kic_out_room"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "toast_move_in_spectator"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->C1:Z

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->i2()V

    :cond_2
    :goto_1
    return-void
.end method

.method N2()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    const-string v0, "com.tencent.mobileqq"

    .line 1
    invoke-virtual {p0, p0, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->b2(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->P2(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const-string v1, "\u672c\u673a\u672a\u5b89\u88c5QQ\u5e94\u7528"

    .line 3
    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method O2(Lcom/papa91/battle/protocol/BattleServerAddr;Ljava/lang/String;)V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->r2()V

    .line 2
    iget v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->V1:I

    iget v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->W1:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->X1:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->Y1:I

    add-int/2addr v0, v1

    .line 3
    new-instance v1, Lcom/join/mgps/dto/NetBattleStartGameDto;

    invoke-direct {v1}, Lcom/join/mgps/dto/NetBattleStartGameDto;-><init>()V

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v3}, Lcom/papa91/battle/protocol/GameRoom;->getGameId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setGameID(Ljava/lang/String;)V

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/BattleServerAddr;->getBattleRoomId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setRoomID(Ljava/lang/String;)V

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->p0:Lcom/join/mgps/Util/b;

    invoke-virtual {v4}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setUserID(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1, p2}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setServerIP(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/BattleServerAddr;->getPort()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setServerPort(I)V

    .line 9
    iget p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->q0:I

    const/4 p2, 0x1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    const/4 p1, 0x3

    .line 10
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setRoomMode(I)V

    goto :goto_0

    :cond_0
    if-ne p1, p2, :cond_1

    .line 11
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setRoomMode(I)V

    goto :goto_0

    .line 12
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getElite()Z

    move-result p1

    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setRoomMode(I)V

    .line 13
    :goto_0
    iget-boolean p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->k1:Z

    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setAllowPeripheralJoin(Z)V

    .line 14
    iget-boolean p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->l1:Z

    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setAllowPCJoin(Z)V

    .line 15
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getGameType()Lcom/papa91/battle/protocol/GameRoom$GameType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom$GameType;->getNumber()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setGameype(I)V

    .line 16
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setGroupId(I)V

    .line 17
    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setP1Name(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setP2Name(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 19
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setOldGame(I)V

    .line 20
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->p0:Lcom/join/mgps/Util/b;

    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getNickname()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setUserName(Ljava/lang/String;)V

    .line 21
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->p0:Lcom/join/mgps/Util/b;

    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getAvatarSrc()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setUserIcon(Ljava/lang/String;)V

    .line 22
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getSeatsNumber()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setGamePlayers(I)V

    .line 23
    invoke-virtual {v1, p2}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setTcptype(I)V

    .line 24
    iget p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->Z1:I

    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setPorder(I)V

    .line 25
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setNetPlayers(I)V

    .line 26
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->a2:Lcom/join/mgps/dto/ArenaGameInfo;

    if-eqz p1, :cond_2

    .line 27
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArenaGameInfo;->getResult_show_type()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setResult_show_type(Ljava/lang/String;)V

    .line 28
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "start game params :"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GameRoomActivity"

    invoke-static {p2, p1}, Lcom/join/mgps/Util/t0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getGameId()J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    .line 30
    iget-object p2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->U1:Ljava/lang/String;

    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getBattleArea()Lcom/papa91/battle/protocol/BattleArea;

    move-result-object v0

    iget-boolean v2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->u0:Z

    invoke-static {v0, v2}, Lcom/join/mgps/socket/fight/arena/c;->i(Lcom/papa91/battle/protocol/BattleArea;Z)I

    move-result v0

    invoke-static {p0, v1, p1, p2, v0}, Lcom/join/mgps/Util/UtilsMy;->Z2(Landroid/content/Context;Lcom/join/mgps/dto/NetBattleStartGameDto;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;I)V

    .line 31
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->i2()V

    return-void
.end method

.method public P()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->u2()V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->i2()V

    return-void
.end method

.method P2(Landroid/content/Context;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.SEND"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->f2()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "text/plain"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    const-string v1, "com.tencent.mobileqq"

    const-string v2, "com.tencent.mobileqq.activity.JumpActivity"

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "\u9009\u62e9\u5206\u4eab\u9014\u5f84"

    .line 6
    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 7
    :cond_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 8
    :catch_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method R2()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->D0:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->A0:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\u94dc\u677f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    const-string v1, "\u7b49\u5f85\u5f00\u59cb"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getElite()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->C0:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getVip_level()I

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->C0:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u7b49\u5f85\u5f00\u59cb\uff0c\u5f00\u59cb\u540e\u5c06\u6263\u9664\u4f60"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->A0:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->C0:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method S2()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->o1:Lcom/join/mgps/socket/fight/arena/b;

    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v1}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->o(I)Lapp/mgsim/arena/ArenaResponse;

    move-result-object v0

    const-string v1, "GameRoomActivity"

    if-eqz v0, :cond_0

    .line 2
    iget-object v2, v0, Lapp/mgsim/arena/ArenaResponse;->data:Ljava/lang/Object;

    instance-of v3, v2, Lcom/papa91/battle/protocol/GameRoom;

    if-eqz v3, :cond_1

    .line 3
    check-cast v2, Lcom/papa91/battle/protocol/GameRoom;

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gameRoom:aaa game id  --...:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "----gameRoom  game room id : bbb:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v4}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/join/mgps/Util/t0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v2}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    move-result v2

    iget-object v3, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v3}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    move-result v3

    if-ne v2, v3, :cond_1

    const-string v2, "updateGameRoomAsync---..."

    .line 6
    invoke-static {v1, v2}, Lcom/join/mgps/Util/t0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->q1:Lapp/mgsim/arena/SocketListener$NotifyObserver;

    invoke-interface {v1, v0}, Lapp/mgsim/arena/SocketListener$NotifyObserver;->onServerResponse(Lapp/mgsim/arena/ArenaResponse;)V

    goto :goto_0

    :cond_0
    const-string v0, "updateGameRoomAsync--- response is null..."

    .line 8
    invoke-static {v1, v0}, Lcom/join/mgps/Util/t0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method U2(Lcom/papa91/battle/protocol/GameRoom;)V
    .locals 10
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->A1:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v1}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    move-result v1

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    move-result v2

    if-eq v1, v2, :cond_0

    monitor-exit v0

    return-void

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    if-nez v1, :cond_1

    const-string p1, "\u670d\u52a1\u5668\u8fd4\u56de\u6e38\u620f\u623f\u95f4\u4fe1\u606f\u4e3a\u7a7a\uff0c\u5f02\u5e38\uff0c\u9000\u51fa\u754c\u9762"

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->i2()V

    .line 7
    monitor-exit v0

    return-void

    :cond_1
    const-string v1, "GameActivity"

    .line 8
    invoke-static {v1, p1}, Lcom/join/mgps/socket/fight/arena/c;->q(Ljava/lang/String;Lcom/papa91/battle/protocol/GameRoom;)V

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->p0:Lcom/join/mgps/Util/b;

    invoke-static {p1, v1}, Lcom/join/mgps/socket/fight/arena/c;->f(Lcom/papa91/battle/protocol/GameRoom;Lcom/join/mgps/Util/b;)Lapp/mgsim/arena/UserType;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->z1:Lapp/mgsim/arena/UserType;

    .line 10
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->d1:Lcom/join/mgps/customview/PlayerInfoContainerView;

    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    iget-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->p0:Lcom/join/mgps/Util/b;

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v2

    invoke-virtual {p1, v1, v2, p0}, Lcom/join/mgps/customview/PlayerInfoContainerView;->c(Lcom/papa91/battle/protocol/GameRoom;ILandroid/app/Activity;)V

    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getBattleArea()Lcom/papa91/battle/protocol/BattleArea;

    move-result-object p1

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/BattleArea;->getNumber()I

    move-result p1

    sget-object v1, Lcom/papa91/battle/protocol/BattleArea;->ALL:Lcom/papa91/battle/protocol/BattleArea;

    invoke-virtual {v1}, Lcom/papa91/battle/protocol/BattleArea;->getNumber()I

    move-result v2

    if-eq p1, v2, :cond_2

    .line 12
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->H0:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u623f\u95f4\u53f7\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v3}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 13
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->H0:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u623f\u95f4\u53f7\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v3}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getPassword()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->i1:Ljava/lang/String;

    .line 15
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getGameType()Lcom/papa91/battle/protocol/GameRoom$GameType;

    move-result-object p1

    sget-object v2, Lcom/papa91/battle/protocol/GameRoom$GameType;->FIGHT:Lcom/papa91/battle/protocol/GameRoom$GameType;

    if-ne p1, v2, :cond_3

    .line 16
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->F0:Landroid/widget/TextView;

    const-string v2, "\u83b7\u80dc\u4e00\u65b9\u83b7\u5f97\u8be5\u6311\u6218\u91d1"

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 17
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->F0:Landroid/widget/TextView;

    const-string v2, "\u5b8c\u6210\u6e38\u620f\u4efb\u52a1\u53ef\u83b7\u53d6\u6311\u6218\u91d1"

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    :goto_1
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getElite()Z

    move-result p1

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eqz p1, :cond_4

    .line 19
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->K0:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v6}, Lcom/papa91/battle/protocol/GameRoom;->getChallengeCoins()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "\u94dc\u677f"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->L0:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0806a4

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 21
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->J0:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 22
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->L0:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 23
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->K0:Landroid/widget/TextView;

    const-string v5, "0\u94dc\u677f"

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->J0:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 25
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->L0:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 26
    :goto_2
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getAllowPeripheralJoin()Z

    move-result p1

    const/4 v5, 0x1

    if-eqz p1, :cond_5

    .line 27
    iput-boolean v5, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->k1:Z

    .line 28
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->N0:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f08066f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 29
    :cond_5
    iput-boolean v3, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->k1:Z

    .line 30
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->N0:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f08066e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 31
    :goto_3
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getAllowPCJoin()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 32
    iput-boolean v5, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->l1:Z

    .line 33
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->P0:Landroid/widget/TextView;

    const-string v6, "\u7efc\u5408\u623f"

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 34
    :cond_6
    iput-boolean v3, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->l1:Z

    .line 35
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->P0:Landroid/widget/TextView;

    const-string v6, "\u624b\u673a\u623f"

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    :goto_4
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->z1:Lapp/mgsim/arena/UserType;

    sget-object v6, Lapp/mgsim/arena/UserType;->OWNER:Lapp/mgsim/arena/UserType;

    if-ne p1, v6, :cond_7

    .line 37
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->O0:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 38
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->O0:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 39
    :goto_5
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->z1:Lapp/mgsim/arena/UserType;

    const v2, 0x7f080c9f

    if-eq p1, v6, :cond_c

    sget-object v7, Lapp/mgsim/arena/UserType;->TENANT:Lapp/mgsim/arena/UserType;

    if-ne p1, v7, :cond_8

    goto/16 :goto_7

    .line 40
    :cond_8
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->W0:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v8}, Lcom/papa91/battle/protocol/GameRoom;->getSpectatorNumber()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "\u4eba"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->p0:Lcom/join/mgps/Util/b;

    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getAvatarSrc()Ljava/lang/String;

    move-result-object p1

    .line 42
    iget-object v7, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->X0:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v7, v2, p1}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 43
    iget-boolean p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->B1:Z

    if-nez p1, :cond_9

    .line 44
    iput-boolean v5, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->B1:Z

    .line 45
    iput-boolean v5, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->C1:Z

    .line 46
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->H1:Lcom/join/mgps/socket/fight/arena/a;

    const-string v7, "toast_move_in_spectator"

    new-array v8, v5, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->s0:Ljava/lang/String;

    aput-object v9, v8, v3

    invoke-virtual {p1, v7, v8}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v7, Lcom/join/mgps/activity/arena/GameRoomActivity$a;

    invoke-direct {v7, p0}, Lcom/join/mgps/activity/arena/GameRoomActivity$a;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity;)V

    const-wide/16 v8, 0x7d0

    invoke-virtual {p1, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 48
    :cond_9
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->s0:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 49
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->s0:Ljava/lang/String;

    .line 50
    iget-object v7, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->c1:Landroid/widget/TextView;

    invoke-virtual {v7, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p1, ""

    .line 51
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->s0:Ljava/lang/String;

    goto :goto_6

    .line 52
    :cond_a
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getState()Lcom/papa91/battle/protocol/RoomState;

    move-result-object p1

    sget-object v7, Lcom/papa91/battle/protocol/RoomState;->START:Lcom/papa91/battle/protocol/RoomState;

    invoke-virtual {p1, v7}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 53
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->c1:Landroid/widget/TextView;

    const-string v7, "\u4f60\u88ab\u79fb\u5230\u89c2\u6218\u5e2d"

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 54
    :cond_b
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->c1:Landroid/widget/TextView;

    const-string v7, "\u623f\u95f4\u5df2\u6ee1\uff0c\u88ab\u81ea\u52a8\u79fb\u5230\u89c2\u6218\u5e2d"

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    :goto_6
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->p0:Lcom/join/mgps/Util/b;

    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getAvatarSrc()Ljava/lang/String;

    move-result-object p1

    .line 56
    iget-object v7, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->X0:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v7, v2, p1}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    goto :goto_8

    .line 57
    :cond_c
    :goto_7
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->W0:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v8}, Lcom/papa91/battle/protocol/GameRoom;->getSpectatorNumber()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "\u4eba"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->T0:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 59
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->U0:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 60
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->V0:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 61
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->p0:Lcom/join/mgps/Util/b;

    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getAvatarSrc()Ljava/lang/String;

    move-result-object p1

    .line 62
    iget-object v7, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->X0:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v7, v2, p1}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 63
    :goto_8
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->z1:Lapp/mgsim/arena/UserType;

    if-ne p1, v6, :cond_11

    .line 64
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->h1:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 65
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getOpenFastModeBtn()Z

    move-result p1

    iput-boolean p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->L1:Z

    if-eqz p1, :cond_d

    .line 66
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->Y0:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 67
    :cond_d
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getBattleArea()Lcom/papa91/battle/protocol/BattleArea;

    move-result-object p1

    if-ne p1, v1, :cond_e

    .line 68
    invoke-virtual {p0, v5}, Lcom/join/mgps/activity/arena/GameRoomActivity;->A2(I)V

    goto :goto_9

    .line 69
    :cond_e
    invoke-virtual {p0, v3}, Lcom/join/mgps/activity/arena/GameRoomActivity;->A2(I)V

    .line 70
    :goto_9
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->M0:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 71
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->S0:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 72
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->Q0:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_15

    .line 73
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v2}, Lcom/papa91/battle/protocol/GameRoom;->getGameId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    .line 74
    iget-boolean v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->E1:Z

    if-eqz v1, :cond_f

    .line 75
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->Q0:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_b

    .line 76
    :cond_f
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v1}, Lcom/papa91/battle/protocol/GameRoom;->getElite()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/join/mgps/enums/ConstantIntEnum;->FC:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v2}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 77
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->Q0:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_b

    .line 78
    :cond_10
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->Q0:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_b

    .line 79
    :cond_11
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->Q0:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_14

    .line 80
    iget-boolean v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->E1:Z

    if-eqz v1, :cond_12

    .line 81
    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_a

    .line 82
    :cond_12
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getElite()Z

    move-result p1

    if-nez p1, :cond_13

    .line 83
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->Q0:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_a

    .line 84
    :cond_13
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->Q0:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 85
    :cond_14
    :goto_a
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->h1:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->Y0:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 87
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->M0:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 88
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->S0:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 89
    :cond_15
    :goto_b
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->T2()V

    .line 90
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->Q2()V

    .line 91
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public W(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->H1:Lcom/join/mgps/socket/fight/arena/a;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->f2()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getGameId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 v2, 0x2

    aput-object p1, v1, v2

    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getFightId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 v2, 0x3

    aput-object p1, v1, v2

    const-string p1, "share_friends_2"

    invoke-virtual {v0, p1, v1}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public X(Lcom/join/mgps/dto/ArchiveBean;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getState()Lcom/papa91/battle/protocol/RoomState;

    move-result-object v0

    sget-object v1, Lcom/papa91/battle/protocol/RoomState;->START:Lcom/papa91/battle/protocol/RoomState;

    if-ne v0, v1, :cond_0

    const-string p1, "\u6e38\u620f\u5df2\u7ecf\u5f00\u59cb\uff0c\u65e0\u6cd5\u8bbe\u7f6e\u5b58\u6863\uff01"

    .line 2
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->v1:Z

    if-eqz v0, :cond_1

    const-string p1, "\u623f\u95f4\u5df2\u7ecf\u8fdb\u5165\u5012\u8ba1\u65f6\u72b6\u6001\uff0c\u65e0\u6cd5\u518d\u8bbe\u7f6e\u7f51\u7edc\u5b58\u6863\uff01"

    .line 4
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_1
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->R1:Lcom/join/mgps/dto/ArchiveBean;

    .line 6
    iput-object p2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->U1:Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 7
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    iget-object p2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->P1:Lcom/join/mgps/dialog/o;

    if-eqz p2, :cond_3

    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArchiveBean;->getShowName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/join/mgps/dialog/o;->e(Ljava/lang/String;)V

    .line 10
    :cond_3
    iget-object p2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->R0:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ArchiveBean;->getShowName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 11
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->P1:Lcom/join/mgps/dialog/o;

    if-eqz p1, :cond_5

    const-string p2, "\u9009\u62e9"

    .line 12
    invoke-virtual {p1, p2}, Lcom/join/mgps/dialog/o;->e(Ljava/lang/String;)V

    .line 13
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->R0:Landroid/widget/TextView;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method Z1()V
    .locals 2

    const-string v0, "GameRoomActivity"

    const-string v1, "---cancelCountDowner---"

    .line 1
    invoke-static {v0, v1}, Lcom/join/mgps/Util/t0;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->x1:I

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->v1:Z

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->y1:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method afterViews()V
    .locals 11
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/BaseActivity;->setSystemUiHide(Z)V

    .line 2
    invoke-static {}, Lcom/join/mgps/rpc/impl/k;->n0()Lcom/join/mgps/rpc/impl/k;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->b2:Lcom/join/mgps/rpc/k;

    .line 3
    invoke-static {}, Lcom/join/mgps/rpc/impl/j;->n0()Lcom/join/mgps/rpc/impl/k;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->c2:Lcom/join/mgps/rpc/k;

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->C0:Landroid/widget/TextView;

    const-string v2, "\u7b49\u5f85\u5f00\u59cb\uff0c\u5f00\u59cb\u540e\u5c06\u6263\u9664\u4f6010\u94dc\u677f"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "\u5f53\u524d\u7f51\u7edc\u4e0d\u53ef\u7528!"

    .line 6
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->i2()V

    .line 8
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_1

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 10
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 12
    :cond_1
    invoke-static {}, Lcom/join/mgps/rpc/impl/k;->n0()Lcom/join/mgps/rpc/impl/k;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->O1:Lcom/join/mgps/rpc/k;

    .line 13
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v1}, Lcom/papa91/battle/protocol/GameRoom;->getFastMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 14
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->j2(I)V

    .line 15
    :cond_2
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v1}, Lcom/papa91/battle/protocol/GameRoom;->getElite()Z

    move-result v1

    const/4 v2, 0x4

    if-eqz v1, :cond_3

    .line 16
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->E0:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 17
    :cond_3
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getVip_level()I

    move-result v1

    if-lez v1, :cond_4

    .line 18
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->E0:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 19
    :cond_4
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v1}, Lcom/papa91/battle/protocol/GameRoom;->getOpenFastModeBtn()Z

    move-result v1

    iput-boolean v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->L1:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    .line 20
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->Y0:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 21
    :cond_5
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v1}, Lcom/papa91/battle/protocol/GameRoom;->getBattleArea()Lcom/papa91/battle/protocol/BattleArea;

    move-result-object v1

    sget-object v4, Lcom/papa91/battle/protocol/BattleArea;->ALL:Lcom/papa91/battle/protocol/BattleArea;

    if-ne v1, v4, :cond_6

    .line 22
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->A2(I)V

    goto :goto_0

    .line 23
    :cond_6
    invoke-virtual {p0, v3}, Lcom/join/mgps/activity/arena/GameRoomActivity;->A2(I)V

    .line 24
    :goto_0
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v5, v2, [I

    const-string v6, "#f47500"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    aput v7, v5, v3

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    aput v7, v5, v0

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x2

    aput v7, v5, v8

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x3

    aput v6, v5, v7

    invoke-direct {v1, v4, v5}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    const/high16 v4, 0x41000000    # 8.0f

    .line 25
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 26
    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    sget-object v6, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v2, v2, [I

    const-string v9, "#FF8C00"

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    aput v10, v2, v3

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    aput v10, v2, v0

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    aput v10, v2, v8

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    aput v9, v2, v7

    invoke-direct {v5, v6, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 27
    invoke-virtual {v5, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 28
    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    new-array v6, v0, [I

    const v9, 0x10100a7

    aput v9, v6, v3

    .line 29
    invoke-virtual {v2, v6, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v5, v3, [I

    .line 30
    invoke-virtual {v2, v5, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 31
    iput-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->J1:Landroid/graphics/drawable/Drawable;

    .line 32
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v5, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v6, v7, [I

    const-string v7, "#F47500"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    aput v9, v6, v3

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    aput v9, v6, v0

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    aput v0, v6, v8

    invoke-direct {v2, v5, v6}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 33
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 34
    iput-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->K1:Landroid/graphics/drawable/Drawable;

    .line 35
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->G0:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->t0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0909e0

    .line 36
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/PlayerInfoContainerView;

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->d1:Lcom/join/mgps/customview/PlayerInfoContainerView;

    .line 37
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->G1:Lcom/join/mgps/customview/PlayerInfoContainerView$a;

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/PlayerInfoContainerView;->setPlayerInfoCallback(Lcom/join/mgps/customview/PlayerInfoContainerView$a;)V

    .line 38
    new-instance v0, Lcom/join/mgps/socket/fight/arena/a;

    invoke-direct {v0, p0, p0}, Lcom/join/mgps/socket/fight/arena/a;-><init>(Landroid/app/Activity;Lcom/join/mgps/socket/fight/arena/a$y;)V

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->H1:Lcom/join/mgps/socket/fight/arena/a;

    .line 39
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->q2()V

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v1}, Lcom/papa91/battle/protocol/GameRoom;->getGameId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->l2(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->U2(Lcom/papa91/battle/protocol/GameRoom;)V

    .line 42
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    move-result v0

    if-eqz v0, :cond_7

    .line 43
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v1}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v3, v1, v2}, Lcom/wufan/friend/chat/c;->i(IJ)V

    .line 44
    :cond_7
    new-instance v0, Lcom/join/mgps/socket/fight/arena/b;

    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->p1:Lcom/join/mgps/socket/fight/arena/b$b;

    invoke-direct {v0, p0, v1}, Lcom/join/mgps/socket/fight/arena/b;-><init>(Landroid/app/Activity;Lcom/join/mgps/socket/fight/arena/b$b;)V

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->o1:Lcom/join/mgps/socket/fight/arena/b;

    .line 45
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->bindService()V

    .line 46
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->x2(Lcom/papa91/battle/protocol/GameRoom;)V

    .line 47
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->M1:Landroidx/fragment/app/FragmentManager;

    .line 48
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 49
    :try_start_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 51
    :goto_1
    invoke-static {p0}, Lcom/join/android/app/common/utils/j;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/j;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/android/app/common/utils/j;->j(Landroid/app/Activity;)F

    move-result v0

    float-to-double v1, v0

    const-wide v3, 0x3ffe666666666666L    # 1.9

    cmpl-double v5, v1, v3

    if-lez v5, :cond_8

    .line 52
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->d1:Lcom/join/mgps/customview/PlayerInfoContainerView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 53
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07132e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 54
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f071302

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 55
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->d1:Lcom/join/mgps/customview/PlayerInfoContainerView;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_8
    const/high16 v1, 0x41100000    # 9.0f

    mul-float v0, v0, v1

    const/high16 v1, 0x41800000    # 16.0f

    div-float/2addr v0, v1

    .line 56
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->d1:Lcom/join/mgps/customview/PlayerInfoContainerView;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 57
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07120e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v0

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 58
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v0

    float-to-int v0, v2

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 59
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->d1:Lcom/join/mgps/customview/PlayerInfoContainerView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_2
    return-void
.end method

.method public b2(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    const-string v1, ""

    .line 1
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/16 v1, 0x2000

    invoke-virtual {p1, p2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_1
    :goto_0
    return v0
.end method

.method c2()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/IntentUtil;->goLoginBattle(Landroid/content/Context;)Z

    return-void
.end method

.method public i0(Lapp/mgsim/arena/RoomSeatState;I)V
    .locals 2

    .line 1
    sget-object v0, Lapp/mgsim/arena/RoomSeatState;->OPEN:Lapp/mgsim/arena/RoomSeatState;

    const-string v1, "register_type_GameRoomActivity"

    if-ne p1, v0, :cond_1

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getState()Lcom/papa91/battle/protocol/RoomState;

    move-result-object p1

    sget-object v0, Lcom/papa91/battle/protocol/RoomState;->START:Lcom/papa91/battle/protocol/RoomState;

    if-ne p1, v0, :cond_0

    const-string p1, "\u6e38\u620f\u5df2\u7ecf\u5f00\u59cb\uff0c\u65e0\u6cd5\u5f00\u542f\u5ea7\u4f4d!"

    .line 3
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->o1:Lcom/join/mgps/socket/fight/arena/b;

    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    move-result v0

    invoke-static {v1, v0, p2}, Lapp/mgsim/arena/ArenaRequestFactory;->openSit(Ljava/lang/String;II)Lapp/mgsim/arena/ArenaRequest;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/join/mgps/socket/fight/arena/b;->f(Lapp/mgsim/arena/ArenaRequest;)V

    goto :goto_0

    .line 5
    :cond_1
    sget-object v0, Lapp/mgsim/arena/RoomSeatState;->CLOSE:Lapp/mgsim/arena/RoomSeatState;

    if-ne p1, v0, :cond_3

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getState()Lcom/papa91/battle/protocol/RoomState;

    move-result-object p1

    sget-object v0, Lcom/papa91/battle/protocol/RoomState;->START:Lcom/papa91/battle/protocol/RoomState;

    if-ne p1, v0, :cond_2

    const-string p1, "\u6e38\u620f\u5df2\u7ecf\u5f00\u59cb\uff0c\u65e0\u6cd5\u5173\u95ed\u5ea7\u4f4d!"

    .line 7
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    return-void

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->o1:Lcom/join/mgps/socket/fight/arena/b;

    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    move-result v0

    invoke-static {v1, v0, p2}, Lapp/mgsim/arena/ArenaRequestFactory;->closeSit(Ljava/lang/String;II)Lapp/mgsim/arena/ArenaRequest;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/join/mgps/socket/fight/arena/b;->f(Lapp/mgsim/arena/ArenaRequest;)V

    goto :goto_0

    .line 9
    :cond_3
    sget-object v0, Lapp/mgsim/arena/RoomSeatState;->REMOVE:Lapp/mgsim/arena/RoomSeatState;

    if-ne p1, v0, :cond_5

    .line 10
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getState()Lcom/papa91/battle/protocol/RoomState;

    move-result-object p1

    sget-object v0, Lcom/papa91/battle/protocol/RoomState;->START:Lcom/papa91/battle/protocol/RoomState;

    if-ne p1, v0, :cond_4

    const-string p1, "\u6e38\u620f\u5df2\u7ecf\u5f00\u59cb\uff0c\u65e0\u6cd5\u8e22\u4eba!"

    .line 11
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    return-void

    .line 12
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->o1:Lcom/join/mgps/socket/fight/arena/b;

    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    move-result v0

    invoke-static {v1, v0, p2}, Lapp/mgsim/arena/ArenaRequestFactory;->kickOutRoomPosition(Ljava/lang/String;II)Lapp/mgsim/arena/ArenaRequest;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/join/mgps/socket/fight/arena/b;->f(Lapp/mgsim/arena/ArenaRequest;)V

    goto :goto_0

    .line 13
    :cond_5
    sget-object v0, Lapp/mgsim/arena/RoomSeatState;->SEAT:Lapp/mgsim/arena/RoomSeatState;

    if-ne p1, v0, :cond_7

    .line 14
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getState()Lcom/papa91/battle/protocol/RoomState;

    move-result-object p1

    sget-object v0, Lcom/papa91/battle/protocol/RoomState;->START:Lcom/papa91/battle/protocol/RoomState;

    if-ne p1, v0, :cond_6

    const-string p1, "\u6e38\u620f\u5df2\u7ecf\u5f00\u59cb\uff0c\u4f60\u65e0\u6cd5\u5750\u4e0b\uff01"

    .line 15
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    return-void

    .line 16
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->o1:Lcom/join/mgps/socket/fight/arena/b;

    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    move-result v0

    invoke-static {v1, v0, p2}, Lapp/mgsim/arena/ArenaRequestFactory;->spectatorSit(Ljava/lang/String;II)Lapp/mgsim/arena/ArenaRequest;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/join/mgps/socket/fight/arena/b;->f(Lapp/mgsim/arena/ArenaRequest;)V

    :cond_7
    :goto_0
    return-void
.end method

.method i2()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->S1:Landroid/content/ClipboardManager;

    if-eqz v0, :cond_0

    const-string v1, ""

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->a2()V

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->Z1()V

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->p2()V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->H1:Lcom/join/mgps/socket/fight/arena/a;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/a;->w()V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->s1:Landroid/os/Handler;

    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->t1:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method iv_back()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->m1:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->i2()V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->P()V

    return-void
.end method

.method j2(I)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string v1, "http://113.107.57.112/?ws_domain=fastbattle.5fun.com&ws_ret_type=json"

    goto :goto_0

    :cond_0
    const-string v1, "http://203.130.43.40/?ws_domain=fastbattle.5fun.com&ws_ret_type=json"

    .line 1
    :goto_0
    invoke-static {v1}, Lcom/join/mgps/socket/fight/arena/c;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-ne p1, v0, :cond_2

    const/4 p1, 0x2

    .line 3
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->j2(I)V

    goto :goto_1

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "get battle server id for http nds :"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GameRoomActivity"

    invoke-static {v0, p1}, Lcom/join/mgps/Util/t0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iput-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->d2:Ljava/lang/String;

    :cond_2
    :goto_1
    return-void
.end method

.method k2()V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const-string v0, "\u83b7\u53d6\u914d\u7f6e\u4fe1\u606f\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5\uff01"

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->O1:Lcom/join/mgps/rpc/k;

    iget-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->p0:Lcom/join/mgps/Util/b;

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v2

    iget-object v3, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->p0:Lcom/join/mgps/Util/b;

    invoke-virtual {v3}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v4}, Lcom/papa91/battle/protocol/GameRoom;->getGameId()J

    move-result-wide v4

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/join/mgps/rpc/k;->E(ILjava/lang/String;J)Lcom/join/mgps/dto/ResultArenaBean;

    move-result-object v1

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->p2()V

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Lcom/join/mgps/dto/ResultArenaBean;->getData()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/join/mgps/dto/ResultArenaBean;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/BattleChallengeConfig;

    iput-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->o0:Lcom/join/mgps/dto/BattleChallengeConfig;

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->H2()V

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v1}, Lcom/join/mgps/dto/ResultArenaBean;->getError()I

    move-result v1

    const/16 v2, 0x2bd

    if-ne v1, v2, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->c2()V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->p2()V

    .line 10
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v0, "\u5f53\u524d\u7f51\u7edc\u4e0d\u53ef\u7528\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc!"

    .line 11
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->i2()V

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method l2(Ljava/lang/String;)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->p0:Lcom/join/mgps/Util/b;

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->p0:Lcom/join/mgps/Util/b;

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->c2:Lcom/join/mgps/rpc/k;

    invoke-interface {v2, v1, v0}, Lcom/join/mgps/rpc/k;->P(ILjava/lang/String;)Lcom/join/mgps/dto/ResultArenaBean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultArenaBean;->getError()I

    move-result v1

    if-nez v1, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultArenaBean;->getData()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultArenaBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lapp/mgsim/arena/ArenaLobbyServer;

    invoke-virtual {v0}, Lapp/mgsim/arena/ArenaLobbyServer;->getStartGameCopper()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->A0:I

    if-nez v0, :cond_0

    const/16 v0, 0x14

    .line 7
    iput v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->A0:I

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->R2()V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultArenaBean;->getError()I

    move-result v0

    const/16 v1, 0x2bd

    if-ne v0, v1, :cond_2

    const-string v0, "\u4f60\u7684\u624b\u673a\u767b\u9646\u5df2\u7ecf\u5931\u6548\uff0c\u8bf7\u91cd\u65b0\u767b\u9646!"

    .line 10
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V
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
    :try_start_1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->c2:Lcom/join/mgps/rpc/k;

    invoke-interface {v0, p1}, Lcom/join/mgps/rpc/k;->r(Ljava/lang/String;)Lcom/join/mgps/dto/GameWorldResponse;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameWorldResponse;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    .line 14
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 15
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/ArenaGameInfo;

    .line 16
    invoke-virtual {v1}, Lcom/join/mgps/dto/ArenaGameInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v1}, Lcom/join/mgps/Util/b2;->l(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 17
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getGameId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/join/mgps/Util/b2;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ArenaGameInfo;

    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->a2:Lcom/join/mgps/dto/ArenaGameInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 18
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    return-void

    .line 19
    :goto_3
    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method m2()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->s2()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->p2()V

    const-string v0, "\u83b7\u53d6\u670d\u52a1\u5668ip\u5931\u8d25"

    .line 3
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->i2()V

    :cond_0
    return-void
.end method

.method public n0(Lcom/papa91/battle/protocol/RoomPosition;I)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition;->getVip()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "\u7531\u4e8e\u5bf9\u65b9\u662f\u609f\u996dVIP\u60a8\u65e0\u6cd5\u5c06\u5176\u8e22\u51fa\u623f\u95f4"

    .line 2
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    move-result p1

    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->p0:Lcom/join/mgps/Util/b;

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->z1:Lapp/mgsim/arena/UserType;

    sget-object v0, Lapp/mgsim/arena/UserType;->OWNER:Lapp/mgsim/arena/UserType;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getState()Lcom/papa91/battle/protocol/RoomState;

    move-result-object p1

    sget-object v0, Lcom/papa91/battle/protocol/RoomState;->START:Lcom/papa91/battle/protocol/RoomState;

    if-eq p1, v0, :cond_1

    .line 4
    iput p2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->F1:I

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->o1:Lcom/join/mgps/socket/fight/arena/b;

    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    move-result v0

    const-string v1, "register_type_GameRoomActivity"

    invoke-static {v1, v0, p2}, Lapp/mgsim/arena/ArenaRequestFactory;->getKickOutRoomPositionInfo(Ljava/lang/String;II)Lapp/mgsim/arena/ArenaRequest;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/join/mgps/socket/fight/arena/b;->f(Lapp/mgsim/arena/ArenaRequest;)V

    :cond_1
    :goto_0
    return-void
.end method

.method n2(Lapp/mgsim/arena/ArenaResponse;)V
    .locals 10
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->I1:Lcom/join/mgps/dialog/x0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->I1:Lcom/join/mgps/dialog/x0;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 3
    :cond_0
    :goto_0
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    const-string v1, "cmd_lobby_start_game"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    const-string v1, "push_start_game_room_broadcast"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    :cond_1
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->a2()V

    .line 5
    :cond_2
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    const-string v1, "cmd_set_room_server_play_mode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "\u6d41\u7545\u6a21\u5f0f\u8bbe\u7f6e\u5931\u8d25"

    .line 6
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->y2()V

    .line 8
    :cond_3
    iget v0, p1, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    const/16 v1, 0xc

    const-string v2, "\u786e\u5b9a"

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/16 v6, 0x101

    const/4 v7, 0x0

    const/4 v8, 0x4

    const-string v9, "dialog_error_hint"

    if-eq v0, v1, :cond_5

    const/16 v1, 0xe

    if-eq v0, v1, :cond_4

    .line 9
    invoke-static {p1}, Lcom/join/mgps/socket/fight/arena/c;->g(Lapp/mgsim/arena/ArenaResponse;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    goto :goto_1

    .line 10
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->H1:Lcom/join/mgps/socket/fight/arena/a;

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v7

    iget p1, p1, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v5

    const-string p1, "\u8be5\u623f\u95f4\u5df2\u7ecf\u89e3\u6563"

    aput-object p1, v1, v4

    aput-object v2, v1, v3

    invoke-virtual {v0, v9, v1}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->H1:Lcom/join/mgps/socket/fight/arena/a;

    invoke-virtual {p1}, Lcom/join/mgps/socket/fight/arena/a;->x()Landroid/app/Dialog;

    move-result-object p1

    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomActivity$s;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/GameRoomActivity$s;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_1

    .line 12
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->H1:Lcom/join/mgps/socket/fight/arena/a;

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v7

    iget p1, p1, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v5

    const-string p1, "\u94dc\u677f\u4e0d\u8db3\uff0c\u65e0\u6cd5\u8bbe\u7f6e\u6311\u6218\u91d1"

    aput-object p1, v1, v4

    aput-object v2, v1, v3

    invoke-virtual {v0, v9, v1}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public o(Lcom/join/mgps/dto/FriendBean;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getP1()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v1

    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendBean;->getUid()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/join/mgps/activity/arena/GameRoomActivity;->t2(Lcom/papa91/battle/protocol/RoomPosition;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getP2()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v1

    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendBean;->getUid()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/join/mgps/activity/arena/GameRoomActivity;->t2(Lcom/papa91/battle/protocol/RoomPosition;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 4
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getP3()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v1

    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendBean;->getUid()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/join/mgps/activity/arena/GameRoomActivity;->t2(Lcom/papa91/battle/protocol/RoomPosition;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 5
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getP4()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v1

    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendBean;->getUid()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/join/mgps/activity/arena/GameRoomActivity;->t2(Lcom/papa91/battle/protocol/RoomPosition;I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    .line 6
    iget-object v2, p0, Lcom/join/mgps/activity/FriendActivity;->h:Ljava/lang/String;

    new-instance v3, Lcom/join/mgps/activity/arena/GameRoomActivity$n;

    invoke-direct {v3, p0, p1, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity$n;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity;Lcom/join/mgps/dto/FriendBean;Lcom/papa91/battle/protocol/GameRoom;)V

    const-string p1, "FIGHT_LOBBY"

    invoke-static {p0, v1, v2, p1, v3}, Lcom/join/mgps/Util/UtilsMy;->p0(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/join/mgps/activity/arena/GameRoomActivity$x;)V

    return-void

    .line 7
    :cond_2
    :goto_0
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "\u7528\u6237\u5df2\u52a0\u5165\u623f\u95f4"

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method

.method public o0(Lcom/papa91/battle/protocol/RoomPosition;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    move-result v0

    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->p0:Lcom/join/mgps/Util/b;

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 2
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    const/4 v1, 0x4

    .line 3
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/join/mgps/rpc/g;->u:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "report_uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->p0:Lcom/join/mgps/Util/b;

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&reported_uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 5
    invoke-static {p0}, Lcom/join/mgps/activity/ShareWebActivity_;->O2(Landroid/content/Context;)Lcom/join/mgps/activity/ShareWebActivity_$f0;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/ShareWebActivity_$f0;->b(Lcom/join/mgps/Util/IntentDateBean;)Lcom/join/mgps/activity/ShareWebActivity_$f0;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    :cond_0
    return-void
.end method

.method o2(Lcom/papa91/battle/protocol/KickInfo;)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->H1:Lcom/join/mgps/socket/fight/arena/a;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    iget p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->F1:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string p1, "kic_out_room_info"

    invoke-virtual {v0, p1, v1}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "BATTLE_ROOM"

    .line 1
    iput-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->i:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v1}, Lcom/papa91/battle/protocol/GameRoom;->getGameId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->h:Ljava/lang/String;

    .line 4
    :cond_0
    iput-object p0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->n1:Landroid/content/Context;

    const/4 v0, 0x4

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/FriendActivity;->h:Ljava/lang/String;

    new-instance v2, Lcom/join/mgps/activity/arena/GameRoomActivity$k;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/arena/GameRoomActivity$k;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity;)V

    const-string v3, "FIGHT_LOBBY"

    invoke-static {p0, v0, v1, v3, v2}, Lcom/join/mgps/Util/UtilsMy;->p0(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/join/mgps/activity/arena/GameRoomActivity$x;)V

    .line 6
    invoke-super {p0, p1}, Lcom/join/mgps/activity/FriendActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->o1:Lcom/join/mgps/socket/fight/arena/b;

    const-string v1, "GameRoomActivity"

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "--onStop---removeObserver---"

    .line 3
    invoke-static {v1, v0}, Lcom/join/mgps/Util/t0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->o1:Lcom/join/mgps/socket/fight/arena/b;

    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    move-result-object v0

    iget-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->q1:Lapp/mgsim/arena/SocketListener$NotifyObserver;

    invoke-virtual {v0, v2}, Lcom/join/mgps/socket/fight/arena/ArenaService;->A(Ljava/lang/Object;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->o1:Lcom/join/mgps/socket/fight/arena/b;

    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->g()V

    :cond_1
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->C1:Z

    .line 7
    invoke-super {p0}, Lcom/join/mgps/activity/FriendActivity;->onDestroy()V

    .line 8
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->d2()V

    const-string v0, "--onDestroy---"

    .line 9
    invoke-static {v1, v0}, Lcom/join/mgps/Util/t0;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onFriendEvent(Lcom/join/mgps/event/m;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/event/m;->a()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/join/mgps/event/m;->g()I

    move-result p1

    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    move-result v0

    if-eq p1, v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-boolean p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->m1:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->i2()V

    return p2

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->P()V

    return p2

    .line 5
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/FriendActivity;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->o1:Lcom/join/mgps/socket/fight/arena/b;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "GameRoomActivity"

    const-string v1, "--onResume---registerObserver---"

    .line 4
    invoke-static {v0, v1}, Lcom/join/mgps/Util/t0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->o1:Lcom/join/mgps/socket/fight/arena/b;

    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->q1:Lapp/mgsim/arena/SocketListener$NotifyObserver;

    invoke-virtual {v0, v1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->z(Lapp/mgsim/arena/SocketListener$NotifyObserver;)V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onStop()V

    return-void
.end method

.method p2()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->I1:Lcom/join/mgps/dialog/x0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->I1:Lcom/join/mgps/dialog/x0;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method showToast(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->s2()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public t()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method t2(Lcom/papa91/battle/protocol/RoomPosition;I)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    move-result p1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public w0(IILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method x2(Lcom/papa91/battle/protocol/GameRoom;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const-string v0, "GameRoomActivity"

    .line 1
    invoke-static {v0, p1}, Lcom/join/mgps/socket/fight/arena/c;->q(Ljava/lang/String;Lcom/papa91/battle/protocol/GameRoom;)V

    return-void
.end method

.method y2()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->Z0:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->A2(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->A2(I)V

    :goto_0
    return-void
.end method

.method public z(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->p0:Lcom/join/mgps/Util/b;

    invoke-static {v0, v1}, Lcom/join/mgps/socket/fight/arena/c;->a(Lcom/papa91/battle/protocol/GameRoom;Lcom/join/mgps/Util/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "\u5df2\u6709\u73a9\u5bb6\u8fdb\u5165\uff0c\u65e0\u6cd5\u518d\u8bbe\u7f6e\u6311\u6218\u91d1!"

    .line 2
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->v1:Z

    if-eqz v0, :cond_1

    const-string p1, "\u623f\u95f4\u5df2\u7ecf\u8fdb\u5165\u5012\u8ba1\u65f6\u72b6\u6001\uff0c\u65e0\u6cd5\u518d\u8bbe\u7f6e\u6311\u6218\u91d1\uff01"

    .line 4
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getState()Lcom/papa91/battle/protocol/RoomState;

    move-result-object v0

    sget-object v1, Lcom/papa91/battle/protocol/RoomState;->START:Lcom/papa91/battle/protocol/RoomState;

    if-ne v0, v1, :cond_2

    const-string p1, "\u6e38\u620f\u5df2\u7ecf\u5f00\u59cb\uff0c\u65e0\u6cd5\u8bbe\u7f6e\u6311\u6218\u91d1\uff01"

    .line 6
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getChallengeCoins()I

    move-result v0

    if-ne v0, p1, :cond_3

    return-void

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->o1:Lcom/join/mgps/socket/fight/arena/b;

    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v1}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    move-result v1

    const-string v2, "register_type_GameRoomActivity"

    invoke-static {v2, v1, p1}, Lapp/mgsim/arena/ArenaRequestFactory;->setChallengeGolden(Ljava/lang/String;II)Lapp/mgsim/arena/ArenaRequest;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/socket/fight/arena/b;->f(Lapp/mgsim/arena/ArenaRequest;)V

    return-void
.end method

.method z2()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Background;
        delay = 0xbb8L
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.show.realname.check"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
