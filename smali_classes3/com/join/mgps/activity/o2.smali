.class public final Lcom/join/mgps/activity/o2;
.super Lcom/join/mgps/activity/PapaMainV3Fragment;
.source "PapaMainV3Fragment_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/o2$y0;
    }
.end annotation


# instance fields
.field private final h1:Li3/c;

.field private i1:Landroid/view/View;

.field private final j1:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final k1:Landroid/content/IntentFilter;

.field private final l1:Landroid/content/BroadcastReceiver;

.field private final m1:Landroid/content/IntentFilter;

.field private final n1:Landroid/content/BroadcastReceiver;

.field private final o1:Landroid/content/IntentFilter;

.field private final p1:Landroid/content/BroadcastReceiver;

.field private final q1:Landroid/content/IntentFilter;

.field private final r1:Landroid/content/BroadcastReceiver;

.field private final s1:Landroid/content/IntentFilter;

.field private final t1:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/o2;->h1:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/o2;->j1:Ljava/util/Map;

    .line 4
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/o2;->k1:Landroid/content/IntentFilter;

    .line 5
    new-instance v0, Lcom/join/mgps/activity/o2$k;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/o2$k;-><init>(Lcom/join/mgps/activity/o2;)V

    iput-object v0, p0, Lcom/join/mgps/activity/o2;->l1:Landroid/content/BroadcastReceiver;

    .line 6
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/o2;->m1:Landroid/content/IntentFilter;

    .line 7
    new-instance v0, Lcom/join/mgps/activity/o2$v;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/o2$v;-><init>(Lcom/join/mgps/activity/o2;)V

    iput-object v0, p0, Lcom/join/mgps/activity/o2;->n1:Landroid/content/BroadcastReceiver;

    .line 8
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/o2;->o1:Landroid/content/IntentFilter;

    .line 9
    new-instance v0, Lcom/join/mgps/activity/o2$g0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/o2$g0;-><init>(Lcom/join/mgps/activity/o2;)V

    iput-object v0, p0, Lcom/join/mgps/activity/o2;->p1:Landroid/content/BroadcastReceiver;

    .line 10
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/o2;->q1:Landroid/content/IntentFilter;

    .line 11
    new-instance v0, Lcom/join/mgps/activity/o2$r0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/o2$r0;-><init>(Lcom/join/mgps/activity/o2;)V

    iput-object v0, p0, Lcom/join/mgps/activity/o2;->r1:Landroid/content/BroadcastReceiver;

    .line 12
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/o2;->s1:Landroid/content/IntentFilter;

    .line 13
    new-instance v0, Lcom/join/mgps/activity/o2$t0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/o2$t0;-><init>(Lcom/join/mgps/activity/o2;)V

    iput-object v0, p0, Lcom/join/mgps/activity/o2;->t1:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic A2(Lcom/join/mgps/activity/o2;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->X0()V

    return-void
.end method

.method static synthetic B2(Lcom/join/mgps/activity/o2;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->W0()V

    return-void
.end method

.method static synthetic C2(Lcom/join/mgps/activity/o2;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->Q0()V

    return-void
.end method

.method static synthetic D2(Lcom/join/mgps/activity/o2;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/PapaMainV3Fragment;->T0(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic E2(Lcom/join/mgps/activity/o2;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->C0()V

    return-void
.end method

.method static synthetic F2(Lcom/join/mgps/activity/o2;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->K1()V

    return-void
.end method

.method static synthetic G2(Lcom/join/mgps/activity/o2;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/PapaMainV3Fragment;->z0(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic H2(Lcom/join/mgps/activity/o2;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->L0()V

    return-void
.end method

.method static synthetic I2(Lcom/join/mgps/activity/o2;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/PapaMainV3Fragment;->V1(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic J2(Lcom/join/mgps/activity/o2;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->d1()V

    return-void
.end method

.method static synthetic K2(Lcom/join/mgps/activity/o2;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/PapaMainV3Fragment;->e1(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic L2(Lcom/join/mgps/activity/o2;Lcom/join/mgps/dto/PAPAHomeBeanV7;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/PapaMainV3Fragment;->A1(Lcom/join/mgps/dto/PAPAHomeBeanV7;)V

    return-void
.end method

.method static synthetic M2(Lcom/join/mgps/activity/o2;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->K0()V

    return-void
.end method

.method static synthetic N2(Lcom/join/mgps/activity/o2;Ljava/lang/String;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/PapaMainV3Fragment;->J0(Ljava/lang/String;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V

    return-void
.end method

.method static synthetic O2(Lcom/join/mgps/activity/o2;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->O1()V

    return-void
.end method

.method static synthetic P2(Lcom/join/mgps/activity/o2;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->f1()V

    return-void
.end method

.method static synthetic Q2(Lcom/join/mgps/activity/o2;Lcom/join/mgps/dto/PAPAHomeBeanV7;Ljava/lang/String;IZ)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/join/mgps/activity/PapaMainV3Fragment;->X1(Lcom/join/mgps/dto/PAPAHomeBeanV7;Ljava/lang/String;IZ)V

    return-void
.end method

.method static synthetic R2(Lcom/join/mgps/activity/o2;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->j1()V

    return-void
.end method

.method static synthetic S2(Lcom/join/mgps/activity/o2;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->z1()V

    return-void
.end method

.method static synthetic T2(Lcom/join/mgps/activity/o2;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->l1()V

    return-void
.end method

.method public static U2()Lcom/join/mgps/activity/o2$y0;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/o2$y0;

    invoke-direct {v0}, Lcom/join/mgps/activity/o2$y0;-><init>()V

    return-object v0
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->x:Lcom/join/mgps/pref/PrefDef_;

    .line 3
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    const v0, 0x7f110207

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->d:Ljava/lang/String;

    const v0, 0x7f1100aa

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->e:Ljava/lang/String;

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/o2;->k1:Landroid/content/IntentFilter;

    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.account_status_uidchange"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/o2;->m1:Landroid/content/IntentFilter;

    const-string v0, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/o2;->m1:Landroid/content/IntentFilter;

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/o2;->m1:Landroid/content/IntentFilter;

    const-string v0, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/join/mgps/activity/o2;->m1:Landroid/content/IntentFilter;

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/o2;->o1:Landroid/content/IntentFilter;

    const-string v0, "com.broadcast.bespeak.sussess"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcom/join/mgps/activity/o2;->q1:Landroid/content/IntentFilter;

    const-string v0, "com.papa.maintab.clicked"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 13
    iget-object p1, p0, Lcom/join/mgps/activity/o2;->s1:Landroid/content/IntentFilter;

    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.refreshMyGame"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Lcom/join/mgps/activity/o2;->s1:Landroid/content/IntentFilter;

    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.paygamefinish"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic k2(Lcom/join/mgps/activity/o2;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/PapaMainV3Fragment;->m1(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic l2(Lcom/join/mgps/activity/o2;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->Q1()V

    return-void
.end method

.method static synthetic m2(Lcom/join/mgps/activity/o2;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->e2()V

    return-void
.end method

.method static synthetic n2(Lcom/join/mgps/activity/o2;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/PapaMainV3Fragment;->showMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic o2(Lcom/join/mgps/activity/o2;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->H1()V

    return-void
.end method

.method static synthetic p2(Lcom/join/mgps/activity/o2;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->i1()V

    return-void
.end method

.method static synthetic q2(Lcom/join/mgps/activity/o2;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->showLoding()V

    return-void
.end method

.method static synthetic r2(Lcom/join/mgps/activity/o2;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->showLodingFailed()V

    return-void
.end method

.method static synthetic s2(Lcom/join/mgps/activity/o2;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->R1()V

    return-void
.end method

.method static synthetic t2(Lcom/join/mgps/activity/o2;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->S0()V

    return-void
.end method

.method static synthetic u2(Lcom/join/mgps/activity/o2;Lcom/join/mgps/dto/HomeFloatData;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/PapaMainV3Fragment;->P1(Lcom/join/mgps/dto/HomeFloatData;)V

    return-void
.end method

.method static synthetic v2(Lcom/join/mgps/activity/o2;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->a2()V

    return-void
.end method

.method static synthetic w2(Lcom/join/mgps/activity/o2;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/PapaMainV3Fragment;->y1(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V

    return-void
.end method

.method static synthetic x2(Lcom/join/mgps/activity/o2;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/PapaMainV3Fragment;->S1(Ljava/util/List;)V

    return-void
.end method

.method static synthetic y2(Lcom/join/mgps/activity/o2;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/PapaMainV3Fragment;->y0(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V

    return-void
.end method

.method static synthetic z2(Lcom/join/mgps/activity/o2;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/PapaMainV3Fragment;->D0(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V

    return-void
.end method


# virtual methods
.method A1(Lcom/join/mgps/dto/PAPAHomeBeanV7;)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/o2$p0;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/o2$p0;-><init>(Lcom/join/mgps/activity/o2;Ljava/lang/String;JLjava/lang/String;Lcom/join/mgps/dto/PAPAHomeBeanV7;)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method C0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/o2$j0;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/o2$j0;-><init>(Lcom/join/mgps/activity/o2;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method D0(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/o2$d0;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/o2$d0;-><init>(Lcom/join/mgps/activity/o2;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method H1()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/o2$s;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/o2$s;-><init>(Lcom/join/mgps/activity/o2;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method J0(Ljava/lang/String;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V
    .locals 9

    .line 1
    new-instance v8, Lcom/join/mgps/activity/o2$s0;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v8

    move-object v1, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/activity/o2$s0;-><init>(Lcom/join/mgps/activity/o2;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V

    invoke-static {v8}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method K0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/o2$q0;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/o2$q0;-><init>(Lcom/join/mgps/activity/o2;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method K1()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/o2$k0;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/o2$k0;-><init>(Lcom/join/mgps/activity/o2;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method L0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/o2$m0;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/o2$m0;-><init>(Lcom/join/mgps/activity/o2;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method O1()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/o2$j;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/o2$j;-><init>(Lcom/join/mgps/activity/o2;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method P1(Lcom/join/mgps/dto/HomeFloatData;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/o2$z;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/o2$z;-><init>(Lcom/join/mgps/activity/o2;Lcom/join/mgps/dto/HomeFloatData;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method Q0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/o2$h0;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/o2$h0;-><init>(Lcom/join/mgps/activity/o2;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method Q1()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/o2$q;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/o2$q;-><init>(Lcom/join/mgps/activity/o2;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method R1()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/o2$x;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/o2$x;-><init>(Lcom/join/mgps/activity/o2;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method S0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/o2$y;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/o2$y;-><init>(Lcom/join/mgps/activity/o2;)V

    const-string v1, ""

    const-wide/16 v2, 0x7d0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method S1(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/VipPopData;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/o2$h;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/o2$h;-><init>(Lcom/join/mgps/activity/o2;Ljava/util/List;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method T0(ILjava/lang/String;)V
    .locals 9

    .line 1
    new-instance v8, Lcom/join/mgps/activity/o2$i0;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v8

    move-object v1, p0

    move v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/activity/o2$i0;-><init>(Lcom/join/mgps/activity/o2;Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-static {v8}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method V1(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/o2$i;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/o2$i;-><init>(Lcom/join/mgps/activity/o2;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method W0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/o2$f0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/o2$f0;-><init>(Lcom/join/mgps/activity/o2;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method X0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/o2$e0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/o2$e0;-><init>(Lcom/join/mgps/activity/o2;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method X1(Lcom/join/mgps/dto/PAPAHomeBeanV7;Ljava/lang/String;IZ)V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/o2$m;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/o2$m;-><init>(Lcom/join/mgps/activity/o2;Lcom/join/mgps/dto/PAPAHomeBeanV7;Ljava/lang/String;IZ)V

    const-string p1, ""

    const-wide/16 p2, 0x0

    invoke-static {p1, v6, p2, p3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method a2()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/o2$a0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/o2$a0;-><init>(Lcom/join/mgps/activity/o2;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method d1()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/o2$n0;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/o2$n0;-><init>(Lcom/join/mgps/activity/o2;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method e1(Ljava/lang/String;I)V
    .locals 9

    .line 1
    new-instance v8, Lcom/join/mgps/activity/o2$o0;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v8

    move-object v1, p0

    move-object v6, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/activity/o2$o0;-><init>(Lcom/join/mgps/activity/o2;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;I)V

    invoke-static {v8}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method e2()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/o2$g;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/o2$g;-><init>(Lcom/join/mgps/activity/o2;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method f1()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/o2$l;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/o2$l;-><init>(Lcom/join/mgps/activity/o2;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public getBean(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/o2;->j1:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method i1()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/o2$t;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/o2$t;-><init>(Lcom/join/mgps/activity/o2;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public internalFindViewById(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/o2;->i1:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method j1()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/o2$n;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/o2$n;-><init>(Lcom/join/mgps/activity/o2;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method l1()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/o2$p;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/o2$p;-><init>(Lcom/join/mgps/activity/o2;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method m1(Landroid/content/Intent;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/o2$f;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/o2$f;-><init>(Lcom/join/mgps/activity/o2;Landroid/content/Intent;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/o2;->h1:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/o2;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v1, p0, Lcom/join/mgps/activity/o2;->l1:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/join/mgps/activity/o2;->k1:Landroid/content/IntentFilter;

    invoke-virtual {p1, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v1, p0, Lcom/join/mgps/activity/o2;->n1:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/join/mgps/activity/o2;->m1:Landroid/content/IntentFilter;

    invoke-virtual {p1, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v1, p0, Lcom/join/mgps/activity/o2;->p1:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/join/mgps/activity/o2;->o1:Landroid/content/IntentFilter;

    invoke-virtual {p1, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v1, p0, Lcom/join/mgps/activity/o2;->r1:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/join/mgps/activity/o2;->q1:Landroid/content/IntentFilter;

    invoke-virtual {p1, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v1, p0, Lcom/join/mgps/activity/o2;->t1:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/join/mgps/activity/o2;->s1:Landroid/content/IntentFilter;

    invoke-virtual {p1, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 9
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/join/mgps/activity/o2;->i1:Landroid/view/View;

    if-nez p3, :cond_0

    const p3, 0x7f0c0486

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/o2;->i1:Landroid/view/View;

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/o2;->i1:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/o2;->l1:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/o2;->n1:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/o2;->p1:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/o2;->r1:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/o2;->t1:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 6
    invoke-super {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/activity/o2;->i1:Landroid/view/View;

    .line 3
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->c:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

    .line 4
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->g:Landroid/widget/TextView;

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->h:Landroid/widget/LinearLayout;

    .line 6
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->i:Landroid/widget/LinearLayout;

    .line 7
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->j:Landroid/widget/ImageView;

    .line 8
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->k:Landroid/view/View;

    .line 9
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->l:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 10
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->m:Landroid/widget/ImageView;

    .line 11
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->n:Landroid/view/View;

    .line 12
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->o:Landroid/widget/FrameLayout;

    .line 13
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->p:Landroid/widget/ViewFlipper;

    .line 14
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->q:Landroid/widget/ImageView;

    .line 15
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->r:Lcom/google/android/material/appbar/AppBarLayout;

    .line 16
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->H:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 17
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->I:Landroid/view/View;

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 4

    const v0, 0x7f0908e7

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->c:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

    const v0, 0x7f091220

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->g:Landroid/widget/TextView;

    const v0, 0x7f0909b5

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->h:Landroid/widget/LinearLayout;

    const v0, 0x7f0909b0

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->i:Landroid/widget/LinearLayout;

    const v0, 0x7f090a96

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->j:Landroid/widget/ImageView;

    const v0, 0x7f091021

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->k:Landroid/view/View;

    const v0, 0x7f0907c8

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->l:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f0906a2

    .line 8
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->m:Landroid/widget/ImageView;

    const v0, 0x7f090ee4

    .line 9
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->n:Landroid/view/View;

    const v0, 0x7f0904d2

    .line 10
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->o:Landroid/widget/FrameLayout;

    const v0, 0x7f0910b9

    .line 11
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->p:Landroid/widget/ViewFlipper;

    const v0, 0x7f0907d6

    .line 12
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->q:Landroid/widget/ImageView;

    const v0, 0x7f0900f9

    .line 13
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->r:Lcom/google/android/material/appbar/AppBarLayout;

    const v0, 0x7f0909e2

    .line 14
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->H:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    const v0, 0x7f090dd4

    .line 15
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->I:Landroid/view/View;

    const v0, 0x7f090d11

    .line 16
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090e35

    .line 17
    invoke-interface {p1, v1}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090e21

    .line 18
    invoke-interface {p1, v2}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    .line 19
    iget-object v2, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->I:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 20
    new-instance v3, Lcom/join/mgps/activity/o2$u0;

    invoke-direct {v3, p0}, Lcom/join/mgps/activity/o2$u0;-><init>(Lcom/join/mgps/activity/o2;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->j:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    .line 22
    new-instance v3, Lcom/join/mgps/activity/o2$v0;

    invoke-direct {v3, p0}, Lcom/join/mgps/activity/o2$v0;-><init>(Lcom/join/mgps/activity/o2;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    :cond_1
    iget-object v2, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->l:Lcom/facebook/drawee/view/SimpleDraweeView;

    if-eqz v2, :cond_2

    .line 24
    new-instance v3, Lcom/join/mgps/activity/o2$w0;

    invoke-direct {v3, p0}, Lcom/join/mgps/activity/o2$w0;-><init>(Lcom/join/mgps/activity/o2;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    if-eqz v0, :cond_3

    .line 25
    new-instance v2, Lcom/join/mgps/activity/o2$x0;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/o2$x0;-><init>(Lcom/join/mgps/activity/o2;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    if-eqz v1, :cond_4

    .line 26
    new-instance v0, Lcom/join/mgps/activity/o2$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/o2$a;-><init>(Lcom/join/mgps/activity/o2;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    if-eqz p1, :cond_5

    .line 27
    new-instance v0, Lcom/join/mgps/activity/o2$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/o2$b;-><init>(Lcom/join/mgps/activity/o2;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->k:Landroid/view/View;

    if-eqz p1, :cond_6

    .line 29
    new-instance v0, Lcom/join/mgps/activity/o2$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/o2$c;-><init>(Lcom/join/mgps/activity/o2;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->o:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_7

    .line 31
    new-instance v0, Lcom/join/mgps/activity/o2$d;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/o2$d;-><init>(Lcom/join/mgps/activity/o2;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->q:Landroid/widget/ImageView;

    if-eqz p1, :cond_8

    .line 33
    new-instance v0, Lcom/join/mgps/activity/o2$e;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/o2$e;-><init>(Lcom/join/mgps/activity/o2;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    :cond_8
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->afterViews()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/o2;->h1:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public putBean(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/o2;->j1:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method showLoding()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/o2$u;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/o2$u;-><init>(Lcom/join/mgps/activity/o2;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showLodingFailed()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/o2$w;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/o2$w;-><init>(Lcom/join/mgps/activity/o2;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showMessage(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/o2$r;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/o2$r;-><init>(Lcom/join/mgps/activity/o2;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method y0(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/o2$c0;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/o2$c0;-><init>(Lcom/join/mgps/activity/o2;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method y1(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/o2$b0;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/o2$b0;-><init>(Lcom/join/mgps/activity/o2;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method z0(Ljava/lang/String;)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/o2$l0;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/o2$l0;-><init>(Lcom/join/mgps/activity/o2;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method z1()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/o2$o;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/o2$o;-><init>(Lcom/join/mgps/activity/o2;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
