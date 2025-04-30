.class public final Lcom/join/mgps/activity/CommentDetailActivity_;
.super Lcom/join/mgps/activity/CommentDetailActivity;
.source "CommentDetailActivity_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/CommentDetailActivity_$z;
    }
.end annotation


# static fields
.field public static final X0:Ljava/lang/String; = "commentId"

.field public static final Y0:Ljava/lang/String; = "gameId"

.field public static final Z0:Ljava/lang/String; = "commentScoreSwitch"

.field public static final a1:Ljava/lang/String; = "packageName"

.field public static final b1:Ljava/lang/String; = "bespeakSwitch"

.field public static final c1:Ljava/lang/String; = "sgcSwitch"

.field public static final d1:Ljava/lang/String; = "gameType"

.field public static final e1:Ljava/lang/String; = "gameIsStart"


# instance fields
.field private final V0:Li3/c;

.field private final W0:Ljava/util/Map;
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


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/CommentDetailActivity;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity_;->V0:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity_;->W0:Ljava/util/Map;

    return-void
.end method

.method static synthetic O1(Lcom/join/mgps/activity/CommentDetailActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/CommentDetailActivity;->G1()V

    return-void
.end method

.method static synthetic P1(Lcom/join/mgps/activity/CommentDetailActivity_;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/CommentDetailActivity;->z1(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic Q1(Lcom/join/mgps/activity/CommentDetailActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/CommentDetailActivity;->k1()V

    return-void
.end method

.method static synthetic R1(Lcom/join/mgps/activity/CommentDetailActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/CommentDetailActivity;->i1(I)V

    return-void
.end method

.method static synthetic S1(Lcom/join/mgps/activity/CommentDetailActivity_;Ljava/lang/String;ZI)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/join/mgps/activity/CommentDetailActivity;->x1(Ljava/lang/String;ZI)V

    return-void
.end method

.method static synthetic T1(Lcom/join/mgps/activity/CommentDetailActivity_;Ljava/lang/String;ZII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/join/mgps/activity/CommentDetailActivity;->A1(Ljava/lang/String;ZII)V

    return-void
.end method

.method static synthetic U1(Lcom/join/mgps/activity/CommentDetailActivity_;Lcom/join/mgps/dto/CommentResponse;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/CommentDetailActivity;->y1(Lcom/join/mgps/dto/CommentResponse;)V

    return-void
.end method

.method static synthetic V1(Lcom/join/mgps/activity/CommentDetailActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/CommentDetailActivity;->m1(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic W1(Lcom/join/mgps/activity/CommentDetailActivity_;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p7}, Lcom/join/mgps/activity/CommentDetailActivity;->K1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic X1(Lcom/join/mgps/activity/CommentDetailActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/CommentDetailActivity;->j1()V

    return-void
.end method

.method static synthetic Y1(Lcom/join/mgps/activity/CommentDetailActivity_;Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/CommentDetailActivity;->t1(Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;I)V

    return-void
.end method

.method static synthetic Z1(Lcom/join/mgps/activity/CommentDetailActivity_;Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/CommentDetailActivity;->L1(Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;I)V

    return-void
.end method

.method static synthetic a2(Lcom/join/mgps/activity/CommentDetailActivity_;Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/join/mgps/activity/CommentDetailActivity;->x0(Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;II)V

    return-void
.end method

.method static synthetic b2(Lcom/join/mgps/activity/CommentDetailActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/CommentDetailActivity;->E1()V

    return-void
.end method

.method static synthetic c2(Lcom/join/mgps/activity/CommentDetailActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/CommentDetailActivity;->q1()V

    return-void
.end method

.method static synthetic d2(Lcom/join/mgps/activity/CommentDetailActivity_;Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/CommentDetailActivity;->C1(Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;)V

    return-void
.end method

.method static synthetic e2(Lcom/join/mgps/activity/CommentDetailActivity_;Lcom/join/mgps/dto/CommentDetailBean$GameInfoBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/CommentDetailActivity;->D1(Lcom/join/mgps/dto/CommentDetailBean$GameInfoBean;)V

    return-void
.end method

.method static synthetic f2(Lcom/join/mgps/activity/CommentDetailActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/CommentDetailActivity;->showLoding()V

    return-void
.end method

.method static synthetic g2(Lcom/join/mgps/activity/CommentDetailActivity_;Ljava/util/List;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/CommentDetailActivity;->H1(Ljava/util/List;I)V

    return-void
.end method

.method static synthetic h2(Lcom/join/mgps/activity/CommentDetailActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/CommentDetailActivity;->showLodingFailed()V

    return-void
.end method

.method static synthetic i2(Lcom/join/mgps/activity/CommentDetailActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/CommentDetailActivity;->N1()V

    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    new-instance p1, Lcom/join/mgps/pref/PrefDef_;

    invoke-direct {p1, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->x:Lcom/join/mgps/pref/PrefDef_;

    .line 2
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/activity/CommentDetailActivity_;->injectExtras_()V

    const/16 p1, 0xa

    .line 4
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->supportRequestWindowFeature(I)Z

    return-void
.end method

.method private injectExtras_()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v1, "commentId"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->o:Ljava/lang/String;

    :cond_0
    const-string v1, "gameId"

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->p:Ljava/lang/String;

    :cond_1
    const-string v1, "commentScoreSwitch"

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->q:Ljava/lang/String;

    :cond_2
    const-string v1, "packageName"

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->r:Ljava/lang/String;

    :cond_3
    const-string v1, "bespeakSwitch"

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->s:I

    :cond_4
    const-string v1, "sgcSwitch"

    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->t:I

    :cond_5
    const-string v1, "gameType"

    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->u:Ljava/lang/String;

    :cond_6
    const-string v1, "gameIsStart"

    .line 16
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->v:I

    :cond_7
    return-void
.end method

.method static synthetic j2(Lcom/join/mgps/activity/CommentDetailActivity_;Ljava/lang/String;Lcom/join/mgps/dto/CommentCreateBean$InfoBean;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/join/mgps/activity/CommentDetailActivity;->B1(Ljava/lang/String;Lcom/join/mgps/dto/CommentCreateBean$InfoBean;Z)V

    return-void
.end method

.method public static k2(Landroid/content/Context;)Lcom/join/mgps/activity/CommentDetailActivity_$z;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CommentDetailActivity_$z;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CommentDetailActivity_$z;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static l2(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/CommentDetailActivity_$z;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CommentDetailActivity_$z;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CommentDetailActivity_$z;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method


# virtual methods
.method A1(Ljava/lang/String;ZII)V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/CommentDetailActivity_$h;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/CommentDetailActivity_$h;-><init>(Lcom/join/mgps/activity/CommentDetailActivity_;Ljava/lang/String;ZII)V

    const-string p1, ""

    const-wide/16 p2, 0x0

    invoke-static {p1, v6, p2, p3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method B1(Ljava/lang/String;Lcom/join/mgps/dto/CommentCreateBean$InfoBean;Z)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CommentDetailActivity_$d;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/join/mgps/activity/CommentDetailActivity_$d;-><init>(Lcom/join/mgps/activity/CommentDetailActivity_;Ljava/lang/String;Lcom/join/mgps/dto/CommentCreateBean$InfoBean;Z)V

    const-string p1, ""

    const-wide/16 p2, 0x0

    invoke-static {p1, v0, p2, p3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method C1(Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CommentDetailActivity_$w;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/CommentDetailActivity_$w;-><init>(Lcom/join/mgps/activity/CommentDetailActivity_;Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method D1(Lcom/join/mgps/dto/CommentDetailBean$GameInfoBean;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CommentDetailActivity_$x;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/CommentDetailActivity_$x;-><init>(Lcom/join/mgps/activity/CommentDetailActivity_;Lcom/join/mgps/dto/CommentDetailBean$GameInfoBean;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method E1()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CommentDetailActivity_$v;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CommentDetailActivity_$v;-><init>(Lcom/join/mgps/activity/CommentDetailActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method G1()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CommentDetailActivity_$t;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CommentDetailActivity_$t;-><init>(Lcom/join/mgps/activity/CommentDetailActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method H1(Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;",
            ">;I)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CommentDetailActivity_$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/CommentDetailActivity_$a;-><init>(Lcom/join/mgps/activity/CommentDetailActivity_;Ljava/util/List;I)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method K1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 14

    .line 1
    new-instance v13, Lcom/join/mgps/activity/CommentDetailActivity_$l;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v13

    move-object v1, p0

    move-object v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move/from16 v12, p7

    invoke-direct/range {v0 .. v12}, Lcom/join/mgps/activity/CommentDetailActivity_$l;-><init>(Lcom/join/mgps/activity/CommentDetailActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v13}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method L1(Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;I)V
    .locals 9

    .line 1
    new-instance v8, Lcom/join/mgps/activity/CommentDetailActivity_$o;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v8

    move-object v1, p0

    move-object v6, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/activity/CommentDetailActivity_$o;-><init>(Lcom/join/mgps/activity/CommentDetailActivity_;Ljava/lang/String;JLjava/lang/String;Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;I)V

    invoke-static {v8}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method N1()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CommentDetailActivity_$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CommentDetailActivity_$c;-><init>(Lcom/join/mgps/activity/CommentDetailActivity_;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity_;->W0:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public i1(I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CommentDetailActivity_$f;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/CommentDetailActivity_$f;-><init>(Lcom/join/mgps/activity/CommentDetailActivity_;I)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

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

.method j1()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/CommentDetailActivity_$m;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/CommentDetailActivity_$m;-><init>(Lcom/join/mgps/activity/CommentDetailActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method k1()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CommentDetailActivity_$u;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CommentDetailActivity_$u;-><init>(Lcom/join/mgps/activity/CommentDetailActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method m1(Ljava/lang/String;)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/CommentDetailActivity_$j;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/CommentDetailActivity_$j;-><init>(Lcom/join/mgps/activity/CommentDetailActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity_;->V0:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/CommentDetailActivity_;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c00fd

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/CommentDetailActivity_;->setContentView(I)V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 1

    const v0, 0x7f09013e

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->a:Landroid/widget/ImageView;

    const v0, 0x7f091033

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->b:Landroid/widget/TextView;

    const v0, 0x7f090698

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->c:Landroid/widget/ImageView;

    const v0, 0x7f09033c

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->d:Landroid/widget/TextView;

    const v0, 0x7f0909e2

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->e:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    const v0, 0x7f0902aa

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/XListView2;

    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->f:Lcom/join/mgps/customview/XListView2;

    const v0, 0x7f0909b5

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->g:Landroid/widget/LinearLayout;

    const v0, 0x7f0909b0

    .line 8
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->h:Landroid/widget/LinearLayout;

    const v0, 0x7f090768

    .line 9
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->i:Landroid/widget/LinearLayout;

    const v0, 0x7f0901c4

    .line 10
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->j:Landroid/widget/Button;

    const v0, 0x7f0901c3

    .line 11
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->k:Landroid/widget/Button;

    const v0, 0x7f090401

    .line 12
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->l:Landroid/widget/TextView;

    const v0, 0x7f090403

    .line 13
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/android/app/common/view/ClearEditText;

    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->m:Lcom/join/android/app/common/view/ClearEditText;

    const v0, 0x7f0901c5

    .line 14
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->n:Landroid/widget/Button;

    const v0, 0x7f090e21

    .line 15
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 16
    new-instance v0, Lcom/join/mgps/activity/CommentDetailActivity_$k;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CommentDetailActivity_$k;-><init>(Lcom/join/mgps/activity/CommentDetailActivity_;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->a:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    .line 18
    new-instance v0, Lcom/join/mgps/activity/CommentDetailActivity_$r;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CommentDetailActivity_$r;-><init>(Lcom/join/mgps/activity/CommentDetailActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->c:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    .line 20
    new-instance v0, Lcom/join/mgps/activity/CommentDetailActivity_$s;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CommentDetailActivity_$s;-><init>(Lcom/join/mgps/activity/CommentDetailActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/CommentDetailActivity;->afterView()V

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
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity_;->W0:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method q1()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/CommentDetailActivity_$q;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/CommentDetailActivity_$q;-><init>(Lcom/join/mgps/activity/CommentDetailActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity_;->V0:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity_;->V0:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity_;->V0:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/CommentDetailActivity_;->injectExtras_()V

    return-void
.end method

.method showLoding()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CommentDetailActivity_$y;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CommentDetailActivity_$y;-><init>(Lcom/join/mgps/activity/CommentDetailActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showLodingFailed()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CommentDetailActivity_$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CommentDetailActivity_$b;-><init>(Lcom/join/mgps/activity/CommentDetailActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method t1(Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;I)V
    .locals 9

    .line 1
    new-instance v8, Lcom/join/mgps/activity/CommentDetailActivity_$n;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v8

    move-object v1, p0

    move-object v6, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/activity/CommentDetailActivity_$n;-><init>(Lcom/join/mgps/activity/CommentDetailActivity_;Ljava/lang/String;JLjava/lang/String;Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;I)V

    invoke-static {v8}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method public x0(Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;II)V
    .locals 10

    .line 1
    new-instance v9, Lcom/join/mgps/activity/CommentDetailActivity_$p;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v9

    move-object v1, p0

    move-object v6, p1

    move v7, p2

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/join/mgps/activity/CommentDetailActivity_$p;-><init>(Lcom/join/mgps/activity/CommentDetailActivity_;Ljava/lang/String;JLjava/lang/String;Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;II)V

    invoke-static {v9}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method x1(Ljava/lang/String;ZI)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CommentDetailActivity_$g;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/join/mgps/activity/CommentDetailActivity_$g;-><init>(Lcom/join/mgps/activity/CommentDetailActivity_;Ljava/lang/String;ZI)V

    const-string p1, ""

    const-wide/16 p2, 0x0

    invoke-static {p1, v0, p2, p3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method y1(Lcom/join/mgps/dto/CommentResponse;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CommentDetailActivity_$i;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/CommentDetailActivity_$i;-><init>(Lcom/join/mgps/activity/CommentDetailActivity_;Lcom/join/mgps/dto/CommentResponse;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method z1(Ljava/lang/String;Z)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CommentDetailActivity_$e;

    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/CommentDetailActivity_$e;-><init>(Lcom/join/mgps/activity/CommentDetailActivity_;Ljava/lang/String;Z)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
