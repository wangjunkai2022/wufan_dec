.class public Lcom/join/android/app/component/video/c;
.super Ljava/lang/Object;
.source "MyListViewVideoHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/android/app/component/video/c$k;
    }
.end annotation


# static fields
.field public static final v:I = 0x1

.field public static final w:I = 0x2


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field c:Ljava/lang/String;

.field d:Lcom/join/android/app/component/video/StandardVideoView;

.field e:Z

.field f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/join/android/app/component/video/c$k;",
            ">;"
        }
    .end annotation
.end field

.field g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:Landroid/widget/AbsListView;

.field public l:Lit/sephiroth/android/library/widget/AbsHListView;

.field public m:Landroidx/recyclerview/widget/RecyclerView;

.field public n:Lcom/join/mgps/recycler/c;

.field o:I

.field p:J

.field q:Lcom/facebook/drawee/view/SimpleDraweeView;

.field r:Lcom/facebook/drawee/view/SimpleDraweeView;

.field s:Landroid/widget/FrameLayout;

.field t:Landroid/view/animation/AlphaAnimation;

.field private u:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/join/android/app/component/video/c;->b:I

    const-string v1, ""

    .line 3
    iput-object v1, p0, Lcom/join/android/app/component/video/c;->c:Ljava/lang/String;

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lcom/join/android/app/component/video/c;->e:Z

    .line 5
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/join/android/app/component/video/c;->f:Ljava/util/Map;

    .line 6
    iput v0, p0, Lcom/join/android/app/component/video/c;->g:I

    .line 7
    iput v1, p0, Lcom/join/android/app/component/video/c;->h:I

    iput v1, p0, Lcom/join/android/app/component/video/c;->i:I

    iput v1, p0, Lcom/join/android/app/component/video/c;->j:I

    .line 8
    iput v1, p0, Lcom/join/android/app/component/video/c;->o:I

    const-wide/16 v0, 0x0

    .line 9
    iput-wide v0, p0, Lcom/join/android/app/component/video/c;->p:J

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/join/android/app/component/video/c;->q:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 11
    iput-object v0, p0, Lcom/join/android/app/component/video/c;->r:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 12
    iput-object v0, p0, Lcom/join/android/app/component/video/c;->s:Landroid/widget/FrameLayout;

    const/4 v0, 0x1

    .line 13
    iput v0, p0, Lcom/join/android/app/component/video/c;->u:I

    .line 14
    iput-object p1, p0, Lcom/join/android/app/component/video/c;->a:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 16
    iput v0, p0, Lcom/join/android/app/component/video/c;->b:I

    const-string v1, ""

    .line 17
    iput-object v1, p0, Lcom/join/android/app/component/video/c;->c:Ljava/lang/String;

    const/4 v1, 0x0

    .line 18
    iput-boolean v1, p0, Lcom/join/android/app/component/video/c;->e:Z

    .line 19
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/join/android/app/component/video/c;->f:Ljava/util/Map;

    .line 20
    iput v0, p0, Lcom/join/android/app/component/video/c;->g:I

    .line 21
    iput v1, p0, Lcom/join/android/app/component/video/c;->h:I

    iput v1, p0, Lcom/join/android/app/component/video/c;->i:I

    iput v1, p0, Lcom/join/android/app/component/video/c;->j:I

    .line 22
    iput v1, p0, Lcom/join/android/app/component/video/c;->o:I

    const-wide/16 v2, 0x0

    .line 23
    iput-wide v2, p0, Lcom/join/android/app/component/video/c;->p:J

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/join/android/app/component/video/c;->q:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 25
    iput-object v0, p0, Lcom/join/android/app/component/video/c;->r:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 26
    iput-object v0, p0, Lcom/join/android/app/component/video/c;->s:Landroid/widget/FrameLayout;

    const/4 v0, 0x1

    .line 27
    iput v0, p0, Lcom/join/android/app/component/video/c;->u:I

    .line 28
    invoke-virtual {p0, p1, p2, v1}, Lcom/join/android/app/component/video/c;->x(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 3

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 30
    iput v0, p0, Lcom/join/android/app/component/video/c;->b:I

    const-string v1, ""

    .line 31
    iput-object v1, p0, Lcom/join/android/app/component/video/c;->c:Ljava/lang/String;

    const/4 v1, 0x0

    .line 32
    iput-boolean v1, p0, Lcom/join/android/app/component/video/c;->e:Z

    .line 33
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/join/android/app/component/video/c;->f:Ljava/util/Map;

    .line 34
    iput v0, p0, Lcom/join/android/app/component/video/c;->g:I

    .line 35
    iput v1, p0, Lcom/join/android/app/component/video/c;->h:I

    iput v1, p0, Lcom/join/android/app/component/video/c;->i:I

    iput v1, p0, Lcom/join/android/app/component/video/c;->j:I

    .line 36
    iput v1, p0, Lcom/join/android/app/component/video/c;->o:I

    const-wide/16 v0, 0x0

    .line 37
    iput-wide v0, p0, Lcom/join/android/app/component/video/c;->p:J

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/join/android/app/component/video/c;->q:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 39
    iput-object v0, p0, Lcom/join/android/app/component/video/c;->r:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 40
    iput-object v0, p0, Lcom/join/android/app/component/video/c;->s:Landroid/widget/FrameLayout;

    const/4 v0, 0x1

    .line 41
    iput v0, p0, Lcom/join/android/app/component/video/c;->u:I

    .line 42
    invoke-virtual {p0, p1, p2, p3}, Lcom/join/android/app/component/video/c;->x(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method private D(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/video/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/ExtFrom;->home:Lcom/papa/sim/statistic/ExtFrom;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/join/android/app/component/video/c;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/papa/sim/statistic/p;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private E(Landroid/content/Context;Lcom/psk/eventmodule/Event;Ljava/lang/String;Ljava/lang/String;Lcom/psk/eventmodule/StatFactory$VolcanoOther;Z)V
    .locals 15

    const-string v0, "-"

    move-object/from16 v1, p3

    .line 1
    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2
    array-length v1, v0

    const-string v2, ""

    const-string v3, "0"

    if-lez v1, :cond_2

    .line 3
    array-length v1, v0

    if-lez v1, :cond_2

    const/4 v1, 0x0

    .line 4
    aget-object v1, v0, v1

    .line 5
    array-length v4, v0

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    .line 6
    aget-object v2, v0, v5

    .line 7
    :cond_0
    array-length v4, v0

    const/4 v5, 0x2

    if-le v4, v5, :cond_1

    .line 8
    aget-object v3, v0, v5

    :cond_1
    move-object v6, v1

    move-object v7, v2

    goto :goto_0

    :cond_2
    move-object v6, v2

    move-object v7, v6

    :goto_0
    move-object v8, v3

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "volcannoEvent"

    invoke-static {v1, v0}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    sget-object v0, Lcom/psk/eventmodule/StatFactory;->Companion:Lcom/psk/eventmodule/StatFactory$Companion;

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/psk/eventmodule/StatFactory$Companion;->getInstance(Landroid/content/Context;)Lcom/psk/eventmodule/StatFactory;

    move-result-object v0

    new-instance v1, Lcom/psk/eventmodule/StatFactory$VolcanoEvent;

    new-instance v12, Lcom/psk/eventmodule/StatFactory$SpmData;

    const/4 v9, 0x0

    const-string/jumbo v5, "wufun"

    move-object v4, v12

    invoke-direct/range {v4 .. v9}, Lcom/psk/eventmodule/StatFactory$SpmData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v9, v1

    move-object/from16 v10, p2

    move-object/from16 v11, p4

    move-object/from16 v13, p5

    move/from16 v14, p6

    invoke-direct/range {v9 .. v14}, Lcom/psk/eventmodule/StatFactory$VolcanoEvent;-><init>(Lcom/psk/eventmodule/Event;Ljava/lang/String;Lcom/psk/eventmodule/StatFactory$SpmData;Lcom/psk/eventmodule/StatFactory$VolcanoOther;Z)V

    invoke-virtual {v0, v1}, Lcom/psk/eventmodule/StatFactory;->sendEvent(Lcom/psk/eventmodule/StatFactory$VolcanoEvent;)V

    return-void
.end method

.method private H(Landroid/view/View;)V
    .locals 3

    :try_start_0
    const-string v0, "MyListViewVideoHelper"

    const-string v1, "startAnim "

    .line 1
    invoke-static {v0, v1}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/join/android/app/component/video/c;->t:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/join/android/app/component/video/c;->t:Landroid/view/animation/AlphaAnimation;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/component/video/c;->t:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0x258

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 5
    iget-object v0, p0, Lcom/join/android/app/component/video/c;->t:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 6
    iget-object v0, p0, Lcom/join/android/app/component/video/c;->t:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Lcom/join/android/app/component/video/c$a;

    invoke-direct {v1, p0, p1}, Lcom/join/android/app/component/video/c$a;-><init>(Lcom/join/android/app/component/video/c;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 7
    iget-object v0, p0, Lcom/join/android/app/component/video/c;->t:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/join/android/app/component/video/c;Landroid/content/Context;Lcom/psk/eventmodule/Event;Ljava/lang/String;Ljava/lang/String;Lcom/psk/eventmodule/StatFactory$VolcanoOther;Z)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/join/android/app/component/video/c;->E(Landroid/content/Context;Lcom/psk/eventmodule/Event;Ljava/lang/String;Ljava/lang/String;Lcom/psk/eventmodule/StatFactory$VolcanoOther;Z)V

    return-void
.end method

.method static synthetic b(Lcom/join/android/app/component/video/c;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/android/app/component/video/c;->D(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/join/android/app/component/video/c;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/android/app/component/video/c;->H(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public A()V
    .locals 1

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/join/android/app/component/video/c;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/android/app/component/video/c;->F(I)V

    .line 3
    iget-object v0, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onVideoPause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public B()V
    .locals 2

    :try_start_0
    const-string v0, "MyListViewVideoHelper"

    const-string v1, "onResume "

    .line 1
    invoke-static {v0, v1}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcom/join/android/app/component/video/c;->e:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/join/android/app/component/video/e;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v1}, Lcom/join/android/app/component/video/StandardVideoView;->setThumbVisibleM()V

    .line 5
    iget-object v1, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v1, v0}, Lcom/join/android/app/component/video/StandardVideoView;->g(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Lcom/join/android/app/component/video/c;->F(I)V

    .line 7
    iget-object v0, p0, Lcom/join/android/app/component/video/c;->k:Landroid/widget/AbsListView;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p0, v0}, Lcom/join/android/app/component/video/c;->m(Landroid/widget/AbsListView;)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/join/android/app/component/video/c;->m:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {p0, v0}, Lcom/join/android/app/component/video/c;->n(Landroidx/recyclerview/widget/RecyclerView;)V

    goto :goto_0

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/join/android/app/component/video/c;->l:Lit/sephiroth/android/library/widget/AbsHListView;

    if-eqz v0, :cond_3

    .line 12
    invoke-virtual {p0, v0}, Lcom/join/android/app/component/video/c;->o(Lit/sephiroth/android/library/widget/AbsHListView;)V

    goto :goto_0

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v0}, Lcom/join/android/app/component/video/StandardVideoView;->onVideoResume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public C(Z)V
    .locals 4

    const-string v0, ""

    const-string v1, "MyListViewVideoHelper"

    .line 1
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResumeDelayForMain "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v3}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-boolean v2, p0, Lcom/join/android/app/component/video/c;->e:Z

    if-eqz v2, :cond_1

    .line 3
    iget-object v2, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    const/4 v3, 0x1

    invoke-static {v2, v0, v3, v0}, Lcom/join/android/app/component/video/e;->c(Lcom/join/android/app/component/video/StandardVideoView;Ljava/lang/String;ZLjava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-static {v0}, Lcom/join/android/app/component/video/e;->a(Lcom/join/android/app/component/video/StandardVideoView;)V

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResumeDelayForMain2 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v2}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v0}, Lcom/join/android/app/component/video/StandardVideoView;->setSurfaceToPlay()V

    if-eqz p1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {p1}, Lcom/join/android/app/component/video/StandardVideoView;->onVideoResume()V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onVideoPause()V

    .line 9
    :goto_0
    invoke-static {}, Lcom/join/android/app/component/video/e;->d()V

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/join/android/app/component/video/c;->e:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method public F(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/android/app/component/video/c;->u:I

    return-void
.end method

.method public G(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/android/app/component/video/c;->b:I

    return-void
.end method

.method public I()V
    .locals 0

    return-void
.end method

.method public J(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/video/c;->s:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v0}, Lcom/join/android/app/component/video/StandardVideoView;->releaseVideos()V

    .line 3
    iget-object v0, p0, Lcom/join/android/app/component/video/c;->s:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/join/android/app/component/video/c;->b:I

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/join/android/app/component/video/c;->j(Landroidx/recyclerview/widget/RecyclerView;I)V

    :cond_0
    return-void
.end method

.method public K(ILandroid/widget/FrameLayout;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/join/android/app/component/video/c;->t()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 3
    iget-object p1, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    if-ne p1, p2, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 5
    :cond_1
    iput-object p2, p0, Lcom/join/android/app/component/video/c;->s:Landroid/widget/FrameLayout;

    .line 6
    iget-object p1, p0, Lcom/join/android/app/component/video/c;->q:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/join/android/app/component/video/c;->s:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 8
    iget-object p1, p0, Lcom/join/android/app/component/video/c;->s:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public L(ILcom/facebook/drawee/view/SimpleDraweeView;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/android/app/component/video/c;->t()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 3
    iput-object p2, p0, Lcom/join/android/app/component/video/c;->q:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/join/android/app/component/video/c;->q:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-direct {p0, p1}, Lcom/join/android/app/component/video/c;->H(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public varargs d(ILcom/join/android/app/component/video/c$k;[Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addVideoData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/join/android/app/component/video/c$k;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/join/android/app/component/video/c$k;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    array-length v0, p3

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    const/4 v1, 0x0

    aget-boolean p3, p3, v1

    invoke-virtual {v0, p3}, Lcom/join/android/app/component/video/StandardVideoView;->setShowCoverWhenPause(Z)V

    .line 3
    :cond_0
    iget-object p3, p0, Lcom/join/android/app/component/video/c;->f:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public e(Landroid/widget/AbsListView;III)V
    .locals 7

    const-string v0, "  "

    .line 1
    iput p2, p0, Lcom/join/android/app/component/video/c;->h:I

    .line 2
    iput p3, p0, Lcom/join/android/app/component/video/c;->i:I

    .line 3
    iput p4, p0, Lcom/join/android/app/component/video/c;->j:I

    if-eqz p3, :cond_0

    if-nez p2, :cond_0

    return-void

    .line 4
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 5
    iget-wide v3, p0, Lcom/join/android/app/component/video/c;->p:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0xbb8

    cmp-long p3, v3, v5

    if-lez p3, :cond_1

    .line 6
    iput-wide v1, p0, Lcom/join/android/app/component/video/c;->p:J

    .line 7
    iget p3, p0, Lcom/join/android/app/component/video/c;->h:I

    iput p3, p0, Lcom/join/android/app/component/video/c;->o:I

    .line 8
    iget-object p3, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    move-result p3

    const/4 v1, 0x2

    if-eq p3, v1, :cond_1

    iget-object p3, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {p3}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    move-result p3

    const/4 v1, 0x6

    if-eq p3, v1, :cond_1

    .line 9
    iget-object p3, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {p3}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->isIfCurrentIsFullscreen()Z

    move-result p3

    if-nez p3, :cond_1

    .line 10
    invoke-virtual {p0, p1}, Lcom/join/android/app/component/video/c;->m(Landroid/widget/AbsListView;)V

    .line 11
    :cond_1
    invoke-virtual {p0}, Lcom/join/android/app/component/video/c;->t()I

    move-result p1

    const/16 p3, -0x16

    if-eq p1, p3, :cond_4

    if-gt p1, p4, :cond_4

    .line 12
    iget p3, p0, Lcom/join/android/app/component/video/c;->g:I

    if-ne p3, p1, :cond_2

    goto :goto_0

    :cond_2
    if-lt p1, p2, :cond_3

    .line 13
    iget p3, p0, Lcom/join/android/app/component/video/c;->i:I

    add-int/2addr p3, p2

    if-le p1, p3, :cond_5

    .line 14
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "autoPlayScroll  -->onPauseAll "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/join/android/app/component/video/c;->h:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/join/android/app/component/video/c;->i:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    iput p1, p0, Lcom/join/android/app/component/video/c;->g:I

    .line 16
    iget-object p1, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    if-eqz p1, :cond_5

    .line 17
    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->isIfCurrentIsFullscreen()Z

    move-result p1

    if-nez p1, :cond_5

    .line 18
    iget-object p1, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onVideoPause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_4
    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_1
    return-void
.end method

.method public f(Landroidx/recyclerview/widget/RecyclerView;III)V
    .locals 8

    const-string v0, "  "

    .line 1
    :try_start_0
    iget v1, p0, Lcom/join/android/app/component/video/c;->h:I

    if-ne v1, p2, :cond_0

    iget v1, p0, Lcom/join/android/app/component/video/c;->i:I

    if-eqz v1, :cond_0

    if-nez p2, :cond_0

    if-ne v1, p3, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 3
    iget-wide v3, p0, Lcom/join/android/app/component/video/c;->p:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0xbb8

    cmp-long v7, v3, v5

    if-lez v7, :cond_1

    .line 4
    iput-wide v1, p0, Lcom/join/android/app/component/video/c;->p:J

    .line 5
    iget v1, p0, Lcom/join/android/app/component/video/c;->h:I

    iput v1, p0, Lcom/join/android/app/component/video/c;->o:I

    .line 6
    iget-object v1, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    .line 7
    iget-object v1, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->isIfCurrentIsFullscreen()Z

    move-result v1

    if-nez v1, :cond_1

    .line 8
    invoke-virtual {p0, p1}, Lcom/join/android/app/component/video/c;->n(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 9
    :cond_1
    iput p2, p0, Lcom/join/android/app/component/video/c;->h:I

    .line 10
    iput p3, p0, Lcom/join/android/app/component/video/c;->i:I

    .line 11
    iput p4, p0, Lcom/join/android/app/component/video/c;->j:I

    .line 12
    invoke-virtual {p0}, Lcom/join/android/app/component/video/c;->t()I

    move-result p1

    const/16 p3, -0x16

    if-eq p1, p3, :cond_4

    if-gt p1, p4, :cond_4

    .line 13
    iget p3, p0, Lcom/join/android/app/component/video/c;->g:I

    if-ne p3, p1, :cond_2

    goto :goto_0

    :cond_2
    if-lt p1, p2, :cond_3

    .line 14
    iget p3, p0, Lcom/join/android/app/component/video/c;->i:I

    add-int/2addr p3, p2

    if-le p1, p3, :cond_5

    .line 15
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "autoPlayScroll  -->onPauseAll "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/join/android/app/component/video/c;->h:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/join/android/app/component/video/c;->i:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    iput p1, p0, Lcom/join/android/app/component/video/c;->g:I

    .line 17
    iget-object p1, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    if-eqz p1, :cond_5

    .line 18
    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->isIfCurrentIsFullscreen()Z

    move-result p1

    if-nez p1, :cond_5

    .line 19
    iget-object p1, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onVideoPause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_4
    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_1
    return-void
.end method

.method public g(Lit/sephiroth/android/library/widget/AbsHListView;III)V
    .locals 8

    const-string v0, "  "

    .line 1
    iput p2, p0, Lcom/join/android/app/component/video/c;->h:I

    .line 2
    iput p3, p0, Lcom/join/android/app/component/video/c;->i:I

    .line 3
    iput p4, p0, Lcom/join/android/app/component/video/c;->j:I

    const/4 v1, 0x2

    if-eqz p3, :cond_0

    if-nez p2, :cond_0

    .line 4
    :try_start_0
    iget-object p3, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    if-eqz p3, :cond_0

    .line 5
    invoke-virtual {p3}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    move-result p3

    if-eq p3, v1, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 7
    iget-wide v4, p0, Lcom/join/android/app/component/video/c;->p:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0xbb8

    cmp-long p3, v4, v6

    if-lez p3, :cond_1

    .line 8
    iput-wide v2, p0, Lcom/join/android/app/component/video/c;->p:J

    .line 9
    iget p3, p0, Lcom/join/android/app/component/video/c;->h:I

    iput p3, p0, Lcom/join/android/app/component/video/c;->o:I

    .line 10
    iget-object p3, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    move-result p3

    if-eq p3, v1, :cond_1

    iget-object p3, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {p3}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    move-result p3

    const/4 v1, 0x6

    if-eq p3, v1, :cond_1

    .line 11
    iget-object p3, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {p3}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->isIfCurrentIsFullscreen()Z

    move-result p3

    if-nez p3, :cond_1

    .line 12
    invoke-virtual {p0, p1}, Lcom/join/android/app/component/video/c;->o(Lit/sephiroth/android/library/widget/AbsHListView;)V

    .line 13
    :cond_1
    invoke-virtual {p0}, Lcom/join/android/app/component/video/c;->t()I

    move-result p1

    const/16 p3, -0x16

    if-eq p1, p3, :cond_4

    if-gt p1, p4, :cond_4

    .line 14
    iget p3, p0, Lcom/join/android/app/component/video/c;->g:I

    if-ne p3, p1, :cond_2

    goto :goto_0

    :cond_2
    if-lt p1, p2, :cond_3

    .line 15
    iget p3, p0, Lcom/join/android/app/component/video/c;->i:I

    add-int/2addr p3, p2

    if-le p1, p3, :cond_5

    .line 16
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "autoPlayScroll  -->onPauseAll "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/join/android/app/component/video/c;->h:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/join/android/app/component/video/c;->i:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    iput p1, p0, Lcom/join/android/app/component/video/c;->g:I

    .line 18
    iget-object p1, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    if-eqz p1, :cond_5

    .line 19
    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->isIfCurrentIsFullscreen()Z

    move-result p1

    if-nez p1, :cond_5

    .line 20
    iget-object p1, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onVideoPause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_4
    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_1
    return-void
.end method

.method public h(Landroidx/recyclerview/widget/RecyclerView;III)V
    .locals 7

    const-string v0, "  "

    .line 1
    iput p2, p0, Lcom/join/android/app/component/video/c;->h:I

    .line 2
    iput p3, p0, Lcom/join/android/app/component/video/c;->i:I

    .line 3
    iput p4, p0, Lcom/join/android/app/component/video/c;->j:I

    if-eqz p3, :cond_0

    if-nez p2, :cond_0

    return-void

    .line 4
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 5
    iget-wide v3, p0, Lcom/join/android/app/component/video/c;->p:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0xbb8

    cmp-long p3, v3, v5

    if-lez p3, :cond_1

    .line 6
    iput-wide v1, p0, Lcom/join/android/app/component/video/c;->p:J

    .line 7
    iget p3, p0, Lcom/join/android/app/component/video/c;->h:I

    iput p3, p0, Lcom/join/android/app/component/video/c;->o:I

    .line 8
    iget-object p3, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    move-result p3

    const/4 v1, 0x2

    if-eq p3, v1, :cond_1

    iget-object p3, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {p3}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    move-result p3

    const/4 v1, 0x6

    if-eq p3, v1, :cond_1

    .line 9
    iget-object p3, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {p3}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->isIfCurrentIsFullscreen()Z

    move-result p3

    if-nez p3, :cond_1

    .line 10
    invoke-virtual {p0, p1}, Lcom/join/android/app/component/video/c;->n(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 11
    :cond_1
    invoke-virtual {p0}, Lcom/join/android/app/component/video/c;->t()I

    move-result p1

    const/16 p3, -0x16

    if-eq p1, p3, :cond_4

    if-gt p1, p4, :cond_4

    .line 12
    iget p3, p0, Lcom/join/android/app/component/video/c;->g:I

    if-ne p3, p1, :cond_2

    goto :goto_0

    :cond_2
    if-lt p1, p2, :cond_3

    .line 13
    iget p3, p0, Lcom/join/android/app/component/video/c;->i:I

    add-int/2addr p3, p2

    if-le p1, p3, :cond_5

    .line 14
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "autoPlayScroll  -->onPauseAll "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/join/android/app/component/video/c;->h:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/join/android/app/component/video/c;->i:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    iput p1, p0, Lcom/join/android/app/component/video/c;->g:I

    .line 16
    iget-object p1, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    if-eqz p1, :cond_5

    .line 17
    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->isIfCurrentIsFullscreen()Z

    move-result p1

    if-nez p1, :cond_5

    .line 18
    iget-object p1, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onVideoPause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_4
    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_1
    return-void
.end method

.method public i(Landroid/widget/AbsListView;I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "autoPlayScrollStateChanged= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2
    iget v0, p0, Lcom/join/android/app/component/video/c;->u:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    return-void

    :cond_1
    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 p2, -0x1

    .line 4
    iput p2, p0, Lcom/join/android/app/component/video/c;->g:I

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/android/app/component/video/c;->m(Landroid/widget/AbsListView;)V

    :goto_0
    return-void
.end method

.method public j(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "autoPlayScrollStateChanged= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2
    iget v0, p0, Lcom/join/android/app/component/video/c;->u:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    return-void

    :cond_1
    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 p2, -0x1

    .line 4
    iput p2, p0, Lcom/join/android/app/component/video/c;->g:I

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/android/app/component/video/c;->n(Landroidx/recyclerview/widget/RecyclerView;)V

    :goto_0
    return-void
.end method

.method public k(Lit/sephiroth/android/library/widget/AbsHListView;I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "autoPlayScrollStateChanged= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2
    iget v0, p0, Lcom/join/android/app/component/video/c;->u:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    return-void

    :cond_1
    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 p2, -0x1

    .line 4
    iput p2, p0, Lcom/join/android/app/component/video/c;->g:I

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/android/app/component/video/c;->o(Lit/sephiroth/android/library/widget/AbsHListView;)V

    :goto_0
    return-void
.end method

.method public l(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "autoPlayScrollStateChanged= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2
    iget v0, p0, Lcom/join/android/app/component/video/c;->u:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    return-void

    :cond_1
    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 p2, -0x1

    .line 4
    iput p2, p0, Lcom/join/android/app/component/video/c;->g:I

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/android/app/component/video/c;->p(Landroidx/recyclerview/widget/RecyclerView;)V

    :goto_0
    return-void
.end method

.method public declared-synchronized m(Landroid/widget/AbsListView;)V
    .locals 12

    monitor-enter p0

    .line 1
    :try_start_0
    iput-object p1, p0, Lcom/join/android/app/component/video/c;->k:Landroid/widget/AbsListView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v3, v0

    move-object v5, v3

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 2
    :goto_0
    :try_start_1
    iget v6, p0, Lcom/join/android/app/component/video/c;->i:I

    if-ge v2, v6, :cond_f

    const/4 v6, 0x1

    if-eqz p1, :cond_e

    .line 3
    invoke-virtual {p1, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_e

    .line 4
    invoke-virtual {p1, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f091263

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_e

    .line 5
    invoke-virtual {p1, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    iput-object v7, p0, Lcom/join/android/app/component/video/c;->s:Landroid/widget/FrameLayout;

    .line 6
    invoke-virtual {p1, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 7
    invoke-virtual {p1, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f09014c

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 8
    invoke-virtual {p1, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 9
    :cond_0
    invoke-virtual {p1, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 10
    invoke-virtual {p1, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f090982

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 11
    invoke-virtual {p1, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 12
    :cond_1
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 13
    iget-object v8, p0, Lcom/join/android/app/component/video/c;->s:Landroid/widget/FrameLayout;

    invoke-virtual {v8, v7}, Landroid/widget/FrameLayout;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 14
    iget-object v8, p0, Lcom/join/android/app/component/video/c;->s:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v8

    if-eqz v3, :cond_e

    .line 15
    invoke-virtual {v3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_2

    goto/16 :goto_2

    .line 16
    :cond_2
    iget v9, v7, Landroid/graphics/Rect;->top:I

    const/4 v10, 0x2

    if-nez v9, :cond_b

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    if-ne v7, v8, :cond_b

    if-nez v4, :cond_b

    const-string v4, "MyListViewVideoHelper"

    const-string v7, "2222222 "

    .line 17
    invoke-static {v4, v7}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {v3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0}, Lcom/join/android/app/component/video/c;->t()I

    move-result v7

    if-ne v4, v7, :cond_4

    iget-object v4, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v4}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    move-result v4

    const/4 v7, 0x6

    if-eq v4, v7, :cond_4

    const-string v4, "MyListViewVideoHelper"

    const-string v7, "333333 "

    .line 19
    invoke-static {v4, v7}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget-object v4, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v4}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    move-result v4

    const/4 v7, 0x5

    if-ne v4, v7, :cond_3

    .line 21
    iget-object v4, p0, Lcom/join/android/app/component/video/c;->s:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 22
    iget-object v4, p0, Lcom/join/android/app/component/video/c;->s:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 23
    iget-object v4, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v4, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onVideoResume(Z)V

    const-string v4, "MyListViewVideoHelper"

    const-string v7, "444444 "

    .line 24
    invoke-static {v4, v7}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 25
    :cond_3
    iget-object v4, p0, Lcom/join/android/app/component/video/c;->s:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_a

    .line 26
    iget-object v4, p0, Lcom/join/android/app/component/video/c;->s:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->removeAllViews()V

    const-string v4, "MyListViewVideoHelper"

    const-string v7, "55555555 "

    .line 27
    invoke-static {v4, v7}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    iget-object v4, p0, Lcom/join/android/app/component/video/c;->s:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    :cond_4
    const-string v4, "MyListViewVideoHelper"

    const-string v7, "66666666 "

    .line 29
    invoke-static {v4, v7}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iget-object v4, p0, Lcom/join/android/app/component/video/c;->f:Ljava/util/Map;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/android/app/component/video/c$k;

    .line 31
    iget-object v7, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    if-eqz v7, :cond_6

    .line 32
    invoke-virtual {v7}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 33
    iget-object v7, p0, Lcom/join/android/app/component/video/c;->q:Lcom/facebook/drawee/view/SimpleDraweeView;

    if-eqz v7, :cond_5

    .line 34
    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    const-string v7, "MyListViewVideoHelper"

    const-string v8, "7777777 "

    .line 35
    invoke-static {v7, v8}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    :cond_6
    iget-object v7, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    iget-object v8, p0, Lcom/join/android/app/component/video/c;->c:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setPlayTag(Ljava/lang/String;)V

    .line 37
    iget-object v7, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setPlayPosition(I)V

    .line 38
    iget-object v7, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v4}, Lcom/join/android/app/component/video/c$k;->d()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/join/android/app/component/video/StandardVideoView;->setSwitchUrl(Ljava/lang/String;)V

    .line 39
    iget-object v7, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 40
    invoke-virtual {v4}, Lcom/join/android/app/component/video/c$k;->d()Ljava/lang/String;

    move-result-object v8

    sget v9, Lcom/join/android/app/component/video/StandardVideoView;->C:I

    new-array v10, v10, [Ljava/lang/Object;

    const-string v11, ""

    aput-object v11, v10, v1

    .line 41
    invoke-virtual {v4}, Lcom/join/android/app/component/video/c$k;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v10, v6

    .line 42
    invoke-virtual {v7, v8, v9, v10}, Lcom/join/android/app/component/video/StandardVideoView;->setUp(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 43
    iget-object v4, p0, Lcom/join/android/app/component/video/c;->s:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 44
    invoke-virtual {v3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/join/android/app/component/video/c;->G(I)V

    .line 45
    iget-object v4, p0, Lcom/join/android/app/component/video/c;->q:Lcom/facebook/drawee/view/SimpleDraweeView;

    if-eqz v4, :cond_8

    .line 46
    invoke-virtual {v4}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 47
    invoke-virtual {v4, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_7
    const-string v4, "MyListViewVideoHelper"

    .line 48
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "lastBannerView tag ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/join/android/app/component/video/c;->q:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v4, p0, Lcom/join/android/app/component/video/c;->q:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->clearAnimation()V

    .line 50
    :cond_8
    iput-object v3, p0, Lcom/join/android/app/component/video/c;->q:Lcom/facebook/drawee/view/SimpleDraweeView;

    const-string v4, "MyListViewVideoHelper"

    .line 51
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "lastBannerViewNew tag ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/join/android/app/component/video/c;->q:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iput-object v5, p0, Lcom/join/android/app/component/video/c;->r:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 53
    iget-object v4, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    new-instance v7, Lcom/join/android/app/component/video/c$c;

    invoke-direct {v7, p0}, Lcom/join/android/app/component/video/c$c;-><init>(Lcom/join/android/app/component/video/c;)V

    invoke-virtual {v4, v7}, Lcom/join/android/app/component/video/StandardVideoView;->setChangeCoverShowListener(Lcom/join/android/app/component/video/StandardVideoView$i;)V

    .line 54
    iget-object v4, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    new-instance v7, Lcom/join/android/app/component/video/c$d;

    invoke-direct {v7, p0}, Lcom/join/android/app/component/video/c$d;-><init>(Lcom/join/android/app/component/video/c;)V

    invoke-virtual {v4, v7}, Lcom/join/android/app/component/video/StandardVideoView;->setChangeCoverShowLoadingListener(Lcom/join/android/app/component/video/StandardVideoView$i;)V

    .line 55
    iget-object v4, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v4}, Lcom/join/android/app/component/video/StandardVideoView;->d()Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "MyListViewVideoHelper"

    .line 56
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "888888888 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v4, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v4}, Lcom/join/android/app/component/video/StandardVideoView;->startPlayLogic()V

    :cond_9
    const-string v4, "MyListViewVideoHelper"

    const-string v7, "startplaylogic "

    .line 58
    invoke-static {v4, v7}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_1
    const/4 v4, 0x1

    goto :goto_2

    :cond_b
    const-string v7, "MyListViewVideoHelper"

    .line 59
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "out to play Are   standardVideoView status  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v9}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {v3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p0}, Lcom/join/android/app/component/video/c;->t()I

    move-result v8

    if-ne v7, v8, :cond_d

    .line 61
    iget-object v7, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v7}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    move-result v7

    if-eq v7, v10, :cond_c

    iget-object v7, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v7}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    move-result v7

    if-ne v7, v6, :cond_d

    .line 62
    :cond_c
    iget-object v6, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v6}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onVideoPause()V

    const-string v6, "MyListViewVideoHelper"

    const-string v7, "out to play Are   onVideoPause  "

    .line 63
    invoke-static {v6, v7}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_d
    iget-object v6, p0, Lcom/join/android/app/component/video/c;->s:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 65
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string v6, "MyListViewVideoHelper"

    const-string v7, "out to play Are "

    .line 66
    invoke-static {v6, v7}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_e
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 67
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 68
    :cond_f
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public declared-synchronized n(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 12

    monitor-enter p0

    .line 1
    :try_start_0
    iput-object p1, p0, Lcom/join/android/app/component/video/c;->m:Landroidx/recyclerview/widget/RecyclerView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    :try_start_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/join/android/app/component/video/c;->i:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v4, v0

    move-object v5, v4

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 4
    :goto_0
    iget v6, p0, Lcom/join/android/app/component/video/c;->i:I

    if-ge v2, v6, :cond_f

    .line 5
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x1

    if-eqz v6, :cond_e

    .line 6
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    const v8, 0x7f091263

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_e

    .line 7
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    iput-object v6, p0, Lcom/join/android/app/component/video/c;->s:Landroid/widget/FrameLayout;

    .line 8
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 9
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    const v8, 0x7f09014c

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 10
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 11
    :cond_0
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 12
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    const v8, 0x7f090982

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 13
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 14
    :cond_1
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 15
    iget-object v8, p0, Lcom/join/android/app/component/video/c;->s:Landroid/widget/FrameLayout;

    invoke-virtual {v8, v6}, Landroid/widget/FrameLayout;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 16
    iget-object v8, p0, Lcom/join/android/app/component/video/c;->s:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v8

    .line 17
    iget v9, v6, Landroid/graphics/Rect;->top:I

    const/4 v10, 0x2

    if-nez v9, :cond_b

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    if-ne v6, v8, :cond_b

    if-nez v3, :cond_b

    const-string v6, "MyListViewVideoHelper"

    const-string v8, "2222222 "

    .line 18
    invoke-static {v6, v8}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-virtual {v4}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p0}, Lcom/join/android/app/component/video/c;->t()I

    move-result v8

    if-ne v6, v8, :cond_3

    iget-object v6, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v6}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    move-result v6

    const/4 v8, 0x6

    if-eq v6, v8, :cond_3

    const-string v3, "MyListViewVideoHelper"

    const-string v6, "333333 "

    .line 20
    invoke-static {v3, v6}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iget-object v3, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v3}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    move-result v3

    const/4 v6, 0x5

    if-ne v3, v6, :cond_2

    .line 22
    iget-object v3, p0, Lcom/join/android/app/component/video/c;->s:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 23
    iget-object v3, p0, Lcom/join/android/app/component/video/c;->s:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v3, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 24
    iget-object v3, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v3, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onVideoResume(Z)V

    const-string v3, "MyListViewVideoHelper"

    const-string v6, "444444 "

    .line 25
    invoke-static {v3, v6}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 26
    :cond_2
    iget-object v3, p0, Lcom/join/android/app/component/video/c;->s:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_a

    .line 27
    iget-object v3, p0, Lcom/join/android/app/component/video/c;->s:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->removeAllViews()V

    const-string v3, "MyListViewVideoHelper"

    const-string v6, "55555555 "

    .line 28
    invoke-static {v3, v6}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iget-object v3, p0, Lcom/join/android/app/component/video/c;->s:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v3, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    :cond_3
    const-string v6, "MyListViewVideoHelper"

    const-string v8, "66666666 "

    .line 30
    invoke-static {v6, v8}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object v6, p0, Lcom/join/android/app/component/video/c;->f:Ljava/util/Map;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/join/android/app/component/video/c$k;

    if-eqz v6, :cond_e

    .line 32
    invoke-virtual {v6}, Lcom/join/android/app/component/video/c$k;->d()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_4

    goto/16 :goto_2

    .line 33
    :cond_4
    iget-object v3, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_6

    .line 34
    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 35
    iget-object v3, p0, Lcom/join/android/app/component/video/c;->q:Lcom/facebook/drawee/view/SimpleDraweeView;

    if-eqz v3, :cond_5

    .line 36
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    const-string v3, "MyListViewVideoHelper"

    const-string v8, "7777777 "

    .line 37
    invoke-static {v3, v8}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :cond_6
    iget-object v3, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    iget-object v8, p0, Lcom/join/android/app/component/video/c;->c:Ljava/lang/String;

    invoke-virtual {v3, v8}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setPlayTag(Ljava/lang/String;)V

    .line 39
    iget-object v3, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v3, v8}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setPlayPosition(I)V

    .line 40
    iget-object v3, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v6}, Lcom/join/android/app/component/video/c$k;->d()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/join/android/app/component/video/StandardVideoView;->setSwitchUrl(Ljava/lang/String;)V

    .line 41
    iget-object v3, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 42
    invoke-virtual {v6}, Lcom/join/android/app/component/video/c$k;->d()Ljava/lang/String;

    move-result-object v8

    sget v9, Lcom/join/android/app/component/video/StandardVideoView;->C:I

    new-array v10, v10, [Ljava/lang/Object;

    const-string v11, ""

    aput-object v11, v10, v1

    .line 43
    invoke-virtual {v6}, Lcom/join/android/app/component/video/c$k;->a()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v10, v7

    .line 44
    invoke-virtual {v3, v8, v9, v10}, Lcom/join/android/app/component/video/StandardVideoView;->setUp(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 45
    iget-object v3, p0, Lcom/join/android/app/component/video/c;->s:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v3, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 46
    invoke-virtual {v4}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/join/android/app/component/video/c;->G(I)V

    .line 47
    iget-object v3, p0, Lcom/join/android/app/component/video/c;->q:Lcom/facebook/drawee/view/SimpleDraweeView;

    if-eqz v3, :cond_8

    .line 48
    invoke-virtual {v3}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 49
    invoke-virtual {v3, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_7
    const-string v3, "MyListViewVideoHelper"

    .line 50
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "lastBannerView tag ="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/join/android/app/component/video/c;->q:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v3, p0, Lcom/join/android/app/component/video/c;->q:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->clearAnimation()V

    .line 52
    :cond_8
    iput-object v4, p0, Lcom/join/android/app/component/video/c;->q:Lcom/facebook/drawee/view/SimpleDraweeView;

    const-string v3, "MyListViewVideoHelper"

    .line 53
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "lastBannerViewNew tag ="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/join/android/app/component/video/c;->q:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iput-object v5, p0, Lcom/join/android/app/component/video/c;->r:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 55
    iget-object v3, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    new-instance v6, Lcom/join/android/app/component/video/c$g;

    invoke-direct {v6, p0}, Lcom/join/android/app/component/video/c$g;-><init>(Lcom/join/android/app/component/video/c;)V

    invoke-virtual {v3, v6}, Lcom/join/android/app/component/video/StandardVideoView;->setChangeCoverShowListener(Lcom/join/android/app/component/video/StandardVideoView$i;)V

    .line 56
    iget-object v3, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    new-instance v6, Lcom/join/android/app/component/video/c$h;

    invoke-direct {v6, p0}, Lcom/join/android/app/component/video/c$h;-><init>(Lcom/join/android/app/component/video/c;)V

    invoke-virtual {v3, v6}, Lcom/join/android/app/component/video/StandardVideoView;->setChangeCoverShowLoadingListener(Lcom/join/android/app/component/video/StandardVideoView$i;)V

    .line 57
    iget-object v3, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v3}, Lcom/join/android/app/component/video/StandardVideoView;->d()Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "MyListViewVideoHelper"

    .line 58
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "888888888 "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v3, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v3}, Lcom/join/android/app/component/video/StandardVideoView;->startPlayLogic()V

    :cond_9
    const-string v3, "MyListViewVideoHelper"

    const-string v6, "startplaylogic "

    .line 60
    invoke-static {v3, v6}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_1
    const/4 v3, 0x1

    goto :goto_2

    :cond_b
    const-string v6, "MyListViewVideoHelper"

    .line 61
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "out to play Are   standardVideoView status  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v9}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {v4}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p0}, Lcom/join/android/app/component/video/c;->t()I

    move-result v8

    if-ne v6, v8, :cond_d

    .line 63
    iget-object v6, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v6}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    move-result v6

    if-eq v6, v10, :cond_c

    iget-object v6, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v6}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    move-result v6

    if-ne v6, v7, :cond_d

    .line 64
    :cond_c
    iget-object v6, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v6}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onVideoPause()V

    const-string v6, "MyListViewVideoHelper"

    const-string v7, "out to play Are   onVideoPause  "

    .line 65
    invoke-static {v6, v7}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_d
    iget-object v6, p0, Lcom/join/android/app/component/video/c;->s:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 67
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string v6, "MyListViewVideoHelper"

    const-string v7, "out to play Are "

    .line 68
    invoke-static {v6, v7}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_e
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 69
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 70
    :cond_f
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public declared-synchronized o(Lit/sephiroth/android/library/widget/AbsHListView;)V
    .locals 12

    monitor-enter p0

    .line 1
    :try_start_0
    iput-object p1, p0, Lcom/join/android/app/component/video/c;->l:Lit/sephiroth/android/library/widget/AbsHListView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    :try_start_1
    iget v0, p0, Lcom/join/android/app/component/video/c;->h:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    move-object v4, v3

    const/4 v5, 0x0

    :goto_0
    iget v6, p0, Lcom/join/android/app/component/video/c;->i:I

    if-ge v0, v6, :cond_13

    const/4 v6, 0x1

    if-eqz p1, :cond_12

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_12

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f091263

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_12

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    iput-object v7, p0, Lcom/join/android/app/component/video/c;->s:Landroid/widget/FrameLayout;

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f09014c

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 9
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f090982

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 12
    :cond_1
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 13
    iget-object v8, p0, Lcom/join/android/app/component/video/c;->s:Landroid/widget/FrameLayout;

    invoke-virtual {v8, v7}, Landroid/widget/FrameLayout;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 14
    iget-object v8, p0, Lcom/join/android/app/component/video/c;->s:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v8

    .line 15
    iput-object v3, p0, Lcom/join/android/app/component/video/c;->q:Lcom/facebook/drawee/view/SimpleDraweeView;

    const-string v9, "MyListViewVideoHelper"

    .line 16
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "lastBannerViewNew tag ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/join/android/app/component/video/c;->q:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v11}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iput-object v4, p0, Lcom/join/android/app/component/video/c;->r:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 18
    iget-object v9, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    if-eqz v9, :cond_2

    .line 19
    new-instance v10, Lcom/join/android/app/component/video/c$e;

    invoke-direct {v10, p0}, Lcom/join/android/app/component/video/c$e;-><init>(Lcom/join/android/app/component/video/c;)V

    invoke-virtual {v9, v10}, Lcom/join/android/app/component/video/StandardVideoView;->setChangeCoverShowListener(Lcom/join/android/app/component/video/StandardVideoView$i;)V

    .line 20
    iget-object v9, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    new-instance v10, Lcom/join/android/app/component/video/c$f;

    invoke-direct {v10, p0}, Lcom/join/android/app/component/video/c$f;-><init>(Lcom/join/android/app/component/video/c;)V

    invoke-virtual {v9, v10}, Lcom/join/android/app/component/video/StandardVideoView;->setChangeCoverShowLoadingListener(Lcom/join/android/app/component/video/StandardVideoView$i;)V

    :cond_2
    const-string v9, "MyListViewVideoHelper"

    .line 21
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "1111111111111    "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, "rect.left:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v7, Landroid/graphics/Rect;->left:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "rect.right:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v7, Landroid/graphics/Rect;->right:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "videoHeight:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget v9, v7, Landroid/graphics/Rect;->left:I

    const/4 v10, 0x2

    if-nez v9, :cond_f

    iget v7, v7, Landroid/graphics/Rect;->right:I

    if-ne v7, v8, :cond_f

    if-nez v5, :cond_f

    const-string v5, "MyListViewVideoHelper"

    const-string v7, "2222222 "

    .line 23
    invoke-static {v5, v7}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-virtual {v3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0}, Lcom/join/android/app/component/video/c;->t()I

    move-result v7

    if-ne v5, v7, :cond_6

    iget-object v5, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v5}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    move-result v5

    const/4 v7, 0x6

    if-eq v5, v7, :cond_6

    const-string v5, "MyListViewVideoHelper"

    const-string v7, "333333 "

    .line 25
    invoke-static {v5, v7}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iget-object v5, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v5}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    move-result v5

    const/4 v7, 0x5

    if-ne v5, v7, :cond_4

    .line 27
    iget-object v5, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 28
    instance-of v5, v5, Landroid/view/ViewGroup;

    if-eqz v5, :cond_3

    .line 29
    iget-object v5, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 30
    iget-object v7, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 31
    :cond_3
    iget-object v5, p0, Lcom/join/android/app/component/video/c;->s:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 32
    iget-object v5, p0, Lcom/join/android/app/component/video/c;->s:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v5, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 33
    iget-object v5, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v5, v2}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onVideoResume(Z)V

    const-string v5, "MyListViewVideoHelper"

    const-string v7, "444444 "

    .line 34
    invoke-static {v5, v7}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 35
    :cond_4
    iget-object v5, p0, Lcom/join/android/app/component/video/c;->s:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_e

    .line 36
    iget-object v5, p0, Lcom/join/android/app/component/video/c;->s:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->removeAllViews()V

    const-string v5, "MyListViewVideoHelper"

    const-string v7, "55555555 "

    .line 37
    invoke-static {v5, v7}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-object v5, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    if-eqz v5, :cond_5

    .line 39
    iget-object v7, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 40
    :cond_5
    iget-object v5, p0, Lcom/join/android/app/component/video/c;->s:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v5, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    :cond_6
    const-string v5, "MyListViewVideoHelper"

    const-string v7, "66666666 "

    .line 41
    invoke-static {v5, v7}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v5, p0, Lcom/join/android/app/component/video/c;->f:Ljava/util/Map;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/android/app/component/video/c$k;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_7

    .line 43
    monitor-exit p0

    return-void

    .line 44
    :cond_7
    :try_start_2
    iget-object v7, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    if-eqz v7, :cond_9

    .line 45
    invoke-virtual {v7}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 46
    iget-object v7, p0, Lcom/join/android/app/component/video/c;->q:Lcom/facebook/drawee/view/SimpleDraweeView;

    if-eqz v7, :cond_8

    .line 47
    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_8
    const-string v7, "MyListViewVideoHelper"

    const-string v8, "7777777 "

    .line 48
    invoke-static {v7, v8}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_9
    iget-object v7, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    iget-object v8, p0, Lcom/join/android/app/component/video/c;->c:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setPlayTag(Ljava/lang/String;)V

    .line 50
    iget-object v7, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setPlayPosition(I)V

    .line 51
    iget-object v7, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v5}, Lcom/join/android/app/component/video/c$k;->d()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/join/android/app/component/video/StandardVideoView;->setSwitchUrl(Ljava/lang/String;)V

    .line 52
    iget-object v7, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 53
    invoke-virtual {v5}, Lcom/join/android/app/component/video/c$k;->d()Ljava/lang/String;

    move-result-object v8

    sget v9, Lcom/join/android/app/component/video/StandardVideoView;->C:I

    new-array v10, v10, [Ljava/lang/Object;

    const-string v11, ""

    aput-object v11, v10, v2

    .line 54
    invoke-virtual {v5}, Lcom/join/android/app/component/video/c$k;->a()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v10, v6

    .line 55
    invoke-virtual {v7, v8, v9, v10}, Lcom/join/android/app/component/video/StandardVideoView;->setUp(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 56
    iget-object v5, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 57
    instance-of v5, v5, Landroid/view/ViewGroup;

    if-eqz v5, :cond_a

    .line 58
    iget-object v5, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 59
    iget-object v7, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 60
    :cond_a
    iget-object v5, p0, Lcom/join/android/app/component/video/c;->s:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v5, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 61
    invoke-virtual {v3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/join/android/app/component/video/c;->G(I)V

    .line 62
    iget-object v5, p0, Lcom/join/android/app/component/video/c;->q:Lcom/facebook/drawee/view/SimpleDraweeView;

    if-eqz v5, :cond_c

    .line 63
    invoke-virtual {v5}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v5

    if-eqz v5, :cond_b

    .line 64
    invoke-virtual {v5, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_b
    const-string v5, "MyListViewVideoHelper"

    .line 65
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "lastBannerView tag ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/join/android/app/component/video/c;->q:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v5, p0, Lcom/join/android/app/component/video/c;->q:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->clearAnimation()V

    .line 67
    :cond_c
    iget-object v5, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v5}, Lcom/join/android/app/component/video/StandardVideoView;->d()Z

    move-result v5

    if-eqz v5, :cond_d

    const-string v5, "MyListViewVideoHelper"

    .line 68
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "888888888 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v5, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v5}, Lcom/join/android/app/component/video/StandardVideoView;->startPlayLogic()V

    :cond_d
    const-string v5, "MyListViewVideoHelper"

    const-string v7, "startplaylogic "

    .line 70
    invoke-static {v5, v7}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    :goto_1
    const/4 v5, 0x1

    goto :goto_2

    :cond_f
    const-string v5, "MyListViewVideoHelper"

    .line 71
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "out to play Are   standardVideoView status  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v8}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {v3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_11

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0}, Lcom/join/android/app/component/video/c;->t()I

    move-result v7

    if-ne v5, v7, :cond_11

    .line 73
    iget-object v5, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v5}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    move-result v5

    if-eq v5, v10, :cond_10

    iget-object v5, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v5}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    move-result v5

    if-ne v5, v6, :cond_11

    .line 74
    :cond_10
    iget-object v5, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v5}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onVideoPause()V

    const-string v5, "MyListViewVideoHelper"

    const-string v6, "out to play Are   onVideoPause  "

    .line 75
    invoke-static {v5, v6}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_11
    iget-object v5, p0, Lcom/join/android/app/component/video/c;->s:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 77
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string v5, "MyListViewVideoHelper"

    const-string v6, "out to play Are "

    .line 78
    invoke-static {v5, v6}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v5, 0x0

    :cond_12
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 79
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 80
    :cond_13
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public declared-synchronized p(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 12

    monitor-enter p0

    .line 1
    :try_start_0
    iput-object p1, p0, Lcom/join/android/app/component/video/c;->m:Landroidx/recyclerview/widget/RecyclerView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    :try_start_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/join/android/app/component/video/c;->i:I

    .line 4
    iget v0, p0, Lcom/join/android/app/component/video/c;->h:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    move-object v4, v3

    const/4 v5, 0x0

    :goto_0
    iget v6, p0, Lcom/join/android/app/component/video/c;->i:I

    if-ge v0, v6, :cond_13

    .line 5
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x1

    if-eqz v6, :cond_12

    .line 6
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    const v8, 0x7f091263

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_12

    .line 7
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    iput-object v6, p0, Lcom/join/android/app/component/video/c;->s:Landroid/widget/FrameLayout;

    .line 8
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 9
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    const v8, 0x7f09014c

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 10
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 11
    :cond_0
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 12
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    const v8, 0x7f090982

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 13
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 14
    :cond_1
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 15
    iget-object v8, p0, Lcom/join/android/app/component/video/c;->s:Landroid/widget/FrameLayout;

    invoke-virtual {v8, v6}, Landroid/widget/FrameLayout;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 16
    iget-object v8, p0, Lcom/join/android/app/component/video/c;->s:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v8

    .line 17
    iput-object v3, p0, Lcom/join/android/app/component/video/c;->q:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 18
    iput-object v4, p0, Lcom/join/android/app/component/video/c;->r:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 19
    iget-object v9, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    if-eqz v9, :cond_2

    .line 20
    new-instance v10, Lcom/join/android/app/component/video/c$i;

    invoke-direct {v10, p0}, Lcom/join/android/app/component/video/c$i;-><init>(Lcom/join/android/app/component/video/c;)V

    invoke-virtual {v9, v10}, Lcom/join/android/app/component/video/StandardVideoView;->setChangeCoverShowListener(Lcom/join/android/app/component/video/StandardVideoView$i;)V

    .line 21
    iget-object v9, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    new-instance v10, Lcom/join/android/app/component/video/c$j;

    invoke-direct {v10, p0}, Lcom/join/android/app/component/video/c$j;-><init>(Lcom/join/android/app/component/video/c;)V

    invoke-virtual {v9, v10}, Lcom/join/android/app/component/video/StandardVideoView;->setChangeCoverShowLoadingListener(Lcom/join/android/app/component/video/StandardVideoView$i;)V

    :cond_2
    const-string v9, "MyListViewVideoHelper"

    .line 22
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "1111111111111    "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget v9, v6, Landroid/graphics/Rect;->top:I

    const/4 v10, 0x2

    if-nez v9, :cond_e

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    if-ne v6, v8, :cond_e

    if-nez v5, :cond_e

    const-string v6, "MyListViewVideoHelper"

    const-string v8, "2222222 "

    .line 24
    invoke-static {v6, v8}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-virtual {v3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p0}, Lcom/join/android/app/component/video/c;->t()I

    move-result v8

    if-ne v6, v8, :cond_6

    iget-object v6, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v6}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    move-result v6

    const/4 v8, 0x6

    if-eq v6, v8, :cond_6

    const-string v5, "MyListViewVideoHelper"

    const-string v6, "333333 "

    .line 26
    invoke-static {v5, v6}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-object v5, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v5}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_4

    .line 28
    iget-object v5, p0, Lcom/join/android/app/component/video/c;->s:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 29
    iget-object v5, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 30
    instance-of v5, v5, Landroid/view/ViewGroup;

    if-eqz v5, :cond_3

    .line 31
    iget-object v5, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 32
    iget-object v6, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 33
    :cond_3
    iget-object v5, p0, Lcom/join/android/app/component/video/c;->s:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 34
    iget-object v5, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v5, v2}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onVideoResume(Z)V

    const-string v5, "MyListViewVideoHelper"

    const-string v6, "444444 "

    .line 35
    invoke-static {v5, v6}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 36
    :cond_4
    iget-object v5, p0, Lcom/join/android/app/component/video/c;->s:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_d

    .line 37
    iget-object v5, p0, Lcom/join/android/app/component/video/c;->s:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->removeAllViews()V

    const-string v5, "MyListViewVideoHelper"

    const-string v6, "55555555 "

    .line 38
    invoke-static {v5, v6}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-object v5, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 40
    instance-of v5, v5, Landroid/view/ViewGroup;

    if-eqz v5, :cond_5

    .line 41
    iget-object v5, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 42
    iget-object v6, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 43
    :cond_5
    iget-object v5, p0, Lcom/join/android/app/component/video/c;->s:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    :cond_6
    const-string v6, "MyListViewVideoHelper"

    const-string v8, "66666666 "

    .line 44
    invoke-static {v6, v8}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object v6, p0, Lcom/join/android/app/component/video/c;->f:Ljava/util/Map;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/join/android/app/component/video/c$k;

    if-eqz v6, :cond_12

    .line 46
    invoke-virtual {v6}, Lcom/join/android/app/component/video/c$k;->d()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_7

    goto/16 :goto_2

    .line 47
    :cond_7
    iget-object v5, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    if-eqz v5, :cond_9

    .line 48
    invoke-virtual {v5}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 49
    iget-object v5, p0, Lcom/join/android/app/component/video/c;->q:Lcom/facebook/drawee/view/SimpleDraweeView;

    if-eqz v5, :cond_8

    .line 50
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_8
    const-string v5, "MyListViewVideoHelper"

    const-string v8, "7777777 "

    .line 51
    invoke-static {v5, v8}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_9
    iget-object v5, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    iget-object v8, p0, Lcom/join/android/app/component/video/c;->c:Ljava/lang/String;

    invoke-virtual {v5, v8}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setPlayTag(Ljava/lang/String;)V

    .line 53
    iget-object v5, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setPlayPosition(I)V

    .line 54
    iget-object v5, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v6}, Lcom/join/android/app/component/video/c$k;->d()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/join/android/app/component/video/StandardVideoView;->setSwitchUrl(Ljava/lang/String;)V

    .line 55
    iget-object v5, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 56
    invoke-virtual {v6}, Lcom/join/android/app/component/video/c$k;->d()Ljava/lang/String;

    move-result-object v8

    sget v9, Lcom/join/android/app/component/video/StandardVideoView;->C:I

    new-array v10, v10, [Ljava/lang/Object;

    const-string v11, ""

    aput-object v11, v10, v2

    .line 57
    invoke-virtual {v6}, Lcom/join/android/app/component/video/c$k;->a()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v10, v7

    .line 58
    invoke-virtual {v5, v8, v9, v10}, Lcom/join/android/app/component/video/StandardVideoView;->setUp(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 59
    iget-object v5, p0, Lcom/join/android/app/component/video/c;->s:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 60
    invoke-virtual {v3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/join/android/app/component/video/c;->G(I)V

    .line 61
    iget-object v5, p0, Lcom/join/android/app/component/video/c;->q:Lcom/facebook/drawee/view/SimpleDraweeView;

    if-eqz v5, :cond_b

    .line 62
    invoke-virtual {v5}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 63
    invoke-virtual {v5, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_a
    const-string v5, "MyListViewVideoHelper"

    .line 64
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "lastBannerView tag ="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/join/android/app/component/video/c;->q:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v5, p0, Lcom/join/android/app/component/video/c;->q:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->clearAnimation()V

    .line 66
    :cond_b
    iget-object v5, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v5}, Lcom/join/android/app/component/video/StandardVideoView;->d()Z

    move-result v5

    if-eqz v5, :cond_c

    const-string v5, "MyListViewVideoHelper"

    .line 67
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "888888888 "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v5, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v5}, Lcom/join/android/app/component/video/StandardVideoView;->startPlayLogic()V

    :cond_c
    const-string v5, "MyListViewVideoHelper"

    const-string v6, "startplaylogic "

    .line 69
    invoke-static {v5, v6}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    :goto_1
    const/4 v5, 0x1

    goto/16 :goto_2

    :cond_e
    const-string v6, "MyListViewVideoHelper"

    .line 70
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "out to play Are   standardVideoView status  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v9}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {v3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p0}, Lcom/join/android/app/component/video/c;->t()I

    move-result v8

    if-ne v6, v8, :cond_10

    .line 72
    iget-object v6, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v6}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    move-result v6

    if-eq v6, v10, :cond_f

    iget-object v6, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v6}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    move-result v6

    if-ne v6, v7, :cond_10

    .line 73
    :cond_f
    iget-object v6, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v6}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onVideoPause()V

    const-string v6, "MyListViewVideoHelper"

    const-string v7, "out to play Are   onVideoPause  "

    .line 74
    invoke-static {v6, v7}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_10
    iget-object v6, p0, Lcom/join/android/app/component/video/c;->s:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 76
    iget-object v6, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-eqz v6, :cond_11

    .line 77
    instance-of v6, v6, Landroid/view/ViewGroup;

    if-eqz v6, :cond_11

    .line 78
    iget-object v6, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 79
    iget-object v7, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 80
    :cond_11
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string v6, "MyListViewVideoHelper"

    const-string v7, "out to play Are "

    .line 81
    invoke-static {v6, v7}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_12
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 82
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 83
    :cond_13
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public q()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/android/app/component/video/c;->e:Z

    return v0
.end method

.method public r()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/video/c;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public s()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/join/android/app/component/video/StandardVideoView;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v0}, Lcom/join/android/app/component/video/StandardVideoView;->startPlayLogic()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    iget-object v1, p0, Lcom/join/android/app/component/video/c;->a:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/join/android/app/component/video/StandardVideoView;->startWindowFullscreen(Landroid/content/Context;ZZ)Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    :cond_1
    :goto_0
    return-void
.end method

.method public t()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/android/app/component/video/c;->b:I

    return v0
.end method

.method public u()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/video/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public v()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/join/android/app/component/video/c$k;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/video/c;->f:Ljava/util/Map;

    return-object v0
.end method

.method public w()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public x(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/video/c;->a:Landroid/content/Context;

    .line 2
    iput-object p2, p0, Lcom/join/android/app/component/video/c;->c:Ljava/lang/String;

    .line 3
    new-instance v0, Lcom/join/android/app/component/video/StandardVideoView;

    iget-object v1, p0, Lcom/join/android/app/component/video/c;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/join/android/app/component/video/StandardVideoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 4
    invoke-virtual {v0, p2}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setPlayTag(Ljava/lang/String;)V

    const-string v0, "PapaMainAdapter"

    .line 5
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p3, :cond_1

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v0, p3}, Lcom/join/android/app/component/video/StandardVideoView;->setAutoPlayConfig(Z)V

    .line 7
    iget-object p3, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    new-instance v0, Lcom/join/android/app/component/video/c$b;

    invoke-direct {v0, p0, p1, p2}, Lcom/join/android/app/component/video/c$b;-><init>(Lcom/join/android/app/component/video/c;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Lcom/join/android/app/component/video/StandardVideoView;->setOnclickVideoListener(Lcom/join/android/app/component/video/StandardVideoView$j;)V

    :cond_1
    return-void
.end method

.method public y(I)V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/join/android/app/component/video/c;->t()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/join/android/app/component/video/c;->f:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/android/app/component/video/c$k;

    iget-object p1, p1, Lcom/join/android/app/component/video/c$k;->d:Lcom/join/mgps/Util/IntentDateBean;

    .line 3
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/android/app/component/video/c;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 4
    iget-object p1, p0, Lcom/join/android/app/component/video/c;->a:Landroid/content/Context;

    instance-of p1, p1, Lcom/join/mgps/activity/MGMainActivity;

    if-eqz p1, :cond_1

    const-string p1, "PapaMainAdapter"

    iget-object v0, p0, Lcom/join/android/app/component/video/c;->c:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/join/android/app/component/video/c;->a:Landroid/content/Context;

    check-cast p1, Lcom/join/mgps/activity/MGMainActivity;

    iget-object v0, p0, Lcom/join/android/app/component/video/c;->f:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/join/android/app/component/video/c;->t()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/android/app/component/video/c$k;

    invoke-virtual {v0}, Lcom/join/android/app/component/video/c$k;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/MGMainActivity;->setPapaMainFragmentLastPosition(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/join/android/app/component/video/c;->f:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/join/android/app/component/video/c;->t()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/android/app/component/video/c$k;

    invoke-virtual {p1}, Lcom/join/android/app/component/video/c$k;->c()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/join/android/app/component/video/c;->D(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public z()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->release()V

    .line 2
    iget-object v0, p0, Lcom/join/android/app/component/video/c;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/join/android/app/component/video/a;->n0(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
