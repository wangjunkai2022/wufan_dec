.class public Lcom/join/mgps/activity/IntroductionActivity;
.super Lcom/BaseFragmentActivity;
.source "IntroductionActivity.java"

# interfaces
.implements Lcom/mgsim/common/fragment/a;
.implements Ll1/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/IntroductionActivity$f;,
        Lcom/join/mgps/activity/IntroductionActivity$e;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c02e4
.end annotation


# instance fields
.field A:Landroidx/fragment/app/FragmentManager;

.field B:Lcom/join/mgps/rpc/j;

.field C:Ljava/lang/String;

.field D:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field E:Lcom/join/mgps/dto/IntroductionCommentDetailParamsBean;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field F:Ljava/lang/Boolean;

.field G:I

.field private H:Ljava/lang/String;

.field I:Lcom/join/mgps/dto/BbsDetailBean;

.field J:Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;

.field K:Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;

.field a:Ljava/lang/String;

.field private b:Landroid/os/Handler;

.field c:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Lcom/google/android/material/appbar/AppBarLayout;

.field f:Landroid/widget/TextView;

.field g:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field i:Landroid/widget/FrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field j:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field k:Landroid/widget/FrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field l:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field m:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field n:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field n0:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;

.field o:Lcom/join/mgps/customview/NestedScrollWebView;

.field o0:Landroidx/fragment/app/Fragment;

.field p:Landroid/widget/ProgressBar;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private p0:Ljava/lang/String;

.field q:Landroid/widget/FrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private q0:Z

.field r:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field r0:Lcom/join/mgps/dialog/x0;

.field s:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private s0:Lcom/mgsim/common/fragment/BackHandledFragment;

.field t:Lcom/join/mgps/dto/IntentDataMain;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field t0:Landroid/widget/PopupWindow;

.field private u:Landroid/view/View;

.field u0:Z

.field private v:Landroid/webkit/WebChromeClient;

.field v0:Z

.field private w:Landroid/view/View;

.field w0:J

.field x:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field x0:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field y:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field z:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/BaseFragmentActivity;-><init>()V

    const-string v0, "IntroductionActivity"

    .line 2
    iput-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->a:Ljava/lang/String;

    .line 3
    new-instance v0, Lcom/join/mgps/activity/IntroductionActivity$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/IntroductionActivity$a;-><init>(Lcom/join/mgps/activity/IntroductionActivity;)V

    iput-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->b:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->w:Landroid/view/View;

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->o0:Landroidx/fragment/app/Fragment;

    const/4 v1, 0x1

    .line 6
    iput-boolean v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->q0:Z

    .line 7
    iput-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->r0:Lcom/join/mgps/dialog/x0;

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->u0:Z

    .line 9
    iput-boolean v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->v0:Z

    const-wide/16 v0, 0x0

    .line 10
    iput-wide v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->w0:J

    .line 11
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->x0:Ljava/util/LinkedHashMap;

    return-void
.end method

