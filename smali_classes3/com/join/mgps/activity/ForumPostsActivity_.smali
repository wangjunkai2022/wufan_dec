.class public final Lcom/join/mgps/activity/ForumPostsActivity_;
.super Lcom/join/mgps/activity/ForumPostsActivity;
.source "ForumPostsActivity_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/ForumPostsActivity_$j1;
    }
.end annotation


# static fields
.field public static final t2:Ljava/lang/String; = "extBean"


# instance fields
.field private final p2:Li3/c;

.field private final q2:Ljava/util/Map;
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

.field private final r2:Landroid/content/IntentFilter;

.field private final s2:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumPostsActivity;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity_;->p2:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity_;->q2:Ljava/util/Map;

    .line 4
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity_;->r2:Landroid/content/IntentFilter;

    .line 5
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity_$k;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumPostsActivity_$k;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;)V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity_;->s2:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic A3(Lcom/join/mgps/activity/ForumPostsActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->h1()V

    return-void
.end method

.method public static A4(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/ForumPostsActivity_$j1;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity_$j1;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumPostsActivity_$j1;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method static synthetic B3(Lcom/join/mgps/activity/ForumPostsActivity_;Ljava/util/List;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/ForumPostsActivity;->v2(Ljava/util/List;I)V

    return-void
.end method

.method static synthetic C3(Lcom/join/mgps/activity/ForumPostsActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->Z1()V

    return-void
.end method

.method static synthetic D3(Lcom/join/mgps/activity/ForumPostsActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->j3(I)V

    return-void
.end method

.method static synthetic E3(Lcom/join/mgps/activity/ForumPostsActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->error(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic F3(Lcom/join/mgps/activity/ForumPostsActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->F2(I)V

    return-void
.end method

.method static synthetic G3(Lcom/join/mgps/activity/ForumPostsActivity_;Lcom/join/mgps/dto/ForumBean$ForumCommentBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->y2(Lcom/join/mgps/dto/ForumBean$ForumCommentBean;)V

    return-void
.end method

.method static synthetic H3(Lcom/join/mgps/activity/ForumPostsActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->t2(I)V

    return-void
.end method

.method static synthetic I3(Lcom/join/mgps/activity/ForumPostsActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->u2(I)V

    return-void
.end method

.method static synthetic J3(Lcom/join/mgps/activity/ForumPostsActivity_;Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->w2(Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;)V

    return-void
.end method

.method static synthetic K3(Lcom/join/mgps/activity/ForumPostsActivity_;Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->x2(Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;)V

    return-void
.end method

.method static synthetic L3(Lcom/join/mgps/activity/ForumPostsActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->r3()V

    return-void
.end method

.method static synthetic M3(Lcom/join/mgps/activity/ForumPostsActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->z2(I)V

    return-void
.end method

.method static synthetic N3(Lcom/join/mgps/activity/ForumPostsActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->h3()V

    return-void
.end method

.method static synthetic O3(Lcom/join/mgps/activity/ForumPostsActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->M2()V

    return-void
.end method

.method static synthetic P3(Lcom/join/mgps/activity/ForumPostsActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->L2()V

    return-void
.end method

.method static synthetic Q3(Lcom/join/mgps/activity/ForumPostsActivity_;Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->c3(Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V

    return-void
.end method

.method static synthetic R3(Lcom/join/mgps/activity/ForumPostsActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->K2()V

    return-void
.end method

.method static synthetic S3(Lcom/join/mgps/activity/ForumPostsActivity_;Landroid/widget/AbsListView;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/ForumPostsActivity;->x3(Landroid/widget/AbsListView;I)V

    return-void
.end method

.method static synthetic T3(Lcom/join/mgps/activity/ForumPostsActivity_;Landroid/widget/AbsListView;III)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/join/mgps/activity/ForumPostsActivity;->w3(Landroid/widget/AbsListView;III)V

    return-void
.end method

.method static synthetic U3(Lcom/join/mgps/activity/ForumPostsActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->d3()V

    return-void
.end method

.method static synthetic V3(Lcom/join/mgps/activity/ForumPostsActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->showMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic W3(Lcom/join/mgps/activity/ForumPostsActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->e1(I)V

    return-void
.end method

.method static synthetic X3(Lcom/join/mgps/activity/ForumPostsActivity_;Lcom/join/mgps/dto/DetailResultBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->startDown(Lcom/join/mgps/dto/DetailResultBean;)V

    return-void
.end method

.method static synthetic Y3(Lcom/join/mgps/activity/ForumPostsActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->e2(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic Z3(Lcom/join/mgps/activity/ForumPostsActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->f2(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a4(Lcom/join/mgps/activity/ForumPostsActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->r2()V

    return-void
.end method

.method static synthetic b4(Lcom/join/mgps/activity/ForumPostsActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->W1(I)V

    return-void
.end method

.method static synthetic c4(Lcom/join/mgps/activity/ForumPostsActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->S2()V

    return-void
.end method

.method static synthetic d4(Lcom/join/mgps/activity/ForumPostsActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->touristLogin()V

    return-void
.end method

.method static synthetic e4(Lcom/join/mgps/activity/ForumPostsActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->j1(I)V

    return-void
.end method

.method static synthetic f4(Lcom/join/mgps/activity/ForumPostsActivity_;II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/ForumPostsActivity;->G1(II)V

    return-void
.end method

.method static synthetic g4(Lcom/join/mgps/activity/ForumPostsActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->T2()V

    return-void
.end method

.method static synthetic h4(Lcom/join/mgps/activity/ForumPostsActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->n3(I)V

    return-void
.end method

.method static synthetic i4(Lcom/join/mgps/activity/ForumPostsActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->k1(I)V

    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 2
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    const v0, 0x7f110207

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->n0:Ljava/lang/String;

    const v0, 0x7f1100aa

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->o0:Ljava/lang/String;

    .line 5
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumPostsActivity_;->injectExtras_()V

    const/16 p1, 0xa

    .line 6
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->supportRequestWindowFeature(I)Z

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity_;->r2:Landroid/content/IntentFilter;

    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.refreshMyGame"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity_;->r2:Landroid/content/IntentFilter;

    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.paygamefinish"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity_;->s2:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity_;->r2:Landroid/content/IntentFilter;

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private injectExtras_()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "extBean"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/ExtBean;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->q0:Lcom/join/mgps/dto/ExtBean;

    :cond_0
    return-void
.end method

.method static synthetic j4(Lcom/join/mgps/activity/ForumPostsActivity_;Landroid/widget/ListView;III)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/join/mgps/activity/ForumPostsActivity;->s2(Landroid/widget/ListView;III)V

    return-void
.end method

.method static synthetic k4(Lcom/join/mgps/activity/ForumPostsActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->r1()V

    return-void
.end method

.method static synthetic l4(Lcom/join/mgps/activity/ForumPostsActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->s1()V

    return-void
.end method

.method static synthetic m4(Lcom/join/mgps/activity/ForumPostsActivity_;II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/ForumPostsActivity;->t1(II)V

    return-void
.end method

.method static synthetic n4(Lcom/join/mgps/activity/ForumPostsActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->l1()V

    return-void
.end method

.method static synthetic o4(Lcom/join/mgps/activity/ForumPostsActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->q1()V

    return-void
.end method

.method static synthetic p4(Lcom/join/mgps/activity/ForumPostsActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->x1(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic q4(Lcom/join/mgps/activity/ForumPostsActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->W0(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic r4(Lcom/join/mgps/activity/ForumPostsActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->O2(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic s4(Lcom/join/mgps/activity/ForumPostsActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->p1()V

    return-void
.end method

.method static synthetic t4(Lcom/join/mgps/activity/ForumPostsActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->X2()V

    return-void
.end method

.method static synthetic u4(Lcom/join/mgps/activity/ForumPostsActivity_;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/join/mgps/activity/ForumPostsActivity;->q2(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic v4(Lcom/join/mgps/activity/ForumPostsActivity_;II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/ForumPostsActivity;->l3(II)V

    return-void
.end method

.method static synthetic w4(Lcom/join/mgps/activity/ForumPostsActivity_;Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->o3(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic x4(Lcom/join/mgps/activity/ForumPostsActivity_;Lcom/join/mgps/customview/RewardType;II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/join/mgps/activity/ForumPostsActivity;->m3(Lcom/join/mgps/customview/RewardType;II)V

    return-void
.end method

.method static synthetic y3(Lcom/join/mgps/activity/ForumPostsActivity_;ZI)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/ForumPostsActivity;->a2(ZI)V

    return-void
.end method

.method static synthetic y4(Lcom/join/mgps/activity/ForumPostsActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->H1()V

    return-void
.end method

.method static synthetic z3(Lcom/join/mgps/activity/ForumPostsActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->b2()V

    return-void
.end method

.method public static z4(Landroid/content/Context;)Lcom/join/mgps/activity/ForumPostsActivity_$j1;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity_$j1;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumPostsActivity_$j1;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method F2(I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity_$p;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity_$p;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;I)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method G1(II)V
    .locals 9

    .line 1
    new-instance v8, Lcom/join/mgps/activity/ForumPostsActivity_$p0;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v8

    move-object v1, p0

    move v6, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/activity/ForumPostsActivity_$p0;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;Ljava/lang/String;JLjava/lang/String;II)V

    invoke-static {v8}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method H1()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity_$i;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumPostsActivity_$i;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method K2()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity_$b0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumPostsActivity_$b0;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method L2()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity_$z;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumPostsActivity_$z;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method M2()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity_$y;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumPostsActivity_$y;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method O2(Ljava/lang/String;)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/ForumPostsActivity_$b1;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/ForumPostsActivity_$b1;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method S2()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/ForumPostsActivity_$m0;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/ForumPostsActivity_$m0;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method T2()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/ForumPostsActivity_$q0;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/ForumPostsActivity_$q0;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method W0(Ljava/lang/String;)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/ForumPostsActivity_$a1;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/ForumPostsActivity_$a1;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method W1(I)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/ForumPostsActivity_$l0;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/ForumPostsActivity_$l0;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;Ljava/lang/String;JLjava/lang/String;I)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method X2()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/ForumPostsActivity_$d1;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/ForumPostsActivity_$d1;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method Z1()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity_$m;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumPostsActivity_$m;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x1f4

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method a2(ZI)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity_$i1;

    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/ForumPostsActivity_$i1;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;ZI)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method b2()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity_$j;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumPostsActivity_$j;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method c3(Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity_$a0;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity_$a0;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method d3()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity_$e0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumPostsActivity_$e0;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method e1(I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity_$c;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity_$c;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;I)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method e2(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity_$i0;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity_$i0;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method error(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity_$o;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity_$o;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method f2(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity_$j0;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity_$j0;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity_;->q2:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method h1()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity_$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumPostsActivity_$a;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method h3()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity_$x;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumPostsActivity_$x;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public internalFindViewById(I)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method j1(I)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/ForumPostsActivity_$o0;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/ForumPostsActivity_$o0;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;Ljava/lang/String;JLjava/lang/String;I)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method j3(I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity_$n;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity_$n;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;I)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method k1(I)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/ForumPostsActivity_$s0;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/ForumPostsActivity_$s0;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;Ljava/lang/String;JLjava/lang/String;I)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method l1()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/ForumPostsActivity_$x0;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/ForumPostsActivity_$x0;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method l3(II)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity_$f;

    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/ForumPostsActivity_$f;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;II)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method m3(Lcom/join/mgps/customview/RewardType;II)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity_$h;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/join/mgps/activity/ForumPostsActivity_$h;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;Lcom/join/mgps/customview/RewardType;II)V

    const-string p1, ""

    const-wide/16 p2, 0x0

    invoke-static {p1, v0, p2, p3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method n3(I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity_$d;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity_$d;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;I)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method o3(Ljava/lang/CharSequence;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity_$g;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity_$g;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;Ljava/lang/CharSequence;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity_;->p2:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity_;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c0413

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity_;->setContentView(I)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity_;->s2:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2
    invoke-super {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->onDestroy()V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 1

    const v0, 0x7f090088

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->a:Landroid/widget/RelativeLayout;

    const v0, 0x7f09013e

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->b:Landroid/widget/ImageView;

    const v0, 0x7f0908a2

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->c:Landroid/widget/TextView;

    const v0, 0x7f090a47

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/XListView4ForumPost;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->d:Lcom/join/mgps/customview/XListView4ForumPost;

    const v0, 0x7f090986

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/ForumLoadingView;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->e:Lcom/join/mgps/customview/ForumLoadingView;

    const v0, 0x7f090c38

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->f:Landroid/widget/LinearLayout;

    const v0, 0x7f090c36

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->g:Landroid/widget/TextView;

    const v0, 0x7f090c37

    .line 8
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->h:Landroid/widget/LinearLayout;

    const v0, 0x7f09088d

    .line 9
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->i:Landroid/widget/LinearLayout;

    const v0, 0x7f090403

    .line 10
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/android/app/common/view/ClearEditText;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->j:Lcom/join/android/app/common/view/ClearEditText;

    const v0, 0x7f0901c4

    .line 11
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->k:Landroid/widget/Button;

    const v0, 0x7f0901c5

    .line 12
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->l:Landroid/widget/Button;

    const v0, 0x7f090401

    .line 13
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->m:Landroid/widget/TextView;

    const v0, 0x7f0906f9

    .line 14
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->n:Landroid/widget/ImageView;

    const v0, 0x7f0904ef

    .line 15
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->o:Landroid/widget/TextView;

    const v0, 0x7f0901c3

    .line 16
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->p:Landroid/widget/Button;

    const v0, 0x7f090249

    .line 17
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->q:Landroid/widget/LinearLayout;

    const v0, 0x7f090247

    .line 18
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->r:Landroid/view/View;

    const v0, 0x7f090248

    .line 19
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->s:Landroid/widget/LinearLayout;

    const v0, 0x7f090a00

    .line 20
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/HListView;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->t:Lit/sephiroth/android/library/widget/HListView;

    const v0, 0x7f091262

    .line 21
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->C1:Landroid/widget/FrameLayout;

    const v0, 0x7f091264

    .line 22
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->D1:Landroid/widget/RelativeLayout;

    const v0, 0x7f09125f

    .line 23
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/android/app/component/video/MyVideoView;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->E1:Lcom/join/android/app/component/video/MyVideoView;

    const v0, 0x7f090311

    .line 24
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->F1:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f090c1b

    .line 25
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->G1:Landroid/widget/ImageView;

    const v0, 0x7f090983

    .line 26
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->H1:Landroid/widget/LinearLayout;

    const v0, 0x7f0909e2

    .line 27
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    iput-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->Y1:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 28
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->k:Landroid/widget/Button;

    if-eqz p1, :cond_0

    .line 29
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity_$v;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumPostsActivity_$v;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->b:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    .line 31
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity_$g0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumPostsActivity_$g0;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->l:Landroid/widget/Button;

    if-eqz p1, :cond_2

    .line 33
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity_$r0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumPostsActivity_$r0;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->p:Landroid/widget/Button;

    if-eqz p1, :cond_3

    .line 35
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity_$c1;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumPostsActivity_$c1;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->n:Landroid/widget/ImageView;

    if-eqz p1, :cond_4

    .line 37
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity_$f1;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumPostsActivity_$f1;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->h:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_5

    .line 39
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity_$g1;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumPostsActivity_$g1;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->g:Landroid/widget/TextView;

    if-eqz p1, :cond_6

    .line 41
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity_$h1;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumPostsActivity_$h1;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    :cond_6
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->afterViews()V

    return-void
.end method

.method p1()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity_$e;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumPostsActivity_$e;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity_;->q2:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method q1()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/ForumPostsActivity_$y0;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/ForumPostsActivity_$y0;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method q2(Ljava/lang/String;ILjava/lang/String;)V
    .locals 10

    .line 1
    new-instance v9, Lcom/join/mgps/activity/ForumPostsActivity_$e1;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v9

    move-object v1, p0

    move-object v6, p1

    move v7, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/join/mgps/activity/ForumPostsActivity_$e1;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v9}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method r1()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/ForumPostsActivity_$u0;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/ForumPostsActivity_$u0;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method r2()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/ForumPostsActivity_$k0;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/ForumPostsActivity_$k0;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method r3()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity_$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumPostsActivity_$b;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method s1()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/ForumPostsActivity_$v0;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/ForumPostsActivity_$v0;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method s2(Landroid/widget/ListView;III)V
    .locals 11

    .line 1
    new-instance v10, Lcom/join/mgps/activity/ForumPostsActivity_$t0;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v10

    move-object v1, p0

    move-object v6, p1

    move v7, p2

    move v8, p3

    move v9, p4

    invoke-direct/range {v0 .. v9}, Lcom/join/mgps/activity/ForumPostsActivity_$t0;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;Ljava/lang/String;JLjava/lang/String;Landroid/widget/ListView;III)V

    invoke-static {v10}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity_;->p2:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity_;->p2:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity_;->p2:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumPostsActivity_;->injectExtras_()V

    return-void
.end method

.method showMessage(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity_$f0;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity_$f0;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method startDown(Lcom/join/mgps/dto/DetailResultBean;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity_$h0;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity_$h0;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;Lcom/join/mgps/dto/DetailResultBean;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method t1(II)V
    .locals 9

    .line 1
    new-instance v8, Lcom/join/mgps/activity/ForumPostsActivity_$w0;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v8

    move-object v1, p0

    move v6, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/activity/ForumPostsActivity_$w0;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;Ljava/lang/String;JLjava/lang/String;II)V

    invoke-static {v8}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method t2(I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity_$r;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity_$r;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;I)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method touristLogin()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/ForumPostsActivity_$n0;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/ForumPostsActivity_$n0;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method u2(I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity_$s;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity_$s;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;I)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method v2(Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumCommentBean;",
            ">;I)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity_$l;

    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/ForumPostsActivity_$l;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;Ljava/util/List;I)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method w2(Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity_$t;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity_$t;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method w3(Landroid/widget/AbsListView;III)V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/ForumPostsActivity_$d0;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/ForumPostsActivity_$d0;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;Landroid/widget/AbsListView;III)V

    const-string p1, ""

    const-wide/16 p2, 0x0

    invoke-static {p1, v6, p2, p3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method x1(Ljava/lang/String;)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/ForumPostsActivity_$z0;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/ForumPostsActivity_$z0;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method x2(Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity_$u;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity_$u;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method x3(Landroid/widget/AbsListView;I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity_$c0;

    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/ForumPostsActivity_$c0;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;Landroid/widget/AbsListView;I)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method y2(Lcom/join/mgps/dto/ForumBean$ForumCommentBean;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity_$q;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity_$q;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;Lcom/join/mgps/dto/ForumBean$ForumCommentBean;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method z2(I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity_$w;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity_$w;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;I)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