.method static synthetic D0(Lcom/join/mgps/activity/IntroductionActivity;Landroid/view/View;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/activity/IntroductionActivity;->r1(Landroid/view/View;II)V

    return-void
.end method

.method static synthetic E0(Lcom/join/mgps/activity/IntroductionActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/activity/IntroductionActivity;->q0:Z

    return p1
.end method

.method static synthetic F0(Lcom/join/mgps/activity/IntroductionActivity;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/IntroductionActivity;->u:Landroid/view/View;

    return-object p0
.end method

.method static synthetic G0(Lcom/join/mgps/activity/IntroductionActivity;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/IntroductionActivity;->u:Landroid/view/View;

    return-object p1
.end method

.method static synthetic H0(Lcom/join/mgps/activity/IntroductionActivity;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/IntroductionActivity;->w:Landroid/view/View;

    return-object p0
.end method

.method static synthetic I0(Lcom/join/mgps/activity/IntroductionActivity;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/IntroductionActivity;->w:Landroid/view/View;

    return-object p1
.end method

.method static synthetic J0(Lcom/join/mgps/activity/IntroductionActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/IntroductionActivity;->H:Ljava/lang/String;

    return-object p0
.end method

.method private R0()I
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private Z0(Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->o:Lcom/join/mgps/customview/NestedScrollWebView;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/IntroductionActivity;->X0(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/IntroductionActivity;->showLodingFailed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private init()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/IntroductionActivity;->V0()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->o:Lcom/join/mgps/customview/NestedScrollWebView;

    new-instance v1, Lcom/join/mgps/activity/IntroductionActivity$b;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/IntroductionActivity$b;-><init>(Lcom/join/mgps/activity/IntroductionActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method private k1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->i:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->j:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method private m1()V
    .locals 0

    return-void
.end method

.method private r1(Landroid/view/View;II)V
    .locals 12

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x64

    add-long v10, v0, v2

    int-to-float p2, p2

    int-to-float p3, p3

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-wide v0, v8

    move-wide v2, v10

    move v5, p2

    move v6, p3

    .line 3
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    const-wide/16 v0, 0x3e8

    add-long v2, v8, v0

    add-long v4, v10, v0

    const/4 v6, 0x1

    move-wide v0, v2

    move-wide v2, v4

    move v4, v6

    move v5, p2

    move v6, p3

    .line 5
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p2

    .line 6
    invoke-virtual {p1, p2}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method private t1(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    const-string v0, "?"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&t="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "?t="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method


# virtual methods
.method K0(Landroidx/fragment/app/FragmentTransaction;)V
    .locals 2

    const v0, 0x7f01002e

    const v1, 0x7f010039

    .line 1
    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    return-void
.end method

.method L0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->r0:Lcom/join/mgps/dialog/x0;

    invoke-virtual {v0}, Lcom/join/mgps/dialog/x0;->b()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->r0:Lcom/join/mgps/dialog/x0;

    const-string v1, "\u6b63\u5728\u4e0a\u4f20\u56fe\u7247\u8bf7\u7a0d\u5019"

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/x0;->a(Ljava/lang/String;)Landroid/app/Dialog;

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->r0:Lcom/join/mgps/dialog/x0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    return-void
.end method

.method M0(Landroid/content/Intent;)V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.wufun.finish.activity"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method N0()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->I:Lcom/join/mgps/dto/BbsDetailBean;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/join/mgps/dto/BbsDetailBean;->getType()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->x0:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->p0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->x0:Ljava/util/LinkedHashMap;

    iget-object v3, p0, Lcom/join/mgps/activity/IntroductionActivity;->p0:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_1

    .line 5
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 6
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v5, v3, v1

    if-lez v5, :cond_2

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->x0:Ljava/util/LinkedHashMap;

    iget-object v5, p0, Lcom/join/mgps/activity/IntroductionActivity;->p0:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-wide v5, p0, Lcom/join/mgps/activity/IntroductionActivity;->w0:J

    add-long/2addr v5, v3

    iput-wide v5, p0, Lcom/join/mgps/activity/IntroductionActivity;->w0:J

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->x0:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-wide v3, p0, Lcom/join/mgps/activity/IntroductionActivity;->w0:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_3

    .line 11
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v3

    sget-object v4, Lcom/papa/sim/statistic/Event;->singleStartGamePageDetail:Lcom/papa/sim/statistic/Event;

    sget-object v5, Lcom/papa/sim/statistic/Event;->videoLookTimes:Lcom/papa/sim/statistic/Event;

    const-string v6, ""

    new-instance v0, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    iget v7, p0, Lcom/join/mgps/activity/IntroductionActivity;->x:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/papa/sim/statistic/Ext;->setArticleId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v0

    iget-wide v7, p0, Lcom/join/mgps/activity/IntroductionActivity;->w0:J

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    invoke-virtual {v0, v7, v8}, Lcom/papa/sim/statistic/Ext;->setLiveTime(J)Lcom/papa/sim/statistic/Ext;

    move-result-object v0

    const-string v7, "1"

    invoke-virtual {v0, v7}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v7

    new-instance v0, Lcom/papa/sim/statistic/Data;

    invoke-direct {v0}, Lcom/papa/sim/statistic/Data;-><init>()V

    iget-object v8, p0, Lcom/join/mgps/activity/IntroductionActivity;->D:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lcom/papa/sim/statistic/Data;->setGameId(J)Lcom/papa/sim/statistic/Data;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Lcom/papa/sim/statistic/p;->m1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Event;Ljava/lang/String;Lcom/papa/sim/statistic/Ext;Lcom/papa/sim/statistic/Data;)V

    .line 12
    :cond_3
    iput-wide v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->w0:J

    .line 13
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    :goto_0
    return-void
.end method

.method O0()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->I:Lcom/join/mgps/dto/BbsDetailBean;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/join/mgps/dto/BbsDetailBean;->getType()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->x0:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->p0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    monitor-exit p0

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->x0:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->p0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_2

    const-wide/16 v0, 0x0

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 6
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->x0:Ljava/util/LinkedHashMap;

    iget-object v3, p0, Lcom/join/mgps/activity/IntroductionActivity;->p0:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->x0:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    iget-wide v3, p0, Lcom/join/mgps/activity/IntroductionActivity;->w0:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/join/mgps/activity/IntroductionActivity;->w0:J

    .line 10
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    :goto_0
    return-void
.end method

.method P0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->I:Lcom/join/mgps/dto/BbsDetailBean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/join/mgps/dto/BbsDetailBean;->getType()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->x0:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->p0:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method Q0()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->I:Lcom/join/mgps/dto/BbsDetailBean;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/dto/BbsDetailBean;->getReportUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->I:Lcom/join/mgps/dto/BbsDetailBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/BbsDetailBean;->getReportUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "&resourceId="

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/join/mgps/activity/IntroductionActivity;->I:Lcom/join/mgps/dto/BbsDetailBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/BbsDetailBean;->getReportUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&resourceType=POST&ruid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/activity/IntroductionActivity;->I:Lcom/join/mgps/dto/BbsDetailBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/BbsDetailBean;->getPosterId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/join/mgps/activity/IntroductionActivity;->I:Lcom/join/mgps/dto/BbsDetailBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/BbsDetailBean;->getReportUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?resourceType=POST&ruid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/activity/IntroductionActivity;->I:Lcom/join/mgps/dto/BbsDetailBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/BbsDetailBean;->getPosterId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public S0()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->u:Landroid/view/View;

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/IntroductionActivity;->k1()V

    return-void
.end method

.method T0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->d:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public U0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->u:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public V0()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->o:Lcom/join/mgps/customview/NestedScrollWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->o:Lcom/join/mgps/customview/NestedScrollWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v2, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->o:Lcom/join/mgps/customview/NestedScrollWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "cacheH5"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->H:Ljava/lang/String;

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->o:Lcom/join/mgps/customview/NestedScrollWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    iget-object v2, p0, Lcom/join/mgps/activity/IntroductionActivity;->H:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->o:Lcom/join/mgps/customview/NestedScrollWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->o:Lcom/join/mgps/customview/NestedScrollWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->o:Lcom/join/mgps/customview/NestedScrollWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v4, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->o:Lcom/join/mgps/customview/NestedScrollWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->o:Lcom/join/mgps/customview/NestedScrollWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v4, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->o:Lcom/join/mgps/customview/NestedScrollWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->o:Lcom/join/mgps/customview/NestedScrollWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/16 v4, 0x64

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->o:Lcom/join/mgps/customview/NestedScrollWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->o:Lcom/join/mgps/customview/NestedScrollWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->o:Lcom/join/mgps/customview/NestedScrollWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->o:Lcom/join/mgps/customview/NestedScrollWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->o:Lcom/join/mgps/customview/NestedScrollWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->o:Lcom/join/mgps/customview/NestedScrollWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->o:Lcom/join/mgps/customview/NestedScrollWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->o:Lcom/join/mgps/customview/NestedScrollWebView;

    new-instance v1, Lcom/join/mgps/activity/IntroductionActivity$f;

    invoke-direct {v1, p0, p0}, Lcom/join/mgps/activity/IntroductionActivity$f;-><init>(Lcom/join/mgps/activity/IntroductionActivity;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->o:Lcom/join/mgps/customview/NestedScrollWebView;

    new-instance v1, Lcom/join/mgps/activity/IntroductionActivity$e;

    invoke-direct {v1, p0, p0}, Lcom/join/mgps/activity/IntroductionActivity$e;-><init>(Lcom/join/mgps/activity/IntroductionActivity;Landroid/content/Context;)V

    const-string v2, "papa"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 23
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->o:Lcom/join/mgps/customview/NestedScrollWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSafeBrowsingEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method W0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/IntroductionActivity;->showLoding()V

    .line 2
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/IntroductionActivity;->showLoding()V

    .line 4
    new-instance v0, Lcom/join/mgps/dto/RequestBbsDetailArgs;

    invoke-direct {v0}, Lcom/join/mgps/dto/RequestBbsDetailArgs;-><init>()V

    .line 5
    iget v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->x:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestBbsDetailArgs;->setPostId(Ljava/lang/Integer;)V

    .line 6
    invoke-direct {p0}, Lcom/join/mgps/activity/IntroductionActivity;->R0()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestBbsDetailArgs;->setUid(Ljava/lang/Integer;)V

    .line 7
    new-instance v1, Lcom/join/mgps/dto/RequestModel;

    invoke-direct {v1, p0}, Lcom/join/mgps/dto/RequestModel;-><init>(Landroid/content/Context;)V

    .line 8
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->B:Lcom/join/mgps/rpc/j;

    invoke-virtual {v1}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/j;->A(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_0

    .line 10
    :try_start_1
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/BbsDetailBean;

    iput-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->I:Lcom/join/mgps/dto/BbsDetailBean;

    .line 12
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/IntroductionActivity;->p1(Lcom/join/mgps/dto/BbsDetailBean;)V

    .line 13
    invoke-virtual {p0}, Lcom/join/mgps/activity/IntroductionActivity;->P0()V

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/IntroductionActivity;->showLodingFailed()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 15
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 16
    invoke-virtual {p0}, Lcom/join/mgps/activity/IntroductionActivity;->showLodingFailed()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 18
    invoke-virtual {p0}, Lcom/join/mgps/activity/IntroductionActivity;->showLodingFailed()V

    goto :goto_0

    .line 19
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/IntroductionActivity;->showLodingFailed()V

    :goto_0
    return-void
.end method

.method public X0(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->o:Lcom/join/mgps/customview/NestedScrollWebView;

    const-string v1, "text/html"

    const-string v2, "utf-8"

    invoke-virtual {v0, p1, v1, v2}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/IntroductionActivity;->b:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/IntroductionActivity;->I:Lcom/join/mgps/dto/BbsDetailBean;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/join/mgps/dto/BbsDetailBean;->getType()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/IntroductionActivity;->b:Landroid/os/Handler;

    const-wide/16 v1, 0x514

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public Y0(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->o:Lcom/join/mgps/customview/NestedScrollWebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public a0(Ljava/lang/Object;)V
    .locals 8

    .line 1
    instance-of v0, p1, Lcom/join/mgps/dto/TimingBean;

    const-string v1, "1"

    const-string v2, "_s_"

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/join/mgps/dto/TimingBean;

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->I:Lcom/join/mgps/dto/BbsDetailBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/BbsDetailBean;->getVideoH5Tpl()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/join/mgps/activity/IntroductionActivity;->I:Lcom/join/mgps/dto/BbsDetailBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/BbsDetailBean;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/join/mgps/dto/TimingBean;->getTime()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, v3, p1}, Lcom/join/mgps/activity/IntroductionActivity;->t1(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/IntroductionActivity;->C:Ljava/lang/String;

    .line 4
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/IntroductionActivity;->Z0(Ljava/lang/String;)V

    .line 5
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v2

    sget-object v3, Lcom/papa/sim/statistic/Event;->singleStartGamePageDetail:Lcom/papa/sim/statistic/Event;

    sget-object v4, Lcom/papa/sim/statistic/Event;->AjustSpeed:Lcom/papa/sim/statistic/Event;

    new-instance p1, Lcom/papa/sim/statistic/Ext;

    invoke-direct {p1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    invoke-virtual {p1, v1}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->I:Lcom/join/mgps/dto/BbsDetailBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/BbsDetailBean;->getId()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/Ext;->setArticleId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object p1

    iget v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->z:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/Ext;->setFromTabId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v6

    new-instance p1, Lcom/papa/sim/statistic/Data;

    invoke-direct {p1}, Lcom/papa/sim/statistic/Data;-><init>()V

    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->D:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/Data;->setGameId(J)Lcom/papa/sim/statistic/Data;

    move-result-object v7

    const-string v5, ""

    invoke-virtual/range {v2 .. v7}, Lcom/papa/sim/statistic/p;->m1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Event;Ljava/lang/String;Lcom/papa/sim/statistic/Ext;Lcom/papa/sim/statistic/Data;)V

    goto :goto_0

    .line 6
    :cond_0
    instance-of v0, p1, Lcom/join/mgps/dto/VideoChaptersBean;

    if-eqz v0, :cond_1

    .line 7
    check-cast p1, Lcom/join/mgps/dto/VideoChaptersBean;

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->I:Lcom/join/mgps/dto/BbsDetailBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/BbsDetailBean;->getVideoH5Tpl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/join/mgps/dto/VideoChaptersBean;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/IntroductionActivity;->C:Ljava/lang/String;

    .line 9
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/IntroductionActivity;->Z0(Ljava/lang/String;)V

    .line 10
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v2

    sget-object v3, Lcom/papa/sim/statistic/Event;->singleStartGamePageDetail:Lcom/papa/sim/statistic/Event;

    sget-object v4, Lcom/papa/sim/statistic/Event;->AjustSeries:Lcom/papa/sim/statistic/Event;

    new-instance p1, Lcom/papa/sim/statistic/Ext;

    invoke-direct {p1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    invoke-virtual {p1, v1}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->I:Lcom/join/mgps/dto/BbsDetailBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/BbsDetailBean;->getId()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/Ext;->setArticleId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object p1

    iget v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->z:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/Ext;->setFromTabId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v6

    new-instance p1, Lcom/papa/sim/statistic/Data;

    invoke-direct {p1}, Lcom/papa/sim/statistic/Data;-><init>()V

    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->D:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/Data;->setGameId(J)Lcom/papa/sim/statistic/Data;

    move-result-object v7

    const-string v5, ""

    invoke-virtual/range {v2 .. v7}, Lcom/papa/sim/statistic/p;->m1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Event;Ljava/lang/String;Lcom/papa/sim/statistic/Ext;Lcom/papa/sim/statistic/Data;)V

    :cond_1
    :goto_0
    return-void
.end method

.method a1()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->a:Ljava/lang/String;

    const-string v1, "loding_faile() called."

    invoke-static {v0, v1}, Lcom/join/mgps/Util/t0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->o:Lcom/join/mgps/customview/NestedScrollWebView;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->C:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/join/mgps/activity/IntroductionActivity;->Z0(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method afterview()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->a:Ljava/lang/String;

    const-string v1, "afterView() called."

    invoke-static {v0, v1}, Lcom/join/mgps/Util/t0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->g:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const-string v1, "\u7f51\u9875\u52a0\u8f7d\u5931\u8d25\uff0c\u518d\u8bd5\u8bd5\u5427~"

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/Util/a0;->c0(Landroid/content/Context;)Lcom/join/mgps/Util/a0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/z;->x(Landroid/content/Context;)Lcom/join/mgps/dialog/x0;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->r0:Lcom/join/mgps/dialog/x0;

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TIME_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->p0:Ljava/lang/String;

    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/activity/IntroductionActivity;->W0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method b1(Ljava/lang/Integer;)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-boolean v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->v0:Z

    if-eqz v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "\u60a8\u8fd8\u672a\u767b\u5f55\u8bf7\u5148\u767b\u5f55\u5e10\u53f7\uff01"

    .line 4
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/IntroductionActivity;->q1(Ljava/lang/String;)V

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->v0:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :cond_1
    const/4 v1, 0x1

    .line 6
    :try_start_1
    iput-boolean v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->v0:Z

    .line 7
    new-instance v1, Lcom/join/mgps/dto/RequestBbsDispraiseArgs;

    invoke-direct {v1}, Lcom/join/mgps/dto/RequestBbsDispraiseArgs;-><init>()V

    const-string v2, "POST"

    .line 8
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/RequestBbsDispraiseArgs;->setResourceType(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/RequestBbsDispraiseArgs;->setResourceId(Ljava/lang/Integer;)V

    .line 10
    invoke-direct {p0}, Lcom/join/mgps/activity/IntroductionActivity;->R0()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/RequestBbsDispraiseArgs;->setUid(Ljava/lang/Integer;)V

    .line 11
    new-instance p1, Lcom/join/mgps/dto/RequestModel;

    invoke-direct {p1, p0}, Lcom/join/mgps/dto/RequestModel;-><init>(Landroid/content/Context;)V

    .line 12
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 13
    iget-object v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->B:Lcom/join/mgps/rpc/j;

    invoke-virtual {p1}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/join/mgps/rpc/j;->l(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;

    move-result-object p1

    .line 14
    iput-boolean v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->v0:Z

    if-eqz p1, :cond_3

    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 16
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/IntroductionActivity;->s1(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 17
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 18
    iput-boolean v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->v0:Z

    goto :goto_0

    .line 19
    :cond_2
    iput-boolean v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->v0:Z

    .line 20
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f110206

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/IntroductionActivity;->q1(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 21
    iput-boolean v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->v0:Z

    .line 22
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method c1(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 9
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-boolean v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->u0:Z

    if-eqz v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "\u60a8\u8fd8\u672a\u767b\u5f55\u8bf7\u5148\u767b\u5f55\u5e10\u53f7\uff01"

    .line 4
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/IntroductionActivity;->q1(Ljava/lang/String;)V

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->u0:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :cond_1
    const/4 v1, 0x1

    .line 6
    :try_start_1
    iput-boolean v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->u0:Z

    .line 7
    new-instance v2, Lcom/join/mgps/dto/RequestBbsPraiseArgs;

    invoke-direct {v2}, Lcom/join/mgps/dto/RequestBbsPraiseArgs;-><init>()V

    const-string v3, "POST"

    .line 8
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/RequestBbsPraiseArgs;->setResourceType(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v2, p2}, Lcom/join/mgps/dto/RequestBbsPraiseArgs;->setResourceId(Ljava/lang/Integer;)V

    .line 10
    invoke-virtual {v2, p1}, Lcom/join/mgps/dto/RequestBbsPraiseArgs;->setRuid(Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Lcom/join/mgps/activity/IntroductionActivity;->R0()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/join/mgps/dto/RequestBbsPraiseArgs;->setUid(Ljava/lang/Integer;)V

    .line 12
    new-instance p1, Lcom/join/mgps/dto/RequestModel;

    invoke-direct {p1, p0}, Lcom/join/mgps/dto/RequestModel;-><init>(Landroid/content/Context;)V

    .line 13
    invoke-virtual {p1, v2}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 14
    iget-object p2, p0, Lcom/join/mgps/activity/IntroductionActivity;->B:Lcom/join/mgps/rpc/j;

    invoke-virtual {p1}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/join/mgps/rpc/j;->y(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;

    move-result-object p1

    .line 15
    iput-boolean v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->u0:Z

    if-eqz p1, :cond_3

    .line 16
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 17
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/IntroductionActivity;->s1(Z)V

    .line 18
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v2

    sget-object v3, Lcom/papa/sim/statistic/Event;->singleStartGamePageDetail:Lcom/papa/sim/statistic/Event;

    sget-object v4, Lcom/papa/sim/statistic/Event;->ClickLike:Lcom/papa/sim/statistic/Event;

    const-string v5, ""

    new-instance p1, Lcom/papa/sim/statistic/Ext;

    invoke-direct {p1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    const-string p2, "1"

    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object p1

    iget-object p2, p0, Lcom/join/mgps/activity/IntroductionActivity;->I:Lcom/join/mgps/dto/BbsDetailBean;

    invoke-virtual {p2}, Lcom/join/mgps/dto/BbsDetailBean;->getId()Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/Ext;->setArticleId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object p1

    iget p2, p0, Lcom/join/mgps/activity/IntroductionActivity;->z:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/Ext;->setFromTabId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v6

    new-instance p1, Lcom/papa/sim/statistic/Data;

    invoke-direct {p1}, Lcom/papa/sim/statistic/Data;-><init>()V

    iget-object p2, p0, Lcom/join/mgps/activity/IntroductionActivity;->D:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {p1, v7, v8}, Lcom/papa/sim/statistic/Data;->setGameId(J)Lcom/papa/sim/statistic/Data;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/papa/sim/statistic/p;->m1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Event;Ljava/lang/String;Lcom/papa/sim/statistic/Ext;Lcom/papa/sim/statistic/Data;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 19
    :try_start_2
    iput-boolean v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->u0:Z

    .line 20
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 21
    :cond_2
    iput-boolean v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->u0:Z

    .line 22
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f110206

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/IntroductionActivity;->q1(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 23
    iput-boolean v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->u0:Z

    .line 24
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method d1()V
    .locals 9
    .annotation build Lorg/androidannotations/annotations/Click;
        value = {
            0x7f090942
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c02e5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09115a

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f09115b

    .line 3
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 4
    new-instance v3, Landroid/widget/PopupWindow;

    const/4 v4, -0x2

    invoke-direct {v3, v0, v4, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v3, p0, Lcom/join/mgps/activity/IntroductionActivity;->t0:Landroid/widget/PopupWindow;

    .line 5
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const-string v4, "#00000000"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v0, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->t0:Landroid/widget/PopupWindow;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->t0:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->t0:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->update()V

    .line 9
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const v3, 0x7f090942

    .line 10
    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 11
    invoke-virtual {v4, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 12
    iget-object v5, p0, Lcom/join/mgps/activity/IntroductionActivity;->t0:Landroid/widget/PopupWindow;

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget v6, v0, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f071100

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    sub-float/2addr v6, v7

    float-to-int v6, v6

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0710d2

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    sub-float/2addr v0, v7

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v0, v4

    float-to-int v0, v0

    const/4 v4, 0x0

    invoke-virtual {v5, v3, v4, v6, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 13
    new-instance v0, Lcom/join/mgps/activity/IntroductionActivity$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/IntroductionActivity$c;-><init>(Lcom/join/mgps/activity/IntroductionActivity;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    new-instance v0, Lcom/join/mgps/activity/IntroductionActivity$d;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/IntroductionActivity$d;-><init>(Lcom/join/mgps/activity/IntroductionActivity;)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->I:Lcom/join/mgps/dto/BbsDetailBean;

    if-eqz v0, :cond_0

    .line 16
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v1

    sget-object v2, Lcom/papa/sim/statistic/Event;->singleStartGamePageDetail:Lcom/papa/sim/statistic/Event;

    sget-object v3, Lcom/papa/sim/statistic/Event;->ClickMoreButton:Lcom/papa/sim/statistic/Event;

    new-instance v0, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    const-string v4, "1"

    invoke-virtual {v0, v4}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v0

    iget-object v4, p0, Lcom/join/mgps/activity/IntroductionActivity;->I:Lcom/join/mgps/dto/BbsDetailBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/BbsDetailBean;->getId()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/papa/sim/statistic/Ext;->setArticleId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v0

    iget v4, p0, Lcom/join/mgps/activity/IntroductionActivity;->z:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/papa/sim/statistic/Ext;->setFromTabId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v5

    new-instance v0, Lcom/papa/sim/statistic/Data;

    invoke-direct {v0}, Lcom/papa/sim/statistic/Data;-><init>()V

    iget-object v4, p0, Lcom/join/mgps/activity/IntroductionActivity;->D:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/papa/sim/statistic/Data;->setGameId(J)Lcom/papa/sim/statistic/Data;

    move-result-object v6

    const-string v4, ""

    invoke-virtual/range {v1 .. v6}, Lcom/papa/sim/statistic/p;->m1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Event;Ljava/lang/String;Lcom/papa/sim/statistic/Ext;Lcom/papa/sim/statistic/Data;)V

    :cond_0
    return-void
.end method

.method dismissLoadingDialog()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->r0:Lcom/join/mgps/dialog/x0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method e1()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
        value = {
            0x7f09091a
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->t0:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method f1()V
    .locals 9
    .annotation build Lorg/androidannotations/annotations/Click;
        value = {
            0x7f09091b
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->I:Lcom/join/mgps/dto/BbsDetailBean;

    if-eqz v0, :cond_4

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->n0:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;

    invoke-direct {v0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->n0:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;

    .line 4
    invoke-virtual {v0, p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->setFragmentCallback(Ll1/e;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    :goto_0
    iget-object v3, p0, Lcom/join/mgps/activity/IntroductionActivity;->n0:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;

    iget-object v4, p0, Lcom/join/mgps/activity/IntroductionActivity;->I:Lcom/join/mgps/dto/BbsDetailBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/BbsDetailBean;->getType()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v3, v1}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->setVideo(Z)V

    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->n0:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;

    iget-object v2, p0, Lcom/join/mgps/activity/IntroductionActivity;->I:Lcom/join/mgps/dto/BbsDetailBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/BbsDetailBean;->getDuration()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->setDuration(I)V

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->n0:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;

    iget-object v2, p0, Lcom/join/mgps/activity/IntroductionActivity;->I:Lcom/join/mgps/dto/BbsDetailBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/BbsDetailBean;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/join/mgps/activity/IntroductionActivity;->I:Lcom/join/mgps/dto/BbsDetailBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/BbsDetailBean;->getPosterId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/join/mgps/activity/IntroductionActivity;->I:Lcom/join/mgps/dto/BbsDetailBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/BbsDetailBean;->getReportUrl()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/join/mgps/activity/IntroductionActivity;->D:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->setParams(IILjava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->E:Lcom/join/mgps/dto/IntroductionCommentDetailParamsBean;

    if-eqz v1, :cond_2

    .line 9
    iget-object v2, p0, Lcom/join/mgps/activity/IntroductionActivity;->n0:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;

    invoke-virtual {v1}, Lcom/join/mgps/dto/IntroductionCommentDetailParamsBean;->getParent_comment_id()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->setCommentId(I)V

    .line 10
    iget-object v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->n0:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;

    iget-boolean v2, p0, Lcom/join/mgps/activity/IntroductionActivity;->q0:Z

    invoke-virtual {v1, v2}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->setFromNotice(Z)V

    .line 11
    :cond_2
    iget-object v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->n0:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;

    if-eqz v1, :cond_3

    .line 12
    iget-object v2, p0, Lcom/join/mgps/activity/IntroductionActivity;->I:Lcom/join/mgps/dto/BbsDetailBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/BbsDetailBean;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->notifyDataChanged(I)V

    .line 13
    :cond_3
    iget-object v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->o0:Landroidx/fragment/app/Fragment;

    iget-object v2, p0, Lcom/join/mgps/activity/IntroductionActivity;->n0:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;

    invoke-virtual {p0, v1, v2, v0}, Lcom/join/mgps/activity/IntroductionActivity;->o1(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Z)V

    .line 14
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v3

    sget-object v4, Lcom/papa/sim/statistic/Event;->singleStartGamePageDetail:Lcom/papa/sim/statistic/Event;

    sget-object v5, Lcom/papa/sim/statistic/Event;->ClickComment:Lcom/papa/sim/statistic/Event;

    new-instance v0, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->I:Lcom/join/mgps/dto/BbsDetailBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/BbsDetailBean;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setArticleId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v0

    iget v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->z:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setFromTabId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v7

    new-instance v0, Lcom/papa/sim/statistic/Data;

    invoke-direct {v0}, Lcom/papa/sim/statistic/Data;-><init>()V

    iget-object v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->D:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/Data;->setGameId(J)Lcom/papa/sim/statistic/Data;

    move-result-object v8

    const-string v6, ""

    invoke-virtual/range {v3 .. v8}, Lcom/papa/sim/statistic/p;->m1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Event;Ljava/lang/String;Lcom/papa/sim/statistic/Ext;Lcom/papa/sim/statistic/Data;)V

    :cond_4
    return-void
.end method

.method g1()V
    .locals 15
    .annotation build Lorg/androidannotations/annotations/Click;
        value = {
            0x7f090952
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->I:Lcom/join/mgps/dto/BbsDetailBean;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->J:Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 3
    new-instance v0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment_;

    invoke-direct {v0}, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment_;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->J:Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->I:Lcom/join/mgps/dto/BbsDetailBean;

    invoke-virtual {v0, v1}, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->setData(Lcom/join/mgps/dto/BbsDetailBean;)V

    const/4 v0, 0x1

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->J:Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;

    if-eqz v1, :cond_1

    .line 6
    iget-object v3, p0, Lcom/join/mgps/activity/IntroductionActivity;->I:Lcom/join/mgps/dto/BbsDetailBean;

    invoke-virtual {v1, v3}, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->notifyDataChanged(Lcom/join/mgps/dto/BbsDetailBean;)V

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->o0:Landroidx/fragment/app/Fragment;

    iget-object v3, p0, Lcom/join/mgps/activity/IntroductionActivity;->J:Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;

    invoke-virtual {p0, v1, v3, v0}, Lcom/join/mgps/activity/IntroductionActivity;->o1(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Z)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->I:Lcom/join/mgps/dto/BbsDetailBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/BbsDetailBean;->getIsCollection()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "1"

    if-ne v0, v2, :cond_2

    .line 9
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v3

    sget-object v4, Lcom/papa/sim/statistic/Event;->singleStartGamePageDetail:Lcom/papa/sim/statistic/Event;

    sget-object v5, Lcom/papa/sim/statistic/Event;->ClickSeriesButton:Lcom/papa/sim/statistic/Event;

    new-instance v0, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->I:Lcom/join/mgps/dto/BbsDetailBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/BbsDetailBean;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setArticleId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v0

    iget v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->z:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setFromTabId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v7

    new-instance v0, Lcom/papa/sim/statistic/Data;

    invoke-direct {v0}, Lcom/papa/sim/statistic/Data;-><init>()V

    iget-object v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->D:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/Data;->setGameId(J)Lcom/papa/sim/statistic/Data;

    move-result-object v8

    const-string v6, ""

    invoke-virtual/range {v3 .. v8}, Lcom/papa/sim/statistic/p;->m1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Event;Ljava/lang/String;Lcom/papa/sim/statistic/Ext;Lcom/papa/sim/statistic/Data;)V

    goto :goto_0

    .line 10
    :cond_2
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v9

    sget-object v10, Lcom/papa/sim/statistic/Event;->singleStartGamePageDetail:Lcom/papa/sim/statistic/Event;

    sget-object v11, Lcom/papa/sim/statistic/Event;->ClickSpeedButton:Lcom/papa/sim/statistic/Event;

    new-instance v0, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->I:Lcom/join/mgps/dto/BbsDetailBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/BbsDetailBean;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setArticleId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v0

    iget v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->z:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setFromTabId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v13

    new-instance v0, Lcom/papa/sim/statistic/Data;

    invoke-direct {v0}, Lcom/papa/sim/statistic/Data;-><init>()V

    iget-object v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->D:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/Data;->setGameId(J)Lcom/papa/sim/statistic/Data;

    move-result-object v14

    const-string v12, ""

    invoke-virtual/range {v9 .. v14}, Lcom/papa/sim/statistic/p;->m1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Event;Ljava/lang/String;Lcom/papa/sim/statistic/Ext;Lcom/papa/sim/statistic/Data;)V

    :cond_3
    :goto_0
    return-void
.end method

.method h1()V
    .locals 9
    .annotation build Lorg/androidannotations/annotations/Click;
        value = {
            0x7f090956
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->I:Lcom/join/mgps/dto/BbsDetailBean;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->K:Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 3
    new-instance v1, Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment_;

    invoke-direct {v1}, Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment_;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->K:Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;

    .line 4
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 5
    iget-object v2, p0, Lcom/join/mgps/activity/IntroductionActivity;->I:Lcom/join/mgps/dto/BbsDetailBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/BbsDetailBean;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "tagId"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6
    iget-object v2, p0, Lcom/join/mgps/activity/IntroductionActivity;->D:Ljava/lang/String;

    const-string v3, "gameId"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v2, p0, Lcom/join/mgps/activity/IntroductionActivity;->K:Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;

    invoke-virtual {v2, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->K:Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;

    if-eqz v1, :cond_1

    .line 9
    iget-object v2, p0, Lcom/join/mgps/activity/IntroductionActivity;->I:Lcom/join/mgps/dto/BbsDetailBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/BbsDetailBean;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;->notifyDataChanged(I)V

    .line 10
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->o0:Landroidx/fragment/app/Fragment;

    iget-object v2, p0, Lcom/join/mgps/activity/IntroductionActivity;->K:Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;

    invoke-virtual {p0, v1, v2, v0}, Lcom/join/mgps/activity/IntroductionActivity;->o1(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Z)V

    .line 11
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v3

    sget-object v4, Lcom/papa/sim/statistic/Event;->singleStartGamePageDetail:Lcom/papa/sim/statistic/Event;

    sget-object v5, Lcom/papa/sim/statistic/Event;->ClickRecommandButton:Lcom/papa/sim/statistic/Event;

    new-instance v0, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->I:Lcom/join/mgps/dto/BbsDetailBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/BbsDetailBean;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setArticleId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v0

    iget v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->z:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setFromTabId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v7

    new-instance v0, Lcom/papa/sim/statistic/Data;

    invoke-direct {v0}, Lcom/papa/sim/statistic/Data;-><init>()V

    iget-object v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->D:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/Data;->setGameId(J)Lcom/papa/sim/statistic/Data;

    move-result-object v8

    const-string v6, ""

    invoke-virtual/range {v3 .. v8}, Lcom/papa/sim/statistic/p;->m1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Event;Ljava/lang/String;Lcom/papa/sim/statistic/Ext;Lcom/papa/sim/statistic/Data;)V

    :cond_2
    return-void
.end method

.method i1()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
        value = {
            0x7f090951
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->I:Lcom/join/mgps/dto/BbsDetailBean;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/dto/BbsDetailBean;->getPraise()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->I:Lcom/join/mgps/dto/BbsDetailBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/BbsDetailBean;->getId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/IntroductionActivity;->b1(Ljava/lang/Integer;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->I:Lcom/join/mgps/dto/BbsDetailBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/BbsDetailBean;->getId()Ljava/lang/Integer;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p0, v1, v0}, Lcom/join/mgps/activity/IntroductionActivity;->c1(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    :goto_0
    return-void
.end method

.method j1(Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method l1()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->C:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/join/mgps/activity/IntroductionActivity;->Z0(Ljava/lang/String;)V

    return-void
.end method

.method public n1(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;Landroid/webkit/WebChromeClient;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/IntroductionActivity;->u:Landroid/view/View;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p3, p0, Lcom/join/mgps/activity/IntroductionActivity;->v:Landroid/webkit/WebChromeClient;

    .line 3
    iget-object p2, p0, Lcom/join/mgps/activity/IntroductionActivity;->j:Landroid/widget/RelativeLayout;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4
    iget-object p2, p0, Lcom/join/mgps/activity/IntroductionActivity;->i:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 5
    iget-object p2, p0, Lcom/join/mgps/activity/IntroductionActivity;->i:Landroid/widget/FrameLayout;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 6
    iget-object p2, p0, Lcom/join/mgps/activity/IntroductionActivity;->i:Landroid/widget/FrameLayout;

    new-instance p3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p3, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    invoke-direct {p0}, Lcom/join/mgps/activity/IntroductionActivity;->m1()V

    return-void
.end method

.method o1(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Z)V
    .locals 1

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->A:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/IntroductionActivity;->K0(Landroidx/fragment/app/FragmentTransaction;)V

    .line 3
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 4
    :try_start_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/IntroductionActivity;->A:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/IntroductionActivity;->K0(Landroidx/fragment/app/FragmentTransaction;)V

    if-eqz p3, :cond_2

    const p3, 0x7f0904d4

    .line 8
    invoke-virtual {p1, p3, p2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 9
    :cond_2
    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 10
    :try_start_1
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 12
    :goto_1
    iput-object p2, p0, Lcom/join/mgps/activity/IntroductionActivity;->o0:Landroidx/fragment/app/Fragment;

    :cond_3
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->s0:Lcom/mgsim/common/fragment/BackHandledFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mgsim/common/fragment/BackHandledFragment;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->A:Landroidx/fragment/app/FragmentManager;

    .line 3
    invoke-static {}, Lcom/join/mgps/rpc/impl/h;->L()Lcom/join/mgps/rpc/impl/h;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->B:Lcom/join/mgps/rpc/j;

    if-eqz p1, :cond_0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->o:Lcom/join/mgps/customview/NestedScrollWebView;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->t:Lcom/join/mgps/dto/IntentDataMain;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->o:Lcom/join/mgps/customview/NestedScrollWebView;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 6
    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/BaseFragmentActivity;->onDestroy()V

    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/activity/IntroductionActivity;->N0()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->a:Ljava/lang/String;

    const-string v1, "onKeyDown() called."

    invoke-static {v0, v1}, Lcom/join/mgps/Util/t0;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/activity/IntroductionActivity;->U0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/IntroductionActivity;->v:Landroid/webkit/WebChromeClient;

    invoke-virtual {p1}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    const/4 p1, 0x1

    return p1

    .line 5
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->o:Lcom/join/mgps/customview/NestedScrollWebView;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "onPause"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->o:Lcom/join/mgps/customview/NestedScrollWebView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 6
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/BaseFragmentActivity;->onPause()V

    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/activity/IntroductionActivity;->O0()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/BaseFragmentActivity;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->o:Lcom/join/mgps/customview/NestedScrollWebView;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "onResume"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->o:Lcom/join/mgps/customview/NestedScrollWebView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 7
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/IntroductionActivity;->P0()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->o:Lcom/join/mgps/customview/NestedScrollWebView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    :cond_0
    return-void
.end method

.method p1(Lcom/join/mgps/dto/BbsDetailBean;)V
    .locals 11
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->E:Lcom/join/mgps/dto/IntroductionCommentDetailParamsBean;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->q0:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->b:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->q:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    const v0, 0x7f0c0377

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->q:Landroid/widget/FrameLayout;

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090b48

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/NestedScrollWebView;

    iput-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->o:Lcom/join/mgps/customview/NestedScrollWebView;

    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/dto/BbsDetailBean;->getType()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->G:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/BbsDetailBean;->getVideoH5Tpl()Ljava/lang/String;

    move-result-object v0

    const-string v2, "_s_"

    invoke-virtual {p1}, Lcom/join/mgps/dto/BbsDetailBean;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->C:Ljava/lang/String;

    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/activity/IntroductionActivity;->P0()V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/BbsDetailBean;->getContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->C:Ljava/lang/String;

    .line 10
    :goto_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/BbsDetailBean;->getTiming()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/join/mgps/dto/BbsDetailBean;->getTiming()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_3

    :cond_2
    invoke-virtual {p1}, Lcom/join/mgps/dto/BbsDetailBean;->getVideoChapters()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/join/mgps/dto/BbsDetailBean;->getVideoChapters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->s:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 12
    invoke-virtual {p1}, Lcom/join/mgps/dto/BbsDetailBean;->getIsCollection()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "1"

    if-ne v0, v1, :cond_4

    .line 13
    :try_start_1
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->r:Landroid/widget/TextView;

    const-string v1, "\u5408\u96c6"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v4

    sget-object v5, Lcom/papa/sim/statistic/Event;->singleStartGamePageDetail:Lcom/papa/sim/statistic/Event;

    sget-object v6, Lcom/papa/sim/statistic/Event;->ShowSeriesButton:Lcom/papa/sim/statistic/Event;

    const-string v7, ""

    new-instance v0, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v0

    invoke-virtual {p1}, Lcom/join/mgps/dto/BbsDetailBean;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setArticleId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v0

    iget v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->z:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setFromTabId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v8

    new-instance v0, Lcom/papa/sim/statistic/Data;

    invoke-direct {v0}, Lcom/papa/sim/statistic/Data;-><init>()V

    iget-object v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->D:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Lcom/papa/sim/statistic/Data;->setGameId(J)Lcom/papa/sim/statistic/Data;

    move-result-object v9

    invoke-virtual/range {v4 .. v9}, Lcom/papa/sim/statistic/p;->m1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Event;Ljava/lang/String;Lcom/papa/sim/statistic/Ext;Lcom/papa/sim/statistic/Data;)V

    goto :goto_1

    .line 15
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/activity/IntroductionActivity;->g1()V

    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->b:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v4, 0xbb8

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->r:Landroid/widget/TextView;

    const-string v1, "\u8fdb\u5ea6"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v4

    sget-object v5, Lcom/papa/sim/statistic/Event;->singleStartGamePageDetail:Lcom/papa/sim/statistic/Event;

    sget-object v6, Lcom/papa/sim/statistic/Event;->ShowSpeedButton:Lcom/papa/sim/statistic/Event;

    const-string v7, ""

    new-instance v0, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v0

    invoke-virtual {p1}, Lcom/join/mgps/dto/BbsDetailBean;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setArticleId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v0

    iget v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->z:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setFromTabId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v8

    new-instance v0, Lcom/papa/sim/statistic/Data;

    invoke-direct {v0}, Lcom/papa/sim/statistic/Data;-><init>()V

    iget-object v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->D:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Lcom/papa/sim/statistic/Data;->setGameId(J)Lcom/papa/sim/statistic/Data;

    move-result-object v9

    invoke-virtual/range {v4 .. v9}, Lcom/papa/sim/statistic/p;->m1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Event;Ljava/lang/String;Lcom/papa/sim/statistic/Ext;Lcom/papa/sim/statistic/Data;)V

    goto :goto_1

    .line 19
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->s:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 20
    :goto_1
    invoke-direct {p0}, Lcom/join/mgps/activity/IntroductionActivity;->init()V

    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->C:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/join/mgps/activity/IntroductionActivity;->Z0(Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->a:Ljava/lang/String;

    const-string v1, "showMain() called."

    invoke-static {v0, v1}, Lcom/join/mgps/Util/t0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->o:Lcom/join/mgps/customview/NestedScrollWebView;

    if-eqz v0, :cond_6

    .line 24
    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 25
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->m:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/BbsDetailBean;->getLike()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->n:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/BbsDetailBean;->getComment()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    invoke-virtual {p1}, Lcom/join/mgps/dto/BbsDetailBean;->getPraise()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 28
    iget-object p1, p0, Lcom/join/mgps/activity/IntroductionActivity;->l:Landroid/widget/ImageView;

    const v0, 0x7f0805f9

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 29
    iget-object p1, p0, Lcom/join/mgps/activity/IntroductionActivity;->m:Landroid/widget/TextView;

    const-string v0, "#34ACFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 30
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/activity/IntroductionActivity;->l:Landroid/widget/ImageView;

    const v0, 0x7f0805fc

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 31
    iget-object p1, p0, Lcom/join/mgps/activity/IntroductionActivity;->m:Landroid/widget/TextView;

    const-string v0, "#FFFFFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 32
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method q1(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method

.method relodingimag()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/IntroductionActivity;->W0()V

    return-void
.end method

.method s1(Z)V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->l:Landroid/widget/ImageView;

    const v1, 0x7f0805f9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->I:Lcom/join/mgps/dto/BbsDetailBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/BbsDetailBean;->getLike()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/BbsDetailBean;->setLike(Ljava/lang/Integer;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->I:Lcom/join/mgps/dto/BbsDetailBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/BbsDetailBean;->getLike()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->m:Landroid/widget/TextView;

    const-string v1, "#34ACFF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->l:Landroid/widget/ImageView;

    const v1, 0x7f0805fc

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->I:Lcom/join/mgps/dto/BbsDetailBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/BbsDetailBean;->getLike()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/BbsDetailBean;->setLike(Ljava/lang/Integer;)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->I:Lcom/join/mgps/dto/BbsDetailBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/BbsDetailBean;->getLike()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->m:Landroid/widget/TextView;

    const-string v1, "#FFFFFF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->I:Lcom/join/mgps/dto/BbsDetailBean;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/BbsDetailBean;->setPraise(Ljava/lang/Boolean;)V

    return-void
.end method

.method setNetwork()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->a:Ljava/lang/String;

    const-string v1, "setNetwork() called."

    invoke-static {v0, v1}, Lcom/join/mgps/Util/t0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->I2(Landroid/content/Context;)V

    return-void
.end method

.method showLoding()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->a:Ljava/lang/String;

    const-string v1, "showLoding() called."

    invoke-static {v0, v1}, Lcom/join/mgps/Util/t0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->c:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->d:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->o:Lcom/join/mgps/customview/NestedScrollWebView;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method showLodingFailed()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->a:Ljava/lang/String;

    const-string v1, "showLodingFailed() called."

    invoke-static {v0, v1}, Lcom/join/mgps/Util/t0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->d:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->c:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->o:Lcom/join/mgps/customview/NestedScrollWebView;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public u0(Landroidx/fragment/app/Fragment;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->A:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->o0:Landroidx/fragment/app/Fragment;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->J:Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;

    if-ne p1, v0, :cond_1

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/IntroductionActivity;->b:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public v()V
    .locals 8

    .line 1
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->singleStartGamePageDetail:Lcom/papa/sim/statistic/Event;

    sget-object v2, Lcom/papa/sim/statistic/Event;->PostComment:Lcom/papa/sim/statistic/Event;

    invoke-direct {p0}, Lcom/join/mgps/activity/IntroductionActivity;->R0()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v4}, Lcom/papa/sim/statistic/Ext;-><init>()V

    const-string v5, "1"

    invoke-virtual {v4, v5}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v4

    iget-object v5, p0, Lcom/join/mgps/activity/IntroductionActivity;->I:Lcom/join/mgps/dto/BbsDetailBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/BbsDetailBean;->getId()Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/papa/sim/statistic/Ext;->setArticleId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v4

    iget v5, p0, Lcom/join/mgps/activity/IntroductionActivity;->z:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/papa/sim/statistic/Ext;->setFromTabId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v4

    new-instance v5, Lcom/papa/sim/statistic/Data;

    invoke-direct {v5}, Lcom/papa/sim/statistic/Data;-><init>()V

    iget-object v6, p0, Lcom/join/mgps/activity/IntroductionActivity;->D:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/papa/sim/statistic/Data;->setGameId(J)Lcom/papa/sim/statistic/Data;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/papa/sim/statistic/p;->m1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Event;Ljava/lang/String;Lcom/papa/sim/statistic/Ext;Lcom/papa/sim/statistic/Data;)V

    return-void
.end method

.method public v0(Lcom/mgsim/common/fragment/BackHandledFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/IntroductionActivity;->s0:Lcom/mgsim/common/fragment/BackHandledFragment;

    return-void
.end method

.method public w(IIZ)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->x:I

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/IntroductionActivity;->N0()V

    .line 3
    iput p1, p0, Lcom/join/mgps/activity/IntroductionActivity;->x:I

    .line 4
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    iput-object p3, p0, Lcom/join/mgps/activity/IntroductionActivity;->F:Ljava/lang/Boolean;

    .line 5
    iput p2, p0, Lcom/join/mgps/activity/IntroductionActivity;->G:I

    const/4 p2, 0x0

    .line 6
    iput-object p2, p0, Lcom/join/mgps/activity/IntroductionActivity;->I:Lcom/join/mgps/dto/BbsDetailBean;

    .line 7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "TIME_"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/IntroductionActivity;->p0:Ljava/lang/String;

    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/activity/IntroductionActivity;->W0()V

    return-void
.end method

.method public y0(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->I:Lcom/join/mgps/dto/BbsDetailBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/BbsDetailBean;->getVideoH5Tpl()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/join/mgps/activity/IntroductionActivity;->I:Lcom/join/mgps/dto/BbsDetailBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/BbsDetailBean;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&t="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "_s_"

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/IntroductionActivity;->C:Ljava/lang/String;

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/IntroductionActivity;->Z0(Ljava/lang/String;)V

    return-void
.end method
