.class public Lcom/join/mgps/adapter/h4;
.super Landroid/widget/BaseAdapter;
.source "PapaMainAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/h4$l1;,
        Lcom/join/mgps/adapter/h4$n2;,
        Lcom/join/mgps/adapter/h4$i2;,
        Lcom/join/mgps/adapter/h4$f2;,
        Lcom/join/mgps/adapter/h4$u1;,
        Lcom/join/mgps/adapter/h4$p1;,
        Lcom/join/mgps/adapter/h4$l2;,
        Lcom/join/mgps/adapter/h4$z1;,
        Lcom/join/mgps/adapter/h4$t1;,
        Lcom/join/mgps/adapter/h4$s1;,
        Lcom/join/mgps/adapter/h4$r1;,
        Lcom/join/mgps/adapter/h4$t2;,
        Lcom/join/mgps/adapter/h4$c2;,
        Lcom/join/mgps/adapter/h4$b2;,
        Lcom/join/mgps/adapter/h4$v1;,
        Lcom/join/mgps/adapter/h4$g2;,
        Lcom/join/mgps/adapter/h4$j2;,
        Lcom/join/mgps/adapter/h4$e2;,
        Lcom/join/mgps/adapter/h4$d2;,
        Lcom/join/mgps/adapter/h4$m2;,
        Lcom/join/mgps/adapter/h4$q1;,
        Lcom/join/mgps/adapter/h4$m1;,
        Lcom/join/mgps/adapter/h4$n1;,
        Lcom/join/mgps/adapter/h4$o1;,
        Lcom/join/mgps/adapter/h4$w1;,
        Lcom/join/mgps/adapter/h4$x1;,
        Lcom/join/mgps/adapter/h4$o2;,
        Lcom/join/mgps/adapter/h4$p2;,
        Lcom/join/mgps/adapter/h4$q2;,
        Lcom/join/mgps/adapter/h4$k2;,
        Lcom/join/mgps/adapter/h4$r2;,
        Lcom/join/mgps/adapter/h4$s2;,
        Lcom/join/mgps/adapter/h4$y1;,
        Lcom/join/mgps/adapter/h4$h2;,
        Lcom/join/mgps/adapter/h4$a2;,
        Lcom/join/mgps/adapter/h4$u2;,
        Lcom/join/mgps/adapter/h4$v2;,
        Lcom/join/mgps/adapter/h4$k1;
    }
.end annotation


# static fields
.field public static final A:I = 0xd

.field public static final A0:I = 0x26

.field public static final B:I = 0xe

.field public static final B0:I = 0x27

.field public static final C:I = 0xf

.field private static C0:Lcom/join/mgps/adapter/h4$u2; = null

.field public static final D:I = 0x10

.field public static final E:I = 0x12

.field public static final F:I = 0x13

.field public static final G:I = 0x14

.field public static final H:I = 0x15

.field public static final I:I = 0x16

.field public static final J:I = 0x17

.field public static final K:I = 0x18

.field public static final n:I = 0x0

.field public static final n0:I = 0x19

.field public static final o:I = 0x1

.field public static final o0:I = 0x1a

.field public static final p:I = 0x2

.field public static final p0:I = 0x1b

.field public static final q:I = 0x3

.field public static final q0:I = 0x1c

.field public static final r:I = 0x4

.field public static final r0:I = 0x1d

.field public static final s:I = 0x5

.field public static final s0:I = 0x1e

.field public static final t:I = 0x6

.field public static final t0:I = 0x1f

.field public static final u:I = 0x7

.field public static final u0:I = 0x20

.field public static final v:I = 0x8

.field public static final v0:I = 0x21

.field public static final w:I = 0x9

.field public static final w0:I = 0x22

.field public static final x:I = 0xa

.field public static final x0:I = 0x23

.field public static final y:I = 0xb

.field public static final y0:I = 0x24

.field public static final z:I = 0xc

.field public static final z0:I = 0x25


# instance fields
.field private final a:Landroid/view/LayoutInflater;

.field private b:Landroid/content/Context;

.field c:Landroidx/fragment/app/Fragment;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/MgpapaMainItemBean;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/join/mgps/adapter/h4$y1;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/os/CountDownTimer;

.field private g:Landroid/os/CountDownTimer;

.field private h:Lo1/e;

.field public i:I

.field private j:Landroid/os/Handler;

.field k:Lcom/join/android/app/component/video/c;

.field l:Lcom/join/mgps/customview/d0;

.field private m:Lcom/join/mgps/adapter/h4$l1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;Ljava/util/List;Lcom/join/android/app/component/video/c;Lo1/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/MgpapaMainItemBean;",
            ">;",
            "Lcom/join/android/app/component/video/c;",
            "Lo1/e;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    new-instance v0, Lcom/join/mgps/adapter/h4$k;

    invoke-direct {v0, p0}, Lcom/join/mgps/adapter/h4$k;-><init>(Lcom/join/mgps/adapter/h4;)V

    iput-object v0, p0, Lcom/join/mgps/adapter/h4;->j:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/join/mgps/adapter/h4;->m:Lcom/join/mgps/adapter/h4$l1;

    .line 4
    iput-object p1, p0, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/join/mgps/adapter/h4;->c:Landroidx/fragment/app/Fragment;

    .line 6
    iput-object p4, p0, Lcom/join/mgps/adapter/h4;->k:Lcom/join/android/app/component/video/c;

    const-string p2, "layout_inflater"

    .line 7
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/join/mgps/adapter/h4;->a:Landroid/view/LayoutInflater;

    .line 8
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/adapter/h4;->e:Ljava/util/Map;

    .line 9
    iput-object p5, p0, Lcom/join/mgps/adapter/h4;->h:Lo1/e;

    .line 10
    iput-object p3, p0, Lcom/join/mgps/adapter/h4;->d:Ljava/util/List;

    return-void
.end method

.method static synthetic A()Lcom/join/mgps/adapter/h4$u2;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/adapter/h4;->C0:Lcom/join/mgps/adapter/h4$u2;

    return-object v0
.end method

.method static synthetic B(Lcom/join/mgps/adapter/h4;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/h4;->j:Landroid/os/Handler;

    return-object p0
.end method

.method private C(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/business/RecomDatabeanBusiness;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 2
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/business/RecomDatabeanBusiness;

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/dto/AppBeanMain;

    .line 4
    invoke-virtual {p2}, Lcom/join/mgps/dto/AppBeanMain;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    move-result-object p2

    .line 5
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-virtual {v0, v1, p2}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/business/RecomDatabeanBusiness;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "0"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/h4;->T(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private D(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    .line 2
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->getId()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4
    :cond_2
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->getMod_id()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic E(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object p0

    new-instance v0, Lcom/join/kotlin/ui/findgame/data/IntentClassfyEvent;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/join/kotlin/ui/findgame/data/IntentClassfyEvent;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/join/mgps/Util/c0;->c(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic F(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object p0

    new-instance v0, Lcom/join/kotlin/ui/findgame/data/IntentClassfyEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/join/kotlin/ui/findgame/data/IntentClassfyEvent;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/join/mgps/Util/c0;->c(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic G(Ljava/util/List;ILcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    .line 1
    invoke-interface {p1, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getGameBean()Lcom/join/mgps/dto/CollectionBeanSub;

    move-result-object p3

    const/4 p5, 0x0

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p3

    if-nez p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p1, p3}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->setRequesting(Z)V

    const p3, 0x7f09098a

    .line 3
    :try_start_0
    invoke-virtual {p4, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ProgressBar;

    const v0, 0x7f09108f

    .line 4
    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->isRequesting()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const/4 v0, 0x4

    :goto_1
    invoke-virtual {p3, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->isRequesting()Z

    move-result p3

    if-eqz p3, :cond_2

    const/4 p5, 0x4

    :cond_2
    invoke-virtual {p4, p5}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p3

    .line 7
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    .line 8
    :goto_2
    iget-object p3, p0, Lcom/join/mgps/adapter/h4;->m:Lcom/join/mgps/adapter/h4$l1;

    if-eqz p3, :cond_3

    .line 9
    invoke-interface {p3, p2, p1}, Lcom/join/mgps/adapter/h4$l1;->a(ILcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V

    :cond_3
    return-void
.end method

.method private synthetic H(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    move-result-object p1

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p2

    iget-object v0, p0, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-virtual {p2, v0, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    const/4 p1, 0x0

    .line 3
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/h4;->a0(Ljava/lang/String;)V

    const-string p1, "3-1"

    .line 4
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/h4;->T(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic I(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    const-class v2, Lcom/join/kotlin/EverdayNewGameActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/h4;->a0(Ljava/lang/String;)V

    const-string p1, "3-3"

    .line 3
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/h4;->T(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic J(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    move-result-object p1

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p2

    iget-object v0, p0, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-virtual {p2, v0, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    const/4 p1, 0x0

    .line 3
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/h4;->a0(Ljava/lang/String;)V

    const-string p1, "3-2"

    .line 4
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/h4;->T(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic K(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Lcom/join/mgps/adapter/h4$p1;ILandroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getGameBean()Lcom/join/mgps/dto/CollectionBeanSub;

    move-result-object p4

    const/4 v0, 0x0

    if-nez p4, :cond_0

    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p4

    if-nez p4, :cond_0

    const/4 p4, 0x1

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    invoke-virtual {p1, p4}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->setRequesting(Z)V

    .line 2
    iget-object p4, p2, Lcom/join/mgps/adapter/h4$p1;->n:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->isRequesting()Z

    move-result v1

    const/4 v2, 0x4

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/4 v1, 0x4

    :goto_1
    invoke-virtual {p4, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3
    iget-object p2, p2, Lcom/join/mgps/adapter/h4$p1;->k:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->isRequesting()Z

    move-result p4

    if-eqz p4, :cond_2

    const/4 v0, 0x4

    :cond_2
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    iget-object p2, p0, Lcom/join/mgps/adapter/h4;->m:Lcom/join/mgps/adapter/h4$l1;

    if-eqz p2, :cond_3

    invoke-interface {p2, p3, p1}, Lcom/join/mgps/adapter/h4$l1;->a(ILcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V

    :cond_3
    return-void
.end method

.method private synthetic L(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p2

    iget-object v0, p0, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getPosition()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/join/mgps/adapter/h4;->a0(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getPosition()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/h4;->U(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic M(Ljava/util/List;Lcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;

    .line 2
    new-instance p2, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {p2}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    const/4 p3, 0x1

    .line 3
    invoke-virtual {p2, p3}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/join/mgps/Util/IntentDateBean;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p2}, Lcom/join/mgps/Util/IntentDateBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    move-result-object p3

    if-nez p3, :cond_0

    .line 6
    new-instance p3, Lcom/join/mgps/dto/ExtBean;

    invoke-direct {p3}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    invoke-virtual {p2, p3}, Lcom/join/mgps/Util/IntentDateBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    .line 7
    :cond_0
    invoke-virtual {p2}, Lcom/join/mgps/Util/IntentDateBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    move-result-object p3

    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;->get_from()I

    move-result p4

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p2}, Lcom/join/mgps/Util/IntentDateBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    move-result-object p3

    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;->get_from_type()I

    move-result p4

    invoke-virtual {p3, p4}, Lcom/join/mgps/dto/ExtBean;->set_from_type(I)Lcom/join/mgps/dto/ExtBean;

    .line 9
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p3

    iget-object p4, p0, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-virtual {p3, p4, p2}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 10
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;->getPosition()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/join/mgps/adapter/h4;->a0(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;->getPosition()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/h4;->U(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic N(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object p1

    new-instance v0, Lcom/join/kotlin/ui/findgame/data/IntentClassfyEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/join/kotlin/ui/findgame/data/IntentClassfyEvent;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/c0;->c(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/h4;->a0(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic O(Ljava/util/List;Lcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p2

    iget-object p3, p0, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    invoke-virtual {v0}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 2
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    invoke-virtual {p2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getPosition()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/join/mgps/adapter/h4;->a0(Ljava/lang/String;)V

    .line 3
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getPosition()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/h4;->U(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic P(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p2

    iget-object v0, p0, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getPosition()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/join/mgps/adapter/h4;->a0(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getPosition()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/h4;->U(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic Q(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Landroid/widget/ProgressBar;Landroid/widget/TextView;ILandroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getGameBean()Lcom/join/mgps/dto/CollectionBeanSub;

    move-result-object p5

    const/4 v0, 0x0

    if-nez p5, :cond_0

    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p5

    if-nez p5, :cond_0

    const/4 p5, 0x1

    goto :goto_0

    :cond_0
    const/4 p5, 0x0

    :goto_0
    invoke-virtual {p1, p5}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->setRequesting(Z)V

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->isRequesting()Z

    move-result p5

    const/4 v1, 0x4

    if-eqz p5, :cond_1

    const/4 p5, 0x0

    goto :goto_1

    :cond_1
    const/4 p5, 0x4

    :goto_1
    invoke-virtual {p2, p5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->isRequesting()Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 v0, 0x4

    :cond_2
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    iget-object p2, p0, Lcom/join/mgps/adapter/h4;->m:Lcom/join/mgps/adapter/h4$l1;

    if-eqz p2, :cond_3

    invoke-interface {p2, p4, p1}, Lcom/join/mgps/adapter/h4$l1;->a(ILcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V

    :cond_3
    return-void
.end method

.method private R(Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;",
            ">;",
            "Landroidx/recyclerview/widget/RecyclerView;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_3

    if-nez p1, :cond_0

    goto :goto_2

    .line 1
    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez p2, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result p2

    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-gt v0, v1, :cond_3

    .line 4
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;

    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;->isHasExposure()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    new-instance v1, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    const-string v3, "home"

    .line 6
    invoke-virtual {v1, v3}, Lcom/papa/sim/statistic/Ext;->setPage(Ljava/lang/String;)V

    const-string v3, "204"

    .line 7
    invoke-virtual {v1, v3}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 8
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;

    invoke-virtual {v3}, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 9
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;

    invoke-virtual {v3}, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;->getPosition()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 10
    iget-object v3, p0, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v3

    sget-object v4, Lcom/papa/sim/statistic/Event;->expGameAdPage:Lcom/papa/sim/statistic/Event;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;

    invoke-virtual {v5}, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v1, v5}, Lcom/papa/sim/statistic/p;->h0(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;Ljava/lang/String;)V

    .line 11
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;->setHasExposure(Z)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method private S(Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;",
            ">;",
            "Landroidx/recyclerview/widget/RecyclerView;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_3

    if-nez p1, :cond_0

    goto :goto_2

    .line 1
    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez p2, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result p2

    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-gt v0, v1, :cond_3

    .line 4
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->isHasExposure()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    new-instance v1, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    const-string v3, "home"

    .line 6
    invoke-virtual {v1, v3}, Lcom/papa/sim/statistic/Ext;->setPage(Ljava/lang/String;)V

    const-string v3, "206"

    .line 7
    invoke-virtual {v1, v3}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 8
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    invoke-direct {p0, v3}, Lcom/join/mgps/adapter/h4;->D(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 9
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    invoke-virtual {v3}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getPosition()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 10
    iget-object v3, p0, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v3

    sget-object v4, Lcom/papa/sim/statistic/Event;->expGameAdPage:Lcom/papa/sim/statistic/Event;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    invoke-direct {p0, v5}, Lcom/join/mgps/adapter/h4;->D(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v1, v5}, Lcom/papa/sim/statistic/p;->h0(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;Ljava/lang/String;)V

    .line 11
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->setHasExposure(Z)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method private T(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/ExtFrom;->home:Lcom/papa/sim/statistic/ExtFrom;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "22-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/papa/sim/statistic/p;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private U(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/ExtFrom;->home:Lcom/papa/sim/statistic/ExtFrom;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/papa/sim/statistic/p;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private V(Lcom/psk/eventmodule/Event;Ljava/lang/String;Ljava/lang/String;Lcom/psk/eventmodule/StatFactory$VolcanoOther;Z)V
    .locals 15

    const-string v0, "-"

    move-object/from16 v1, p2

    .line 1
    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2
    array-length v1, v0

    const-string v2, "\u6a21\u5757"

    const-string v3, "0"

    const-string v4, "\u5927\u5bb6\u90fd\u5728\u73a9"

    const-string v5, "\u7f51\u6e38\u63a8\u8350"

    const-string v6, "\u6700\u65b0\u7f51\u6e38"

    if-lez v1, :cond_7

    const/4 v1, 0x0

    .line 3
    aget-object v7, v0, v1

    const-string v8, "4"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_1

    .line 4
    array-length v1, v0

    if-le v1, v8, :cond_0

    aget-object v3, v0, v8

    :cond_0
    move-object v8, v3

    move-object v7, v4

    goto :goto_1

    .line 5
    :cond_1
    aget-object v4, v0, v1

    const-string v7, "7"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 6
    array-length v1, v0

    if-le v1, v8, :cond_2

    aget-object v3, v0, v8

    :cond_2
    move-object v8, v3

    move-object v7, v5

    goto :goto_1

    .line 7
    :cond_3
    aget-object v4, v0, v1

    const-string v5, "5"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 8
    array-length v1, v0

    if-le v1, v8, :cond_4

    aget-object v3, v0, v8

    :cond_4
    move-object v8, v3

    move-object v7, v6

    goto :goto_1

    .line 9
    :cond_5
    aget-object v1, v0, v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 10
    array-length v1, v0

    const/4 v4, 0x2

    if-le v1, v4, :cond_6

    .line 11
    aget-object v3, v0, v4

    .line 12
    :cond_6
    array-length v1, v0

    const/4 v4, 0x3

    if-le v1, v4, :cond_8

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v0, v8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 14
    aget-object v3, v0, v4

    goto :goto_0

    :cond_7
    const-string v2, ""

    :cond_8
    :goto_0
    move-object v7, v2

    move-object v8, v3

    .line 15
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "volcannoEvent"

    invoke-static {v1, v0}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    sget-object v0, Lcom/psk/eventmodule/StatFactory;->Companion:Lcom/psk/eventmodule/StatFactory$Companion;

    move-object v1, p0

    iget-object v2, v1, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/psk/eventmodule/StatFactory$Companion;->getInstance(Landroid/content/Context;)Lcom/psk/eventmodule/StatFactory;

    move-result-object v0

    new-instance v2, Lcom/psk/eventmodule/StatFactory$VolcanoEvent;

    new-instance v12, Lcom/psk/eventmodule/StatFactory$SpmData;

    const/4 v9, 0x0

    const-string v5, "wufun"

    const-string v6, "home"

    move-object v4, v12

    invoke-direct/range {v4 .. v9}, Lcom/psk/eventmodule/StatFactory$SpmData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v9, v2

    move-object/from16 v10, p1

    move-object/from16 v11, p3

    move-object/from16 v13, p4

    move/from16 v14, p5

    invoke-direct/range {v9 .. v14}, Lcom/psk/eventmodule/StatFactory$VolcanoEvent;-><init>(Lcom/psk/eventmodule/Event;Ljava/lang/String;Lcom/psk/eventmodule/StatFactory$SpmData;Lcom/psk/eventmodule/StatFactory$VolcanoOther;Z)V

    invoke-virtual {v0, v2}, Lcom/psk/eventmodule/StatFactory;->sendEvent(Lcom/psk/eventmodule/StatFactory$VolcanoEvent;)V

    return-void
.end method

.method private W(Ljava/lang/String;Ljava/lang/String;Lcom/psk/eventmodule/StatFactory$VolcanoOther;Z)V
    .locals 6

    .line 1
    sget-object v1, Lcom/psk/eventmodule/Event;->click:Lcom/psk/eventmodule/Event;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/adapter/h4;->V(Lcom/psk/eventmodule/Event;Ljava/lang/String;Ljava/lang/String;Lcom/psk/eventmodule/StatFactory$VolcanoOther;Z)V

    return-void
.end method

.method private X(Lcom/papa/sim/statistic/e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/e;->j(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/p;->r(Lcom/papa/sim/statistic/e;)V

    return-void
.end method

.method private Y(Lcom/join/mgps/dto/AppBean;Landroid/widget/TextView;Lcom/facebook/drawee/view/SimpleDraweeView;Lcom/papa/sim/statistic/e;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getGame_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getIco_remote()Ljava/lang/String;

    move-result-object p2

    const v0, 0x7f080168

    invoke-static {p3, v0, p2}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 5
    new-instance p2, Lcom/join/mgps/adapter/h4$z0;

    invoke-direct {p2, p0, p4, p1}, Lcom/join/mgps/adapter/h4$z0;-><init>(Lcom/join/mgps/adapter/h4;Lcom/papa/sim/statistic/e;Lcom/join/mgps/dto/AppBean;)V

    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic a(Lcom/join/mgps/adapter/h4;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/h4;->P(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Landroid/view/View;)V

    return-void
.end method

.method private a0(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/h4;->c:Landroidx/fragment/app/Fragment;

    instance-of v1, v0, Lcom/join/mgps/activity/PapaMainV2Fragment;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/join/mgps/activity/PapaMainV2Fragment;

    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/PapaMainV2Fragment;->s1(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static synthetic b(Lcom/join/mgps/adapter/h4;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/h4;->N(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/join/mgps/adapter/h4;->F(Landroid/view/View;)V

    return-void
.end method

.method private c0()V
    .locals 10

    .line 1
    sget-object v0, Lcom/join/mgps/adapter/h4;->C0:Lcom/join/mgps/adapter/h4$u2;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/join/mgps/Util/x;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " 23:59:59"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/x;->E(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v6, v0, v2

    const-wide/16 v0, 0x0

    cmp-long v2, v6, v0

    if-lez v2, :cond_1

    .line 4
    iget-object v0, p0, Lcom/join/mgps/adapter/h4;->f:Landroid/os/CountDownTimer;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lcom/join/mgps/adapter/h4$f1;

    const-wide/16 v8, 0x3e8

    move-object v4, v0

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/join/mgps/adapter/h4$f1;-><init>(Lcom/join/mgps/adapter/h4;JJ)V

    iput-object v0, p0, Lcom/join/mgps/adapter/h4;->f:Landroid/os/CountDownTimer;

    .line 6
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    :cond_1
    return-void
.end method

.method public static synthetic d(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/join/mgps/adapter/h4;->E(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/join/mgps/adapter/h4;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/h4;->H(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Landroid/view/View;)V

    return-void
.end method

.method private e0(Landroid/widget/TextView;Lcom/join/mgps/business/RecomDatabeanBusiness;Lcom/facebook/drawee/view/SimpleDraweeView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    move-object/from16 v7, p6

    .line 1
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/AppBeanMain;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBeanMain;->getGame_info()Lcom/join/mgps/dto/AppBean;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const v4, 0x7f0807b1

    .line 2
    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBean;->getIco_remote()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v8, p3

    invoke-static {v8, v4, v5}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 3
    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBean;->getGame_name()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, p4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v1, :cond_1

    .line 4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBean;->getSize()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "M"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/business/RecomDatabeanBusiness;->a()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v4

    .line 6
    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBean;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v5

    invoke-static {v5, v7, v4}, Lcom/join/mgps/Util/UtilsMy;->v2(Lcom/join/mgps/dto/TipNew;Landroid/view/View;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v5}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBean;->getPlugin_num()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const v5, 0x7f080a62

    const v8, 0x7f06002a

    if-eqz v3, :cond_3

    .line 9
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const-string v2, "\u5f00\u59cb"

    .line 10
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v2, v6, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v0, 0x8

    .line 12
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_3
    const-string v1, "\u66f4\u65b0"

    const v3, 0x7f060033

    const v9, 0x7f1100d2

    const v10, 0x7f080a6e

    const v11, 0x7f060030

    const v12, 0x7f080a67

    if-nez v4, :cond_7

    .line 13
    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBean;->getTag_info()Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v4}, Lcom/join/mgps/Util/UtilsMy;->e0(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 14
    iget-object v4, v6, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v4

    iget-object v5, v6, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBean;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v5, v8}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 15
    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v4

    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_5

    .line 16
    iget-object v4, v6, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v4

    iget-object v5, v6, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBean;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v5, v8}, Lcom/join/android/app/common/utils/APKUtils;->k(Landroid/content/Context;Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$a;

    move-result-object v4

    .line 17
    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBean;->getVer()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    move-result v4

    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBean;->getVer()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ge v4, v2, :cond_4

    .line 18
    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 19
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    iget-object v1, v6, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 21
    :cond_4
    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 22
    iget-object v1, v6, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    iget-object v1, v6, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 24
    :cond_5
    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 25
    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v1

    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 26
    invoke-static {v0, v7, v2}, Lcom/join/mgps/Util/UtilsMy;->m2(Landroid/widget/TextView;Landroid/view/View;Lcom/join/mgps/dto/AppBean;)V

    goto/16 :goto_0

    .line 27
    :cond_6
    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 28
    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v1

    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 29
    invoke-static {v0, v7, v2}, Lcom/join/mgps/Util/UtilsMy;->m2(Landroid/widget/TextView;Landroid/view/View;Lcom/join/mgps/dto/AppBean;)V

    goto/16 :goto_0

    .line 30
    :cond_7
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v13

    .line 31
    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v14

    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v14

    const/16 v15, 0x2b

    if-lez v14, :cond_8

    const/16 v13, 0x2b

    :cond_8
    if-eqz v13, :cond_e

    const/16 v14, 0x1b

    if-eq v13, v14, :cond_d

    const/16 v14, 0x30

    if-eq v13, v14, :cond_c

    const/4 v14, 0x2

    if-eq v13, v14, :cond_b

    const/4 v4, 0x3

    if-eq v13, v4, :cond_a

    const/4 v4, 0x5

    if-eq v13, v4, :cond_9

    const/4 v4, 0x6

    if-eq v13, v4, :cond_a

    const/4 v4, 0x7

    if-eq v13, v4, :cond_e

    const/16 v4, 0x2a

    if-eq v13, v4, :cond_9

    if-eq v13, v15, :cond_e

    packed-switch v13, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const v1, 0x7f080a7b

    .line 32
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const-string v1, "\u89e3\u538b"

    .line 33
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    iget-object v1, v6, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    :pswitch_1
    const v1, 0x7f0803ca

    .line 35
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const-string v1, "\u89e3\u538b\u4e2d"

    .line 36
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    iget-object v1, v6, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060031

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 38
    :pswitch_2
    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const-string v1, "\u5b89\u88c5"

    .line 39
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    iget-object v1, v6, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 41
    :pswitch_3
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const-string v1, "\u7b49\u5f85"

    .line 42
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v1, v6, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 44
    :pswitch_4
    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 45
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object v1, v6, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 47
    :cond_9
    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 48
    iget-object v1, v6, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v1, v6, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 50
    :cond_a
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const-string v1, "\u7ee7\u7eed"

    .line 51
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v1, v6, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 53
    :cond_b
    invoke-static {v4}, Lcom/join/mgps/Util/UtilsMy;->C3(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 54
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const-string v1, "\u6682\u505c"

    .line 55
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v1, v6, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 57
    :cond_c
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const-string v1, "\u5b89\u88c5\u4e2d"

    .line 58
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v1, v6, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_d
    const-string v1, "\u6682\u505c\u4e2d"

    .line 60
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 61
    :cond_e
    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 62
    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v1

    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 63
    invoke-static {v0, v7, v2}, Lcom/join/mgps/Util/UtilsMy;->m2(Landroid/widget/TextView;Landroid/view/View;Lcom/join/mgps/dto/AppBean;)V

    .line 64
    :goto_0
    new-instance v8, Lcom/join/mgps/adapter/h4$k1;

    const/4 v3, 0x1

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/adapter/h4$k1;-><init>(Lcom/join/mgps/adapter/h4;Lcom/join/mgps/business/RecomDatabeanBusiness;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic f(Lcom/join/mgps/adapter/h4;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/h4;->J(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Landroid/view/View;)V

    return-void
.end method

.method private f0(Lcom/join/mgps/adapter/h4$s1;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;ZI)V
    .locals 20

    move-object/from16 v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    .line 1
    iget-object v1, v0, Lcom/join/mgps/adapter/h4$s1;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/join/mgps/adapter/h4$s1;->m:Landroidx/constraintlayout/widget/ConstraintLayout;

    :goto_0
    if-eqz p3, :cond_2

    .line 2
    iget-object v2, v0, Lcom/join/mgps/adapter/h4$s1;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    goto :goto_1

    :cond_2
    iget-object v2, v0, Lcom/join/mgps/adapter/h4$s1;->n:Lcom/facebook/drawee/view/SimpleDraweeView;

    :goto_1
    if-eqz p3, :cond_3

    .line 3
    iget-object v3, v0, Lcom/join/mgps/adapter/h4$s1;->c:Landroid/widget/TextView;

    goto :goto_2

    :cond_3
    iget-object v3, v0, Lcom/join/mgps/adapter/h4$s1;->o:Landroid/widget/TextView;

    :goto_2
    move-object v6, v3

    if-eqz p3, :cond_4

    .line 4
    iget-object v3, v0, Lcom/join/mgps/adapter/h4$s1;->i:Landroid/widget/TextView;

    goto :goto_3

    :cond_4
    iget-object v3, v0, Lcom/join/mgps/adapter/h4$s1;->u:Landroid/widget/TextView;

    :goto_3
    move-object v7, v3

    if-eqz p3, :cond_5

    .line 5
    iget-object v3, v0, Lcom/join/mgps/adapter/h4$s1;->j:Landroid/widget/FrameLayout;

    goto :goto_4

    :cond_5
    iget-object v3, v0, Lcom/join/mgps/adapter/h4$s1;->v:Landroid/widget/FrameLayout;

    :goto_4
    move-object v8, v3

    if-eqz p3, :cond_6

    .line 6
    iget-object v3, v0, Lcom/join/mgps/adapter/h4$s1;->k:Landroid/widget/TextView;

    goto :goto_5

    :cond_6
    iget-object v3, v0, Lcom/join/mgps/adapter/h4$s1;->w:Landroid/widget/TextView;

    :goto_5
    if-eqz p3, :cond_7

    .line 7
    iget-object v4, v0, Lcom/join/mgps/adapter/h4$s1;->d:Landroid/widget/LinearLayout;

    goto :goto_6

    :cond_7
    iget-object v4, v0, Lcom/join/mgps/adapter/h4$s1;->p:Landroid/widget/LinearLayout;

    :goto_6
    move-object v15, v4

    if-eqz p3, :cond_8

    .line 8
    iget-object v4, v0, Lcom/join/mgps/adapter/h4$s1;->e:Landroid/widget/TextView;

    goto :goto_7

    :cond_8
    iget-object v4, v0, Lcom/join/mgps/adapter/h4$s1;->q:Landroid/widget/TextView;

    :goto_7
    move-object/from16 v16, v4

    if-eqz p3, :cond_9

    .line 9
    iget-object v4, v0, Lcom/join/mgps/adapter/h4$s1;->f:Landroid/widget/TextView;

    goto :goto_8

    :cond_9
    iget-object v4, v0, Lcom/join/mgps/adapter/h4$s1;->r:Landroid/widget/TextView;

    :goto_8
    move-object/from16 v17, v4

    if-eqz p3, :cond_a

    .line 10
    iget-object v4, v0, Lcom/join/mgps/adapter/h4$s1;->g:Landroid/widget/ProgressBar;

    goto :goto_9

    :cond_a
    iget-object v4, v0, Lcom/join/mgps/adapter/h4$s1;->s:Landroid/widget/ProgressBar;

    :goto_9
    move-object/from16 v18, v4

    if-eqz p3, :cond_b

    .line 11
    iget-object v4, v0, Lcom/join/mgps/adapter/h4$s1;->h:Landroid/widget/ProgressBar;

    goto :goto_a

    :cond_b
    iget-object v4, v0, Lcom/join/mgps/adapter/h4$s1;->t:Landroid/widget/ProgressBar;

    :goto_a
    move-object/from16 v19, v4

    if-eqz p3, :cond_c

    .line 12
    iget-object v0, v0, Lcom/join/mgps/adapter/h4$s1;->l:Landroid/widget/ProgressBar;

    goto :goto_b

    :cond_c
    iget-object v0, v0, Lcom/join/mgps/adapter/h4$s1;->x:Landroid/widget/ProgressBar;

    :goto_b
    move-object v12, v0

    .line 13
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getBig_pic()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/facebook/drawee/drawable/r$c;->g:Lcom/facebook/drawee/drawable/r$c;

    invoke-static {v2, v0, v4}, Lcom/join/android/app/common/utils/MyImageLoader;->i(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/drawable/r$c;)V

    .line 14
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    move-result-object v0

    if-nez v0, :cond_d

    .line 15
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getTitle()Ljava/lang/String;

    move-result-object v2

    goto :goto_c

    :cond_d
    invoke-virtual {v0}, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->getName()Ljava/lang/String;

    move-result-object v2

    :goto_c
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    .line 16
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v4, 0x4

    .line 17
    invoke-virtual {v12, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    if-eqz v0, :cond_10

    .line 18
    invoke-virtual {v0}, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->getTag_name()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 19
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    invoke-virtual {v0}, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->getTag_name()Ljava/lang/String;

    move-result-object v0

    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    .line 21
    :goto_d
    array-length v9, v0

    if-ge v5, v9, :cond_f

    .line 22
    aget-object v9, v0, v5

    .line 23
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " | "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x1

    if-lt v5, v9, :cond_e

    goto :goto_e

    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    .line 24
    :cond_f
    :goto_e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    invoke-virtual {v4, v2, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    :cond_10
    new-instance v0, Lcom/join/mgps/adapter/z3;

    move-object/from16 v2, p0

    move-object/from16 v5, p2

    invoke-direct {v0, v2, v5}, Lcom/join/mgps/adapter/z3;-><init>(Lcom/join/mgps/adapter/h4;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    new-instance v0, Lcom/join/mgps/adapter/d4;

    move-object v9, v0

    move-object/from16 v10, p0

    move-object/from16 v11, p2

    move-object v13, v3

    move/from16 v14, p4

    invoke-direct/range {v9 .. v14}, Lcom/join/mgps/adapter/d4;-><init>(Lcom/join/mgps/adapter/h4;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Landroid/widget/ProgressBar;Landroid/widget/TextView;I)V

    invoke-virtual {v8, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v4, p0

    move-object v9, v3

    move-object v10, v15

    move-object/from16 v11, v16

    move-object/from16 v12, v17

    move-object/from16 v13, v18

    move-object/from16 v14, v19

    .line 27
    invoke-direct/range {v4 .. v14}, Lcom/join/mgps/adapter/h4;->update(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V

    return-void
.end method

.method public static synthetic g(Lcom/join/mgps/adapter/h4;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/h4;->L(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic h(Lcom/join/mgps/adapter/h4;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Lcom/join/mgps/adapter/h4$p1;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/join/mgps/adapter/h4;->K(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Lcom/join/mgps/adapter/h4$p1;ILandroid/view/View;)V

    return-void
.end method

.method private h0(Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;ZZ)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p5, :cond_0

    .line 1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    invoke-virtual {p3, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 4
    invoke-virtual {p4, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz p6, :cond_1

    .line 7
    invoke-virtual {p4, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 8
    invoke-virtual {p3, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p3, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 10
    invoke-virtual {p4, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public static synthetic i(Lcom/join/mgps/adapter/h4;Ljava/util/List;Lcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/join/mgps/adapter/h4;->O(Ljava/util/List;Lcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic j(Lcom/join/mgps/adapter/h4;Ljava/util/List;Lcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/join/mgps/adapter/h4;->M(Ljava/util/List;Lcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic k(Lcom/join/mgps/adapter/h4;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Landroid/widget/ProgressBar;Landroid/widget/TextView;ILandroid/view/View;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/join/mgps/adapter/h4;->Q(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Landroid/widget/ProgressBar;Landroid/widget/TextView;ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic l(Lcom/join/mgps/adapter/h4;Ljava/util/List;ILcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/join/mgps/adapter/h4;->G(Ljava/util/List;ILcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic m(Lcom/join/mgps/adapter/h4;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/h4;->I(Landroid/view/View;)V

    return-void
.end method

.method static synthetic n(Lcom/join/mgps/adapter/h4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/adapter/h4;->c0()V

    return-void
.end method

.method static synthetic o(Lcom/join/mgps/adapter/h4;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic p(Lcom/join/mgps/adapter/h4;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/h4;->T(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic q(Lcom/join/mgps/adapter/h4;Ljava/lang/String;Ljava/lang/String;Lcom/psk/eventmodule/StatFactory$VolcanoOther;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/join/mgps/adapter/h4;->W(Ljava/lang/String;Ljava/lang/String;Lcom/psk/eventmodule/StatFactory$VolcanoOther;Z)V

    return-void
.end method

.method static synthetic r(Lcom/join/mgps/adapter/h4;Ljava/util/List;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/h4;->C(Ljava/util/List;I)V

    return-void
.end method

.method static synthetic s(Lcom/join/mgps/adapter/h4;)Lo1/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/h4;->h:Lo1/e;

    return-object p0
.end method

.method static synthetic t(Lcom/join/mgps/adapter/h4;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/h4;->a0(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic u(Lcom/join/mgps/adapter/h4;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/h4;->U(Ljava/lang/String;)V

    return-void
.end method

.method private update(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V
    .locals 20

    move-object/from16 v8, p0

    move-object/from16 v0, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v14

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getGameBean()Lcom/join/mgps/dto/CollectionBeanSub;

    move-result-object v15

    const-wide/16 v16, 0x0

    if-eqz v14, :cond_0

    .line 3
    invoke-virtual {v14}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v1

    move-wide/from16 v18, v1

    goto :goto_0

    :cond_0
    move-wide/from16 v18, v16

    :goto_0
    if-eqz v15, :cond_1

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v2}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15}, Lcom/join/mgps/dto/CollectionBeanSub;->getPlugin_num()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "\u5f00\u59cb"

    .line 5
    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x8

    move-object/from16 v1, p2

    .line 6
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    :cond_1
    const-string v7, "\u66f4\u65b0"

    const-string v6, "\u542f\u52a8"

    const-string v5, "\u83b7\u53d6"

    if-nez v14, :cond_6

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p6

    move-object/from16 v4, p10

    move-object v13, v5

    move-object/from16 v5, p9

    move-object v12, v6

    move v6, v10

    move-object v10, v7

    move v7, v11

    .line 7
    invoke-direct/range {v1 .. v7}, Lcom/join/mgps/adapter/h4;->h0(Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;ZZ)V

    .line 8
    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez v15, :cond_2

    return-void

    .line 9
    :cond_2
    invoke-virtual {v15}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/UtilsMy;->e0(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 10
    iget-object v1, v8, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v1

    iget-object v2, v8, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-virtual {v15}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 11
    invoke-virtual {v15}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v1

    invoke-virtual {v15}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_4

    .line 12
    iget-object v0, v8, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v0

    iget-object v1, v8, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-virtual {v15}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/join/android/app/common/utils/APKUtils;->k(Landroid/content/Context;Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$a;

    move-result-object v0

    .line 13
    invoke-virtual {v15}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    move-result v0

    invoke-virtual {v15}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 14
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 15
    :cond_3
    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 16
    :cond_4
    invoke-virtual {v15}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v1

    invoke-virtual {v15}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 17
    invoke-static {v9, v0, v15}, Lcom/join/mgps/Util/UtilsMy;->t2(Landroid/widget/TextView;Landroid/view/View;Lcom/join/mgps/dto/CollectionBeanSub;)V

    goto/16 :goto_5

    .line 18
    :cond_5
    invoke-virtual {v15}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v1

    invoke-virtual {v15}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 19
    invoke-static {v9, v0, v15}, Lcom/join/mgps/Util/UtilsMy;->t2(Landroid/widget/TextView;Landroid/view/View;Lcom/join/mgps/dto/CollectionBeanSub;)V

    goto/16 :goto_5

    :cond_6
    move-object v3, v5

    move-object v2, v6

    move-object v1, v7

    .line 20
    invoke-virtual {v14}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v4

    const/16 v5, 0x2b

    if-eqz v15, :cond_7

    .line 21
    invoke-virtual {v15}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v6

    invoke-virtual {v15}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_7

    const/16 v4, 0x2b

    :cond_7
    if-eqz v4, :cond_f

    const/16 v6, 0x1b

    const-string v7, "\u6682\u505c"

    if-eq v4, v6, :cond_e

    const/16 v6, 0x30

    if-eq v4, v6, :cond_d

    const/4 v6, 0x2

    move-object/from16 p1, v7

    const-string v7, "/"

    if-eq v4, v6, :cond_b

    const/4 v6, 0x3

    if-eq v4, v6, :cond_9

    const/4 v6, 0x5

    if-eq v4, v6, :cond_8

    const/4 v6, 0x6

    if-eq v4, v6, :cond_9

    const/4 v6, 0x7

    if-eq v4, v6, :cond_f

    const/16 v6, 0x2a

    if-eq v4, v6, :cond_8

    if-eq v4, v5, :cond_f

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    const/4 v6, 0x0

    const/4 v0, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p6

    move-object/from16 v4, p10

    move-object/from16 v5, p9

    move-object v15, v7

    move v7, v0

    .line 22
    invoke-direct/range {v1 .. v7}, Lcom/join/mgps/adapter/h4;->h0(Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;ZZ)V

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v18 .. v19}, Lcom/join/mgps/Util/UtilsMy;->f(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v19}, Lcom/join/mgps/Util/UtilsMy;->f(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "\u70b9\u51fb\u91cd\u65b0\u89e3\u538b"

    .line 24
    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    invoke-virtual {v14}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v0

    long-to-int v1, v0

    invoke-virtual {v12, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    const-string v0, "\u89e3\u538b"

    .line 26
    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :pswitch_1
    move-object v15, v7

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p6

    move-object/from16 v4, p10

    move-object/from16 v5, p9

    .line 27
    invoke-direct/range {v1 .. v7}, Lcom/join/mgps/adapter/h4;->h0(Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;ZZ)V

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v18 .. v19}, Lcom/join/mgps/Util/UtilsMy;->f(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v19}, Lcom/join/mgps/Util/UtilsMy;->f(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "\u89e3\u538b\u4e2d.."

    .line 29
    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    invoke-virtual {v14}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v0

    long-to-int v1, v0

    invoke-virtual {v12, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    const-string v0, "\u89e3\u538b\u4e2d"

    .line 31
    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :pswitch_2
    const-string v0, "\u5b89\u88c5"

    .line 32
    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p6

    move-object/from16 v4, p10

    move-object/from16 v5, p9

    .line 33
    invoke-direct/range {v1 .. v7}, Lcom/join/mgps/adapter/h4;->h0(Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;ZZ)V

    goto/16 :goto_5

    :pswitch_3
    move-object v15, v7

    const-string v0, "\u7b49\u5f85"

    .line 34
    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p6

    move-object/from16 v4, p10

    move-object/from16 v5, p9

    .line 35
    invoke-direct/range {v1 .. v7}, Lcom/join/mgps/adapter/h4;->h0(Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;ZZ)V

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->f(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v19}, Lcom/join/mgps/Util/UtilsMy;->f(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    :try_start_0
    invoke-virtual {v14}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v0

    long-to-int v1, v0

    invoke-virtual {v13, v1}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 38
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    const-string v0, "\u7b49\u5f85\u4e2d"

    .line 39
    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 40
    :pswitch_4
    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p6

    move-object/from16 v4, p10

    move-object/from16 v5, p9

    .line 41
    invoke-direct/range {v1 .. v7}, Lcom/join/mgps/adapter/h4;->h0(Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;ZZ)V

    goto/16 :goto_5

    .line 42
    :cond_8
    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p6

    move-object/from16 v4, p10

    move-object/from16 v5, p9

    .line 43
    invoke-direct/range {v1 .. v7}, Lcom/join/mgps/adapter/h4;->h0(Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;ZZ)V

    goto/16 :goto_5

    :cond_9
    const-string v0, "\u7ee7\u7eed"

    .line 44
    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v6, 0x0

    const/4 v0, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p6

    move-object/from16 v4, p10

    move-object/from16 v5, p9

    move-object v15, v7

    move v7, v0

    .line 45
    invoke-direct/range {v1 .. v7}, Lcom/join/mgps/adapter/h4;->h0(Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;ZZ)V

    .line 46
    :try_start_1
    invoke-virtual {v14}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v0

    cmp-long v2, v0, v16

    if-nez v2, :cond_a

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->f(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v19}, Lcom/join/mgps/Util/UtilsMy;->f(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 48
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->f(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v19}, Lcom/join/mgps/Util/UtilsMy;->f(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    :goto_2
    invoke-virtual {v14}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v0

    long-to-int v1, v0

    invoke-virtual {v13, v1}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    const-string v0, "\u6682\u505c\u4e2d"

    .line 51
    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_b
    move-object v15, v7

    .line 52
    invoke-static {v14}, Lcom/join/mgps/Util/UtilsMy;->C3(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    move-object/from16 v0, p1

    .line 53
    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p6

    move-object/from16 v4, p10

    move-object/from16 v5, p9

    .line 54
    invoke-direct/range {v1 .. v7}, Lcom/join/mgps/adapter/h4;->h0(Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;ZZ)V

    .line 55
    invoke-virtual {v14}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v0

    cmp-long v2, v0, v16

    if-nez v2, :cond_c

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->f(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v19}, Lcom/join/mgps/Util/UtilsMy;->f(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 57
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->f(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v19}, Lcom/join/mgps/Util/UtilsMy;->f(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    :goto_4
    invoke-virtual {v14}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v0

    long-to-int v1, v0

    invoke-virtual {v13, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 59
    invoke-virtual {v14}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    move-result-object v0

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/S"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_d
    const-string v0, "\u5b89\u88c5\u4e2d"

    .line 61
    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p6

    move-object/from16 v4, p10

    move-object/from16 v5, p9

    .line 62
    invoke-direct/range {v1 .. v7}, Lcom/join/mgps/adapter/h4;->h0(Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;ZZ)V

    goto :goto_5

    :cond_e
    move-object v0, v7

    .line 63
    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 64
    :cond_f
    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    invoke-virtual {v15}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v1

    invoke-virtual {v15}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 66
    invoke-static {v9, v0, v15}, Lcom/join/mgps/Util/UtilsMy;->t2(Landroid/widget/TextView;Landroid/view/View;Lcom/join/mgps/dto/CollectionBeanSub;)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p6

    move-object/from16 v4, p10

    move-object/from16 v5, p9

    .line 67
    invoke-direct/range {v1 .. v7}, Lcom/join/mgps/adapter/h4;->h0(Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;ZZ)V

    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic v(Lcom/join/mgps/adapter/h4;Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/h4;->R(Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method static synthetic w(Lcom/join/mgps/adapter/h4;)Lcom/join/mgps/adapter/h4$l1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/h4;->m:Lcom/join/mgps/adapter/h4$l1;

    return-object p0
.end method

.method static synthetic x(Lcom/join/mgps/adapter/h4;Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/h4;->S(Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method static synthetic y(Lcom/join/mgps/adapter/h4;Lcom/papa/sim/statistic/e;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/h4;->X(Lcom/papa/sim/statistic/e;)V

    return-void
.end method

.method static synthetic z(Lcom/join/mgps/adapter/h4;Lcom/psk/eventmodule/Event;Ljava/lang/String;Ljava/lang/String;Lcom/psk/eventmodule/StatFactory$VolcanoOther;Z)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/join/mgps/adapter/h4;->V(Lcom/psk/eventmodule/Event;Ljava/lang/String;Ljava/lang/String;Lcom/psk/eventmodule/StatFactory$VolcanoOther;Z)V

    return-void
.end method


# virtual methods
.method public Z(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/MgpapaMainItemBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/h4;->d:Ljava/util/List;

    .line 2
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public b0(Lcom/join/mgps/adapter/h4$l1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/h4;->m:Lcom/join/mgps/adapter/h4$l1;

    return-void
.end method

.method public d0()V
    .locals 3

    .line 1
    sget-object v0, Lcom/join/mgps/adapter/h4;->C0:Lcom/join/mgps/adapter/h4$u2;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {v0}, Lcom/join/mgps/adapter/h4$u2;->l(Lcom/join/mgps/adapter/h4$u2;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    sget-object v0, Lcom/join/mgps/adapter/h4;->C0:Lcom/join/mgps/adapter/h4$u2;

    invoke-static {v0}, Lcom/join/mgps/adapter/h4$u2;->g(Lcom/join/mgps/adapter/h4$u2;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    sget-object v0, Lcom/join/mgps/adapter/h4;->C0:Lcom/join/mgps/adapter/h4$u2;

    invoke-static {v0}, Lcom/join/mgps/adapter/h4$u2;->i(Lcom/join/mgps/adapter/h4$u2;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/join/mgps/adapter/h4;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method g0(Lcom/join/mgps/adapter/h4$w1;Lcom/join/mgps/business/RecomDatabeanBusiness;II)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p4

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_2

    if-eq v2, v6, :cond_0

    move-object v2, v4

    move-object v8, v2

    move-object v9, v8

    const/4 v10, 0x0

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    .line 1
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/adapter/h4$w1;->c(Lcom/join/mgps/adapter/h4$w1;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    .line 2
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/adapter/h4$w1;->c(Lcom/join/mgps/adapter/h4$w1;)Landroid/widget/LinearLayout;

    move-result-object v2

    const v4, 0x7f090a71

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/widget/TextView;

    .line 3
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/adapter/h4$w1;->c(Lcom/join/mgps/adapter/h4$w1;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/adapter/h4$w1;->g(Lcom/join/mgps/adapter/h4$w1;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v2

    .line 5
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/adapter/h4$w1;->k(Lcom/join/mgps/adapter/h4$w1;)Landroid/widget/TextView;

    move-result-object v8

    .line 6
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/adapter/h4$w1;->o(Lcom/join/mgps/adapter/h4$w1;)Landroid/widget/TextView;

    move-result-object v9

    mul-int/lit8 v10, p3, 0x2

    move-object/from16 v16, v4

    move-object v4, v2

    move-object v2, v8

    move-object v8, v9

    move-object/from16 v9, v16

    goto :goto_0

    .line 7
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/adapter/h4$w1;->e(Lcom/join/mgps/adapter/h4$w1;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v4

    .line 8
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/adapter/h4$w1;->i(Lcom/join/mgps/adapter/h4$w1;)Landroid/widget/TextView;

    move-result-object v2

    .line 9
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/adapter/h4$w1;->m(Lcom/join/mgps/adapter/h4$w1;)Landroid/widget/TextView;

    move-result-object v8

    mul-int/lit8 v9, p3, 0x2

    add-int/lit8 v10, v9, -0x1

    .line 10
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/adapter/h4$w1;->a(Lcom/join/mgps/adapter/h4$w1;)Landroid/widget/LinearLayout;

    move-result-object v9

    const v11, 0x7f090a6f

    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    :goto_0
    if-nez v1, :cond_3

    return-void

    .line 11
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object v11

    if-eqz v11, :cond_18

    .line 12
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_18

    .line 13
    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/join/mgps/dto/AppBeanMain;

    .line 14
    invoke-virtual {v11}, Lcom/join/mgps/dto/AppBeanMain;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    move-result-object v12

    .line 15
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v13

    if-eqz v13, :cond_17

    .line 16
    invoke-virtual {v12}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type()I

    move-result v14

    const/4 v15, 0x5

    const v7, 0x7f080a74

    const v5, 0x7f0800a6

    if-eq v14, v6, :cond_5

    const/high16 v1, 0x41400000    # 12.0f

    if-eq v14, v3, :cond_4

    if-eq v14, v15, :cond_4

    .line 17
    invoke-virtual {v13}, Lcom/join/mgps/dto/ModleBean;->getPic_remote()Ljava/lang/String;

    move-result-object v3

    iget-object v6, v0, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-static {v6}, Lcom/join/android/app/common/utils/MyImageLoader;->C(Landroid/content/Context;)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v6

    invoke-static {v4, v7, v3, v6}, Lcom/join/android/app/common/utils/MyImageLoader;->f(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 18
    invoke-virtual {v13}, Lcom/join/mgps/dto/ModleBean;->getSub_title()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 20
    iget-object v2, v0, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060030

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v2, "\u67e5\u770b"

    .line 21
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x2

    .line 22
    invoke-virtual {v8, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 23
    new-instance v1, Lcom/join/mgps/adapter/h4$d1;

    invoke-direct {v1, v0, v12, v10}, Lcom/join/mgps/adapter/h4$d1;-><init>(Lcom/join/mgps/adapter/h4;Lcom/join/mgps/Util/IntentDateBean;I)V

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_5

    .line 24
    :cond_4
    invoke-virtual {v13}, Lcom/join/mgps/dto/ModleBean;->getPic_remote()Ljava/lang/String;

    move-result-object v3

    iget-object v6, v0, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-static {v6}, Lcom/join/android/app/common/utils/MyImageLoader;->C(Landroid/content/Context;)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v6

    invoke-static {v4, v7, v3, v6}, Lcom/join/android/app/common/utils/MyImageLoader;->f(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 25
    invoke-virtual {v13}, Lcom/join/mgps/dto/ModleBean;->getSub_title()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 27
    iget-object v2, v0, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060030

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v2, "\u6253\u5f00"

    .line 28
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x2

    .line 29
    invoke-virtual {v8, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 30
    new-instance v1, Lcom/join/mgps/adapter/h4$b1;

    invoke-direct {v1, v0, v12, v10}, Lcom/join/mgps/adapter/h4$b1;-><init>(Lcom/join/mgps/adapter/h4;Lcom/join/mgps/Util/IntentDateBean;I)V

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_5

    .line 31
    :cond_5
    invoke-virtual {v11}, Lcom/join/mgps/dto/AppBeanMain;->getGame_info()Lcom/join/mgps/dto/AppBean;

    move-result-object v3

    if-eqz v3, :cond_17

    .line 32
    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v14

    invoke-static {v14, v9}, Lcom/join/mgps/Util/UtilsMy;->w2(Lcom/join/mgps/dto/TipNew;Landroid/widget/TextView;)V

    .line 33
    invoke-virtual {v13}, Lcom/join/mgps/dto/ModleBean;->getPic_remote()Ljava/lang/String;

    move-result-object v9

    iget-object v13, v0, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-static {v13}, Lcom/join/android/app/common/utils/MyImageLoader;->C(Landroid/content/Context;)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v13

    invoke-static {v4, v7, v9, v13}, Lcom/join/android/app/common/utils/MyImageLoader;->f(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 34
    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getGame_name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v7}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ""

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getPlugin_num()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v13, "\u5f00\u59cb"

    const v14, 0x7f080a62

    const v15, 0x7f06002a

    if-eqz v2, :cond_6

    .line 36
    invoke-virtual {v8, v14}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 37
    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    iget-object v2, v0, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_4

    .line 39
    :cond_6
    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getPlugin_num()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 40
    invoke-virtual {v8, v14}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 41
    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object v2, v0, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_4

    .line 43
    :cond_7
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/business/RecomDatabeanBusiness;->a()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v2

    const-string v6, "\u66f4\u65b0"

    const v7, 0x7f060033

    const v9, 0x7f1100d2

    const v13, 0x7f0800aa

    if-nez v2, :cond_e

    .line 44
    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getTag_info()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/Util/UtilsMy;->e0(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 45
    iget-object v2, v0, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v2

    iget-object v15, v0, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v15, v14}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 46
    invoke-virtual {v11}, Lcom/join/mgps/dto/AppBeanMain;->getGame_info()Lcom/join/mgps/dto/AppBean;

    move-result-object v14

    invoke-virtual {v14}, Lcom/join/mgps/dto/AppBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v14

    invoke-virtual {v11}, Lcom/join/mgps/dto/AppBeanMain;->getGame_info()Lcom/join/mgps/dto/AppBean;

    move-result-object v15

    invoke-virtual {v15}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v14

    if-lez v14, :cond_8

    const/4 v2, 0x0

    :cond_8
    if-eqz v2, :cond_a

    .line 47
    iget-object v2, v0, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v2

    iget-object v11, v0, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v11, v14}, Lcom/join/android/app/common/utils/APKUtils;->k(Landroid/content/Context;Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$a;

    move-result-object v2

    .line 48
    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getVer()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-virtual {v2}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    move-result v2

    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getVer()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    if-ge v2, v11, :cond_9

    .line 49
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 50
    iget-object v2, v0, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f060030

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 51
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 52
    :cond_9
    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 53
    iget-object v2, v0, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v2, v0, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_4

    .line 55
    :cond_a
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 56
    invoke-virtual {v11}, Lcom/join/mgps/dto/AppBeanMain;->getGame_info()Lcom/join/mgps/dto/AppBean;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 57
    invoke-virtual {v11}, Lcom/join/mgps/dto/AppBeanMain;->getGame_info()Lcom/join/mgps/dto/AppBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 58
    invoke-virtual {v11}, Lcom/join/mgps/dto/AppBeanMain;->getGame_info()Lcom/join/mgps/dto/AppBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/PayTagInfo;->getPay_game_amount()I

    move-result v2

    if-lez v2, :cond_b

    .line 59
    invoke-static {}, Ln1/e0;->o()Ln1/e0;

    move-result-object v2

    invoke-virtual {v11}, Lcom/join/mgps/dto/AppBeanMain;->getGame_info()Lcom/join/mgps/dto/AppBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ln1/e0;->p(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 60
    iget-object v2, v0, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v11}, Lcom/join/mgps/dto/AppBeanMain;->getGame_info()Lcom/join/mgps/dto/AppBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/join/mgps/dto/AppBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/join/mgps/dto/PayTagInfo;->getPayGameAmount()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const v6, 0x7f110261

    invoke-virtual {v2, v6, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 61
    :cond_b
    iget-object v2, v0, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f1100d1

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    :goto_1
    iget-object v2, v0, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f060030

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 63
    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v2

    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 64
    invoke-static {v8, v3}, Lcom/join/mgps/Util/UtilsMy;->q2(Landroid/widget/TextView;Lcom/join/mgps/dto/AppBean;)V

    goto/16 :goto_4

    .line 65
    :cond_c
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 66
    invoke-virtual {v11}, Lcom/join/mgps/dto/AppBeanMain;->getGame_info()Lcom/join/mgps/dto/AppBean;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 67
    invoke-virtual {v11}, Lcom/join/mgps/dto/AppBeanMain;->getGame_info()Lcom/join/mgps/dto/AppBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 68
    invoke-virtual {v11}, Lcom/join/mgps/dto/AppBeanMain;->getGame_info()Lcom/join/mgps/dto/AppBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/PayTagInfo;->getPay_game_amount()I

    move-result v2

    if-lez v2, :cond_d

    .line 69
    invoke-static {}, Ln1/e0;->o()Ln1/e0;

    move-result-object v2

    invoke-virtual {v11}, Lcom/join/mgps/dto/AppBeanMain;->getGame_info()Lcom/join/mgps/dto/AppBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ln1/e0;->p(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 70
    iget-object v2, v0, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v11}, Lcom/join/mgps/dto/AppBeanMain;->getGame_info()Lcom/join/mgps/dto/AppBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/join/mgps/dto/AppBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/join/mgps/dto/PayTagInfo;->getPayGameAmount()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const v6, 0x7f110261

    invoke-virtual {v2, v6, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 71
    :cond_d
    iget-object v2, v0, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f1100d1

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    :goto_2
    iget-object v2, v0, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f060030

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 73
    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v2

    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 74
    invoke-static {v8, v3}, Lcom/join/mgps/Util/UtilsMy;->q2(Landroid/widget/TextView;Lcom/join/mgps/dto/AppBean;)V

    goto/16 :goto_4

    .line 75
    :cond_e
    invoke-virtual {v11}, Lcom/join/mgps/dto/AppBeanMain;->getGame_info()Lcom/join/mgps/dto/AppBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v2

    invoke-virtual {v11}, Lcom/join/mgps/dto/AppBeanMain;->getGame_info()Lcom/join/mgps/dto/AppBean;

    move-result-object v14

    invoke-virtual {v14}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v14}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v2

    const/16 v14, 0x2b

    if-lez v2, :cond_f

    .line 76
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/business/RecomDatabeanBusiness;->a()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 77
    :cond_f
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/business/RecomDatabeanBusiness;->a()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v2

    const v15, 0x7f0800a1

    if-eqz v2, :cond_15

    const/16 v7, 0x1b

    if-eq v2, v7, :cond_14

    const/16 v7, 0x30

    if-eq v2, v7, :cond_13

    const/4 v7, 0x2

    if-eq v2, v7, :cond_12

    const/4 v7, 0x3

    if-eq v2, v7, :cond_11

    const/4 v7, 0x5

    if-eq v2, v7, :cond_10

    const/4 v7, 0x6

    if-eq v2, v7, :cond_11

    const/4 v7, 0x7

    if-eq v2, v7, :cond_15

    const/16 v7, 0x2a

    if-eq v2, v7, :cond_10

    if-eq v2, v14, :cond_15

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_4

    .line 78
    :pswitch_0
    invoke-virtual {v8, v15}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 79
    iget-object v2, v0, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f06002a

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v2, "\u89e3\u538b"

    .line 80
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :pswitch_1
    const v2, 0x7f0800a5

    .line 81
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const-string v2, "\u89e3\u538b\u4e2d"

    .line 82
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v2, v0, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f060031

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_4

    .line 84
    :pswitch_2
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 85
    iget-object v2, v0, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f060030

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v2, "\u5b89\u88c5"

    .line 86
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 87
    :pswitch_3
    invoke-virtual {v8, v15}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 88
    iget-object v2, v0, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f06002a

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v2, "\u7b49\u5f85"

    .line 89
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 90
    :pswitch_4
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 91
    iget-object v2, v0, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f060030

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 92
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 93
    :cond_10
    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 94
    iget-object v2, v0, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v2, v0, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f060033

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_4

    .line 96
    :cond_11
    invoke-virtual {v8, v15}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 97
    iget-object v2, v0, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f06002a

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v2, "\u7ee7\u7eed"

    .line 98
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_12
    const v5, 0x7f06002a

    .line 99
    invoke-virtual {v8, v15}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 100
    iget-object v2, v0, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v2, "\u6682\u505c"

    .line 101
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_13
    const v5, 0x7f06002a

    .line 102
    invoke-virtual {v8, v15}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 103
    iget-object v2, v0, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v2, "\u5b89\u88c5\u4e2d"

    .line 104
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_14
    const-string v2, "\u6682\u505c\u4e2d"

    .line 105
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 106
    :cond_15
    invoke-virtual {v8, v15}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 107
    iget-object v2, v0, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f06002a

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 108
    invoke-virtual {v11}, Lcom/join/mgps/dto/AppBeanMain;->getGame_info()Lcom/join/mgps/dto/AppBean;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 109
    invoke-virtual {v11}, Lcom/join/mgps/dto/AppBeanMain;->getGame_info()Lcom/join/mgps/dto/AppBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 110
    invoke-virtual {v11}, Lcom/join/mgps/dto/AppBeanMain;->getGame_info()Lcom/join/mgps/dto/AppBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/PayTagInfo;->getPay_game_amount()I

    move-result v2

    if-lez v2, :cond_16

    .line 111
    invoke-static {}, Ln1/e0;->o()Ln1/e0;

    move-result-object v2

    invoke-virtual {v11}, Lcom/join/mgps/dto/AppBeanMain;->getGame_info()Lcom/join/mgps/dto/AppBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ln1/e0;->p(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 112
    iget-object v2, v0, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v11}, Lcom/join/mgps/dto/AppBeanMain;->getGame_info()Lcom/join/mgps/dto/AppBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/join/mgps/dto/AppBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/join/mgps/dto/PayTagInfo;->getPayGameAmount()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const v6, 0x7f110261

    invoke-virtual {v2, v6, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 113
    :cond_16
    iget-object v2, v0, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f1100d1

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    :goto_3
    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v2

    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 115
    invoke-static {v8, v3}, Lcom/join/mgps/Util/UtilsMy;->q2(Landroid/widget/TextView;Lcom/join/mgps/dto/AppBean;)V

    .line 116
    :goto_4
    new-instance v2, Lcom/join/mgps/adapter/h4$a1;

    invoke-direct {v2, v0, v1, v3, v10}, Lcom/join/mgps/adapter/h4$a1;-><init>(Lcom/join/mgps/adapter/h4;Lcom/join/mgps/business/RecomDatabeanBusiness;Lcom/join/mgps/dto/AppBean;I)V

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    :cond_17
    :goto_5
    new-instance v1, Lcom/join/mgps/adapter/h4$e1;

    invoke-direct {v1, v0, v10, v12}, Lcom/join/mgps/adapter/h4$e1;-><init>(Lcom/join/mgps/adapter/h4;ILcom/join/mgps/Util/IntentDateBean;)V

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_18
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/h4;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/h4;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/h4;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/MgpapaMainItemBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getShowtype()I

    move-result p1

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 47

    move-object/from16 v12, p0

    move/from16 v1, p1

    .line 1
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/join/mgps/adapter/h4;->getItemViewType(I)I

    move-result v2

    const/16 v3, 0x15

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    .line 2
    iget-object v1, v12, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c03a1

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1

    :cond_0
    const v3, 0x7f09100f

    const/4 v10, 0x0

    if-nez p2, :cond_1

    const v5, 0x7f09079d

    const v6, 0x7f0900ea

    const v7, 0x7f090cac

    const v8, 0x7f090103

    const v9, 0x7f090559

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move-object/from16 v6, p2

    :goto_0
    move-object v5, v4

    move-object v7, v5

    :goto_1
    move-object v8, v7

    move-object v9, v8

    move-object v11, v9

    move-object v13, v11

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    move-object/from16 v25, v24

    move-object/from16 v26, v25

    move-object/from16 v27, v26

    move-object/from16 v28, v27

    move-object/from16 v29, v28

    move-object/from16 v30, v29

    move-object/from16 v31, v30

    move-object/from16 v32, v31

    move-object/from16 v33, v32

    move-object/from16 v34, v33

    move-object/from16 v35, v34

    move-object/from16 v36, v35

    move-object/from16 v37, v36

    move-object/from16 v38, v37

    move-object/from16 v39, v38

    goto/16 :goto_6

    .line 3
    :pswitch_1
    new-instance v5, Lcom/join/mgps/adapter/h4$n2;

    invoke-direct {v5, v12}, Lcom/join/mgps/adapter/h4$n2;-><init>(Lcom/join/mgps/adapter/h4;)V

    .line 4
    iget-object v6, v12, Lcom/join/mgps/adapter/h4;->a:Landroid/view/LayoutInflater;

    const v7, 0x7f0c047f

    invoke-virtual {v6, v7, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_e

    const v7, 0x7f0908be

    .line 5
    :try_start_1
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, v5, Lcom/join/mgps/adapter/h4$n2;->a:Landroid/view/View;

    .line 6
    invoke-virtual {v6, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 7
    :pswitch_2
    :try_start_2
    new-instance v5, Lcom/join/mgps/adapter/h4$i2;

    invoke-direct {v5, v12}, Lcom/join/mgps/adapter/h4$i2;-><init>(Lcom/join/mgps/adapter/h4;)V

    .line 8
    iget-object v6, v12, Lcom/join/mgps/adapter/h4;->a:Landroid/view/LayoutInflater;

    const v7, 0x7f0c0519

    invoke-virtual {v6, v7, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_e

    const v7, 0x7f090cf3

    .line 9
    :try_start_3
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v7, v5, Lcom/join/mgps/adapter/h4$i2;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    invoke-virtual {v6, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object v7, v4

    move-object v8, v7

    move-object v9, v8

    move-object v11, v9

    move-object v13, v11

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    move-object/from16 v23, v21

    move-object/from16 v24, v23

    move-object/from16 v25, v24

    move-object/from16 v26, v25

    move-object/from16 v27, v26

    move-object/from16 v28, v27

    move-object/from16 v29, v28

    move-object/from16 v30, v29

    move-object/from16 v31, v30

    move-object/from16 v32, v31

    move-object/from16 v33, v32

    move-object/from16 v34, v33

    move-object/from16 v35, v34

    move-object/from16 v36, v35

    move-object/from16 v37, v36

    move-object/from16 v38, v37

    move-object/from16 v39, v38

    move-object/from16 v22, v5

    goto :goto_2

    .line 11
    :pswitch_3
    :try_start_4
    new-instance v5, Lcom/join/mgps/adapter/h4$l2;

    invoke-direct {v5, v12}, Lcom/join/mgps/adapter/h4$l2;-><init>(Lcom/join/mgps/adapter/h4;)V

    .line 12
    iget-object v6, v12, Lcom/join/mgps/adapter/h4;->a:Landroid/view/LayoutInflater;

    const v7, 0x7f0c051a

    invoke-virtual {v6, v7, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_e

    const v7, 0x7f090e9c

    .line 13
    :try_start_5
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/join/mgps/adapter/h4$l2;->b(Lcom/join/mgps/adapter/h4$l2;Landroid/view/View;)Landroid/view/View;

    .line 14
    invoke-virtual {v6, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    move-object v7, v4

    move-object v8, v7

    move-object v9, v8

    move-object v11, v9

    move-object v13, v11

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v18, v16

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    move-object/from16 v25, v24

    move-object/from16 v26, v25

    move-object/from16 v27, v26

    move-object/from16 v28, v27

    move-object/from16 v29, v28

    move-object/from16 v30, v29

    move-object/from16 v31, v30

    move-object/from16 v32, v31

    move-object/from16 v33, v32

    move-object/from16 v34, v33

    move-object/from16 v35, v34

    move-object/from16 v36, v35

    move-object/from16 v37, v36

    move-object/from16 v38, v37

    move-object/from16 v39, v38

    move-object/from16 v17, v5

    :goto_2
    move-object/from16 v5, v39

    goto/16 :goto_6

    .line 15
    :pswitch_4
    :try_start_6
    new-instance v5, Lcom/join/mgps/adapter/h4$f2;

    invoke-direct {v5, v12}, Lcom/join/mgps/adapter/h4$f2;-><init>(Lcom/join/mgps/adapter/h4;)V

    .line 16
    iget-object v6, v12, Lcom/join/mgps/adapter/h4;->a:Landroid/view/LayoutInflater;

    const v7, 0x7f0c02cc

    invoke-virtual {v6, v7, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_e

    const v7, 0x7f090d90

    .line 17
    :try_start_7
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v5, v7}, Lcom/join/mgps/adapter/h4$f2;->b(Lcom/join/mgps/adapter/h4$f2;Landroidx/constraintlayout/widget/ConstraintLayout;)Landroidx/constraintlayout/widget/ConstraintLayout;

    const v7, 0x7f090f0d

    .line 18
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/join/mgps/customview/SlidingTabLayout6;

    invoke-static {v5, v7}, Lcom/join/mgps/adapter/h4$f2;->d(Lcom/join/mgps/adapter/h4$f2;Lcom/join/mgps/customview/SlidingTabLayout6;)Lcom/join/mgps/customview/SlidingTabLayout6;

    const v7, 0x7f091280

    .line 19
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroidx/viewpager/widget/ViewPager;

    invoke-static {v5, v7}, Lcom/join/mgps/adapter/h4$f2;->f(Lcom/join/mgps/adapter/h4$f2;Landroidx/viewpager/widget/ViewPager;)Landroidx/viewpager/widget/ViewPager;

    const v7, 0x7f090a8c

    .line 20
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    invoke-static {v5, v7}, Lcom/join/mgps/adapter/h4$f2;->h(Lcom/join/mgps/adapter/h4$f2;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 21
    invoke-virtual {v6, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    move-object v7, v4

    move-object v8, v7

    move-object v9, v8

    move-object v11, v9

    move-object v13, v11

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    move-object/from16 v25, v24

    move-object/from16 v26, v25

    move-object/from16 v27, v26

    move-object/from16 v28, v27

    move-object/from16 v30, v28

    move-object/from16 v31, v30

    move-object/from16 v32, v31

    move-object/from16 v33, v32

    move-object/from16 v34, v33

    move-object/from16 v35, v34

    move-object/from16 v36, v35

    move-object/from16 v37, v36

    move-object/from16 v38, v37

    move-object/from16 v39, v38

    move-object/from16 v29, v5

    goto :goto_2

    .line 22
    :pswitch_5
    :try_start_8
    new-instance v5, Lcom/join/mgps/adapter/h4$z1;

    invoke-direct {v5, v12}, Lcom/join/mgps/adapter/h4$z1;-><init>(Lcom/join/mgps/adapter/h4;)V

    .line 23
    iget-object v6, v12, Lcom/join/mgps/adapter/h4;->a:Landroid/view/LayoutInflater;

    const v7, 0x7f0c051b

    invoke-virtual {v6, v7, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_e

    const v7, 0x7f0910c0

    .line 24
    :try_start_9
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {v5, v7}, Lcom/join/mgps/adapter/h4$z1;->b(Lcom/join/mgps/adapter/h4$z1;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v7, 0x7f0910bb

    .line 25
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {v5, v7}, Lcom/join/mgps/adapter/h4$z1;->d(Lcom/join/mgps/adapter/h4$z1;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 26
    invoke-virtual {v6, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    move-object v7, v4

    move-object v8, v7

    move-object v9, v8

    move-object v11, v9

    move-object v13, v11

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v17, v15

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    move-object/from16 v25, v24

    move-object/from16 v26, v25

    move-object/from16 v27, v26

    move-object/from16 v28, v27

    move-object/from16 v29, v28

    move-object/from16 v30, v29

    move-object/from16 v31, v30

    move-object/from16 v32, v31

    move-object/from16 v33, v32

    move-object/from16 v34, v33

    move-object/from16 v35, v34

    move-object/from16 v36, v35

    move-object/from16 v37, v36

    move-object/from16 v38, v37

    move-object/from16 v39, v38

    move-object/from16 v16, v5

    goto/16 :goto_2

    .line 27
    :pswitch_6
    :try_start_a
    new-instance v5, Lcom/join/mgps/adapter/h4$u1;

    invoke-direct {v5, v12}, Lcom/join/mgps/adapter/h4$u1;-><init>(Lcom/join/mgps/adapter/h4;)V

    .line 28
    iget-object v6, v12, Lcom/join/mgps/adapter/h4;->a:Landroid/view/LayoutInflater;

    const v7, 0x7f0c0518

    invoke-virtual {v6, v7, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_e

    const v7, 0x7f090cf3

    .line 29
    :try_start_b
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/join/mgps/customview/HorizontalRecyclerView;

    invoke-static {v5, v7}, Lcom/join/mgps/adapter/h4$u1;->b(Lcom/join/mgps/adapter/h4$u1;Lcom/join/mgps/customview/HorizontalRecyclerView;)Lcom/join/mgps/customview/HorizontalRecyclerView;

    const v7, 0x7f0904d0

    .line 30
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    invoke-static {v5, v7}, Lcom/join/mgps/adapter/h4$u1;->c(Lcom/join/mgps/adapter/h4$u1;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    .line 31
    invoke-virtual {v6, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    move-object v7, v4

    move-object v8, v7

    move-object v9, v8

    move-object v11, v9

    move-object v13, v11

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    move-object/from16 v25, v24

    move-object/from16 v26, v25

    move-object/from16 v27, v26

    move-object/from16 v28, v27

    move-object/from16 v29, v28

    move-object/from16 v30, v29

    move-object/from16 v32, v30

    move-object/from16 v33, v32

    move-object/from16 v34, v33

    move-object/from16 v35, v34

    move-object/from16 v36, v35

    move-object/from16 v37, v36

    move-object/from16 v38, v37

    move-object/from16 v39, v38

    move-object/from16 v31, v5

    goto/16 :goto_2

    .line 32
    :pswitch_7
    :try_start_c
    new-instance v5, Lcom/join/mgps/adapter/h4$p1;

    invoke-direct {v5, v12}, Lcom/join/mgps/adapter/h4$p1;-><init>(Lcom/join/mgps/adapter/h4;)V

    .line 33
    iget-object v7, v12, Lcom/join/mgps/adapter/h4;->a:Landroid/view/LayoutInflater;

    const v8, 0x7f0c0522

    invoke-virtual {v7, v8, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_e

    const v8, 0x7f090d90

    .line 34
    :try_start_d
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v8, v5, Lcom/join/mgps/adapter/h4$p1;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v8, 0x7f0907c9

    .line 35
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v8, v5, Lcom/join/mgps/adapter/h4$p1;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v8, 0x7f09109e

    .line 36
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v5, Lcom/join/mgps/adapter/h4$p1;->c:Landroid/widget/TextView;

    const v8, 0x7f0908fb

    .line 37
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, v5, Lcom/join/mgps/adapter/h4$p1;->d:Landroid/widget/LinearLayout;

    .line 38
    invoke-virtual {v7, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v5, Lcom/join/mgps/adapter/h4$p1;->e:Landroid/widget/TextView;

    const v6, 0x7f0909b2

    .line 39
    invoke-virtual {v7, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v5, Lcom/join/mgps/adapter/h4$p1;->f:Landroid/widget/TextView;

    const v6, 0x7f090c60

    .line 40
    invoke-virtual {v7, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ProgressBar;

    iput-object v6, v5, Lcom/join/mgps/adapter/h4$p1;->g:Landroid/widget/ProgressBar;

    const v6, 0x7f090c59

    .line 41
    invoke-virtual {v7, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ProgressBar;

    iput-object v6, v5, Lcom/join/mgps/adapter/h4$p1;->h:Landroid/widget/ProgressBar;

    const v6, 0x7f0910a1

    .line 42
    invoke-virtual {v7, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v5, Lcom/join/mgps/adapter/h4$p1;->i:Landroid/widget/TextView;

    const v6, 0x7f0904cb

    .line 43
    invoke-virtual {v7, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    iput-object v6, v5, Lcom/join/mgps/adapter/h4$p1;->j:Landroid/widget/FrameLayout;

    const v6, 0x7f09108f

    .line 44
    invoke-virtual {v7, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v5, Lcom/join/mgps/adapter/h4$p1;->k:Landroid/widget/TextView;

    const v6, 0x7f09014c

    .line 45
    invoke-virtual {v7, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v6, v5, Lcom/join/mgps/adapter/h4$p1;->l:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v6, 0x7f091263

    .line 46
    invoke-virtual {v7, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    iput-object v6, v5, Lcom/join/mgps/adapter/h4$p1;->m:Landroid/widget/FrameLayout;

    const v6, 0x7f09098a

    .line 47
    invoke-virtual {v7, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ProgressBar;

    iput-object v6, v5, Lcom/join/mgps/adapter/h4$p1;->n:Landroid/widget/ProgressBar;

    .line 48
    invoke-virtual {v7, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_c

    move-object v8, v4

    move-object v9, v8

    move-object v11, v9

    move-object v13, v11

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object/from16 v20, v18

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    move-object/from16 v25, v24

    move-object/from16 v26, v25

    move-object/from16 v27, v26

    move-object/from16 v28, v27

    move-object/from16 v29, v28

    move-object/from16 v30, v29

    move-object/from16 v31, v30

    move-object/from16 v32, v31

    move-object/from16 v33, v32

    move-object/from16 v34, v33

    move-object/from16 v35, v34

    move-object/from16 v36, v35

    move-object/from16 v37, v36

    move-object/from16 v38, v37

    move-object/from16 v39, v38

    move-object/from16 v19, v5

    move-object v6, v7

    move-object/from16 v5, v39

    move-object v7, v5

    goto/16 :goto_6

    .line 49
    :pswitch_8
    :try_start_e
    new-instance v5, Lcom/join/mgps/adapter/h4$s1;

    invoke-direct {v5, v12}, Lcom/join/mgps/adapter/h4$s1;-><init>(Lcom/join/mgps/adapter/h4;)V

    .line 50
    iget-object v6, v12, Lcom/join/mgps/adapter/h4;->a:Landroid/view/LayoutInflater;

    const v7, 0x7f0c0512

    invoke-virtual {v6, v7, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_e

    const v7, 0x7f09078e

    .line 51
    :try_start_f
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v7, v5, Lcom/join/mgps/adapter/h4$s1;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v7, 0x7f0907cb

    .line 52
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v7, v5, Lcom/join/mgps/adapter/h4$s1;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v7, 0x7f09109f

    .line 53
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v5, Lcom/join/mgps/adapter/h4$s1;->c:Landroid/widget/TextView;

    const v7, 0x7f0908fc

    .line 54
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, v5, Lcom/join/mgps/adapter/h4$s1;->d:Landroid/widget/LinearLayout;

    const v7, 0x7f0900eb

    .line 55
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v5, Lcom/join/mgps/adapter/h4$s1;->e:Landroid/widget/TextView;

    const v7, 0x7f0909b3

    .line 56
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v5, Lcom/join/mgps/adapter/h4$s1;->f:Landroid/widget/TextView;

    const v7, 0x7f090c61

    .line 57
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ProgressBar;

    iput-object v7, v5, Lcom/join/mgps/adapter/h4$s1;->g:Landroid/widget/ProgressBar;

    const v7, 0x7f090c5a

    .line 58
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ProgressBar;

    iput-object v7, v5, Lcom/join/mgps/adapter/h4$s1;->h:Landroid/widget/ProgressBar;

    const v7, 0x7f0910a2

    .line 59
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v5, Lcom/join/mgps/adapter/h4$s1;->i:Landroid/widget/TextView;

    const v7, 0x7f0904cc

    .line 60
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    iput-object v7, v5, Lcom/join/mgps/adapter/h4$s1;->j:Landroid/widget/FrameLayout;

    const v7, 0x7f091090

    .line 61
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v5, Lcom/join/mgps/adapter/h4$s1;->k:Landroid/widget/TextView;

    const v7, 0x7f09098b

    .line 62
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ProgressBar;

    iput-object v7, v5, Lcom/join/mgps/adapter/h4$s1;->l:Landroid/widget/ProgressBar;

    const v7, 0x7f09078f

    .line 63
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v7, v5, Lcom/join/mgps/adapter/h4$s1;->m:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v7, 0x7f0907cc

    .line 64
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v7, v5, Lcom/join/mgps/adapter/h4$s1;->n:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v7, 0x7f0910a0

    .line 65
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v5, Lcom/join/mgps/adapter/h4$s1;->o:Landroid/widget/TextView;

    const v7, 0x7f0908fd

    .line 66
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, v5, Lcom/join/mgps/adapter/h4$s1;->p:Landroid/widget/LinearLayout;

    const v7, 0x7f0900ec

    .line 67
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v5, Lcom/join/mgps/adapter/h4$s1;->q:Landroid/widget/TextView;

    const v7, 0x7f0909b4

    .line 68
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v5, Lcom/join/mgps/adapter/h4$s1;->r:Landroid/widget/TextView;

    const v7, 0x7f090c62

    .line 69
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ProgressBar;

    iput-object v7, v5, Lcom/join/mgps/adapter/h4$s1;->s:Landroid/widget/ProgressBar;

    const v7, 0x7f090c5b

    .line 70
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ProgressBar;

    iput-object v7, v5, Lcom/join/mgps/adapter/h4$s1;->t:Landroid/widget/ProgressBar;

    const v7, 0x7f0910a3

    .line 71
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v5, Lcom/join/mgps/adapter/h4$s1;->u:Landroid/widget/TextView;

    const v7, 0x7f0904cd

    .line 72
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    iput-object v7, v5, Lcom/join/mgps/adapter/h4$s1;->v:Landroid/widget/FrameLayout;

    const v7, 0x7f091091

    .line 73
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v5, Lcom/join/mgps/adapter/h4$s1;->w:Landroid/widget/TextView;

    const v7, 0x7f09098c

    .line 74
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ProgressBar;

    iput-object v7, v5, Lcom/join/mgps/adapter/h4$s1;->x:Landroid/widget/ProgressBar;

    .line 75
    invoke-virtual {v6, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3

    move-object v7, v4

    move-object v8, v7

    move-object v9, v8

    move-object v11, v9

    move-object v13, v11

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    move-object/from16 v22, v20

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    move-object/from16 v25, v24

    move-object/from16 v26, v25

    move-object/from16 v27, v26

    move-object/from16 v28, v27

    move-object/from16 v29, v28

    move-object/from16 v30, v29

    move-object/from16 v31, v30

    move-object/from16 v32, v31

    move-object/from16 v33, v32

    move-object/from16 v34, v33

    move-object/from16 v35, v34

    move-object/from16 v36, v35

    move-object/from16 v37, v36

    move-object/from16 v38, v37

    move-object/from16 v39, v38

    move-object/from16 v21, v5

    goto/16 :goto_2

    .line 76
    :pswitch_9
    :try_start_10
    new-instance v5, Lcom/join/mgps/adapter/h4$r1;

    invoke-direct {v5, v12}, Lcom/join/mgps/adapter/h4$r1;-><init>(Lcom/join/mgps/adapter/h4;)V

    .line 77
    iget-object v6, v12, Lcom/join/mgps/adapter/h4;->a:Landroid/view/LayoutInflater;

    const v7, 0x7f0c047a

    invoke-virtual {v6, v7, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_e

    const v7, 0x7f090da2

    .line 78
    :try_start_11
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v5, v7}, Lcom/join/mgps/adapter/h4$r1;->b(Lcom/join/mgps/adapter/h4$r1;Landroidx/recyclerview/widget/RecyclerView;)Landroidx/recyclerview/widget/RecyclerView;

    .line 79
    invoke-virtual {v6, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_3

    move-object v7, v4

    move-object v8, v7

    move-object v9, v8

    move-object v11, v9

    move-object v13, v11

    move-object v14, v13

    move-object/from16 v16, v14

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    move-object/from16 v25, v24

    move-object/from16 v26, v25

    move-object/from16 v27, v26

    move-object/from16 v28, v27

    move-object/from16 v29, v28

    move-object/from16 v30, v29

    move-object/from16 v31, v30

    move-object/from16 v32, v31

    move-object/from16 v33, v32

    move-object/from16 v34, v33

    move-object/from16 v35, v34

    move-object/from16 v36, v35

    move-object/from16 v37, v36

    move-object/from16 v38, v37

    move-object/from16 v39, v38

    move-object v15, v5

    goto/16 :goto_2

    .line 80
    :pswitch_a
    :try_start_12
    new-instance v5, Lcom/join/mgps/adapter/h4$t2;

    invoke-direct {v5, v12}, Lcom/join/mgps/adapter/h4$t2;-><init>(Lcom/join/mgps/adapter/h4;)V

    .line 81
    iget-object v6, v12, Lcom/join/mgps/adapter/h4;->a:Landroid/view/LayoutInflater;

    const v7, 0x7f0c0482

    invoke-virtual {v6, v7, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_e

    const v7, 0x7f090616

    .line 82
    :try_start_13
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/join/mgps/adapter/h4$t2;->b(Lcom/join/mgps/adapter/h4$t2;Landroid/view/View;)Landroid/view/View;

    const v7, 0x7f090d45

    .line 83
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    invoke-static {v5, v7}, Lcom/join/mgps/adapter/h4$t2;->d(Lcom/join/mgps/adapter/h4$t2;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    const v7, 0x7f0904aa

    .line 84
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {v5, v7}, Lcom/join/mgps/adapter/h4$t2;->f(Lcom/join/mgps/adapter/h4$t2;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v7, 0x7f0904ab

    .line 85
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v5, v7}, Lcom/join/mgps/adapter/h4$t2;->h(Lcom/join/mgps/adapter/h4$t2;Lcom/facebook/drawee/view/SimpleDraweeView;)Lcom/facebook/drawee/view/SimpleDraweeView;

    const v7, 0x7f090d47

    .line 86
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    invoke-static {v5, v7}, Lcom/join/mgps/adapter/h4$t2;->j(Lcom/join/mgps/adapter/h4$t2;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    const v7, 0x7f091099

    .line 87
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {v5, v7}, Lcom/join/mgps/adapter/h4$t2;->l(Lcom/join/mgps/adapter/h4$t2;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v7, 0x7f09109a

    .line 88
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {v5, v7}, Lcom/join/mgps/adapter/h4$t2;->n(Lcom/join/mgps/adapter/h4$t2;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v7, 0x7f0907c7

    .line 89
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v5, v7}, Lcom/join/mgps/adapter/h4$t2;->p(Lcom/join/mgps/adapter/h4$t2;Lcom/facebook/drawee/view/SimpleDraweeView;)Lcom/facebook/drawee/view/SimpleDraweeView;

    const v7, 0x7f090d46

    .line 90
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    invoke-static {v5, v7}, Lcom/join/mgps/adapter/h4$t2;->r(Lcom/join/mgps/adapter/h4$t2;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    const v7, 0x7f091097

    .line 91
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {v5, v7}, Lcom/join/mgps/adapter/h4$t2;->s(Lcom/join/mgps/adapter/h4$t2;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v7, 0x7f091094

    .line 92
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {v5, v7}, Lcom/join/mgps/adapter/h4$t2;->u(Lcom/join/mgps/adapter/h4$t2;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v7, 0x7f0908f4

    .line 93
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    invoke-static {v5, v7}, Lcom/join/mgps/adapter/h4$t2;->w(Lcom/join/mgps/adapter/h4$t2;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 94
    invoke-virtual {v6, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_3

    move-object v7, v4

    move-object v8, v7

    move-object v9, v8

    move-object v11, v9

    move-object v13, v11

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    move-object/from16 v26, v24

    move-object/from16 v27, v26

    move-object/from16 v28, v27

    move-object/from16 v29, v28

    move-object/from16 v30, v29

    move-object/from16 v31, v30

    move-object/from16 v32, v31

    move-object/from16 v33, v32

    move-object/from16 v34, v33

    move-object/from16 v35, v34

    move-object/from16 v36, v35

    move-object/from16 v37, v36

    move-object/from16 v38, v37

    move-object/from16 v39, v38

    move-object/from16 v25, v5

    goto/16 :goto_2

    .line 95
    :pswitch_b
    :try_start_14
    iget-object v5, v12, Lcom/join/mgps/adapter/h4;->a:Landroid/view/LayoutInflater;

    const v6, 0x7f0c00c7

    invoke-virtual {v5, v6, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_e

    .line 96
    :try_start_15
    new-instance v6, Lcom/join/mgps/adapter/h4$k2;

    invoke-direct {v6, v12}, Lcom/join/mgps/adapter/h4$k2;-><init>(Lcom/join/mgps/adapter/h4;)V

    const v7, 0x7f090cf2

    .line 97
    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v6, v7}, Lcom/join/mgps/adapter/h4$k2;->b(Lcom/join/mgps/adapter/h4$k2;Landroidx/recyclerview/widget/RecyclerView;)Landroidx/recyclerview/widget/RecyclerView;

    .line 98
    new-instance v7, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v8, v12, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 99
    invoke-virtual {v7, v10}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 100
    invoke-static {v6}, Lcom/join/mgps/adapter/h4$k2;->a(Lcom/join/mgps/adapter/h4$k2;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 101
    invoke-virtual {v5, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_0

    move-object v7, v4

    move-object v8, v7

    move-object v9, v8

    move-object v11, v9

    move-object v13, v11

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    move-object/from16 v25, v24

    move-object/from16 v26, v25

    move-object/from16 v27, v26

    move-object/from16 v28, v27

    move-object/from16 v29, v28

    move-object/from16 v30, v29

    move-object/from16 v31, v30

    move-object/from16 v32, v31

    move-object/from16 v33, v32

    move-object/from16 v35, v33

    move-object/from16 v36, v35

    move-object/from16 v37, v36

    move-object/from16 v38, v37

    move-object/from16 v39, v38

    move-object/from16 v34, v6

    :goto_3
    move-object v6, v5

    goto/16 :goto_2

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object/from16 v25, v5

    goto/16 :goto_51

    .line 102
    :pswitch_c
    :try_start_16
    new-instance v5, Lcom/join/mgps/adapter/h4$g2;

    invoke-direct {v5, v12}, Lcom/join/mgps/adapter/h4$g2;-><init>(Lcom/join/mgps/adapter/h4;)V

    .line 103
    iget-object v6, v12, Lcom/join/mgps/adapter/h4;->a:Landroid/view/LayoutInflater;

    const v7, 0x7f0c02cb

    invoke-virtual {v6, v7, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_e

    const v7, 0x7f090f0d

    .line 104
    :try_start_17
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/join/mgps/customview/SlidingTabLayout6;

    invoke-static {v5, v7}, Lcom/join/mgps/adapter/h4$g2;->f(Lcom/join/mgps/adapter/h4$g2;Lcom/join/mgps/customview/SlidingTabLayout6;)Lcom/join/mgps/customview/SlidingTabLayout6;

    const v7, 0x7f091280

    .line 105
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroidx/viewpager/widget/ViewPager;

    invoke-static {v5, v7}, Lcom/join/mgps/adapter/h4$g2;->b(Lcom/join/mgps/adapter/h4$g2;Landroidx/viewpager/widget/ViewPager;)Landroidx/viewpager/widget/ViewPager;

    const v7, 0x7f090a8c

    .line 106
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {v5, v7}, Lcom/join/mgps/adapter/h4$g2;->d(Lcom/join/mgps/adapter/h4$g2;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 107
    invoke-virtual {v6, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_3

    move-object v7, v4

    move-object v8, v7

    move-object v9, v8

    move-object v11, v9

    move-object v13, v11

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    move-object/from16 v25, v24

    move-object/from16 v26, v25

    move-object/from16 v27, v26

    move-object/from16 v28, v27

    move-object/from16 v29, v28

    move-object/from16 v30, v29

    move-object/from16 v31, v30

    move-object/from16 v32, v31

    move-object/from16 v34, v32

    move-object/from16 v35, v34

    move-object/from16 v36, v35

    move-object/from16 v37, v36

    move-object/from16 v38, v37

    move-object/from16 v39, v38

    move-object/from16 v33, v5

    goto/16 :goto_2

    .line 108
    :pswitch_d
    :try_start_18
    new-instance v5, Lcom/join/mgps/adapter/h4$v1;

    invoke-direct {v5, v12}, Lcom/join/mgps/adapter/h4$v1;-><init>(Lcom/join/mgps/adapter/h4;)V

    .line 109
    iget-object v6, v12, Lcom/join/mgps/adapter/h4;->a:Landroid/view/LayoutInflater;

    const v7, 0x7f0c05f8

    invoke-virtual {v6, v7, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_e

    const v7, 0x7f0900da

    .line 110
    :try_start_19
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v5, v7}, Lcom/join/mgps/adapter/h4$v1;->b(Lcom/join/mgps/adapter/h4$v1;Lcom/facebook/drawee/view/SimpleDraweeView;)Lcom/facebook/drawee/view/SimpleDraweeView;

    const v7, 0x7f0900db

    .line 111
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v5, v7}, Lcom/join/mgps/adapter/h4$v1;->d(Lcom/join/mgps/adapter/h4$v1;Lcom/facebook/drawee/view/SimpleDraweeView;)Lcom/facebook/drawee/view/SimpleDraweeView;

    const v7, 0x7f0900dc

    .line 112
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v5, v7}, Lcom/join/mgps/adapter/h4$v1;->f(Lcom/join/mgps/adapter/h4$v1;Lcom/facebook/drawee/view/SimpleDraweeView;)Lcom/facebook/drawee/view/SimpleDraweeView;

    const v7, 0x7f0900dd

    .line 113
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v5, v7}, Lcom/join/mgps/adapter/h4$v1;->h(Lcom/join/mgps/adapter/h4$v1;Lcom/facebook/drawee/view/SimpleDraweeView;)Lcom/facebook/drawee/view/SimpleDraweeView;

    const v7, 0x7f090104

    .line 114
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {v5, v7}, Lcom/join/mgps/adapter/h4$v1;->j(Lcom/join/mgps/adapter/h4$v1;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v7, 0x7f090105

    .line 115
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {v5, v7}, Lcom/join/mgps/adapter/h4$v1;->l(Lcom/join/mgps/adapter/h4$v1;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v7, 0x7f090106

    .line 116
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {v5, v7}, Lcom/join/mgps/adapter/h4$v1;->n(Lcom/join/mgps/adapter/h4$v1;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v7, 0x7f090107

    .line 117
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {v5, v7}, Lcom/join/mgps/adapter/h4$v1;->p(Lcom/join/mgps/adapter/h4$v1;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 118
    invoke-virtual {v6, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_3

    move-object v7, v4

    move-object v8, v7

    move-object v9, v8

    move-object v11, v9

    move-object v14, v11

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    move-object/from16 v25, v24

    move-object/from16 v26, v25

    move-object/from16 v27, v26

    move-object/from16 v28, v27

    move-object/from16 v29, v28

    move-object/from16 v30, v29

    move-object/from16 v31, v30

    move-object/from16 v32, v31

    move-object/from16 v33, v32

    move-object/from16 v34, v33

    move-object/from16 v35, v34

    move-object/from16 v36, v35

    move-object/from16 v37, v36

    move-object/from16 v38, v37

    move-object/from16 v39, v38

    move-object v13, v5

    goto/16 :goto_2

    .line 119
    :pswitch_e
    :try_start_1a
    new-instance v5, Lcom/join/mgps/adapter/h4$j2;

    invoke-direct {v5, v12}, Lcom/join/mgps/adapter/h4$j2;-><init>(Lcom/join/mgps/adapter/h4;)V

    .line 120
    iget-object v6, v12, Lcom/join/mgps/adapter/h4;->a:Landroid/view/LayoutInflater;

    const v7, 0x7f0c05f9

    invoke-virtual {v6, v7, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_e

    const v7, 0x7f0908ad

    .line 121
    :try_start_1b
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v5, v7}, Lcom/join/mgps/adapter/h4$j2;->b(Lcom/join/mgps/adapter/h4$j2;Lcom/facebook/drawee/view/SimpleDraweeView;)Lcom/facebook/drawee/view/SimpleDraweeView;

    const v7, 0x7f090d38

    .line 122
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v5, v7}, Lcom/join/mgps/adapter/h4$j2;->d(Lcom/join/mgps/adapter/h4$j2;Lcom/facebook/drawee/view/SimpleDraweeView;)Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 123
    invoke-virtual {v6, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_3

    move-object v7, v4

    move-object v8, v7

    move-object v9, v8

    move-object v11, v9

    move-object v13, v11

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    move-object/from16 v25, v24

    move-object/from16 v26, v25

    move-object/from16 v27, v26

    move-object/from16 v29, v27

    move-object/from16 v30, v29

    move-object/from16 v31, v30

    move-object/from16 v32, v31

    move-object/from16 v33, v32

    move-object/from16 v34, v33

    move-object/from16 v35, v34

    move-object/from16 v36, v35

    move-object/from16 v37, v36

    move-object/from16 v38, v37

    move-object/from16 v39, v38

    move-object/from16 v28, v5

    goto/16 :goto_2

    .line 124
    :pswitch_f
    :try_start_1c
    new-instance v5, Lcom/join/mgps/adapter/h4$e2;

    invoke-direct {v5, v12}, Lcom/join/mgps/adapter/h4$e2;-><init>(Lcom/join/mgps/adapter/h4;)V

    .line 125
    iget-object v6, v12, Lcom/join/mgps/adapter/h4;->a:Landroid/view/LayoutInflater;

    const v7, 0x7f0c0116

    invoke-virtual {v6, v7, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_e

    const v7, 0x7f090318

    .line 126
    :try_start_1d
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/join/mgps/customview/CubeRotateView;

    invoke-static {v5, v7}, Lcom/join/mgps/adapter/h4$e2;->b(Lcom/join/mgps/adapter/h4$e2;Lcom/join/mgps/customview/CubeRotateView;)Lcom/join/mgps/customview/CubeRotateView;

    const v7, 0x7f090142

    .line 127
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v5, v7}, Lcom/join/mgps/adapter/h4$e2;->c(Lcom/join/mgps/adapter/h4$e2;Lcom/facebook/drawee/view/SimpleDraweeView;)Lcom/facebook/drawee/view/SimpleDraweeView;

    const v7, 0x7f0904f0

    .line 128
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v5, v7}, Lcom/join/mgps/adapter/h4$e2;->d(Lcom/join/mgps/adapter/h4$e2;Lcom/facebook/drawee/view/SimpleDraweeView;)Lcom/facebook/drawee/view/SimpleDraweeView;

    const v7, 0x7f090327

    .line 129
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {v5, v7}, Lcom/join/mgps/adapter/h4$e2;->f(Lcom/join/mgps/adapter/h4$e2;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 130
    invoke-virtual {v6, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_3

    move-object v8, v4

    move-object v9, v8

    move-object v11, v9

    move-object v13, v11

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    move-object/from16 v25, v24

    move-object/from16 v26, v25

    move-object/from16 v27, v26

    move-object/from16 v28, v27

    move-object/from16 v29, v28

    move-object/from16 v30, v29

    move-object/from16 v31, v30

    move-object/from16 v32, v31

    move-object/from16 v33, v32

    move-object/from16 v34, v33

    move-object/from16 v35, v34

    move-object/from16 v36, v35

    move-object/from16 v37, v36

    move-object/from16 v38, v37

    move-object/from16 v39, v38

    move-object v7, v5

    goto/16 :goto_2

    .line 131
    :pswitch_10
    :try_start_1e
    new-instance v5, Lcom/join/mgps/adapter/h4$d2;

    invoke-direct {v5, v12}, Lcom/join/mgps/adapter/h4$d2;-><init>(Lcom/join/mgps/adapter/h4;)V

    .line 132
    iget-object v6, v12, Lcom/join/mgps/adapter/h4;->a:Landroid/view/LayoutInflater;

    const v7, 0x7f0c051f

    invoke-virtual {v6, v7, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_e

    .line 133
    :try_start_1f
    invoke-virtual {v6, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {v5, v7}, Lcom/join/mgps/adapter/h4$d2;->b(Lcom/join/mgps/adapter/h4$d2;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v7, 0x7f090eff

    .line 134
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {v5, v7}, Lcom/join/mgps/adapter/h4$d2;->d(Lcom/join/mgps/adapter/h4$d2;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v7, 0x7f0909c1

    .line 135
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    invoke-static {v5, v7}, Lcom/join/mgps/adapter/h4$d2;->f(Lcom/join/mgps/adapter/h4$d2;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 136
    invoke-virtual {v6, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_3

    move-object v7, v4

    move-object v9, v7

    move-object v11, v9

    move-object v13, v11

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    move-object/from16 v25, v24

    move-object/from16 v26, v25

    move-object/from16 v27, v26

    move-object/from16 v28, v27

    move-object/from16 v29, v28

    move-object/from16 v30, v29

    move-object/from16 v31, v30

    move-object/from16 v32, v31

    move-object/from16 v33, v32

    move-object/from16 v34, v33

    move-object/from16 v35, v34

    move-object/from16 v36, v35

    move-object/from16 v37, v36

    move-object/from16 v38, v37

    move-object/from16 v39, v38

    move-object v8, v5

    goto/16 :goto_2

    .line 137
    :pswitch_11
    :try_start_20
    new-instance v11, Lcom/join/mgps/adapter/h4$c2;

    invoke-direct {v11, v12}, Lcom/join/mgps/adapter/h4$c2;-><init>(Lcom/join/mgps/adapter/h4;)V

    .line 138
    iget-object v13, v12, Lcom/join/mgps/adapter/h4;->a:Landroid/view/LayoutInflater;

    const v14, 0x7f0c051e

    invoke-virtual {v13, v14, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_e

    const v14, 0x7f0905b4

    .line 139
    :try_start_21
    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v11, v14}, Lcom/join/mgps/adapter/h4$c2;->b(Lcom/join/mgps/adapter/h4$c2;Lcom/facebook/drawee/view/SimpleDraweeView;)Lcom/facebook/drawee/view/SimpleDraweeView;

    const v14, 0x7f0905b5

    .line 140
    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v11, v14}, Lcom/join/mgps/adapter/h4$c2;->d(Lcom/join/mgps/adapter/h4$c2;Lcom/facebook/drawee/view/SimpleDraweeView;)Lcom/facebook/drawee/view/SimpleDraweeView;

    const v14, 0x7f0905b6

    .line 141
    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v11, v14}, Lcom/join/mgps/adapter/h4$c2;->f(Lcom/join/mgps/adapter/h4$c2;Lcom/facebook/drawee/view/SimpleDraweeView;)Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 142
    invoke-virtual {v13, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v14, v11, Lcom/join/mgps/adapter/h4$c2;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 143
    invoke-virtual {v13, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v11, Lcom/join/mgps/adapter/h4$c2;->e:Landroid/widget/TextView;

    .line 144
    invoke-virtual {v13, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v11, Lcom/join/mgps/adapter/h4$c2;->f:Landroid/widget/TextView;

    .line 145
    invoke-virtual {v13, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, v11, Lcom/join/mgps/adapter/h4$c2;->g:Landroid/widget/RelativeLayout;

    const v6, 0x7f090563

    .line 146
    invoke-virtual {v13, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, v11, Lcom/join/mgps/adapter/h4$c2;->h:Landroid/widget/LinearLayout;

    .line 147
    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v11, Lcom/join/mgps/adapter/h4$c2;->i:Landroid/widget/TextView;

    const v5, 0x7f0900fa

    .line 148
    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v11, Lcom/join/mgps/adapter/h4$c2;->j:Landroid/widget/TextView;

    .line 149
    invoke-virtual {v13, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v5, v11, Lcom/join/mgps/adapter/h4$c2;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v5, 0x7f090105

    .line 150
    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v11, Lcom/join/mgps/adapter/h4$c2;->l:Landroid/widget/TextView;

    const v5, 0x7f0900ec

    .line 151
    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v11, Lcom/join/mgps/adapter/h4$c2;->m:Landroid/widget/TextView;

    const v5, 0x7f090cad

    .line 152
    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, v11, Lcom/join/mgps/adapter/h4$c2;->n:Landroid/widget/RelativeLayout;

    const v5, 0x7f090564

    .line 153
    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, v11, Lcom/join/mgps/adapter/h4$c2;->o:Landroid/widget/LinearLayout;

    const v5, 0x7f09079e

    .line 154
    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v11, Lcom/join/mgps/adapter/h4$c2;->p:Landroid/widget/TextView;

    const v5, 0x7f0900fb

    .line 155
    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v11, Lcom/join/mgps/adapter/h4$c2;->q:Landroid/widget/TextView;

    const v5, 0x7f09055a

    .line 156
    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v5, v11, Lcom/join/mgps/adapter/h4$c2;->k:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v5, 0x7f090106

    .line 157
    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v11, Lcom/join/mgps/adapter/h4$c2;->s:Landroid/widget/TextView;

    const v5, 0x7f0900ed

    .line 158
    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v11, Lcom/join/mgps/adapter/h4$c2;->t:Landroid/widget/TextView;

    const v5, 0x7f090cae

    .line 159
    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, v11, Lcom/join/mgps/adapter/h4$c2;->u:Landroid/widget/RelativeLayout;

    const v5, 0x7f090565

    .line 160
    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, v11, Lcom/join/mgps/adapter/h4$c2;->v:Landroid/widget/LinearLayout;

    const v5, 0x7f09079f

    .line 161
    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v11, Lcom/join/mgps/adapter/h4$c2;->w:Landroid/widget/TextView;

    const v5, 0x7f0900fc

    .line 162
    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v11, Lcom/join/mgps/adapter/h4$c2;->x:Landroid/widget/TextView;

    const v5, 0x7f09055b

    .line 163
    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v5, v11, Lcom/join/mgps/adapter/h4$c2;->r:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v5, 0x7f090a70

    .line 164
    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v11, Lcom/join/mgps/adapter/h4$c2;->y:Landroid/widget/TextView;

    const v5, 0x7f090a71

    .line 165
    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v11, Lcom/join/mgps/adapter/h4$c2;->z:Landroid/widget/TextView;

    const v5, 0x7f090a72

    .line 166
    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v11, Lcom/join/mgps/adapter/h4$c2;->A:Landroid/widget/TextView;

    .line 167
    invoke-virtual {v13, v11}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_6

    move-object v5, v4

    move-object v7, v5

    move-object v8, v7

    move-object v9, v8

    move-object v14, v9

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    move-object/from16 v25, v24

    move-object/from16 v26, v25

    move-object/from16 v27, v26

    move-object/from16 v28, v27

    move-object/from16 v29, v28

    move-object/from16 v30, v29

    move-object/from16 v31, v30

    move-object/from16 v32, v31

    move-object/from16 v33, v32

    move-object/from16 v34, v33

    move-object/from16 v35, v34

    move-object/from16 v36, v35

    move-object/from16 v38, v36

    move-object/from16 v39, v38

    move-object/from16 v37, v11

    goto/16 :goto_4

    .line 168
    :pswitch_12
    :try_start_22
    new-instance v11, Lcom/join/mgps/adapter/h4$b2;

    invoke-direct {v11, v12}, Lcom/join/mgps/adapter/h4$b2;-><init>(Lcom/join/mgps/adapter/h4;)V

    .line 169
    iget-object v13, v12, Lcom/join/mgps/adapter/h4;->a:Landroid/view/LayoutInflater;

    const v14, 0x7f0c051d

    invoke-virtual {v13, v14, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_e

    const v14, 0x7f0905b4

    .line 170
    :try_start_23
    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v11, v14}, Lcom/join/mgps/adapter/h4$b2;->b(Lcom/join/mgps/adapter/h4$b2;Lcom/facebook/drawee/view/SimpleDraweeView;)Lcom/facebook/drawee/view/SimpleDraweeView;

    const v14, 0x7f0905b5

    .line 171
    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v11, v14}, Lcom/join/mgps/adapter/h4$b2;->d(Lcom/join/mgps/adapter/h4$b2;Lcom/facebook/drawee/view/SimpleDraweeView;)Lcom/facebook/drawee/view/SimpleDraweeView;

    const v14, 0x7f0905b6

    .line 172
    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v11, v14}, Lcom/join/mgps/adapter/h4$b2;->f(Lcom/join/mgps/adapter/h4$b2;Lcom/facebook/drawee/view/SimpleDraweeView;)Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 173
    invoke-virtual {v13, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v9, v11, Lcom/join/mgps/adapter/h4$b2;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 174
    invoke-virtual {v13, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v11, Lcom/join/mgps/adapter/h4$b2;->e:Landroid/widget/TextView;

    .line 175
    invoke-virtual {v13, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v11, Lcom/join/mgps/adapter/h4$b2;->f:Landroid/widget/TextView;

    .line 176
    invoke-virtual {v13, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, v11, Lcom/join/mgps/adapter/h4$b2;->g:Landroid/widget/RelativeLayout;

    const v6, 0x7f090563

    .line 177
    invoke-virtual {v13, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, v11, Lcom/join/mgps/adapter/h4$b2;->h:Landroid/widget/RelativeLayout;

    .line 178
    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v11, Lcom/join/mgps/adapter/h4$b2;->i:Landroid/widget/TextView;

    const v5, 0x7f09100c

    .line 179
    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, v11, Lcom/join/mgps/adapter/h4$b2;->j:Landroid/widget/LinearLayout;

    .line 180
    invoke-virtual {v13, v11}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_6

    move-object v5, v4

    move-object v7, v5

    move-object v8, v7

    move-object v9, v8

    move-object v14, v9

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    move-object/from16 v25, v24

    move-object/from16 v26, v25

    move-object/from16 v27, v26

    move-object/from16 v28, v27

    move-object/from16 v29, v28

    move-object/from16 v30, v29

    move-object/from16 v31, v30

    move-object/from16 v32, v31

    move-object/from16 v33, v32

    move-object/from16 v34, v33

    move-object/from16 v35, v34

    move-object/from16 v37, v35

    move-object/from16 v38, v37

    move-object/from16 v39, v38

    move-object/from16 v36, v11

    :goto_4
    move-object v6, v13

    move-object/from16 v11, v39

    goto/16 :goto_5

    .line 181
    :pswitch_13
    :try_start_24
    new-instance v5, Lcom/join/mgps/adapter/h4$m2;

    invoke-direct {v5, v12}, Lcom/join/mgps/adapter/h4$m2;-><init>(Lcom/join/mgps/adapter/h4;)V

    .line 182
    iget-object v6, v12, Lcom/join/mgps/adapter/h4;->a:Landroid/view/LayoutInflater;

    const v7, 0x7f0c051c

    invoke-virtual {v6, v7, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_e

    const v7, 0x7f090604

    .line 183
    :try_start_25
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, v5, Lcom/join/mgps/adapter/h4$m2;->d:Landroid/widget/LinearLayout;

    const v7, 0x7f090c12

    .line 184
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v7, v5, Lcom/join/mgps/adapter/h4$m2;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v7, 0x7f090eff

    .line 185
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v5, Lcom/join/mgps/adapter/h4$m2;->b:Landroid/widget/TextView;

    const v7, 0x7f0910a9

    .line 186
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, v5, Lcom/join/mgps/adapter/h4$m2;->e:Landroid/widget/LinearLayout;

    .line 187
    invoke-virtual {v6, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v5, Lcom/join/mgps/adapter/h4$m2;->c:Landroid/widget/TextView;

    .line 188
    invoke-virtual {v6, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_3

    move-object v7, v4

    move-object v8, v7

    move-object v9, v8

    move-object v11, v9

    move-object v13, v11

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    move-object/from16 v21, v19

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    move-object/from16 v25, v24

    move-object/from16 v26, v25

    move-object/from16 v27, v26

    move-object/from16 v28, v27

    move-object/from16 v29, v28

    move-object/from16 v30, v29

    move-object/from16 v31, v30

    move-object/from16 v32, v31

    move-object/from16 v33, v32

    move-object/from16 v34, v33

    move-object/from16 v35, v34

    move-object/from16 v36, v35

    move-object/from16 v37, v36

    move-object/from16 v38, v37

    move-object/from16 v39, v38

    move-object/from16 v20, v5

    goto/16 :goto_2

    .line 189
    :pswitch_14
    :try_start_26
    new-instance v6, Lcom/join/mgps/adapter/h4$q1;

    invoke-direct {v6, v12}, Lcom/join/mgps/adapter/h4$q1;-><init>(Lcom/join/mgps/adapter/h4;)V

    .line 190
    iget-object v11, v12, Lcom/join/mgps/adapter/h4;->a:Landroid/view/LayoutInflater;

    const v13, 0x7f0c050f

    invoke-virtual {v11, v13, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_e

    const v13, 0x7f091263

    .line 191
    :try_start_27
    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/FrameLayout;

    invoke-static {v6, v13}, Lcom/join/mgps/adapter/h4$q1;->b(Lcom/join/mgps/adapter/h4$q1;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    const v13, 0x7f09014c

    .line 192
    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v6, v13}, Lcom/join/mgps/adapter/h4$q1;->d(Lcom/join/mgps/adapter/h4$q1;Lcom/facebook/drawee/view/SimpleDraweeView;)Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 193
    invoke-virtual {v11, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v9, v6, Lcom/join/mgps/adapter/h4$q1;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 194
    invoke-virtual {v11, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v6, Lcom/join/mgps/adapter/h4$q1;->d:Landroid/widget/TextView;

    const v8, 0x7f090343

    .line 195
    invoke-virtual {v11, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v6, Lcom/join/mgps/adapter/h4$q1;->e:Landroid/widget/TextView;

    .line 196
    invoke-virtual {v11, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    iput-object v7, v6, Lcom/join/mgps/adapter/h4$q1;->f:Landroid/widget/RelativeLayout;

    .line 197
    invoke-virtual {v11, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v6, Lcom/join/mgps/adapter/h4$q1;->g:Landroid/widget/TextView;

    const v5, 0x7f09014a

    .line 198
    invoke-virtual {v11, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, v6, Lcom/join/mgps/adapter/h4$q1;->h:Landroid/widget/RelativeLayout;

    .line 199
    invoke-virtual {v11, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_1

    move-object v5, v4

    move-object v7, v5

    move-object v8, v7

    move-object v9, v8

    move-object v13, v9

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    move-object/from16 v25, v24

    move-object/from16 v26, v25

    move-object/from16 v27, v26

    move-object/from16 v28, v27

    move-object/from16 v29, v28

    move-object/from16 v30, v29

    move-object/from16 v31, v30

    move-object/from16 v32, v31

    move-object/from16 v33, v32

    move-object/from16 v34, v33

    move-object/from16 v36, v34

    move-object/from16 v37, v36

    move-object/from16 v38, v37

    move-object/from16 v39, v38

    move-object/from16 v35, v6

    move-object v6, v11

    move-object/from16 v11, v39

    goto/16 :goto_6

    :catch_1
    move-exception v0

    move-object v1, v0

    move-object/from16 v25, v11

    goto/16 :goto_51

    .line 200
    :pswitch_15
    :try_start_28
    new-instance v11, Lcom/join/mgps/adapter/h4$m1;

    invoke-direct {v11, v12}, Lcom/join/mgps/adapter/h4$m1;-><init>(Lcom/join/mgps/adapter/h4;)V

    .line 201
    iget-object v13, v12, Lcom/join/mgps/adapter/h4;->a:Landroid/view/LayoutInflater;

    const v14, 0x7f0c0521

    invoke-virtual {v13, v14, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_e

    const v14, 0x7f09014c

    .line 202
    :try_start_29
    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v11, v14}, Lcom/join/mgps/adapter/h4$m1;->b(Lcom/join/mgps/adapter/h4$m1;Lcom/facebook/drawee/view/SimpleDraweeView;)Lcom/facebook/drawee/view/SimpleDraweeView;

    const v14, 0x7f091263

    .line 203
    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/FrameLayout;

    iput-object v14, v11, Lcom/join/mgps/adapter/h4$m1;->i:Landroid/widget/FrameLayout;

    .line 204
    invoke-virtual {v13, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v9, v11, Lcom/join/mgps/adapter/h4$m1;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 205
    invoke-virtual {v13, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v11, Lcom/join/mgps/adapter/h4$m1;->c:Landroid/widget/TextView;

    .line 206
    invoke-virtual {v13, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v11, Lcom/join/mgps/adapter/h4$m1;->d:Landroid/widget/TextView;

    .line 207
    invoke-virtual {v13, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, v11, Lcom/join/mgps/adapter/h4$m1;->e:Landroid/widget/RelativeLayout;

    .line 208
    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v11, Lcom/join/mgps/adapter/h4$m1;->f:Landroid/widget/TextView;

    const v5, 0x7f09014a

    .line 209
    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, v11, Lcom/join/mgps/adapter/h4$m1;->g:Landroid/widget/LinearLayout;

    const v5, 0x7f09100c

    .line 210
    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, v11, Lcom/join/mgps/adapter/h4$m1;->h:Landroid/widget/LinearLayout;

    .line 211
    invoke-virtual {v13, v11}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_6

    move-object v5, v4

    move-object v7, v5

    move-object v8, v7

    move-object v9, v8

    move-object v14, v9

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    move-object/from16 v25, v24

    move-object/from16 v26, v25

    move-object/from16 v27, v26

    move-object/from16 v28, v27

    move-object/from16 v29, v28

    move-object/from16 v30, v29

    move-object/from16 v31, v30

    move-object/from16 v32, v31

    move-object/from16 v33, v32

    move-object/from16 v34, v33

    move-object/from16 v35, v34

    move-object/from16 v36, v35

    move-object/from16 v37, v36

    move-object/from16 v38, v37

    move-object/from16 v39, v11

    move-object v6, v13

    move-object/from16 v11, v38

    :goto_5
    move-object v13, v11

    goto/16 :goto_6

    .line 212
    :pswitch_16
    :try_start_2a
    new-instance v5, Lcom/join/mgps/adapter/h4$n1;

    invoke-direct {v5, v12}, Lcom/join/mgps/adapter/h4$n1;-><init>(Lcom/join/mgps/adapter/h4;)V

    .line 213
    iget-object v6, v12, Lcom/join/mgps/adapter/h4;->a:Landroid/view/LayoutInflater;

    const v7, 0x7f0c050a

    invoke-virtual {v6, v7, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_e

    .line 214
    :try_start_2b
    invoke-virtual {v6, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {v5, v7}, Lcom/join/mgps/adapter/h4$n1;->b(Lcom/join/mgps/adapter/h4$n1;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v7, 0x7f090eff

    .line 215
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {v5, v7}, Lcom/join/mgps/adapter/h4$n1;->d(Lcom/join/mgps/adapter/h4$n1;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v7, 0x7f0901fe

    .line 216
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {v5, v7}, Lcom/join/mgps/adapter/h4$n1;->f(Lcom/join/mgps/adapter/h4$n1;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 217
    invoke-virtual {v6, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_3

    move-object v7, v4

    move-object v8, v7

    move-object v9, v8

    move-object v13, v9

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    move-object/from16 v25, v24

    move-object/from16 v26, v25

    move-object/from16 v27, v26

    move-object/from16 v28, v27

    move-object/from16 v29, v28

    move-object/from16 v30, v29

    move-object/from16 v31, v30

    move-object/from16 v32, v31

    move-object/from16 v33, v32

    move-object/from16 v34, v33

    move-object/from16 v35, v34

    move-object/from16 v36, v35

    move-object/from16 v37, v36

    move-object/from16 v38, v37

    move-object/from16 v39, v38

    move-object v11, v5

    goto/16 :goto_2

    .line 218
    :pswitch_17
    :try_start_2c
    new-instance v5, Lcom/join/mgps/adapter/h4$o1;

    invoke-direct {v5, v12}, Lcom/join/mgps/adapter/h4$o1;-><init>(Lcom/join/mgps/adapter/h4;)V

    .line 219
    iget-object v6, v12, Lcom/join/mgps/adapter/h4;->a:Landroid/view/LayoutInflater;

    const v7, 0x7f0c050b

    invoke-virtual {v6, v7, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_e

    const v7, 0x7f0907a1

    .line 220
    :try_start_2d
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    invoke-static {v5, v7}, Lcom/join/mgps/adapter/h4$o1;->b(Lcom/join/mgps/adapter/h4$o1;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    const v7, 0x7f0907ac

    .line 221
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    invoke-static {v5, v7}, Lcom/join/mgps/adapter/h4$o1;->d(Lcom/join/mgps/adapter/h4$o1;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    const v7, 0x7f0900fe

    .line 222
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v5, v7}, Lcom/join/mgps/adapter/h4$o1;->f(Lcom/join/mgps/adapter/h4$o1;Lcom/facebook/drawee/view/SimpleDraweeView;)Lcom/facebook/drawee/view/SimpleDraweeView;

    const v7, 0x7f0900ff

    .line 223
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v5, v7}, Lcom/join/mgps/adapter/h4$o1;->h(Lcom/join/mgps/adapter/h4$o1;Lcom/facebook/drawee/view/SimpleDraweeView;)Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 224
    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v5, v7}, Lcom/join/mgps/adapter/h4$o1;->j(Lcom/join/mgps/adapter/h4$o1;Lcom/facebook/drawee/view/SimpleDraweeView;)Lcom/facebook/drawee/view/SimpleDraweeView;

    const v7, 0x7f09055a

    .line 225
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v5, v7}, Lcom/join/mgps/adapter/h4$o1;->l(Lcom/join/mgps/adapter/h4$o1;Lcom/facebook/drawee/view/SimpleDraweeView;)Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 226
    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {v5, v7}, Lcom/join/mgps/adapter/h4$o1;->n(Lcom/join/mgps/adapter/h4$o1;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v7, 0x7f090105

    .line 227
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {v5, v7}, Lcom/join/mgps/adapter/h4$o1;->p(Lcom/join/mgps/adapter/h4$o1;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v7, 0x7f0903d5

    .line 228
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {v5, v7}, Lcom/join/mgps/adapter/h4$o1;->r(Lcom/join/mgps/adapter/h4$o1;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v7, 0x7f0903d6

    .line 229
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {v5, v7}, Lcom/join/mgps/adapter/h4$o1;->t(Lcom/join/mgps/adapter/h4$o1;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v7, 0x7f090158

    .line 230
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {v5, v7}, Lcom/join/mgps/adapter/h4$o1;->v(Lcom/join/mgps/adapter/h4$o1;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v7, 0x7f090157

    .line 231
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {v5, v7}, Lcom/join/mgps/adapter/h4$o1;->x(Lcom/join/mgps/adapter/h4$o1;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 232
    invoke-virtual {v6, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_3

    move-object v7, v4

    move-object v8, v7

    move-object v9, v8

    move-object v11, v9

    move-object v13, v11

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    move-object/from16 v25, v24

    move-object/from16 v26, v25

    move-object/from16 v27, v26

    move-object/from16 v28, v27

    move-object/from16 v29, v28

    move-object/from16 v30, v29

    move-object/from16 v31, v30

    move-object/from16 v33, v31

    move-object/from16 v34, v33

    move-object/from16 v35, v34

    move-object/from16 v36, v35

    move-object/from16 v37, v36

    move-object/from16 v38, v37

    move-object/from16 v39, v38

    move-object/from16 v32, v5

    goto/16 :goto_2

    .line 233
    :pswitch_18
    :try_start_2e
    new-instance v5, Lcom/join/mgps/adapter/h4$o2;

    invoke-direct {v5, v12}, Lcom/join/mgps/adapter/h4$o2;-><init>(Lcom/join/mgps/adapter/h4;)V

    .line 234
    iget-object v6, v12, Lcom/join/mgps/adapter/h4;->a:Landroid/view/LayoutInflater;

    const v7, 0x7f0c050d

    invoke-virtual {v6, v7, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_e

    const v7, 0x7f0905ac

    .line 235
    :try_start_2f
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    invoke-static {v5, v7}, Lcom/join/mgps/adapter/h4$o2;->b(Lcom/join/mgps/adapter/h4$o2;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    const v7, 0x7f0905b0

    .line 236
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {v5, v7}, Lcom/join/mgps/adapter/h4$o2;->d(Lcom/join/mgps/adapter/h4$o2;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v7, 0x7f0905b1

    .line 237
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {v5, v7}, Lcom/join/mgps/adapter/h4$o2;->f(Lcom/join/mgps/adapter/h4$o2;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v7, 0x7f0905ad

    .line 238
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v5, v7}, Lcom/join/mgps/adapter/h4$o2;->h(Lcom/join/mgps/adapter/h4$o2;Lcom/facebook/drawee/view/SimpleDraweeView;)Lcom/facebook/drawee/view/SimpleDraweeView;

    const v7, 0x7f0905ae

    .line 239
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v5, v7}, Lcom/join/mgps/adapter/h4$o2;->j(Lcom/join/mgps/adapter/h4$o2;Lcom/facebook/drawee/view/SimpleDraweeView;)Lcom/facebook/drawee/view/SimpleDraweeView;

    const v7, 0x7f0905af

    .line 240
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v5, v7}, Lcom/join/mgps/adapter/h4$o2;->l(Lcom/join/mgps/adapter/h4$o2;Lcom/facebook/drawee/view/SimpleDraweeView;)Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 241
    invoke-virtual {v6, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_2f} :catch_3

    move-object v7, v4

    move-object v8, v7

    move-object v9, v8

    move-object v11, v9

    move-object v13, v11

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    move-object/from16 v25, v24

    move-object/from16 v26, v25

    move-object/from16 v28, v26

    move-object/from16 v29, v28

    move-object/from16 v30, v29

    move-object/from16 v31, v30

    move-object/from16 v32, v31

    move-object/from16 v33, v32

    move-object/from16 v34, v33

    move-object/from16 v35, v34

    move-object/from16 v36, v35

    move-object/from16 v37, v36

    move-object/from16 v38, v37

    move-object/from16 v39, v38

    move-object/from16 v27, v5

    goto/16 :goto_2

    .line 242
    :pswitch_19
    :try_start_30
    new-instance v5, Lcom/join/mgps/adapter/h4$w1;

    invoke-direct {v5, v12}, Lcom/join/mgps/adapter/h4$w1;-><init>(Lcom/join/mgps/adapter/h4;)V

    .line 243
    iget-object v6, v12, Lcom/join/mgps/adapter/h4;->a:Landroid/view/LayoutInflater;

    const v7, 0x7f0c0513

    invoke-virtual {v6, v7, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_30} :catch_e

    const v7, 0x7f0907a1

    .line 244
    :try_start_31
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    invoke-static {v5, v7}, Lcom/join/mgps/adapter/h4$w1;->b(Lcom/join/mgps/adapter/h4$w1;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    const v7, 0x7f0907ac

    .line 245
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    invoke-static {v5, v7}, Lcom/join/mgps/adapter/h4$w1;->d(Lcom/join/mgps/adapter/h4$w1;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    const v7, 0x7f0900fe

    .line 246
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v5, v7}, Lcom/join/mgps/adapter/h4$w1;->f(Lcom/join/mgps/adapter/h4$w1;Lcom/facebook/drawee/view/SimpleDraweeView;)Lcom/facebook/drawee/view/SimpleDraweeView;

    const v7, 0x7f0900ff

    .line 247
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v5, v7}, Lcom/join/mgps/adapter/h4$w1;->h(Lcom/join/mgps/adapter/h4$w1;Lcom/facebook/drawee/view/SimpleDraweeView;)Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 248
    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {v5, v7}, Lcom/join/mgps/adapter/h4$w1;->j(Lcom/join/mgps/adapter/h4$w1;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v7, 0x7f090105

    .line 249
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {v5, v7}, Lcom/join/mgps/adapter/h4$w1;->l(Lcom/join/mgps/adapter/h4$w1;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v7, 0x7f0903d5

    .line 250
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {v5, v7}, Lcom/join/mgps/adapter/h4$w1;->n(Lcom/join/mgps/adapter/h4$w1;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v7, 0x7f0903d6

    .line 251
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {v5, v7}, Lcom/join/mgps/adapter/h4$w1;->p(Lcom/join/mgps/adapter/h4$w1;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 252
    invoke-virtual {v6, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_31} :catch_3

    move-object v7, v4

    move-object v8, v7

    move-object v11, v8

    move-object v13, v11

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    move-object/from16 v25, v24

    move-object/from16 v26, v25

    move-object/from16 v27, v26

    move-object/from16 v28, v27

    move-object/from16 v29, v28

    move-object/from16 v30, v29

    move-object/from16 v31, v30

    move-object/from16 v32, v31

    move-object/from16 v33, v32

    move-object/from16 v34, v33

    move-object/from16 v35, v34

    move-object/from16 v36, v35

    move-object/from16 v37, v36

    move-object/from16 v38, v37

    move-object/from16 v39, v38

    move-object v9, v5

    goto/16 :goto_2

    .line 253
    :pswitch_1a
    :try_start_32
    new-instance v5, Lcom/join/mgps/adapter/h4$x1;

    invoke-direct {v5, v12}, Lcom/join/mgps/adapter/h4$x1;-><init>(Lcom/join/mgps/adapter/h4;)V

    .line 254
    iget-object v6, v12, Lcom/join/mgps/adapter/h4;->a:Landroid/view/LayoutInflater;

    const v7, 0x7f0c0514

    invoke-virtual {v6, v7, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_32} :catch_e

    const v7, 0x7f09062c

    .line 255
    :try_start_33
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {v5, v7}, Lcom/join/mgps/adapter/h4$x1;->b(Lcom/join/mgps/adapter/h4$x1;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v7, 0x7f090655

    .line 256
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {v5, v7}, Lcom/join/mgps/adapter/h4$x1;->d(Lcom/join/mgps/adapter/h4$x1;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 257
    invoke-virtual {v6, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_33} :catch_3

    move-object v7, v4

    goto/16 :goto_1

    .line 258
    :pswitch_1b
    :try_start_34
    new-instance v11, Lcom/join/mgps/adapter/h4$p2;

    invoke-direct {v11, v12}, Lcom/join/mgps/adapter/h4$p2;-><init>(Lcom/join/mgps/adapter/h4;)V

    .line 259
    iget-object v13, v12, Lcom/join/mgps/adapter/h4;->a:Landroid/view/LayoutInflater;

    const v14, 0x7f0c050c

    invoke-virtual {v13, v14, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_34} :catch_e

    const v14, 0x7f0905b9

    .line 260
    :try_start_35
    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    invoke-static {v11, v14}, Lcom/join/mgps/adapter/h4$p2;->b(Lcom/join/mgps/adapter/h4$p2;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    const v14, 0x7f0905ba

    .line 261
    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v11, v14}, Lcom/join/mgps/adapter/h4$p2;->d(Lcom/join/mgps/adapter/h4$p2;Lcom/facebook/drawee/view/SimpleDraweeView;)Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 262
    invoke-virtual {v13, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v9, v11, Lcom/join/mgps/adapter/h4$p2;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 263
    invoke-virtual {v13, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v11, Lcom/join/mgps/adapter/h4$p2;->f:Landroid/widget/TextView;

    const v8, 0x7f0905bb

    .line 264
    invoke-virtual {v13, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-static {v11, v8}, Lcom/join/mgps/adapter/h4$p2;->f(Lcom/join/mgps/adapter/h4$p2;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 265
    invoke-virtual {v13, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v11, Lcom/join/mgps/adapter/h4$p2;->g:Landroid/widget/TextView;

    const v6, 0x7f0905bc

    .line 266
    invoke-virtual {v13, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-static {v11, v6}, Lcom/join/mgps/adapter/h4$p2;->h(Lcom/join/mgps/adapter/h4$p2;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 267
    invoke-virtual {v13, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, v11, Lcom/join/mgps/adapter/h4$p2;->h:Landroid/widget/RelativeLayout;

    const v6, 0x7f090563

    .line 268
    invoke-virtual {v13, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, v11, Lcom/join/mgps/adapter/h4$p2;->i:Landroid/widget/RelativeLayout;

    .line 269
    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v11, Lcom/join/mgps/adapter/h4$p2;->j:Landroid/widget/TextView;

    const v5, 0x7f090418

    .line 270
    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v11, Lcom/join/mgps/adapter/h4$p2;->k:Landroid/widget/TextView;

    .line 271
    invoke-virtual {v13, v11}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_35} :catch_6

    move-object v5, v4

    move-object v7, v5

    move-object v8, v7

    move-object v9, v8

    move-object v14, v9

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    move-object/from16 v25, v24

    move-object/from16 v26, v25

    move-object/from16 v27, v26

    move-object/from16 v28, v27

    move-object/from16 v29, v28

    move-object/from16 v30, v29

    move-object/from16 v31, v30

    move-object/from16 v32, v31

    move-object/from16 v33, v32

    move-object/from16 v34, v33

    move-object/from16 v35, v34

    move-object/from16 v36, v35

    move-object/from16 v37, v36

    move-object/from16 v39, v37

    move-object/from16 v38, v11

    goto/16 :goto_4

    .line 272
    :pswitch_1c
    :try_start_36
    new-instance v5, Lcom/join/mgps/adapter/h4$q2;

    invoke-direct {v5, v12}, Lcom/join/mgps/adapter/h4$q2;-><init>(Lcom/join/mgps/adapter/h4;)V

    .line 273
    iget-object v6, v12, Lcom/join/mgps/adapter/h4;->a:Landroid/view/LayoutInflater;

    const v7, 0x7f0c050e

    invoke-virtual {v6, v7, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_36} :catch_e

    const v7, 0x7f0905b3

    .line 274
    :try_start_37
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    invoke-static {v5, v7}, Lcom/join/mgps/adapter/h4$q2;->b(Lcom/join/mgps/adapter/h4$q2;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    const v7, 0x7f09105c

    .line 275
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    invoke-static {v5, v7}, Lcom/join/mgps/adapter/h4$q2;->d(Lcom/join/mgps/adapter/h4$q2;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    const v7, 0x7f0905b7

    .line 276
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {v5, v7}, Lcom/join/mgps/adapter/h4$q2;->f(Lcom/join/mgps/adapter/h4$q2;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v7, 0x7f0905b8

    .line 277
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {v5, v7}, Lcom/join/mgps/adapter/h4$q2;->h(Lcom/join/mgps/adapter/h4$q2;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v7, 0x7f090cd9

    .line 278
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {v5, v7}, Lcom/join/mgps/adapter/h4$q2;->j(Lcom/join/mgps/adapter/h4$q2;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v7, 0x7f0902a5

    .line 279
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {v5, v7}, Lcom/join/mgps/adapter/h4$q2;->l(Lcom/join/mgps/adapter/h4$q2;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v7, 0x7f0905b4

    .line 280
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v5, v7}, Lcom/join/mgps/adapter/h4$q2;->n(Lcom/join/mgps/adapter/h4$q2;Lcom/facebook/drawee/view/SimpleDraweeView;)Lcom/facebook/drawee/view/SimpleDraweeView;

    const v7, 0x7f0905b5

    .line 281
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v5, v7}, Lcom/join/mgps/adapter/h4$q2;->p(Lcom/join/mgps/adapter/h4$q2;Lcom/facebook/drawee/view/SimpleDraweeView;)Lcom/facebook/drawee/view/SimpleDraweeView;

    const v7, 0x7f0905b6

    .line 282
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v5, v7}, Lcom/join/mgps/adapter/h4$q2;->r(Lcom/join/mgps/adapter/h4$q2;Lcom/facebook/drawee/view/SimpleDraweeView;)Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 283
    invoke-virtual {v6, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_37} :catch_3

    move-object v7, v4

    move-object v8, v7

    move-object v9, v8

    move-object v11, v9

    move-object v13, v11

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    move-object/from16 v25, v24

    move-object/from16 v27, v25

    move-object/from16 v28, v27

    move-object/from16 v29, v28

    move-object/from16 v30, v29

    move-object/from16 v31, v30

    move-object/from16 v32, v31

    move-object/from16 v33, v32

    move-object/from16 v34, v33

    move-object/from16 v35, v34

    move-object/from16 v36, v35

    move-object/from16 v37, v36

    move-object/from16 v38, v37

    move-object/from16 v39, v38

    move-object/from16 v26, v5

    goto/16 :goto_2

    .line 284
    :pswitch_1d
    :try_start_38
    new-instance v5, Lcom/join/mgps/adapter/h4$r2;

    invoke-direct {v5, v12}, Lcom/join/mgps/adapter/h4$r2;-><init>(Lcom/join/mgps/adapter/h4;)V

    .line 285
    iget-object v6, v12, Lcom/join/mgps/adapter/h4;->a:Landroid/view/LayoutInflater;

    const v7, 0x7f0c0515

    invoke-virtual {v6, v7, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_38} :catch_e

    const v7, 0x7f090779

    .line 286
    :try_start_39
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lit/sephiroth/android/library/widget/HListView;

    invoke-static {v5, v7}, Lcom/join/mgps/adapter/h4$r2;->b(Lcom/join/mgps/adapter/h4$r2;Lit/sephiroth/android/library/widget/HListView;)Lit/sephiroth/android/library/widget/HListView;

    .line 287
    invoke-virtual {v6, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_39} :catch_3

    move-object v7, v4

    move-object v8, v7

    move-object v9, v8

    move-object v11, v9

    move-object v13, v11

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    move-object/from16 v25, v23

    move-object/from16 v26, v25

    move-object/from16 v27, v26

    move-object/from16 v28, v27

    move-object/from16 v29, v28

    move-object/from16 v30, v29

    move-object/from16 v31, v30

    move-object/from16 v32, v31

    move-object/from16 v33, v32

    move-object/from16 v34, v33

    move-object/from16 v35, v34

    move-object/from16 v36, v35

    move-object/from16 v37, v36

    move-object/from16 v38, v37

    move-object/from16 v39, v38

    move-object/from16 v24, v5

    goto/16 :goto_2

    .line 288
    :pswitch_1e
    :try_start_3a
    new-instance v5, Lcom/join/mgps/adapter/h4$s2;

    invoke-direct {v5, v12}, Lcom/join/mgps/adapter/h4$s2;-><init>(Lcom/join/mgps/adapter/h4;)V

    .line 289
    iget-object v6, v12, Lcom/join/mgps/adapter/h4;->a:Landroid/view/LayoutInflater;

    const v7, 0x7f0c0517

    invoke-virtual {v6, v7, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3a} :catch_e

    const v7, 0x7f090778

    .line 290
    :try_start_3b
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v5, v7}, Lcom/join/mgps/adapter/h4$s2;->b(Lcom/join/mgps/adapter/h4$s2;Lcom/facebook/drawee/view/SimpleDraweeView;)Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 291
    invoke-virtual {v6, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3b} :catch_3

    move-object v7, v4

    move-object v8, v7

    move-object v9, v8

    move-object v11, v9

    move-object v13, v11

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    move-object/from16 v24, v22

    move-object/from16 v25, v24

    move-object/from16 v26, v25

    move-object/from16 v27, v26

    move-object/from16 v28, v27

    move-object/from16 v29, v28

    move-object/from16 v30, v29

    move-object/from16 v31, v30

    move-object/from16 v32, v31

    move-object/from16 v33, v32

    move-object/from16 v34, v33

    move-object/from16 v35, v34

    move-object/from16 v36, v35

    move-object/from16 v37, v36

    move-object/from16 v38, v37

    move-object/from16 v39, v38

    move-object/from16 v23, v5

    goto/16 :goto_2

    .line 292
    :pswitch_1f
    :try_start_3c
    new-instance v5, Lcom/join/mgps/adapter/h4$h2;

    invoke-direct {v5, v12}, Lcom/join/mgps/adapter/h4$h2;-><init>(Lcom/join/mgps/adapter/h4;)V

    .line 293
    iget-object v8, v12, Lcom/join/mgps/adapter/h4;->a:Landroid/view/LayoutInflater;

    const v9, 0x7f0c0087

    invoke-virtual {v8, v9, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3c} :catch_e

    const v9, 0x7f090a39

    .line 294
    :try_start_3d
    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v9, v5, Lcom/join/mgps/adapter/h4$h2;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v9, 0x7f0905ee

    .line 295
    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, v5, Lcom/join/mgps/adapter/h4$h2;->n:Landroid/widget/ImageView;

    const v9, 0x7f090d07

    .line 296
    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    iput-object v9, v5, Lcom/join/mgps/adapter/h4$h2;->m:Landroid/widget/RelativeLayout;

    const v9, 0x7f090a37

    .line 297
    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, v5, Lcom/join/mgps/adapter/h4$h2;->b:Landroid/widget/TextView;

    .line 298
    invoke-virtual {v8, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    iput-object v7, v5, Lcom/join/mgps/adapter/h4$h2;->c:Landroid/widget/RelativeLayout;

    const v7, 0x7f090a3a

    .line 299
    invoke-virtual {v8, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v5, Lcom/join/mgps/adapter/h4$h2;->d:Landroid/widget/TextView;

    const v7, 0x7f090a38

    .line 300
    invoke-virtual {v8, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v5, Lcom/join/mgps/adapter/h4$h2;->e:Landroid/widget/TextView;

    const v7, 0x7f0908cd

    .line 301
    invoke-virtual {v8, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, v5, Lcom/join/mgps/adapter/h4$h2;->f:Landroid/widget/LinearLayout;

    const v7, 0x7f09100c

    .line 302
    invoke-virtual {v8, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, v5, Lcom/join/mgps/adapter/h4$h2;->g:Landroid/widget/LinearLayout;

    .line 303
    invoke-virtual {v8, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v5, Lcom/join/mgps/adapter/h4$h2;->h:Landroid/widget/TextView;

    const v6, 0x7f0909b2

    .line 304
    invoke-virtual {v8, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v5, Lcom/join/mgps/adapter/h4$h2;->i:Landroid/widget/TextView;

    const v6, 0x7f090c59

    .line 305
    invoke-virtual {v8, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ProgressBar;

    iput-object v6, v5, Lcom/join/mgps/adapter/h4$h2;->k:Landroid/widget/ProgressBar;

    const v6, 0x7f090c60

    .line 306
    invoke-virtual {v8, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ProgressBar;

    iput-object v6, v5, Lcom/join/mgps/adapter/h4$h2;->l:Landroid/widget/ProgressBar;

    const v6, 0x7f090a6f

    .line 307
    invoke-virtual {v8, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v5, Lcom/join/mgps/adapter/h4$h2;->j:Landroid/widget/TextView;

    const v6, 0x7f0908be

    .line 308
    invoke-virtual {v8, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, v5, Lcom/join/mgps/adapter/h4$h2;->o:Landroid/view/View;

    const v6, 0x7f0908be

    .line 309
    invoke-virtual {v8, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 310
    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 311
    invoke-virtual {v8, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_3d} :catch_2

    move-object v7, v4

    move-object v9, v7

    move-object v11, v9

    move-object v13, v11

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    move-object/from16 v25, v24

    move-object/from16 v26, v25

    move-object/from16 v27, v26

    move-object/from16 v28, v27

    move-object/from16 v29, v28

    move-object/from16 v31, v29

    move-object/from16 v32, v31

    move-object/from16 v33, v32

    move-object/from16 v34, v33

    move-object/from16 v35, v34

    move-object/from16 v36, v35

    move-object/from16 v37, v36

    move-object/from16 v38, v37

    move-object/from16 v39, v38

    move-object/from16 v30, v5

    move-object v6, v8

    move-object/from16 v5, v39

    move-object v8, v5

    goto/16 :goto_6

    :catch_2
    move-exception v0

    move-object v1, v0

    move-object/from16 v25, v8

    goto/16 :goto_51

    .line 312
    :pswitch_20
    :try_start_3e
    new-instance v5, Lcom/join/mgps/adapter/h4$a2;

    invoke-direct {v5, v12}, Lcom/join/mgps/adapter/h4$a2;-><init>(Lcom/join/mgps/adapter/h4;)V

    .line 313
    iget-object v6, v12, Lcom/join/mgps/adapter/h4;->a:Landroid/view/LayoutInflater;

    const v7, 0x7f0c0528

    invoke-virtual {v6, v7, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_3e} :catch_e

    const v7, 0x7f091023

    .line 314
    :try_start_3f
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {v5, v7}, Lcom/join/mgps/adapter/h4$a2;->b(Lcom/join/mgps/adapter/h4$a2;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v7, 0x7f090eff

    .line 315
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {v5, v7}, Lcom/join/mgps/adapter/h4$a2;->d(Lcom/join/mgps/adapter/h4$a2;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v7, 0x7f0909c1

    .line 316
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    invoke-static {v5, v7}, Lcom/join/mgps/adapter/h4$a2;->f(Lcom/join/mgps/adapter/h4$a2;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    const v7, 0x7f0908be

    .line 317
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, v5, Lcom/join/mgps/adapter/h4$a2;->d:Landroid/view/View;

    .line 318
    invoke-virtual {v6, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_3f} :catch_3

    move-object v7, v4

    move-object v8, v7

    move-object v9, v8

    move-object v11, v9

    move-object v13, v11

    move-object v15, v13

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    move-object/from16 v25, v24

    move-object/from16 v26, v25

    move-object/from16 v27, v26

    move-object/from16 v28, v27

    move-object/from16 v29, v28

    move-object/from16 v30, v29

    move-object/from16 v31, v30

    move-object/from16 v32, v31

    move-object/from16 v33, v32

    move-object/from16 v34, v33

    move-object/from16 v35, v34

    move-object/from16 v36, v35

    move-object/from16 v37, v36

    move-object/from16 v38, v37

    move-object/from16 v39, v38

    move-object v14, v5

    goto/16 :goto_2

    .line 319
    :pswitch_21
    :try_start_40
    new-instance v5, Lcom/join/mgps/adapter/h4$u2;

    invoke-direct {v5, v12}, Lcom/join/mgps/adapter/h4$u2;-><init>(Lcom/join/mgps/adapter/h4;)V

    sput-object v5, Lcom/join/mgps/adapter/h4;->C0:Lcom/join/mgps/adapter/h4$u2;

    .line 320
    iget-object v5, v12, Lcom/join/mgps/adapter/h4;->a:Landroid/view/LayoutInflater;

    const v6, 0x7f0c0481

    invoke-virtual {v5, v6, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_40} :catch_e

    .line 321
    :try_start_41
    sget-object v6, Lcom/join/mgps/adapter/h4;->C0:Lcom/join/mgps/adapter/h4$u2;

    const v7, 0x7f0909a8

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    invoke-static {v6, v7}, Lcom/join/mgps/adapter/h4$u2;->A(Lcom/join/mgps/adapter/h4$u2;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    .line 322
    sget-object v6, Lcom/join/mgps/adapter/h4;->C0:Lcom/join/mgps/adapter/h4$u2;

    const v7, 0x7f090ceb

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    invoke-static {v6, v7}, Lcom/join/mgps/adapter/h4$u2;->C(Lcom/join/mgps/adapter/h4$u2;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    .line 323
    sget-object v6, Lcom/join/mgps/adapter/h4;->C0:Lcom/join/mgps/adapter/h4$u2;

    const v7, 0x7f090cea

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    invoke-static {v6, v7}, Lcom/join/mgps/adapter/h4$u2;->E(Lcom/join/mgps/adapter/h4$u2;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    .line 324
    sget-object v6, Lcom/join/mgps/adapter/h4;->C0:Lcom/join/mgps/adapter/h4$u2;

    const v7, 0x7f0904aa

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {v6, v7}, Lcom/join/mgps/adapter/h4$u2;->G(Lcom/join/mgps/adapter/h4$u2;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 325
    sget-object v6, Lcom/join/mgps/adapter/h4;->C0:Lcom/join/mgps/adapter/h4$u2;

    const v7, 0x7f09043c

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    invoke-static {v6, v7}, Lcom/join/mgps/adapter/h4$u2;->I(Lcom/join/mgps/adapter/h4$u2;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 326
    sget-object v6, Lcom/join/mgps/adapter/h4;->C0:Lcom/join/mgps/adapter/h4$u2;

    const v7, 0x7f0904ab

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v6, v7}, Lcom/join/mgps/adapter/h4$u2;->K(Lcom/join/mgps/adapter/h4$u2;Lcom/facebook/drawee/view/SimpleDraweeView;)Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 327
    sget-object v6, Lcom/join/mgps/adapter/h4;->C0:Lcom/join/mgps/adapter/h4$u2;

    const v7, 0x7f090ce7

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {v6, v7}, Lcom/join/mgps/adapter/h4$u2;->b(Lcom/join/mgps/adapter/h4$u2;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 328
    sget-object v6, Lcom/join/mgps/adapter/h4;->C0:Lcom/join/mgps/adapter/h4$u2;

    const v7, 0x7f090ce8

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {v6, v7}, Lcom/join/mgps/adapter/h4$u2;->d(Lcom/join/mgps/adapter/h4$u2;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 329
    sget-object v6, Lcom/join/mgps/adapter/h4;->C0:Lcom/join/mgps/adapter/h4$u2;

    const v7, 0x7f090ce6

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v6, v7}, Lcom/join/mgps/adapter/h4$u2;->f(Lcom/join/mgps/adapter/h4$u2;Lcom/facebook/drawee/view/SimpleDraweeView;)Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 330
    sget-object v6, Lcom/join/mgps/adapter/h4;->C0:Lcom/join/mgps/adapter/h4$u2;

    const v7, 0x7f091223

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    invoke-static {v6, v7}, Lcom/join/mgps/adapter/h4$u2;->h(Lcom/join/mgps/adapter/h4$u2;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 331
    sget-object v6, Lcom/join/mgps/adapter/h4;->C0:Lcom/join/mgps/adapter/h4$u2;

    const v7, 0x7f090440

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {v6, v7}, Lcom/join/mgps/adapter/h4$u2;->j(Lcom/join/mgps/adapter/h4$u2;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 332
    sget-object v6, Lcom/join/mgps/adapter/h4;->C0:Lcom/join/mgps/adapter/h4$u2;

    const v7, 0x7f090441

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {v6, v7}, Lcom/join/mgps/adapter/h4$u2;->k(Lcom/join/mgps/adapter/h4$u2;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 333
    sget-object v6, Lcom/join/mgps/adapter/h4;->C0:Lcom/join/mgps/adapter/h4$u2;

    const v7, 0x7f090442

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    invoke-static {v6, v7}, Lcom/join/mgps/adapter/h4$u2;->m(Lcom/join/mgps/adapter/h4$u2;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 334
    sget-object v6, Lcom/join/mgps/adapter/h4;->C0:Lcom/join/mgps/adapter/h4$u2;

    const v7, 0x7f090ce5

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {v6, v7}, Lcom/join/mgps/adapter/h4$u2;->o(Lcom/join/mgps/adapter/h4$u2;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 335
    sget-object v6, Lcom/join/mgps/adapter/h4;->C0:Lcom/join/mgps/adapter/h4$u2;

    const v7, 0x7f090ce4

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {v6, v7}, Lcom/join/mgps/adapter/h4$u2;->q(Lcom/join/mgps/adapter/h4$u2;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 336
    sget-object v6, Lcom/join/mgps/adapter/h4;->C0:Lcom/join/mgps/adapter/h4$u2;

    const v7, 0x7f0909eb

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, v6, Lcom/join/mgps/adapter/h4$u2;->t:Landroid/widget/LinearLayout;

    .line 337
    sget-object v6, Lcom/join/mgps/adapter/h4;->C0:Lcom/join/mgps/adapter/h4$u2;

    const v7, 0x7f090ce3

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v6, v7}, Lcom/join/mgps/adapter/h4$u2;->s(Lcom/join/mgps/adapter/h4$u2;Lcom/facebook/drawee/view/SimpleDraweeView;)Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 338
    sget-object v6, Lcom/join/mgps/adapter/h4;->C0:Lcom/join/mgps/adapter/h4$u2;

    const v7, 0x7f090549

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v6, v7}, Lcom/join/mgps/adapter/h4$u2;->u(Lcom/join/mgps/adapter/h4$u2;Lcom/facebook/drawee/view/SimpleDraweeView;)Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 339
    sget-object v6, Lcom/join/mgps/adapter/h4;->C0:Lcom/join/mgps/adapter/h4$u2;

    const v7, 0x7f09054a

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v6, v7}, Lcom/join/mgps/adapter/h4$u2;->w(Lcom/join/mgps/adapter/h4$u2;Lcom/facebook/drawee/view/SimpleDraweeView;)Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 340
    sget-object v6, Lcom/join/mgps/adapter/h4;->C0:Lcom/join/mgps/adapter/h4$u2;

    const v7, 0x7f09054b

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v6, v7}, Lcom/join/mgps/adapter/h4$u2;->y(Lcom/join/mgps/adapter/h4$u2;Lcom/facebook/drawee/view/SimpleDraweeView;)Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 341
    sget-object v6, Lcom/join/mgps/adapter/h4;->C0:Lcom/join/mgps/adapter/h4$u2;

    invoke-virtual {v5, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_41} :catch_0

    move-object v7, v4

    move-object v8, v7

    move-object v9, v8

    move-object v11, v9

    move-object v13, v11

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    move-object/from16 v25, v24

    move-object/from16 v26, v25

    move-object/from16 v27, v26

    move-object/from16 v28, v27

    move-object/from16 v29, v28

    move-object/from16 v30, v29

    move-object/from16 v31, v30

    move-object/from16 v32, v31

    move-object/from16 v33, v32

    move-object/from16 v34, v33

    move-object/from16 v35, v34

    move-object/from16 v36, v35

    move-object/from16 v37, v36

    move-object/from16 v38, v37

    move-object/from16 v39, v38

    goto/16 :goto_3

    .line 342
    :pswitch_22
    :try_start_42
    new-instance v5, Lcom/join/mgps/adapter/h4$v2;

    invoke-direct {v5, v12}, Lcom/join/mgps/adapter/h4$v2;-><init>(Lcom/join/mgps/adapter/h4;)V

    .line 343
    iget-object v6, v12, Lcom/join/mgps/adapter/h4;->a:Landroid/view/LayoutInflater;

    const v7, 0x7f0c05c0

    invoke-virtual {v6, v7, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_42} :catch_e

    const v7, 0x7f09105d

    .line 344
    :try_start_43
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    invoke-static {v5, v7}, Lcom/join/mgps/adapter/h4$v2;->b(Lcom/join/mgps/adapter/h4$v2;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    const v7, 0x7f09105e

    .line 345
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    invoke-static {v5, v7}, Lcom/join/mgps/adapter/h4$v2;->d(Lcom/join/mgps/adapter/h4$v2;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    const v7, 0x7f091067

    .line 346
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {v5, v7}, Lcom/join/mgps/adapter/h4$v2;->f(Lcom/join/mgps/adapter/h4$v2;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 347
    invoke-virtual {v6, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_43} :catch_3

    move-object v7, v4

    move-object v8, v7

    move-object v9, v8

    move-object v11, v9

    move-object v13, v11

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v19, v17

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    move-object/from16 v25, v24

    move-object/from16 v26, v25

    move-object/from16 v27, v26

    move-object/from16 v28, v27

    move-object/from16 v29, v28

    move-object/from16 v30, v29

    move-object/from16 v31, v30

    move-object/from16 v32, v31

    move-object/from16 v33, v32

    move-object/from16 v34, v33

    move-object/from16 v35, v34

    move-object/from16 v36, v35

    move-object/from16 v37, v36

    move-object/from16 v38, v37

    move-object/from16 v39, v38

    move-object/from16 v18, v5

    goto/16 :goto_2

    :catch_3
    move-exception v0

    move-object v1, v0

    move-object/from16 v25, v6

    goto/16 :goto_51

    :goto_6
    move-object/from16 p2, v18

    move-object/from16 v3, v19

    move-object/from16 v40, v20

    move-object/from16 v41, v21

    move-object/from16 v4, v22

    move-object/from16 v42, v30

    move-object/from16 v19, v31

    move-object/from16 v20, v35

    move-object/from16 v43, v36

    move-object/from16 v44, v37

    move-object/from16 v21, v38

    move-object/from16 v22, v39

    move-object/from16 v46, v13

    move-object v13, v6

    move-object/from16 v6, v46

    goto/16 :goto_1b

    :cond_1
    packed-switch v2, :pswitch_data_1

    :pswitch_23
    goto/16 :goto_7

    .line 348
    :pswitch_24
    :try_start_44
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/adapter/h4$n2;

    goto/16 :goto_7

    .line 349
    :pswitch_25
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v22, v5

    check-cast v22, Lcom/join/mgps/adapter/h4$i2;

    move-object/from16 v13, p2

    move-object/from16 p2, v4

    move-object/from16 v3, p2

    move-object v5, v3

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v11, v9

    move-object v14, v11

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v19, v17

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    move-object/from16 v23, v21

    move-object/from16 v24, v23

    move-object/from16 v25, v24

    move-object/from16 v26, v25

    move-object/from16 v27, v26

    move-object/from16 v28, v27

    move-object/from16 v29, v28

    move-object/from16 v32, v29

    move-object/from16 v33, v32

    move-object/from16 v34, v33

    move-object/from16 v40, v34

    move-object/from16 v41, v40

    move-object/from16 v42, v41

    move-object/from16 v43, v42

    move-object/from16 v44, v43

    move-object/from16 v4, v22

    move-object/from16 v22, v44

    goto/16 :goto_1b

    .line 350
    :pswitch_26
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v17, v5

    check-cast v17, Lcom/join/mgps/adapter/h4$l2;

    move-object/from16 v13, p2

    move-object/from16 p2, v4

    move-object/from16 v3, p2

    move-object v5, v3

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v11, v9

    move-object v14, v11

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v19, v16

    goto/16 :goto_10

    .line 351
    :pswitch_27
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v29, v5

    check-cast v29, Lcom/join/mgps/adapter/h4$f2;

    move-object/from16 v13, p2

    move-object/from16 p2, v4

    move-object/from16 v3, p2

    move-object v5, v3

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v11, v9

    move-object v14, v11

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v19, v17

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    move-object/from16 v25, v24

    move-object/from16 v26, v25

    move-object/from16 v27, v26

    move-object/from16 v28, v27

    move-object/from16 v32, v28

    goto/16 :goto_17

    .line 352
    :pswitch_28
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v16, v5

    check-cast v16, Lcom/join/mgps/adapter/h4$z1;

    move-object/from16 v13, p2

    move-object/from16 p2, v4

    move-object/from16 v3, p2

    move-object v5, v3

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v11, v9

    move-object v14, v11

    move-object v15, v14

    move-object/from16 v17, v15

    goto/16 :goto_f

    .line 353
    :pswitch_29
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v31, v5

    check-cast v31, Lcom/join/mgps/adapter/h4$u1;

    move-object/from16 v13, p2

    move-object/from16 p2, v4

    move-object/from16 v3, p2

    move-object v5, v3

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v11, v9

    move-object v14, v11

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v20, v17

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    move-object/from16 v25, v24

    move-object/from16 v26, v25

    move-object/from16 v27, v26

    move-object/from16 v28, v27

    move-object/from16 v29, v28

    move-object/from16 v32, v29

    move-object/from16 v33, v32

    move-object/from16 v34, v33

    move-object/from16 v40, v34

    move-object/from16 v41, v40

    move-object/from16 v42, v41

    move-object/from16 v43, v42

    move-object/from16 v44, v43

    move-object/from16 v19, v31

    goto/16 :goto_1b

    .line 354
    :pswitch_2a
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v19, v5

    check-cast v19, Lcom/join/mgps/adapter/h4$p1;

    move-object/from16 v13, p2

    move-object/from16 p2, v4

    move-object/from16 v5, p2

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v11, v9

    move-object v14, v11

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v20, v17

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    move-object/from16 v25, v24

    move-object/from16 v26, v25

    move-object/from16 v27, v26

    move-object/from16 v28, v27

    move-object/from16 v29, v28

    move-object/from16 v32, v29

    move-object/from16 v33, v32

    move-object/from16 v34, v33

    move-object/from16 v40, v34

    move-object/from16 v41, v40

    move-object/from16 v42, v41

    move-object/from16 v43, v42

    move-object/from16 v44, v43

    move-object/from16 v3, v19

    move-object/from16 v19, v44

    goto/16 :goto_1b

    .line 355
    :pswitch_2b
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v21, v5

    check-cast v21, Lcom/join/mgps/adapter/h4$s1;

    move-object/from16 v13, p2

    move-object/from16 p2, v4

    move-object/from16 v3, p2

    move-object v5, v3

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v11, v9

    move-object v14, v11

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v19, v17

    move-object/from16 v20, v19

    move-object/from16 v22, v20

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    move-object/from16 v25, v24

    move-object/from16 v26, v25

    move-object/from16 v27, v26

    move-object/from16 v28, v27

    move-object/from16 v29, v28

    move-object/from16 v32, v29

    move-object/from16 v33, v32

    move-object/from16 v34, v33

    move-object/from16 v40, v34

    move-object/from16 v42, v40

    move-object/from16 v43, v42

    move-object/from16 v44, v43

    move-object/from16 v41, v21

    move-object/from16 v21, v44

    goto/16 :goto_1b

    .line 356
    :pswitch_2c
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    move-object v15, v5

    check-cast v15, Lcom/join/mgps/adapter/h4$r1;

    move-object/from16 v13, p2

    move-object/from16 p2, v4

    move-object/from16 v3, p2

    move-object v5, v3

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v11, v9

    move-object v14, v11

    move-object/from16 v16, v14

    goto/16 :goto_e

    .line 357
    :pswitch_2d
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v25, v5

    check-cast v25, Lcom/join/mgps/adapter/h4$t2;

    move-object/from16 v13, p2

    move-object/from16 p2, v4

    move-object/from16 v3, p2

    move-object v5, v3

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v11, v9

    move-object v14, v11

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v19, v17

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    move-object/from16 v26, v24

    goto/16 :goto_13

    .line 358
    :pswitch_2e
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v34, v5

    check-cast v34, Lcom/join/mgps/adapter/h4$k2;

    move-object/from16 v13, p2

    move-object/from16 p2, v4

    move-object/from16 v3, p2

    move-object v5, v3

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v11, v9

    move-object v14, v11

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v19, v17

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    move-object/from16 v25, v24

    move-object/from16 v26, v25

    move-object/from16 v27, v26

    move-object/from16 v28, v27

    move-object/from16 v29, v28

    move-object/from16 v32, v29

    move-object/from16 v33, v32

    move-object/from16 v40, v33

    goto/16 :goto_1a

    .line 359
    :pswitch_2f
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v33, v5

    check-cast v33, Lcom/join/mgps/adapter/h4$g2;

    move-object/from16 v13, p2

    move-object/from16 p2, v4

    move-object/from16 v3, p2

    move-object v5, v3

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v11, v9

    move-object v14, v11

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v19, v17

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    move-object/from16 v25, v24

    move-object/from16 v26, v25

    move-object/from16 v27, v26

    move-object/from16 v28, v27

    move-object/from16 v29, v28

    move-object/from16 v32, v29

    move-object/from16 v34, v32

    goto/16 :goto_19

    .line 360
    :pswitch_30
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    move-object v13, v5

    check-cast v13, Lcom/join/mgps/adapter/h4$v1;

    move-object v3, v4

    move-object v5, v3

    move-object v7, v5

    move-object v8, v7

    move-object v9, v8

    move-object v11, v9

    move-object v14, v11

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v19, v17

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    move-object/from16 v25, v24

    move-object/from16 v26, v25

    move-object/from16 v27, v26

    move-object/from16 v28, v27

    move-object/from16 v29, v28

    move-object/from16 v32, v29

    move-object/from16 v33, v32

    move-object/from16 v34, v33

    move-object/from16 v40, v34

    move-object/from16 v41, v40

    move-object/from16 v42, v41

    move-object/from16 v43, v42

    move-object/from16 v44, v43

    move-object v6, v13

    move-object/from16 v13, p2

    move-object/from16 p2, v44

    goto/16 :goto_1b

    .line 361
    :pswitch_31
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v28, v5

    check-cast v28, Lcom/join/mgps/adapter/h4$j2;

    move-object/from16 v13, p2

    move-object/from16 p2, v4

    move-object/from16 v3, p2

    move-object v5, v3

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v11, v9

    move-object v14, v11

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v19, v17

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    move-object/from16 v25, v24

    move-object/from16 v26, v25

    move-object/from16 v27, v26

    move-object/from16 v29, v27

    goto/16 :goto_16

    .line 362
    :pswitch_32
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Lcom/join/mgps/adapter/h4$e2;

    move-object/from16 v13, p2

    move-object/from16 p2, v4

    move-object/from16 v3, p2

    move-object v5, v3

    move-object v6, v5

    move-object v8, v6

    goto/16 :goto_9

    .line 363
    :pswitch_33
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Lcom/join/mgps/adapter/h4$d2;

    move-object/from16 v13, p2

    move-object/from16 p2, v4

    move-object/from16 v3, p2

    move-object v5, v3

    move-object v6, v5

    move-object v7, v6

    move-object v9, v7

    goto/16 :goto_a

    .line 364
    :pswitch_34
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v37, v5

    check-cast v37, Lcom/join/mgps/adapter/h4$c2;

    move-object/from16 v13, p2

    move-object/from16 p2, v4

    move-object/from16 v3, p2

    move-object v5, v3

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v11, v9

    move-object v14, v11

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v19, v17

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    move-object/from16 v25, v24

    move-object/from16 v26, v25

    move-object/from16 v27, v26

    move-object/from16 v28, v27

    move-object/from16 v29, v28

    move-object/from16 v32, v29

    move-object/from16 v33, v32

    move-object/from16 v34, v33

    move-object/from16 v40, v34

    move-object/from16 v41, v40

    move-object/from16 v42, v41

    move-object/from16 v43, v42

    move-object/from16 v44, v37

    goto/16 :goto_1b

    .line 365
    :pswitch_35
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v36, v5

    check-cast v36, Lcom/join/mgps/adapter/h4$b2;

    move-object/from16 v13, p2

    move-object/from16 p2, v4

    move-object/from16 v3, p2

    move-object v5, v3

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v11, v9

    move-object v14, v11

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v19, v17

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    move-object/from16 v25, v24

    move-object/from16 v26, v25

    move-object/from16 v27, v26

    move-object/from16 v28, v27

    move-object/from16 v29, v28

    move-object/from16 v32, v29

    move-object/from16 v33, v32

    move-object/from16 v34, v33

    move-object/from16 v40, v34

    move-object/from16 v41, v40

    move-object/from16 v42, v41

    move-object/from16 v44, v42

    move-object/from16 v43, v36

    goto/16 :goto_1b

    .line 366
    :pswitch_36
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v20, v5

    check-cast v20, Lcom/join/mgps/adapter/h4$m2;

    move-object/from16 v13, p2

    move-object/from16 p2, v4

    move-object/from16 v3, p2

    move-object v5, v3

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v11, v9

    move-object v14, v11

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v19, v17

    move-object/from16 v21, v19

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    move-object/from16 v25, v24

    move-object/from16 v26, v25

    move-object/from16 v27, v26

    move-object/from16 v28, v27

    move-object/from16 v29, v28

    move-object/from16 v32, v29

    move-object/from16 v33, v32

    move-object/from16 v34, v33

    move-object/from16 v41, v34

    move-object/from16 v42, v41

    move-object/from16 v43, v42

    move-object/from16 v44, v43

    move-object/from16 v40, v20

    move-object/from16 v20, v44

    goto/16 :goto_1b

    .line 367
    :pswitch_37
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v35, v5

    check-cast v35, Lcom/join/mgps/adapter/h4$q1;

    move-object/from16 v13, p2

    move-object/from16 p2, v4

    move-object/from16 v3, p2

    move-object v5, v3

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v11, v9

    move-object v14, v11

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v19, v17

    move-object/from16 v21, v19

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    move-object/from16 v25, v24

    move-object/from16 v26, v25

    move-object/from16 v27, v26

    move-object/from16 v28, v27

    move-object/from16 v29, v28

    move-object/from16 v32, v29

    move-object/from16 v33, v32

    move-object/from16 v34, v33

    move-object/from16 v40, v34

    move-object/from16 v41, v40

    move-object/from16 v42, v41

    move-object/from16 v43, v42

    move-object/from16 v44, v43

    move-object/from16 v20, v35

    goto/16 :goto_1b

    .line 368
    :pswitch_38
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v39, v5

    check-cast v39, Lcom/join/mgps/adapter/h4$m1;

    move-object/from16 v13, p2

    move-object/from16 p2, v4

    move-object/from16 v3, p2

    move-object v5, v3

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v11, v9

    move-object v14, v11

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v19, v17

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    move-object/from16 v23, v21

    move-object/from16 v24, v23

    move-object/from16 v25, v24

    move-object/from16 v26, v25

    move-object/from16 v27, v26

    move-object/from16 v28, v27

    move-object/from16 v29, v28

    move-object/from16 v32, v29

    move-object/from16 v33, v32

    move-object/from16 v34, v33

    move-object/from16 v40, v34

    move-object/from16 v41, v40

    move-object/from16 v42, v41

    move-object/from16 v43, v42

    move-object/from16 v44, v43

    move-object/from16 v22, v39

    goto/16 :goto_1b

    .line 369
    :pswitch_39
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    move-object v11, v5

    check-cast v11, Lcom/join/mgps/adapter/h4$n1;

    move-object/from16 v13, p2

    move-object/from16 p2, v4

    move-object/from16 v3, p2

    move-object v5, v3

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v14, v9

    goto/16 :goto_c

    .line 370
    :pswitch_3a
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v32, v5

    check-cast v32, Lcom/join/mgps/adapter/h4$o1;

    move-object/from16 v13, p2

    move-object/from16 p2, v4

    move-object/from16 v3, p2

    move-object v5, v3

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v11, v9

    move-object v14, v11

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v19, v17

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    move-object/from16 v25, v24

    move-object/from16 v26, v25

    move-object/from16 v27, v26

    move-object/from16 v28, v27

    move-object/from16 v29, v28

    move-object/from16 v33, v29

    goto/16 :goto_18

    .line 371
    :pswitch_3b
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v27, v5

    check-cast v27, Lcom/join/mgps/adapter/h4$o2;

    move-object/from16 v13, p2

    move-object/from16 p2, v4

    move-object/from16 v3, p2

    move-object v5, v3

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v11, v9

    move-object v14, v11

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v19, v17

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    move-object/from16 v25, v24

    move-object/from16 v26, v25

    move-object/from16 v28, v26

    goto/16 :goto_15

    .line 372
    :pswitch_3c
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    move-object v9, v5

    check-cast v9, Lcom/join/mgps/adapter/h4$w1;

    move-object/from16 v13, p2

    move-object/from16 p2, v4

    move-object/from16 v3, p2

    move-object v5, v3

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v11, v8

    goto/16 :goto_b

    .line 373
    :pswitch_3d
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/adapter/h4$x1;

    move-object/from16 v13, p2

    move-object/from16 p2, v4

    move-object/from16 v3, p2

    move-object v6, v3

    goto/16 :goto_8

    .line 374
    :pswitch_3e
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v38, v5

    check-cast v38, Lcom/join/mgps/adapter/h4$p2;

    move-object/from16 v13, p2

    move-object/from16 p2, v4

    move-object/from16 v3, p2

    move-object v5, v3

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v11, v9

    move-object v14, v11

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v19, v17

    move-object/from16 v20, v19

    move-object/from16 v22, v20

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    move-object/from16 v25, v24

    move-object/from16 v26, v25

    move-object/from16 v27, v26

    move-object/from16 v28, v27

    move-object/from16 v29, v28

    move-object/from16 v32, v29

    move-object/from16 v33, v32

    move-object/from16 v34, v33

    move-object/from16 v40, v34

    move-object/from16 v41, v40

    move-object/from16 v42, v41

    move-object/from16 v43, v42

    move-object/from16 v44, v43

    move-object/from16 v21, v38

    goto/16 :goto_1b

    .line 375
    :pswitch_3f
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v26, v5

    check-cast v26, Lcom/join/mgps/adapter/h4$q2;

    move-object/from16 v13, p2

    move-object/from16 p2, v4

    move-object/from16 v3, p2

    move-object v5, v3

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v11, v9

    move-object v14, v11

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v19, v17

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    move-object/from16 v25, v24

    move-object/from16 v27, v25

    goto/16 :goto_14

    .line 376
    :pswitch_40
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v24, v5

    check-cast v24, Lcom/join/mgps/adapter/h4$r2;

    move-object/from16 v13, p2

    move-object/from16 p2, v4

    move-object/from16 v3, p2

    move-object v5, v3

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v11, v9

    move-object v14, v11

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v19, v17

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    move-object/from16 v25, v23

    goto/16 :goto_12

    .line 377
    :pswitch_41
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v23, v5

    check-cast v23, Lcom/join/mgps/adapter/h4$s2;

    move-object/from16 v13, p2

    move-object/from16 p2, v4

    move-object/from16 v3, p2

    move-object v5, v3

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v11, v9

    move-object v14, v11

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v19, v17

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    move-object/from16 v24, v22

    goto/16 :goto_11

    .line 378
    :pswitch_42
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v30, v5

    check-cast v30, Lcom/join/mgps/adapter/h4$h2;

    move-object/from16 v13, p2

    move-object/from16 p2, v4

    move-object/from16 v3, p2

    move-object v5, v3

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v11, v9

    move-object v14, v11

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v19, v17

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    move-object/from16 v25, v24

    move-object/from16 v26, v25

    move-object/from16 v27, v26

    move-object/from16 v28, v27

    move-object/from16 v29, v28

    move-object/from16 v32, v29

    move-object/from16 v33, v32

    move-object/from16 v34, v33

    move-object/from16 v40, v34

    move-object/from16 v41, v40

    move-object/from16 v43, v41

    move-object/from16 v44, v43

    move-object/from16 v42, v30

    goto/16 :goto_1b

    .line 379
    :pswitch_43
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    move-object v14, v5

    check-cast v14, Lcom/join/mgps/adapter/h4$a2;

    move-object/from16 v13, p2

    move-object/from16 p2, v4

    move-object/from16 v3, p2

    move-object v5, v3

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v11, v9

    move-object v15, v11

    goto/16 :goto_d

    .line 380
    :pswitch_44
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/adapter/h4$u2;

    sput-object v5, Lcom/join/mgps/adapter/h4;->C0:Lcom/join/mgps/adapter/h4$u2;

    goto :goto_7

    .line 381
    :pswitch_45
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v18, v5

    check-cast v18, Lcom/join/mgps/adapter/h4$v2;
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_44} :catch_e

    move-object/from16 v13, p2

    move-object v3, v4

    move-object v5, v3

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v11, v9

    move-object v14, v11

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v19, v17

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    move-object/from16 v25, v24

    move-object/from16 v26, v25

    move-object/from16 v27, v26

    move-object/from16 v28, v27

    move-object/from16 v29, v28

    move-object/from16 v32, v29

    move-object/from16 v33, v32

    move-object/from16 v34, v33

    move-object/from16 v40, v34

    move-object/from16 v41, v40

    move-object/from16 v42, v41

    move-object/from16 v43, v42

    move-object/from16 v44, v43

    move-object/from16 p2, v18

    goto :goto_1b

    :goto_7
    move-object/from16 v13, p2

    move-object/from16 p2, v4

    move-object/from16 v3, p2

    move-object v5, v3

    move-object v6, v5

    :goto_8
    move-object v7, v6

    move-object v8, v7

    :goto_9
    move-object v9, v8

    :goto_a
    move-object v11, v9

    :goto_b
    move-object v14, v11

    :goto_c
    move-object v15, v14

    :goto_d
    move-object/from16 v16, v15

    :goto_e
    move-object/from16 v17, v16

    :goto_f
    move-object/from16 v19, v17

    :goto_10
    move-object/from16 v20, v19

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    :goto_11
    move-object/from16 v25, v24

    :goto_12
    move-object/from16 v26, v25

    :goto_13
    move-object/from16 v27, v26

    :goto_14
    move-object/from16 v28, v27

    :goto_15
    move-object/from16 v29, v28

    :goto_16
    move-object/from16 v32, v29

    :goto_17
    move-object/from16 v33, v32

    :goto_18
    move-object/from16 v34, v33

    :goto_19
    move-object/from16 v40, v34

    :goto_1a
    move-object/from16 v41, v40

    move-object/from16 v42, v41

    move-object/from16 v43, v42

    move-object/from16 v44, v43

    .line 382
    :goto_1b
    :try_start_45
    iget-object v10, v12, Lcom/join/mgps/adapter/h4;->d:Ljava/util/List;

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/join/mgps/dto/MgpapaMainItemBean;
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_45} :catch_d

    move-object/from16 v31, v14

    const-string v14, ""

    move-object/from16 v35, v11

    const-string v11, "-"

    move-object/from16 v36, v9

    const/4 v9, 0x1

    packed-switch v2, :pswitch_data_2

    :cond_2
    :goto_1c
    :pswitch_46
    move-object v7, v13

    goto/16 :goto_4e

    .line 383
    :pswitch_47
    :try_start_46
    invoke-virtual {v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_2

    .line 384
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 385
    iget-object v3, v4, Lcom/join/mgps/adapter/h4$i2;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, v4, Lcom/join/mgps/adapter/h4$i2;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v3

    instance-of v3, v3, Lcom/join/mgps/adapter/m2;

    if-eqz v3, :cond_3

    iget-object v3, v4, Lcom/join/mgps/adapter/h4$i2;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 386
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/adapter/m2;

    invoke-virtual {v3}, Lcom/join/mgps/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 387
    iget-object v1, v4, Lcom/join/mgps/adapter/h4$i2;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/adapter/m2;

    .line 388
    invoke-virtual {v1, v2}, Lcom/join/mgps/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    goto :goto_1c

    .line 389
    :cond_3
    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v5, v12, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-direct {v3, v5, v6, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 390
    new-instance v5, Lcom/join/mgps/adapter/m2;

    invoke-direct {v5, v2}, Lcom/join/mgps/adapter/m2;-><init>(Ljava/util/List;)V

    .line 391
    iget-object v6, v4, Lcom/join/mgps/adapter/h4$i2;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/SimpleItemAnimator;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 392
    iget-object v6, v4, Lcom/join/mgps/adapter/h4$i2;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v6, v9}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 393
    iget-object v6, v4, Lcom/join/mgps/adapter/h4$i2;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v6, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 394
    iget-object v3, v4, Lcom/join/mgps/adapter/h4$i2;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 395
    new-instance v3, Lcom/join/mgps/adapter/w3;

    invoke-direct {v3, v12, v2}, Lcom/join/mgps/adapter/w3;-><init>(Lcom/join/mgps/adapter/h4;Ljava/util/List;)V

    invoke-virtual {v5, v3}, Lcom/join/mgps/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/join/mgps/base/BaseQuickAdapter$i;)V

    .line 396
    new-instance v3, Lcom/join/mgps/adapter/v3;

    invoke-direct {v3, v12, v2, v1}, Lcom/join/mgps/adapter/v3;-><init>(Lcom/join/mgps/adapter/h4;Ljava/util/List;I)V

    invoke-virtual {v5, v3}, Lcom/join/mgps/base/BaseQuickAdapter;->setOnItemChildClickListener(Lcom/join/mgps/base/BaseQuickAdapter$g;)V

    .line 397
    iget-object v1, v4, Lcom/join/mgps/adapter/h4$i2;->a:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Lcom/join/mgps/adapter/h4$y0;

    invoke-direct {v3, v12, v2, v4}, Lcom/join/mgps/adapter/h4$y0;-><init>(Lcom/join/mgps/adapter/h4;Ljava/util/List;Lcom/join/mgps/adapter/h4$i2;)V

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    goto/16 :goto_1c

    .line 398
    :pswitch_48
    invoke-virtual {v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 399
    invoke-static/range {v17 .. v17}, Lcom/join/mgps/adapter/h4$l2;->a(Lcom/join/mgps/adapter/h4$l2;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    float-to-int v1, v1

    .line 400
    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 401
    invoke-static/range {v17 .. v17}, Lcom/join/mgps/adapter/h4$l2;->a(Lcom/join/mgps/adapter/h4$l2;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1c

    .line 402
    :pswitch_49
    invoke-virtual {v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/PAPAHomeBeanV7$RankingListDTO;

    if-eqz v1, :cond_7

    .line 403
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$RankingListDTO;->getTxt()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$RankingListDTO;->getList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 404
    invoke-static/range {v29 .. v29}, Lcom/join/mgps/adapter/h4$f2;->a(Lcom/join/mgps/adapter/h4$f2;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 405
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$RankingListDTO;->getList()Ljava/util/List;

    move-result-object v2

    .line 406
    iget-object v3, v12, Lcom/join/mgps/adapter/h4;->l:Lcom/join/mgps/customview/d0;

    if-nez v3, :cond_6

    .line 407
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$RankingListDTO;->getTxt()Ljava/lang/String;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 408
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 409
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    .line 410
    :goto_1d
    array-length v5, v1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-ge v10, v5, :cond_5

    .line 411
    aget-object v5, v1, v10

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 412
    aget-object v5, v1, v10

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 413
    aget-object v5, v1, v10

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    add-int/lit16 v7, v10, 0x5015

    invoke-static {v9, v5, v6, v7}, Lcom/join/mgps/fragment/m4;->b0(ZLjava/lang/String;Ljava/util/List;I)Landroidx/fragment/app/Fragment;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_1d

    .line 414
    :cond_5
    new-instance v1, Lcom/join/mgps/customview/d0;

    iget-object v5, v12, Lcom/join/mgps/adapter/h4;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v5

    invoke-direct {v1, v5, v4, v3}, Lcom/join/mgps/customview/d0;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/ArrayList;Ljava/util/List;)V

    iput-object v1, v12, Lcom/join/mgps/adapter/h4;->l:Lcom/join/mgps/customview/d0;

    .line 415
    invoke-virtual {v1, v4, v3}, Lcom/join/mgps/customview/d0;->d(Ljava/util/List;Ljava/util/List;)V

    .line 416
    invoke-static/range {v29 .. v29}, Lcom/join/mgps/adapter/h4$f2;->e(Lcom/join/mgps/adapter/h4$f2;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v1

    iget-object v3, v12, Lcom/join/mgps/adapter/h4;->l:Lcom/join/mgps/customview/d0;

    invoke-virtual {v1, v3}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 417
    invoke-static/range {v29 .. v29}, Lcom/join/mgps/adapter/h4$f2;->e(Lcom/join/mgps/adapter/h4$f2;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v1

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 418
    invoke-static/range {v29 .. v29}, Lcom/join/mgps/adapter/h4$f2;->c(Lcom/join/mgps/adapter/h4$f2;)Lcom/join/mgps/customview/SlidingTabLayout6;

    move-result-object v1

    invoke-static/range {v29 .. v29}, Lcom/join/mgps/adapter/h4$f2;->e(Lcom/join/mgps/adapter/h4$f2;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/join/mgps/customview/SlidingTabLayout1;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 419
    invoke-static/range {v29 .. v29}, Lcom/join/mgps/adapter/h4$f2;->g(Lcom/join/mgps/adapter/h4$f2;)Landroid/widget/LinearLayout;

    move-result-object v1

    new-instance v3, Lcom/join/mgps/adapter/u3;

    invoke-direct {v3, v12}, Lcom/join/mgps/adapter/u3;-><init>(Lcom/join/mgps/adapter/h4;)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 420
    invoke-static/range {v29 .. v29}, Lcom/join/mgps/adapter/h4$f2;->e(Lcom/join/mgps/adapter/h4$f2;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v1

    new-instance v3, Lcom/join/mgps/adapter/h4$x0;

    invoke-direct {v3, v12, v2}, Lcom/join/mgps/adapter/h4$x0;-><init>(Lcom/join/mgps/adapter/h4;Ljava/util/List;)V

    invoke-virtual {v1, v3}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    goto/16 :goto_1c

    .line 421
    :cond_6
    invoke-virtual {v3}, Lcom/join/mgps/customview/d0;->c()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v10, 0x0

    .line 422
    :goto_1e
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ge v10, v3, :cond_2

    .line 423
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/fragment/m4;

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/join/mgps/fragment/m4;->j0(Ljava/util/List;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_1e

    .line 424
    :cond_7
    invoke-static/range {v29 .. v29}, Lcom/join/mgps/adapter/h4$f2;->a(Lcom/join/mgps/adapter/h4$f2;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_1c

    .line 425
    :pswitch_4a
    invoke-virtual {v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/PAPAItemTitle2;

    if-eqz v1, :cond_2

    .line 426
    invoke-static/range {v16 .. v16}, Lcom/join/mgps/adapter/h4$z1;->a(Lcom/join/mgps/adapter/h4$z1;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAItemTitle2;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 427
    invoke-static/range {v16 .. v16}, Lcom/join/mgps/adapter/h4$z1;->c(Lcom/join/mgps/adapter/h4$z1;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAItemTitle2;->getSubTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 428
    invoke-static/range {v16 .. v16}, Lcom/join/mgps/adapter/h4$z1;->c(Lcom/join/mgps/adapter/h4$z1;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAItemTitle2;->getSubTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v10, 0x8

    goto :goto_1f

    :cond_8
    const/4 v10, 0x0

    :goto_1f
    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1c

    .line 429
    :pswitch_4b
    invoke-virtual {v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 430
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v3, v12, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    const/4 v3, 0x5

    .line 431
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->setInitialPrefetchItemCount(I)V

    .line 432
    new-instance v3, Lcom/join/mgps/adapter/l2;

    invoke-direct {v3, v1}, Lcom/join/mgps/adapter/l2;-><init>(Ljava/util/List;)V

    .line 433
    new-instance v4, Lcom/join/mgps/adapter/x3;

    invoke-direct {v4, v12, v1}, Lcom/join/mgps/adapter/x3;-><init>(Lcom/join/mgps/adapter/h4;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Lcom/join/mgps/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/join/mgps/base/BaseQuickAdapter$i;)V

    .line 434
    invoke-static/range {v19 .. v19}, Lcom/join/mgps/adapter/h4$u1;->a(Lcom/join/mgps/adapter/h4$u1;)Lcom/join/mgps/customview/HorizontalRecyclerView;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 435
    invoke-static/range {v19 .. v19}, Lcom/join/mgps/adapter/h4$u1;->a(Lcom/join/mgps/adapter/h4$u1;)Lcom/join/mgps/customview/HorizontalRecyclerView;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->setItemViewCacheSize(I)V

    .line 436
    invoke-static/range {v19 .. v19}, Lcom/join/mgps/adapter/h4$u1;->a(Lcom/join/mgps/adapter/h4$u1;)Lcom/join/mgps/customview/HorizontalRecyclerView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 437
    invoke-static/range {v19 .. v19}, Lcom/join/mgps/adapter/h4$u1;->a(Lcom/join/mgps/adapter/h4$u1;)Lcom/join/mgps/customview/HorizontalRecyclerView;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 438
    invoke-static/range {v19 .. v19}, Lcom/join/mgps/adapter/h4$u1;->a(Lcom/join/mgps/adapter/h4$u1;)Lcom/join/mgps/customview/HorizontalRecyclerView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 439
    invoke-static/range {v19 .. v19}, Lcom/join/mgps/adapter/h4$u1;->a(Lcom/join/mgps/adapter/h4$u1;)Lcom/join/mgps/customview/HorizontalRecyclerView;

    move-result-object v2

    new-instance v3, Lcom/join/mgps/adapter/h4$w0;

    move-object/from16 v4, v19

    invoke-direct {v3, v12, v1, v4}, Lcom/join/mgps/adapter/h4$w0;-><init>(Lcom/join/mgps/adapter/h4;Ljava/util/List;Lcom/join/mgps/adapter/h4$u1;)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    goto/16 :goto_1c

    .line 440
    :pswitch_4c
    invoke-virtual {v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    .line 441
    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 442
    iget-object v5, v3, Lcom/join/mgps/adapter/h4$p1;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v4}, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->getIco()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 443
    iget-object v5, v3, Lcom/join/mgps/adapter/h4$p1;->c:Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 444
    invoke-virtual {v4}, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->getTag_name()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 445
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 446
    invoke-virtual {v4}, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->getTag_name()Ljava/lang/String;

    move-result-object v4

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    .line 447
    :goto_20
    array-length v7, v4

    if-ge v6, v7, :cond_a

    .line 448
    aget-object v7, v4, v6

    .line 449
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " | "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lt v6, v9, :cond_9

    goto :goto_21

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_20

    .line 450
    :cond_a
    :goto_21
    iget-object v4, v3, Lcom/join/mgps/adapter/h4$p1;->i:Landroid/widget/TextView;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    const/4 v7, 0x3

    sub-int/2addr v6, v7

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v6}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 451
    :cond_b
    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getV_url()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 452
    iget-object v4, v3, Lcom/join/mgps/adapter/h4$p1;->l:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getBig_pic()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f080168

    invoke-static {v4, v6, v5}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    add-int/lit8 v4, v1, 0x1

    .line 453
    iget-object v5, v3, Lcom/join/mgps/adapter/h4$p1;->l:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 454
    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getV_url()Ljava/lang/String;

    move-result-object v5

    .line 455
    new-instance v6, Lcom/join/android/app/component/video/c$k;

    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getBig_pic()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    move-result-object v8

    invoke-direct {v6, v4, v5, v7, v8}, Lcom/join/android/app/component/video/c$k;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 456
    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getPosition()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/join/android/app/component/video/c$k;->g(Ljava/lang/String;)V

    .line 457
    iget-object v5, v12, Lcom/join/mgps/adapter/h4;->k:Lcom/join/android/app/component/video/c;

    const/4 v7, 0x0

    new-array v8, v7, [Z

    invoke-virtual {v5, v4, v6, v8}, Lcom/join/android/app/component/video/c;->d(ILcom/join/android/app/component/video/c$k;[Z)V

    .line 458
    iget-object v5, v3, Lcom/join/mgps/adapter/h4$p1;->m:Landroid/widget/FrameLayout;

    new-instance v6, Lcom/join/mgps/adapter/h4$t0;

    invoke-direct {v6, v12, v4}, Lcom/join/mgps/adapter/h4$t0;-><init>(Lcom/join/mgps/adapter/h4;I)V

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_22

    .line 459
    :cond_c
    iget-object v4, v3, Lcom/join/mgps/adapter/h4$p1;->l:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 460
    iget-object v4, v3, Lcom/join/mgps/adapter/h4$p1;->l:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 461
    iget-object v4, v3, Lcom/join/mgps/adapter/h4$p1;->l:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getBig_pic()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f080168

    invoke-static {v4, v6, v5}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 462
    :goto_22
    iget-object v4, v3, Lcom/join/mgps/adapter/h4$p1;->m:Landroid/widget/FrameLayout;

    new-instance v5, Lcom/join/mgps/adapter/h4$u0;

    invoke-direct {v5, v12, v2}, Lcom/join/mgps/adapter/h4$u0;-><init>(Lcom/join/mgps/adapter/h4;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 463
    iget-object v4, v3, Lcom/join/mgps/adapter/h4$p1;->l:Lcom/facebook/drawee/view/SimpleDraweeView;

    new-instance v5, Lcom/join/mgps/adapter/h4$v0;

    invoke-direct {v5, v12, v2}, Lcom/join/mgps/adapter/h4$v0;-><init>(Lcom/join/mgps/adapter/h4;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 464
    iget-object v4, v3, Lcom/join/mgps/adapter/h4$p1;->j:Landroid/widget/FrameLayout;

    new-instance v5, Lcom/join/mgps/adapter/e4;

    invoke-direct {v5, v12, v2, v3, v1}, Lcom/join/mgps/adapter/e4;-><init>(Lcom/join/mgps/adapter/h4;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Lcom/join/mgps/adapter/h4$p1;I)V

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 465
    iget-object v1, v3, Lcom/join/mgps/adapter/h4$p1;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v4, Lcom/join/mgps/adapter/c4;

    invoke-direct {v4, v12, v2}, Lcom/join/mgps/adapter/c4;-><init>(Lcom/join/mgps/adapter/h4;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 466
    iget-object v1, v3, Lcom/join/mgps/adapter/h4$p1;->k:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 467
    iget-object v1, v3, Lcom/join/mgps/adapter/h4$p1;->n:Landroid/widget/ProgressBar;

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 468
    iget-object v4, v3, Lcom/join/mgps/adapter/h4$p1;->c:Landroid/widget/TextView;

    iget-object v5, v3, Lcom/join/mgps/adapter/h4$p1;->i:Landroid/widget/TextView;

    iget-object v6, v3, Lcom/join/mgps/adapter/h4$p1;->j:Landroid/widget/FrameLayout;

    iget-object v7, v3, Lcom/join/mgps/adapter/h4$p1;->k:Landroid/widget/TextView;

    iget-object v8, v3, Lcom/join/mgps/adapter/h4$p1;->d:Landroid/widget/LinearLayout;

    iget-object v9, v3, Lcom/join/mgps/adapter/h4$p1;->e:Landroid/widget/TextView;

    iget-object v10, v3, Lcom/join/mgps/adapter/h4$p1;->f:Landroid/widget/TextView;

    iget-object v11, v3, Lcom/join/mgps/adapter/h4$p1;->g:Landroid/widget/ProgressBar;

    iget-object v14, v3, Lcom/join/mgps/adapter/h4$p1;->h:Landroid/widget/ProgressBar;

    move-object/from16 v1, p0

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v14

    invoke-direct/range {v1 .. v11}, Lcom/join/mgps/adapter/h4;->update(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V

    goto/16 :goto_1c

    .line 469
    :pswitch_4d
    invoke-virtual {v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_2

    .line 470
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_2

    const/4 v3, 0x0

    .line 471
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    move-object/from16 v3, v41

    invoke-direct {v12, v3, v4, v9, v1}, Lcom/join/mgps/adapter/h4;->f0(Lcom/join/mgps/adapter/h4$s1;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;ZI)V

    .line 472
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    const/4 v4, 0x0

    invoke-direct {v12, v3, v2, v4, v1}, Lcom/join/mgps/adapter/h4;->f0(Lcom/join/mgps/adapter/h4$s1;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;ZI)V

    goto/16 :goto_1c

    .line 473
    :pswitch_4e
    invoke-virtual {v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_2

    .line 474
    invoke-static {v15}, Lcom/join/mgps/adapter/h4$r1;->a(Lcom/join/mgps/adapter/h4$r1;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-static {v15}, Lcom/join/mgps/adapter/h4$r1;->a(Lcom/join/mgps/adapter/h4$r1;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    instance-of v2, v2, Lcom/join/mgps/adapter/s;

    if-eqz v2, :cond_d

    .line 475
    invoke-static {v15}, Lcom/join/mgps/adapter/h4$r1;->a(Lcom/join/mgps/adapter/h4$r1;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/adapter/s;

    .line 476
    invoke-virtual {v2}, Lcom/join/mgps/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 477
    invoke-virtual {v2, v1}, Lcom/join/mgps/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    goto/16 :goto_1c

    .line 478
    :cond_d
    invoke-static {v15}, Lcom/join/mgps/adapter/h4$r1;->a(Lcom/join/mgps/adapter/h4$r1;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 479
    invoke-static {v15}, Lcom/join/mgps/adapter/h4$r1;->a(Lcom/join/mgps/adapter/h4$r1;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 480
    new-instance v2, Lcom/join/mgps/adapter/s;

    invoke-direct {v2, v1}, Lcom/join/mgps/adapter/s;-><init>(Ljava/util/List;)V

    .line 481
    new-instance v3, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v4, v12, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    const/4 v5, 0x5

    invoke-direct {v3, v4, v5}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 482
    invoke-static {v15}, Lcom/join/mgps/adapter/h4$r1;->a(Lcom/join/mgps/adapter/h4$r1;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 483
    invoke-static {v15}, Lcom/join/mgps/adapter/h4$r1;->a(Lcom/join/mgps/adapter/h4$r1;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 484
    new-instance v3, Lcom/join/mgps/adapter/h4$s0;

    invoke-direct {v3, v12, v1}, Lcom/join/mgps/adapter/h4$s0;-><init>(Lcom/join/mgps/adapter/h4;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Lcom/join/mgps/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/join/mgps/base/BaseQuickAdapter$i;)V

    goto/16 :goto_1c

    .line 485
    :pswitch_4f
    invoke-virtual {v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/PAPAHomeBeanV7$TopChannelDTO;

    if-eqz v1, :cond_2

    .line 486
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$TopChannelDTO;->getDiscover()Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 487
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$TopChannelDTO;->getDiscover()Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    move-result-object v2

    .line 488
    invoke-static/range {v25 .. v25}, Lcom/join/mgps/adapter/h4$t2;->g(Lcom/join/mgps/adapter/h4$t2;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v3

    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getBig_pic()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 489
    invoke-static/range {v25 .. v25}, Lcom/join/mgps/adapter/h4$t2;->e(Lcom/join/mgps/adapter/h4$t2;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 490
    invoke-static/range {v25 .. v25}, Lcom/join/mgps/adapter/h4$t2;->c(Lcom/join/mgps/adapter/h4$t2;)Landroid/widget/RelativeLayout;

    move-result-object v3

    new-instance v4, Lcom/join/mgps/adapter/a4;

    invoke-direct {v4, v12, v2}, Lcom/join/mgps/adapter/a4;-><init>(Lcom/join/mgps/adapter/h4;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 491
    :cond_e
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$TopChannelDTO;->getTheNew()Lcom/join/mgps/dto/PAPAHomeBeanV7$TheNewDTO;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 492
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$TopChannelDTO;->getTheNew()Lcom/join/mgps/dto/PAPAHomeBeanV7$TheNewDTO;

    move-result-object v2

    .line 493
    invoke-static/range {v25 .. v25}, Lcom/join/mgps/adapter/h4$t2;->t(Lcom/join/mgps/adapter/h4$t2;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$TheNewDTO;->getCount()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "\u6b3e"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 494
    invoke-static/range {v25 .. v25}, Lcom/join/mgps/adapter/h4$t2;->q(Lcom/join/mgps/adapter/h4$t2;)Landroid/widget/RelativeLayout;

    move-result-object v3

    new-instance v4, Lcom/join/mgps/adapter/y3;

    invoke-direct {v4, v12}, Lcom/join/mgps/adapter/y3;-><init>(Lcom/join/mgps/adapter/h4;)V

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 495
    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$TheNewDTO;->getList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 496
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_f

    .line 497
    invoke-static/range {v25 .. v25}, Lcom/join/mgps/adapter/h4$t2;->v(Lcom/join/mgps/adapter/h4$t2;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 498
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/PAPAHomeBeanV7$ListDTO;

    .line 499
    iget-object v4, v12, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0c047d

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f090af8

    .line 500
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 501
    invoke-virtual {v3}, Lcom/join/mgps/dto/PAPAHomeBeanV7$ListDTO;->getIco()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 502
    invoke-static/range {v25 .. v25}, Lcom/join/mgps/adapter/h4$t2;->v(Lcom/join/mgps/adapter/h4$t2;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_23

    .line 503
    :cond_f
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$TopChannelDTO;->getBroadcast()Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 504
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$TopChannelDTO;->getBroadcast()Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    move-result-object v2

    .line 505
    invoke-static/range {v25 .. v25}, Lcom/join/mgps/adapter/h4$t2;->k(Lcom/join/mgps/adapter/h4$t2;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 506
    invoke-static/range {v25 .. v25}, Lcom/join/mgps/adapter/h4$t2;->m(Lcom/join/mgps/adapter/h4$t2;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getSub_title()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 507
    invoke-static/range {v25 .. v25}, Lcom/join/mgps/adapter/h4$t2;->o(Lcom/join/mgps/adapter/h4$t2;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v3

    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getBig_pic()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 508
    invoke-static/range {v25 .. v25}, Lcom/join/mgps/adapter/h4$t2;->i(Lcom/join/mgps/adapter/h4$t2;)Landroid/widget/RelativeLayout;

    move-result-object v3

    new-instance v4, Lcom/join/mgps/adapter/b4;

    invoke-direct {v4, v12, v2}, Lcom/join/mgps/adapter/b4;-><init>(Lcom/join/mgps/adapter/h4;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 509
    :cond_10
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$TopChannelDTO;->getBg_color()Ljava/lang/String;

    move-result-object v1

    .line 510
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    const-string v1, "#F7F8F9"

    .line 511
    :cond_11
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v3, 0x0

    .line 512
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 513
    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    const/4 v4, 0x2

    new-array v4, v4, [I

    .line 514
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    aput v1, v4, v3

    const-string v1, "#F7F8F9"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    aput v1, v4, v9

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    .line 515
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 516
    invoke-static/range {v25 .. v25}, Lcom/join/mgps/adapter/h4$t2;->a(Lcom/join/mgps/adapter/h4$t2;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1c

    .line 517
    :pswitch_50
    invoke-virtual {v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 518
    new-instance v2, Lcom/join/mgps/adapter/k2;

    iget-object v3, v12, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Lcom/join/mgps/adapter/k2;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 519
    invoke-static/range {v34 .. v34}, Lcom/join/mgps/adapter/h4$k2;->a(Lcom/join/mgps/adapter/h4$k2;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto/16 :goto_1c

    .line 520
    :pswitch_51
    invoke-virtual {v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/GameRankingBean;

    .line 521
    iget-object v2, v12, Lcom/join/mgps/adapter/h4;->l:Lcom/join/mgps/customview/d0;

    const/16 v3, 0x2dba

    if-nez v2, :cond_1d

    .line 522
    new-instance v2, Lcom/join/mgps/pref/PrefDef_;

    iget-object v4, v12, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->rankingMenu()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v2

    invoke-virtual {v2}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 523
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_12

    goto/16 :goto_1c

    :cond_12
    const-string v4, ","

    .line 524
    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 525
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 526
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 527
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameRankingBean;->getRanking_title()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_1c

    const/4 v10, 0x0

    .line 528
    :goto_24
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v10, v6, :cond_1c

    .line 529
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_13

    goto/16 :goto_2a

    .line 530
    :cond_13
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v7, v10, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-nez v10, :cond_15

    .line 531
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameRankingBean;->getOnline_ranking()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v11, 0x1

    :goto_25
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_14

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 532
    invoke-virtual {v15, v3}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 533
    invoke-virtual {v15, v3}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 534
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "home-ranking-"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 535
    invoke-virtual {v15, v3}, Lcom/join/mgps/dto/DownloadPointBase;->setRecPosition(Ljava/lang/String;)V

    add-int/lit8 v11, v11, 0x1

    const/16 v3, 0x2dba

    const/4 v9, 0x1

    goto :goto_25

    .line 536
    :cond_14
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameRankingBean;->getOnline_ranking()Ljava/util/List;

    move-result-object v3

    const/4 v8, 0x1

    invoke-static {v8, v6, v7, v3}, Lcom/join/mgps/fragment/j4;->g0(ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_29

    :cond_15
    const/4 v3, 0x1

    if-ne v10, v3, :cond_17

    .line 537
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameRankingBean;->getSingle_ranking()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_26
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_16

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/join/mgps/dto/CollectionBeanSub;

    const/16 v9, 0x2dba

    .line 538
    invoke-virtual {v8, v9}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 539
    invoke-virtual {v8, v9}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    goto :goto_26

    .line 540
    :cond_16
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameRankingBean;->getSingle_ranking()Ljava/util/List;

    move-result-object v3

    const/4 v8, 0x1

    invoke-static {v8, v6, v7, v3}, Lcom/join/mgps/fragment/j4;->g0(ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_29

    :cond_17
    const/4 v3, 0x2

    if-ne v10, v3, :cond_19

    .line 541
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameRankingBean;->getSimulator_ranking()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_27
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_18

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/join/mgps/dto/CollectionBeanSub;

    const/16 v9, 0x2dba

    .line 542
    invoke-virtual {v8, v9}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 543
    invoke-virtual {v8, v9}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    goto :goto_27

    .line 544
    :cond_18
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameRankingBean;->getSimulator_ranking()Ljava/util/List;

    move-result-object v3

    const/4 v8, 0x1

    invoke-static {v8, v6, v7, v3}, Lcom/join/mgps/fragment/j4;->g0(ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_29

    :cond_19
    const/4 v3, 0x3

    if-ne v10, v3, :cond_1b

    .line 545
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameRankingBean;->getSimulator_ranking()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_28
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/join/mgps/dto/CollectionBeanSub;

    const/16 v9, 0x2dba

    .line 546
    invoke-virtual {v8, v9}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 547
    invoke-virtual {v8, v9}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    goto :goto_28

    .line 548
    :cond_1a
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameRankingBean;->getFree_play_ranking()Ljava/util/List;

    move-result-object v3

    const/4 v8, 0x1

    invoke-static {v8, v6, v7, v3}, Lcom/join/mgps/fragment/j4;->g0(ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 549
    :cond_1b
    :goto_29
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 550
    new-instance v3, Lcom/join/mgps/customview/d0;

    iget-object v6, v12, Lcom/join/mgps/adapter/h4;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v6

    invoke-direct {v3, v6, v2, v4}, Lcom/join/mgps/customview/d0;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/ArrayList;Ljava/util/List;)V

    iput-object v3, v12, Lcom/join/mgps/adapter/h4;->l:Lcom/join/mgps/customview/d0;

    .line 551
    invoke-virtual {v3, v2, v4}, Lcom/join/mgps/customview/d0;->d(Ljava/util/List;Ljava/util/List;)V

    .line 552
    invoke-static/range {v33 .. v33}, Lcom/join/mgps/adapter/h4$g2;->a(Lcom/join/mgps/adapter/h4$g2;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v3

    iget-object v6, v12, Lcom/join/mgps/adapter/h4;->l:Lcom/join/mgps/customview/d0;

    invoke-virtual {v3, v6}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 553
    invoke-static/range {v33 .. v33}, Lcom/join/mgps/adapter/h4$g2;->a(Lcom/join/mgps/adapter/h4$g2;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v3

    const/4 v6, 0x3

    invoke-virtual {v3, v6}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 554
    invoke-static/range {v33 .. v33}, Lcom/join/mgps/adapter/h4$g2;->e(Lcom/join/mgps/adapter/h4$g2;)Lcom/join/mgps/customview/SlidingTabLayout6;

    move-result-object v3

    invoke-static/range {v33 .. v33}, Lcom/join/mgps/adapter/h4$g2;->a(Lcom/join/mgps/adapter/h4$g2;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/join/mgps/customview/SlidingTabLayout1;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 555
    invoke-static/range {v33 .. v33}, Lcom/join/mgps/adapter/h4$g2;->c(Lcom/join/mgps/adapter/h4$g2;)Landroid/widget/TextView;

    move-result-object v3

    sget-object v6, Lcom/join/mgps/adapter/f4;->a:Lcom/join/mgps/adapter/f4;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2a
    add-int/lit8 v10, v10, 0x1

    const/16 v3, 0x2dba

    const/4 v9, 0x1

    goto/16 :goto_24

    .line 556
    :cond_1c
    iget-object v1, v12, Lcom/join/mgps/adapter/h4;->l:Lcom/join/mgps/customview/d0;

    invoke-virtual {v1}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    goto/16 :goto_1c

    .line 557
    :cond_1d
    invoke-virtual {v2}, Lcom/join/mgps/customview/d0;->c()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v10, 0x0

    .line 558
    :goto_2b
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v10, v3, :cond_2

    if-nez v10, :cond_1e

    .line 559
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/fragment/j4;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameRankingBean;->getOnline_ranking()Ljava/util/List;

    move-result-object v4

    const/16 v5, 0x2dba

    invoke-virtual {v3, v4, v5}, Lcom/join/mgps/fragment/j4;->o0(Ljava/util/List;I)V

    goto :goto_2c

    :cond_1e
    const/4 v3, 0x1

    if-ne v10, v3, :cond_1f

    .line 560
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/fragment/j4;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameRankingBean;->getSingle_ranking()Ljava/util/List;

    move-result-object v4

    const/16 v5, 0x2dba

    invoke-virtual {v3, v4, v5}, Lcom/join/mgps/fragment/j4;->o0(Ljava/util/List;I)V

    goto :goto_2c

    :cond_1f
    const/4 v3, 0x2

    if-ne v10, v3, :cond_20

    .line 561
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/fragment/j4;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameRankingBean;->getSimulator_ranking()Ljava/util/List;

    move-result-object v4

    const/16 v5, 0x2dba

    invoke-virtual {v3, v4, v5}, Lcom/join/mgps/fragment/j4;->o0(Ljava/util/List;I)V

    goto :goto_2c

    :cond_20
    const/4 v3, 0x3

    if-ne v10, v3, :cond_21

    .line 562
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/fragment/j4;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameRankingBean;->getFree_play_ranking()Ljava/util/List;

    move-result-object v4

    const/16 v5, 0x2dba

    invoke-virtual {v3, v4, v5}, Lcom/join/mgps/fragment/j4;->o0(Ljava/util/List;I)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_46} :catch_6

    goto :goto_2d

    :cond_21
    :goto_2c
    const/16 v5, 0x2dba

    :goto_2d
    add-int/lit8 v10, v10, 0x1

    goto :goto_2b

    .line 563
    :pswitch_52
    :try_start_47
    invoke-virtual {v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 564
    invoke-static {v6}, Lcom/join/mgps/adapter/h4$v1;->i(Lcom/join/mgps/adapter/h4$v1;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 565
    invoke-static {v6}, Lcom/join/mgps/adapter/h4$v1;->a(Lcom/join/mgps/adapter/h4$v1;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 566
    invoke-static {v6}, Lcom/join/mgps/adapter/h4$v1;->k(Lcom/join/mgps/adapter/h4$v1;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 567
    invoke-static {v6}, Lcom/join/mgps/adapter/h4$v1;->c(Lcom/join/mgps/adapter/h4$v1;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 568
    invoke-static {v6}, Lcom/join/mgps/adapter/h4$v1;->m(Lcom/join/mgps/adapter/h4$v1;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 569
    invoke-static {v6}, Lcom/join/mgps/adapter/h4$v1;->e(Lcom/join/mgps/adapter/h4$v1;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 570
    invoke-static {v6}, Lcom/join/mgps/adapter/h4$v1;->o(Lcom/join/mgps/adapter/h4$v1;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 571
    invoke-static {v6}, Lcom/join/mgps/adapter/h4$v1;->g(Lcom/join/mgps/adapter/h4$v1;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v2, 0x0

    .line 572
    :goto_2e
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 573
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/AppBean;

    if-eqz v2, :cond_25

    const/4 v4, 0x1

    if-eq v2, v4, :cond_24

    const/4 v4, 0x2

    if-eq v2, v4, :cond_23

    const/4 v4, 0x3

    if-eq v2, v4, :cond_22

    const/4 v4, 0x0

    const/4 v5, 0x0

    goto :goto_2f

    .line 574
    :cond_22
    invoke-static {v6}, Lcom/join/mgps/adapter/h4$v1;->o(Lcom/join/mgps/adapter/h4$v1;)Landroid/widget/TextView;

    move-result-object v4

    .line 575
    invoke-static {v6}, Lcom/join/mgps/adapter/h4$v1;->g(Lcom/join/mgps/adapter/h4$v1;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v5

    goto :goto_2f

    .line 576
    :cond_23
    invoke-static {v6}, Lcom/join/mgps/adapter/h4$v1;->m(Lcom/join/mgps/adapter/h4$v1;)Landroid/widget/TextView;

    move-result-object v4

    .line 577
    invoke-static {v6}, Lcom/join/mgps/adapter/h4$v1;->e(Lcom/join/mgps/adapter/h4$v1;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v5

    goto :goto_2f

    .line 578
    :cond_24
    invoke-static {v6}, Lcom/join/mgps/adapter/h4$v1;->k(Lcom/join/mgps/adapter/h4$v1;)Landroid/widget/TextView;

    move-result-object v4

    .line 579
    invoke-static {v6}, Lcom/join/mgps/adapter/h4$v1;->c(Lcom/join/mgps/adapter/h4$v1;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v5

    goto :goto_2f

    .line 580
    :cond_25
    invoke-static {v6}, Lcom/join/mgps/adapter/h4$v1;->i(Lcom/join/mgps/adapter/h4$v1;)Landroid/widget/TextView;

    move-result-object v4

    .line 581
    invoke-static {v6}, Lcom/join/mgps/adapter/h4$v1;->a(Lcom/join/mgps/adapter/h4$v1;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v5

    .line 582
    :goto_2f
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u7ec4\u4ef6"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getMoreType2()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 583
    invoke-virtual {v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getMoreType()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_26

    add-int/lit8 v8, v2, 0x1

    goto :goto_30

    :cond_26
    add-int/lit8 v8, v2, 0x5

    .line 584
    :goto_30
    new-instance v9, Lcom/papa/sim/statistic/e;

    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getMoreType2()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    move-object/from16 p1, v1

    add-int/lit8 v1, v17, 0x7

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getGame_name()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v9, v14, v7, v1, v8}, Lcom/papa/sim/statistic/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    invoke-direct {v12, v3, v4, v5, v9}, Lcom/join/mgps/adapter/h4;->Y(Lcom/join/mgps/dto/AppBean;Landroid/widget/TextView;Lcom/facebook/drawee/view/SimpleDraweeView;Lcom/papa/sim/statistic/e;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_47} :catch_4

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v1, p1

    goto/16 :goto_2e

    :catch_4
    move-exception v0

    move-object v1, v0

    .line 586
    :try_start_48
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_48} :catch_6

    goto/16 :goto_1c

    .line 587
    :pswitch_53
    :try_start_49
    invoke-virtual {v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_2

    .line 588
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    const/4 v2, 0x0

    .line 589
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/BannerBean;

    if-nez v2, :cond_27

    return-object v13

    .line 590
    :cond_27
    invoke-static/range {v28 .. v28}, Lcom/join/mgps/adapter/h4$j2;->a(Lcom/join/mgps/adapter/h4$j2;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v3

    invoke-virtual {v2}, Lcom/join/mgps/dto/BannerBean;->getPic_remote()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f080168

    invoke-static {v3, v5, v4}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 591
    invoke-static/range {v28 .. v28}, Lcom/join/mgps/adapter/h4$j2;->a(Lcom/join/mgps/adapter/h4$j2;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v3

    new-instance v4, Lcom/join/mgps/adapter/h4$v;

    invoke-direct {v4, v12, v2}, Lcom/join/mgps/adapter/h4$v;-><init>(Lcom/join/mgps/adapter/h4;Lcom/join/mgps/dto/BannerBean;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v2, 0x1

    .line 592
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/BannerBean;

    .line 593
    invoke-static/range {v28 .. v28}, Lcom/join/mgps/adapter/h4$j2;->c(Lcom/join/mgps/adapter/h4$j2;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/BannerBean;->getPic_remote()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f080168

    invoke-static {v2, v4, v3}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 594
    invoke-static/range {v28 .. v28}, Lcom/join/mgps/adapter/h4$j2;->c(Lcom/join/mgps/adapter/h4$j2;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v2

    new-instance v3, Lcom/join/mgps/adapter/h4$g0;

    invoke-direct {v3, v12, v1}, Lcom/join/mgps/adapter/h4$g0;-><init>(Lcom/join/mgps/adapter/h4;Lcom/join/mgps/dto/BannerBean;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_49} :catch_5

    goto/16 :goto_1c

    :catch_5
    move-exception v0

    move-object v1, v0

    .line 595
    :try_start_4a
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1c

    .line 596
    :pswitch_54
    invoke-static {v7}, Lcom/join/mgps/adapter/h4$e2;->e(Lcom/join/mgps/adapter/h4$e2;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/join/mgps/Util/x;->C(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 597
    invoke-static {v7}, Lcom/join/mgps/adapter/h4$e2;->a(Lcom/join/mgps/adapter/h4$e2;)Lcom/join/mgps/customview/CubeRotateView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/customview/CubeRotateView;->setTimeAnim()V

    .line 598
    invoke-static {v7}, Lcom/join/mgps/adapter/h4$e2;->a(Lcom/join/mgps/adapter/h4$e2;)Lcom/join/mgps/customview/CubeRotateView;

    move-result-object v1

    new-instance v2, Lcom/join/mgps/adapter/h4$q0;

    invoke-direct {v2, v12}, Lcom/join/mgps/adapter/h4$q0;-><init>(Lcom/join/mgps/adapter/h4;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1c

    .line 599
    :pswitch_55
    invoke-virtual {v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getRecomDatabeanLeft()Lcom/join/mgps/business/RecomDatabeanBusiness;

    move-result-object v1

    .line 600
    invoke-static {v8}, Lcom/join/mgps/adapter/h4$d2;->a(Lcom/join/mgps/adapter/h4$d2;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/dto/ModleBean;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 601
    invoke-static {v8}, Lcom/join/mgps/adapter/h4$d2;->c(Lcom/join/mgps/adapter/h4$d2;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/dto/ModleBean;->getSub_title()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 602
    invoke-static {v8}, Lcom/join/mgps/adapter/h4$d2;->e(Lcom/join/mgps/adapter/h4$d2;)Landroid/widget/LinearLayout;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 603
    invoke-virtual {v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getMoreType()I

    move-result v2

    const/4 v9, 0x2

    if-ne v2, v9, :cond_2

    .line 604
    invoke-virtual {v1}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2b

    invoke-virtual {v1}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_2b

    .line 605
    invoke-virtual {v1}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/AppBeanMain;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBeanMain;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    move-result-object v2

    if-nez v2, :cond_28

    goto :goto_32

    .line 606
    :cond_28
    invoke-virtual {v1}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/AppBeanMain;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBeanMain;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    move-result-object v2

    if-eqz v2, :cond_2a

    .line 607
    invoke-virtual {v2}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type()I

    move-result v3

    const/4 v14, 0x3

    if-ne v3, v14, :cond_29

    const-string v3, "9"

    invoke-virtual {v2}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    goto :goto_31

    .line 608
    :cond_29
    invoke-static {v8}, Lcom/join/mgps/adapter/h4$d2;->e(Lcom/join/mgps/adapter/h4$d2;)Landroid/widget/LinearLayout;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_33

    .line 609
    :cond_2a
    :goto_31
    invoke-static {v8}, Lcom/join/mgps/adapter/h4$d2;->e(Lcom/join/mgps/adapter/h4$d2;)Landroid/widget/LinearLayout;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_33

    .line 610
    :cond_2b
    :goto_32
    invoke-static {v8}, Lcom/join/mgps/adapter/h4$d2;->e(Lcom/join/mgps/adapter/h4$d2;)Landroid/widget/LinearLayout;

    move-result-object v2

    const/16 v9, 0x8

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 611
    :goto_33
    invoke-static {v8}, Lcom/join/mgps/adapter/h4$d2;->e(Lcom/join/mgps/adapter/h4$d2;)Landroid/widget/LinearLayout;

    move-result-object v2

    new-instance v3, Lcom/join/mgps/adapter/h4$i0;

    invoke-direct {v3, v12, v1}, Lcom/join/mgps/adapter/h4$i0;-><init>(Lcom/join/mgps/adapter/h4;Lcom/join/mgps/business/RecomDatabeanBusiness;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4a} :catch_6

    goto/16 :goto_1c

    :catch_6
    move-exception v0

    move-object v1, v0

    move-object/from16 v25, v13

    goto/16 :goto_51

    :pswitch_56
    const/4 v9, 0x2

    const/4 v14, 0x3

    .line 612
    :try_start_4b
    invoke-virtual {v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getRecomDatabeans()Ljava/util/List;

    move-result-object v15

    move-object/from16 v8, v44

    .line 613
    iget-object v1, v8, Lcom/join/mgps/adapter/h4$c2;->v:Landroid/widget/LinearLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 614
    iget-object v1, v8, Lcom/join/mgps/adapter/h4$c2;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-eqz v15, :cond_2c

    .line 615
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2c

    const/4 v1, 0x0

    .line 616
    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/join/mgps/business/RecomDatabeanBusiness;

    .line 617
    iget-object v2, v8, Lcom/join/mgps/adapter/h4$c2;->j:Landroid/widget/TextView;

    invoke-virtual {v7}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/AppBeanMain;

    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBeanMain;->getGame_info()Lcom/join/mgps/dto/AppBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/AppBean;->getInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 618
    invoke-static {v8}, Lcom/join/mgps/adapter/h4$c2;->a(Lcom/join/mgps/adapter/h4$c2;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v1

    invoke-virtual {v7}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/ModleBean;->getPic_remote()Ljava/lang/String;

    move-result-object v2

    const v6, 0x7f0807b1

    invoke-static {v1, v6, v2}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 619
    iget-object v2, v8, Lcom/join/mgps/adapter/h4$c2;->i:Landroid/widget/TextView;

    iget-object v4, v8, Lcom/join/mgps/adapter/h4$c2;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v5, v8, Lcom/join/mgps/adapter/h4$c2;->e:Landroid/widget/TextView;

    iget-object v3, v8, Lcom/join/mgps/adapter/h4$c2;->f:Landroid/widget/TextView;

    iget-object v1, v8, Lcom/join/mgps/adapter/h4$c2;->g:Landroid/widget/RelativeLayout;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getMoreType2()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getReMarks()Ljava/lang/String;

    move-result-object v17
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4b} :catch_7

    move-object/from16 v18, v1

    move-object/from16 v1, p0

    move-object v6, v3

    move-object v3, v7

    const v19, 0x7f0807b1

    move-object v14, v7

    move-object/from16 v7, v18

    move-object/from16 v25, v13

    move-object v13, v8

    move-object/from16 v8, v16

    move-object/from16 v16, v11

    const/4 v11, 0x1

    move-object/from16 v9, v17

    :try_start_4c
    invoke-direct/range {v1 .. v9}, Lcom/join/mgps/adapter/h4;->e0(Landroid/widget/TextView;Lcom/join/mgps/business/RecomDatabeanBusiness;Lcom/facebook/drawee/view/SimpleDraweeView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    iget-object v1, v13, Lcom/join/mgps/adapter/h4$c2;->h:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/join/mgps/adapter/h4$n0;

    invoke-direct {v2, v12, v10, v14}, Lcom/join/mgps/adapter/h4$n0;-><init>(Lcom/join/mgps/adapter/h4;Lcom/join/mgps/dto/MgpapaMainItemBean;Lcom/join/mgps/business/RecomDatabeanBusiness;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 621
    invoke-virtual {v14}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/AppBeanMain;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AppBeanMain;->getGame_info()Lcom/join/mgps/dto/AppBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/AppBean;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v1

    iget-object v2, v13, Lcom/join/mgps/adapter/h4$c2;->y:Landroid/widget/TextView;

    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->w2(Lcom/join/mgps/dto/TipNew;Landroid/widget/TextView;)V

    goto :goto_34

    :cond_2c
    move-object/from16 v16, v11

    move-object/from16 v25, v13

    const/4 v11, 0x1

    move-object v13, v8

    :goto_34
    if-eqz v15, :cond_2d

    .line 622
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v11, :cond_2d

    .line 623
    iget-object v1, v13, Lcom/join/mgps/adapter/h4$c2;->o:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 624
    invoke-interface {v15, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/join/mgps/business/RecomDatabeanBusiness;

    .line 625
    iget-object v1, v13, Lcom/join/mgps/adapter/h4$c2;->q:Landroid/widget/TextView;

    invoke-virtual {v11}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/AppBeanMain;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBeanMain;->getGame_info()Lcom/join/mgps/dto/AppBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBean;->getInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 626
    invoke-static {v13}, Lcom/join/mgps/adapter/h4$c2;->c(Lcom/join/mgps/adapter/h4$c2;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v1

    invoke-virtual {v11}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/ModleBean;->getPic_remote()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0807b1

    invoke-static {v1, v3, v2}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 627
    iget-object v2, v13, Lcom/join/mgps/adapter/h4$c2;->p:Landroid/widget/TextView;

    iget-object v4, v13, Lcom/join/mgps/adapter/h4$c2;->k:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v5, v13, Lcom/join/mgps/adapter/h4$c2;->l:Landroid/widget/TextView;

    iget-object v6, v13, Lcom/join/mgps/adapter/h4$c2;->m:Landroid/widget/TextView;

    iget-object v7, v13, Lcom/join/mgps/adapter/h4$c2;->n:Landroid/widget/RelativeLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getMoreType2()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v14, 0x2

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v9, v16

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getReMarks()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v1, p0

    move-object v3, v11

    move-object/from16 v45, v9

    move-object/from16 v9, v16

    invoke-direct/range {v1 .. v9}, Lcom/join/mgps/adapter/h4;->e0(Landroid/widget/TextView;Lcom/join/mgps/business/RecomDatabeanBusiness;Lcom/facebook/drawee/view/SimpleDraweeView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    iget-object v1, v13, Lcom/join/mgps/adapter/h4$c2;->o:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/join/mgps/adapter/h4$o0;

    invoke-direct {v2, v12, v10, v11}, Lcom/join/mgps/adapter/h4$o0;-><init>(Lcom/join/mgps/adapter/h4;Lcom/join/mgps/dto/MgpapaMainItemBean;Lcom/join/mgps/business/RecomDatabeanBusiness;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 629
    invoke-virtual {v11}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/AppBeanMain;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AppBeanMain;->getGame_info()Lcom/join/mgps/dto/AppBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/AppBean;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v1

    iget-object v2, v13, Lcom/join/mgps/adapter/h4$c2;->z:Landroid/widget/TextView;

    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->w2(Lcom/join/mgps/dto/TipNew;Landroid/widget/TextView;)V

    goto :goto_35

    :cond_2d
    move-object/from16 v45, v16

    const/4 v14, 0x2

    :goto_35
    if-eqz v15, :cond_48

    .line 630
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v14, :cond_48

    .line 631
    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/join/mgps/business/RecomDatabeanBusiness;

    .line 632
    iget-object v1, v13, Lcom/join/mgps/adapter/h4$c2;->v:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 633
    iget-object v1, v13, Lcom/join/mgps/adapter/h4$c2;->x:Landroid/widget/TextView;

    invoke-virtual {v11}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/AppBeanMain;

    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBeanMain;->getGame_info()Lcom/join/mgps/dto/AppBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBean;->getInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 634
    invoke-static {v13}, Lcom/join/mgps/adapter/h4$c2;->e(Lcom/join/mgps/adapter/h4$c2;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v1

    invoke-virtual {v11}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/ModleBean;->getPic_remote()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0807b1

    invoke-static {v1, v3, v2}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 635
    invoke-virtual {v11}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/AppBeanMain;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AppBeanMain;->getGame_info()Lcom/join/mgps/dto/AppBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/AppBean;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v1

    iget-object v2, v13, Lcom/join/mgps/adapter/h4$c2;->A:Landroid/widget/TextView;

    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->w2(Lcom/join/mgps/dto/TipNew;Landroid/widget/TextView;)V

    .line 636
    iget-object v2, v13, Lcom/join/mgps/adapter/h4$c2;->w:Landroid/widget/TextView;

    iget-object v4, v13, Lcom/join/mgps/adapter/h4$c2;->r:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v5, v13, Lcom/join/mgps/adapter/h4$c2;->s:Landroid/widget/TextView;

    iget-object v6, v13, Lcom/join/mgps/adapter/h4$c2;->t:Landroid/widget/TextView;

    iget-object v7, v13, Lcom/join/mgps/adapter/h4$c2;->u:Landroid/widget/RelativeLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getMoreType2()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v3, v45

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getReMarks()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v1, p0

    move-object v3, v11

    invoke-direct/range {v1 .. v9}, Lcom/join/mgps/adapter/h4;->e0(Landroid/widget/TextView;Lcom/join/mgps/business/RecomDatabeanBusiness;Lcom/facebook/drawee/view/SimpleDraweeView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    iget-object v1, v13, Lcom/join/mgps/adapter/h4$c2;->v:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/join/mgps/adapter/h4$p0;

    invoke-direct {v2, v12, v10, v11}, Lcom/join/mgps/adapter/h4$p0;-><init>(Lcom/join/mgps/adapter/h4;Lcom/join/mgps/dto/MgpapaMainItemBean;Lcom/join/mgps/business/RecomDatabeanBusiness;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3f

    :catch_7
    move-exception v0

    move-object/from16 v25, v13

    goto/16 :goto_50

    :pswitch_57
    move-object/from16 v25, v13

    const/16 v9, 0x8

    const/4 v11, 0x1

    const/4 v13, 0x2

    .line 638
    invoke-virtual {v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getRecomDatabeanLeft()Lcom/join/mgps/business/RecomDatabeanBusiness;

    move-result-object v15

    move-object/from16 v8, v43

    .line 639
    iget-object v2, v8, Lcom/join/mgps/adapter/h4$b2;->i:Landroid/widget/TextView;

    iget-object v4, v8, Lcom/join/mgps/adapter/h4$b2;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v5, v8, Lcom/join/mgps/adapter/h4$b2;->e:Landroid/widget/TextView;

    iget-object v6, v8, Lcom/join/mgps/adapter/h4$b2;->f:Landroid/widget/TextView;

    iget-object v7, v8, Lcom/join/mgps/adapter/h4$b2;->g:Landroid/widget/RelativeLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getMoreType2()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getReMarks()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v1, p0

    move-object v3, v15

    move-object v13, v8

    move-object v8, v14

    const/16 v14, 0x8

    move-object/from16 v9, v16

    invoke-direct/range {v1 .. v9}, Lcom/join/mgps/adapter/h4;->e0(Landroid/widget/TextView;Lcom/join/mgps/business/RecomDatabeanBusiness;Lcom/facebook/drawee/view/SimpleDraweeView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    invoke-virtual {v15}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2f

    invoke-virtual {v15}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2f

    .line 641
    invoke-virtual {v15}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/AppBeanMain;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AppBeanMain;->getGame_info()Lcom/join/mgps/dto/AppBean;

    move-result-object v1

    .line 642
    iget-object v2, v13, Lcom/join/mgps/adapter/h4$b2;->f:Landroid/widget/TextView;

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 643
    invoke-virtual {v1}, Lcom/join/mgps/dto/AppBean;->getScore()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v1}, Lcom/join/mgps/dto/AppBean;->getDown_count()I

    move-result v17

    invoke-virtual {v1}, Lcom/join/mgps/dto/AppBean;->getSize()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v1}, Lcom/join/mgps/dto/AppBean;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v19

    invoke-virtual {v1}, Lcom/join/mgps/dto/AppBean;->getTag_info()Ljava/util/ArrayList;

    move-result-object v20

    iget-object v1, v13, Lcom/join/mgps/adapter/h4$b2;->j:Landroid/widget/LinearLayout;

    iget-object v2, v12, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    const-string v3, "3"

    invoke-virtual {v15}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/AppBeanMain;

    invoke-virtual {v4}, Lcom/join/mgps/dto/AppBeanMain;->getTpl_type()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    const/16 v23, 0x1

    goto :goto_36

    :cond_2e
    const/16 v23, 0x0

    :goto_36
    move-object/from16 v21, v1

    move-object/from16 v22, v2

    invoke-static/range {v16 .. v23}, Lcom/join/mgps/Util/UtilsMy;->I(Ljava/lang/String;ILjava/lang/String;Lcom/join/mgps/dto/TipNew;Ljava/util/List;Landroid/widget/LinearLayout;Landroid/content/Context;Z)V

    .line 644
    :cond_2f
    invoke-virtual {v15}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/ModleBean;->getPic_remote()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 645
    array-length v2, v1

    if-lez v2, :cond_30

    .line 646
    invoke-static {v13}, Lcom/join/mgps/adapter/h4$b2;->a(Lcom/join/mgps/adapter/h4$b2;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-static {v2, v3}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 647
    :cond_30
    array-length v2, v1

    if-le v2, v11, :cond_31

    .line 648
    invoke-static {v13}, Lcom/join/mgps/adapter/h4$b2;->c(Lcom/join/mgps/adapter/h4$b2;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v2

    aget-object v3, v1, v11

    invoke-static {v2, v3}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 649
    :cond_31
    array-length v2, v1

    const/4 v3, 0x2

    if-le v2, v3, :cond_32

    .line 650
    invoke-static {v13}, Lcom/join/mgps/adapter/h4$b2;->e(Lcom/join/mgps/adapter/h4$b2;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v2

    aget-object v1, v1, v3

    invoke-static {v2, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 651
    :cond_32
    iget-object v1, v13, Lcom/join/mgps/adapter/h4$b2;->h:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/join/mgps/adapter/h4$j0;

    invoke-direct {v2, v12, v15, v10}, Lcom/join/mgps/adapter/h4$j0;-><init>(Lcom/join/mgps/adapter/h4;Lcom/join/mgps/business/RecomDatabeanBusiness;Lcom/join/mgps/dto/MgpapaMainItemBean;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 652
    invoke-static {v13}, Lcom/join/mgps/adapter/h4$b2;->a(Lcom/join/mgps/adapter/h4$b2;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v1

    new-instance v2, Lcom/join/mgps/adapter/h4$k0;

    invoke-direct {v2, v12, v15, v10}, Lcom/join/mgps/adapter/h4$k0;-><init>(Lcom/join/mgps/adapter/h4;Lcom/join/mgps/business/RecomDatabeanBusiness;Lcom/join/mgps/dto/MgpapaMainItemBean;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 653
    invoke-static {v13}, Lcom/join/mgps/adapter/h4$b2;->c(Lcom/join/mgps/adapter/h4$b2;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v1

    new-instance v2, Lcom/join/mgps/adapter/h4$l0;

    invoke-direct {v2, v12, v15, v10}, Lcom/join/mgps/adapter/h4$l0;-><init>(Lcom/join/mgps/adapter/h4;Lcom/join/mgps/business/RecomDatabeanBusiness;Lcom/join/mgps/dto/MgpapaMainItemBean;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 654
    invoke-static {v13}, Lcom/join/mgps/adapter/h4$b2;->e(Lcom/join/mgps/adapter/h4$b2;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v1

    new-instance v2, Lcom/join/mgps/adapter/h4$m0;

    invoke-direct {v2, v12, v15, v10}, Lcom/join/mgps/adapter/h4$m0;-><init>(Lcom/join/mgps/adapter/h4;Lcom/join/mgps/business/RecomDatabeanBusiness;Lcom/join/mgps/dto/MgpapaMainItemBean;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3f

    :pswitch_58
    move-object v3, v11

    move-object/from16 v25, v13

    .line 655
    invoke-virtual {v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/PapaMainLive;

    .line 656
    invoke-virtual {v1}, Lcom/join/mgps/dto/PapaMainLive;->getList()Ljava/util/List;

    move-result-object v2

    .line 657
    invoke-virtual {v1}, Lcom/join/mgps/dto/PapaMainLive;->getFirst()Lcom/join/mgps/dto/PapaMainLiveFirst;

    move-result-object v4

    if-eqz v4, :cond_33

    move-object/from16 v4, v40

    .line 658
    iget-object v5, v4, Lcom/join/mgps/adapter/h4$m2;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/join/mgps/dto/PapaMainLive;->getFirst()Lcom/join/mgps/dto/PapaMainLiveFirst;

    move-result-object v6

    invoke-virtual {v6}, Lcom/join/mgps/dto/PapaMainLiveFirst;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 659
    iget-object v5, v4, Lcom/join/mgps/adapter/h4$m2;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/join/mgps/dto/PapaMainLive;->getFirst()Lcom/join/mgps/dto/PapaMainLiveFirst;

    move-result-object v6

    invoke-virtual {v6}, Lcom/join/mgps/dto/PapaMainLiveFirst;->getReason()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 660
    iget-object v5, v4, Lcom/join/mgps/adapter/h4$m2;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v1}, Lcom/join/mgps/dto/PapaMainLive;->getFirst()Lcom/join/mgps/dto/PapaMainLiveFirst;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/PapaMainLiveFirst;->getCover_img()Ljava/lang/String;

    move-result-object v1

    iget-object v6, v12, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    const/high16 v7, 0x40c00000    # 6.0f

    invoke-static {v6}, Lcom/join/android/app/common/utils/j;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/j;

    move-result-object v8

    invoke-virtual {v8}, Lcom/join/android/app/common/utils/j;->g()F

    move-result v8

    mul-float v8, v8, v7

    invoke-static {v6, v8}, Lcom/join/android/app/common/utils/MyImageLoader;->D(Landroid/content/Context;F)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v6

    const v7, 0x7f0807b1

    invoke-static {v5, v7, v1, v6}, Lcom/join/android/app/common/utils/MyImageLoader;->f(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    goto :goto_37

    :cond_33
    move-object/from16 v4, v40

    if-eqz v2, :cond_34

    .line 661
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_34

    const/4 v1, 0x0

    .line 662
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/PapaMainLivelistItem;

    .line 663
    iget-object v5, v4, Lcom/join/mgps/adapter/h4$m2;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/join/mgps/dto/PapaMainLivelistItem;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 664
    iget-object v5, v4, Lcom/join/mgps/adapter/h4$m2;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v1}, Lcom/join/mgps/dto/PapaMainLivelistItem;->getCover_img()Ljava/lang/String;

    move-result-object v1

    iget-object v6, v12, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    const/high16 v7, 0x40c00000    # 6.0f

    invoke-static {v6}, Lcom/join/android/app/common/utils/j;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/j;

    move-result-object v8

    invoke-virtual {v8}, Lcom/join/android/app/common/utils/j;->g()F

    move-result v8

    mul-float v8, v8, v7

    invoke-static {v6, v8}, Lcom/join/android/app/common/utils/MyImageLoader;->D(Landroid/content/Context;F)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v6

    const v7, 0x7f0807b1

    invoke-static {v5, v7, v1, v6}, Lcom/join/android/app/common/utils/MyImageLoader;->f(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    :cond_34
    :goto_37
    if-eqz v2, :cond_37

    .line 665
    iget-object v1, v4, Lcom/join/mgps/adapter/h4$m2;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 666
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_38
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/PapaMainLivelistItem;

    .line 667
    iget-object v5, v12, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f0c0520

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f09100f

    .line 668
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f090ff4

    .line 669
    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v9, 0x7f090687

    .line 670
    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 671
    invoke-virtual {v2}, Lcom/join/mgps/dto/PapaMainLivelistItem;->getCover_img()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v12, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    const/high16 v13, 0x40a00000    # 5.0f

    invoke-static {v11}, Lcom/join/android/app/common/utils/j;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/j;

    move-result-object v14

    invoke-virtual {v14}, Lcom/join/android/app/common/utils/j;->g()F

    move-result v14

    mul-float v14, v14, v13

    invoke-static {v11, v14}, Lcom/join/android/app/common/utils/MyImageLoader;->D(Landroid/content/Context;F)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v11

    const v13, 0x7f0807b1

    invoke-static {v9, v13, v10, v11}, Lcom/join/android/app/common/utils/MyImageLoader;->f(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 672
    invoke-virtual {v2}, Lcom/join/mgps/dto/PapaMainLivelistItem;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 673
    invoke-virtual {v2}, Lcom/join/mgps/dto/PapaMainLivelistItem;->getStart_timestamp()J

    move-result-wide v9

    .line 674
    invoke-virtual {v2}, Lcom/join/mgps/dto/PapaMainLivelistItem;->getEnd_timestamp()J

    move-result-wide v13

    const-wide/16 v15, 0x3e8

    mul-long v9, v9, v15

    .line 675
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    cmp-long v2, v9, v15

    if-gez v2, :cond_35

    const-wide/16 v15, 0x3e8

    mul-long v15, v15, v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    cmp-long v2, v15, v19

    if-lez v2, :cond_35

    const v2, -0xb8b00

    .line 676
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v2, -0xb8b00

    .line 677
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 678
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u6b63\u5728\u64ad\u51fa\uff1a"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9, v10}, Lcom/join/mgps/Util/x;->z(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v15 .. v16}, Lcom/join/mgps/Util/x;->z(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_39

    .line 679
    :cond_35
    invoke-static {v9, v10}, Lcom/join/android/app/common/utils/c;->g(J)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 680
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v9, v10}, Lcom/join/mgps/Util/x;->z(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v9, 0x3e8

    mul-long v13, v13, v9

    invoke-static {v13, v14}, Lcom/join/mgps/Util/x;->z(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_39

    .line 681
    :cond_36
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v9, v10}, Lcom/join/mgps/Util/x;->y(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\u65e5"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9, v10}, Lcom/join/mgps/Util/x;->z(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v9, 0x3e8

    mul-long v13, v13, v9

    invoke-static {v13, v14}, Lcom/join/mgps/Util/x;->z(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 682
    :goto_39
    iget-object v2, v4, Lcom/join/mgps/adapter/h4$m2;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_38

    .line 683
    :cond_37
    iget-object v1, v4, Lcom/join/mgps/adapter/h4$m2;->d:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/join/mgps/adapter/h4$e0;

    invoke-direct {v2, v12}, Lcom/join/mgps/adapter/h4$e0;-><init>(Lcom/join/mgps/adapter/h4;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 684
    iget-object v1, v4, Lcom/join/mgps/adapter/h4$m2;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    new-instance v2, Lcom/join/mgps/adapter/h4$f0;

    invoke-direct {v2, v12}, Lcom/join/mgps/adapter/h4$f0;-><init>(Lcom/join/mgps/adapter/h4;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 685
    iget-object v1, v4, Lcom/join/mgps/adapter/h4$m2;->e:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/join/mgps/adapter/h4$h0;

    invoke-direct {v2, v12}, Lcom/join/mgps/adapter/h4$h0;-><init>(Lcom/join/mgps/adapter/h4;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3f

    :pswitch_59
    move-object v3, v11

    move-object/from16 v25, v13

    const/4 v11, 0x1

    .line 686
    invoke-virtual {v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getRecomDatabeans()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/join/mgps/business/RecomDatabeanBusiness;

    .line 687
    invoke-virtual {v13}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/ModleBean;->getVedio_url()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 688
    invoke-static/range {v20 .. v20}, Lcom/join/mgps/adapter/h4$q1;->c(Lcom/join/mgps/adapter/h4$q1;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v2

    invoke-virtual {v13}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/ModleBean;->getPic_remote()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f080168

    invoke-static {v2, v5, v4}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    add-int/2addr v1, v11

    .line 689
    invoke-static/range {v20 .. v20}, Lcom/join/mgps/adapter/h4$q1;->c(Lcom/join/mgps/adapter/h4$q1;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 690
    invoke-virtual {v13}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/ModleBean;->getVedio_url()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 691
    invoke-virtual {v13}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/ModleBean;->getVedio_url()Ljava/lang/String;

    move-result-object v2

    .line 692
    new-instance v4, Lcom/join/android/app/component/video/c$k;

    invoke-virtual {v13}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/mgps/dto/ModleBean;->getPic_remote()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/join/mgps/dto/AppBeanMain;

    invoke-virtual {v6}, Lcom/join/mgps/dto/AppBeanMain;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    move-result-object v6

    invoke-direct {v4, v1, v2, v5, v6}, Lcom/join/android/app/component/video/c$k;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 693
    iget-object v2, v12, Lcom/join/mgps/adapter/h4;->k:Lcom/join/android/app/component/video/c;

    new-array v5, v7, [Z

    invoke-virtual {v2, v1, v4, v5}, Lcom/join/android/app/component/video/c;->d(ILcom/join/android/app/component/video/c$k;[Z)V

    .line 694
    :cond_38
    invoke-static/range {v20 .. v20}, Lcom/join/mgps/adapter/h4$q1;->a(Lcom/join/mgps/adapter/h4$q1;)Landroid/widget/FrameLayout;

    move-result-object v2

    new-instance v4, Lcom/join/mgps/adapter/h4$c0;

    invoke-direct {v4, v12, v1}, Lcom/join/mgps/adapter/h4$c0;-><init>(Lcom/join/mgps/adapter/h4;I)V

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3a

    .line 695
    :cond_39
    invoke-static/range {v20 .. v20}, Lcom/join/mgps/adapter/h4$q1;->c(Lcom/join/mgps/adapter/h4$q1;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 696
    invoke-static/range {v20 .. v20}, Lcom/join/mgps/adapter/h4$q1;->c(Lcom/join/mgps/adapter/h4$q1;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v1

    invoke-virtual {v13}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/ModleBean;->getPic_remote()Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f080168

    invoke-static {v1, v4, v2}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    :goto_3a
    move-object/from16 v11, v20

    .line 697
    iget-object v1, v11, Lcom/join/mgps/adapter/h4$q1;->e:Landroid/widget/TextView;

    invoke-virtual {v13}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/ModleBean;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 698
    iget-object v2, v11, Lcom/join/mgps/adapter/h4$q1;->g:Landroid/widget/TextView;

    iget-object v4, v11, Lcom/join/mgps/adapter/h4$q1;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v5, v11, Lcom/join/mgps/adapter/h4$q1;->d:Landroid/widget/TextView;

    const/4 v6, 0x0

    iget-object v7, v11, Lcom/join/mgps/adapter/h4$q1;->f:Landroid/widget/RelativeLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getMoreType2()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getReMarks()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v1, p0

    move-object v3, v13

    invoke-direct/range {v1 .. v9}, Lcom/join/mgps/adapter/h4;->e0(Landroid/widget/TextView;Lcom/join/mgps/business/RecomDatabeanBusiness;Lcom/facebook/drawee/view/SimpleDraweeView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    iget-object v1, v11, Lcom/join/mgps/adapter/h4$q1;->h:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/join/mgps/adapter/h4$d0;

    invoke-direct {v2, v12, v13, v10}, Lcom/join/mgps/adapter/h4$d0;-><init>(Lcom/join/mgps/adapter/h4;Lcom/join/mgps/business/RecomDatabeanBusiness;Lcom/join/mgps/dto/MgpapaMainItemBean;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3f

    :pswitch_5a
    move-object/from16 v25, v13

    const/4 v11, 0x1

    const/16 v14, 0x8

    .line 700
    invoke-virtual {v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getRecomDatabeanLeft()Lcom/join/mgps/business/RecomDatabeanBusiness;

    move-result-object v13

    .line 701
    invoke-virtual {v13}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/ModleBean;->getVedio_url()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 702
    invoke-static/range {v22 .. v22}, Lcom/join/mgps/adapter/h4$m1;->a(Lcom/join/mgps/adapter/h4$m1;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v2

    invoke-virtual {v13}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/dto/ModleBean;->getPic_remote()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f080168

    invoke-static {v2, v4, v3}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    add-int/2addr v1, v11

    .line 703
    invoke-static/range {v22 .. v22}, Lcom/join/mgps/adapter/h4$m1;->a(Lcom/join/mgps/adapter/h4$m1;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 704
    invoke-virtual {v13}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/ModleBean;->getVedio_url()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 705
    invoke-virtual {v13}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/ModleBean;->getVedio_url()Ljava/lang/String;

    move-result-object v2

    .line 706
    invoke-virtual {v13}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/AppBeanMain;

    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBeanMain;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    move-result-object v3

    .line 707
    invoke-virtual {v3}, Lcom/join/mgps/Util/IntentDateBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    move-result-object v4

    .line 708
    invoke-virtual {v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getReMarks()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/join/mgps/dto/ExtBean;->setReMarks(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 709
    invoke-virtual {v3, v4}, Lcom/join/mgps/Util/IntentDateBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    .line 710
    new-instance v4, Lcom/join/android/app/component/video/c$k;

    invoke-virtual {v13}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/mgps/dto/ModleBean;->getPic_remote()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, v2, v5, v3}, Lcom/join/android/app/component/video/c$k;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 711
    iget-object v2, v12, Lcom/join/mgps/adapter/h4;->k:Lcom/join/android/app/component/video/c;

    const/4 v3, 0x0

    new-array v5, v3, [Z

    invoke-virtual {v2, v1, v4, v5}, Lcom/join/android/app/component/video/c;->d(ILcom/join/android/app/component/video/c$k;[Z)V

    :cond_3a
    move-object/from16 v15, v22

    .line 712
    iget-object v2, v15, Lcom/join/mgps/adapter/h4$m1;->i:Landroid/widget/FrameLayout;

    new-instance v3, Lcom/join/mgps/adapter/h4$z;

    invoke-direct {v3, v12, v1}, Lcom/join/mgps/adapter/h4$z;-><init>(Lcom/join/mgps/adapter/h4;I)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3b

    :cond_3b
    move-object/from16 v15, v22

    .line 713
    invoke-static {v15}, Lcom/join/mgps/adapter/h4$m1;->a(Lcom/join/mgps/adapter/h4$m1;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 714
    invoke-static {v15}, Lcom/join/mgps/adapter/h4$m1;->a(Lcom/join/mgps/adapter/h4$m1;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v1

    invoke-virtual {v13}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/ModleBean;->getPic_remote()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f080168

    invoke-static {v1, v3, v2}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 715
    :goto_3b
    iget-object v2, v15, Lcom/join/mgps/adapter/h4$m1;->f:Landroid/widget/TextView;

    iget-object v4, v15, Lcom/join/mgps/adapter/h4$m1;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v5, v15, Lcom/join/mgps/adapter/h4$m1;->c:Landroid/widget/TextView;

    iget-object v6, v15, Lcom/join/mgps/adapter/h4$m1;->d:Landroid/widget/TextView;

    iget-object v7, v15, Lcom/join/mgps/adapter/h4$m1;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getMoreType2()Ljava/lang/String;

    move-result-object v1

    const-string v3, "-x"

    const-string v8, "-1-"

    invoke-virtual {v1, v3, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getReMarks()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v1, p0

    move-object v3, v13

    invoke-direct/range {v1 .. v9}, Lcom/join/mgps/adapter/h4;->e0(Landroid/widget/TextView;Lcom/join/mgps/business/RecomDatabeanBusiness;Lcom/facebook/drawee/view/SimpleDraweeView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    invoke-virtual {v13}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3d

    invoke-virtual {v13}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3d

    .line 717
    invoke-virtual {v13}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/AppBeanMain;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AppBeanMain;->getGame_info()Lcom/join/mgps/dto/AppBean;

    move-result-object v1

    .line 718
    iget-object v2, v15, Lcom/join/mgps/adapter/h4$m1;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 719
    invoke-virtual {v1}, Lcom/join/mgps/dto/AppBean;->getScore()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v1}, Lcom/join/mgps/dto/AppBean;->getDown_count()I

    move-result v17

    invoke-virtual {v1}, Lcom/join/mgps/dto/AppBean;->getSize()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v1}, Lcom/join/mgps/dto/AppBean;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v19

    invoke-virtual {v1}, Lcom/join/mgps/dto/AppBean;->getTag_info()Ljava/util/ArrayList;

    move-result-object v20

    iget-object v1, v15, Lcom/join/mgps/adapter/h4$m1;->h:Landroid/widget/LinearLayout;

    iget-object v2, v12, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    const-string v3, "3"

    invoke-virtual {v13}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/AppBeanMain;

    invoke-virtual {v4}, Lcom/join/mgps/dto/AppBeanMain;->getTpl_type()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    const/16 v23, 0x1

    goto :goto_3c

    :cond_3c
    const/16 v23, 0x0

    :goto_3c
    move-object/from16 v21, v1

    move-object/from16 v22, v2

    invoke-static/range {v16 .. v23}, Lcom/join/mgps/Util/UtilsMy;->I(Ljava/lang/String;ILjava/lang/String;Lcom/join/mgps/dto/TipNew;Ljava/util/List;Landroid/widget/LinearLayout;Landroid/content/Context;Z)V

    .line 720
    :cond_3d
    iget-object v1, v15, Lcom/join/mgps/adapter/h4$m1;->g:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/join/mgps/adapter/h4$a0;

    invoke-direct {v2, v12, v13, v10}, Lcom/join/mgps/adapter/h4$a0;-><init>(Lcom/join/mgps/adapter/h4;Lcom/join/mgps/business/RecomDatabeanBusiness;Lcom/join/mgps/dto/MgpapaMainItemBean;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 721
    invoke-static {v15}, Lcom/join/mgps/adapter/h4$m1;->a(Lcom/join/mgps/adapter/h4$m1;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v1

    new-instance v2, Lcom/join/mgps/adapter/h4$b0;

    invoke-direct {v2, v12, v13, v10}, Lcom/join/mgps/adapter/h4$b0;-><init>(Lcom/join/mgps/adapter/h4;Lcom/join/mgps/business/RecomDatabeanBusiness;Lcom/join/mgps/dto/MgpapaMainItemBean;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3f

    :pswitch_5b
    move-object/from16 v25, v13

    .line 722
    invoke-virtual {v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/PapaMainGameBespeakInfo;

    .line 723
    invoke-static/range {v35 .. v35}, Lcom/join/mgps/adapter/h4$n1;->a(Lcom/join/mgps/adapter/h4$n1;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/PapaMainGameBespeakInfo;->getGame_bespeak_count()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 724
    invoke-static/range {v35 .. v35}, Lcom/join/mgps/adapter/h4$n1;->c(Lcom/join/mgps/adapter/h4$n1;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/join/mgps/dto/PapaMainGameBespeakInfo;->getMember_bespeak_count()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    sget-object v4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 725
    invoke-static/range {v35 .. v35}, Lcom/join/mgps/adapter/h4$n1;->e(Lcom/join/mgps/adapter/h4$n1;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Lcom/join/mgps/adapter/h4$y;

    invoke-direct {v3, v12, v1, v10}, Lcom/join/mgps/adapter/h4$y;-><init>(Lcom/join/mgps/adapter/h4;Lcom/join/mgps/dto/PapaMainGameBespeakInfo;Lcom/join/mgps/dto/MgpapaMainItemBean;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3f

    :pswitch_5c
    move-object/from16 v25, v13

    const/4 v11, 0x1

    .line 726
    invoke-virtual {v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getRecomDatabeanLeft()Lcom/join/mgps/business/RecomDatabeanBusiness;

    move-result-object v1

    .line 727
    invoke-virtual {v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getRecomDatabeanRight()Lcom/join/mgps/business/RecomDatabeanBusiness;

    move-result-object v2

    .line 728
    invoke-virtual {v1}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3f

    invoke-virtual {v1}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3f

    .line 729
    invoke-virtual {v1}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/AppBeanMain;

    .line 730
    iget-object v4, v12, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/drawee/generic/b;->t(Landroid/content/res/Resources;)Lcom/facebook/drawee/generic/b;

    move-result-object v4

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v5}, Lcom/facebook/drawee/generic/RoundingParams;->d(F)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/facebook/drawee/generic/b;->Y(Lcom/facebook/drawee/generic/RoundingParams;)Lcom/facebook/drawee/generic/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/drawee/generic/b;->a()Lcom/facebook/drawee/generic/a;

    move-result-object v4

    .line 731
    invoke-static/range {v32 .. v32}, Lcom/join/mgps/adapter/h4$o1;->e(Lcom/join/mgps/adapter/h4$o1;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/facebook/drawee/view/DraweeView;->setHierarchy(Lk0/b;)V

    .line 732
    invoke-static/range {v32 .. v32}, Lcom/join/mgps/adapter/h4$o1;->i(Lcom/join/mgps/adapter/h4$o1;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v4

    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBeanMain;->getGame_info()Lcom/join/mgps/dto/AppBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/mgps/dto/AppBean;->getIco_remote()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0807b1

    invoke-static {v4, v6, v5}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 733
    invoke-static/range {v32 .. v32}, Lcom/join/mgps/adapter/h4$o1;->e(Lcom/join/mgps/adapter/h4$o1;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v4

    invoke-virtual {v1}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/mgps/dto/ModleBean;->getPic_remote()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v6, v5}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 734
    invoke-static/range {v32 .. v32}, Lcom/join/mgps/adapter/h4$o1;->m(Lcom/join/mgps/adapter/h4$o1;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBeanMain;->getGame_info()Lcom/join/mgps/dto/AppBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/mgps/dto/AppBean;->getGame_name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 735
    invoke-static/range {v32 .. v32}, Lcom/join/mgps/adapter/h4$o1;->w(Lcom/join/mgps/adapter/h4$o1;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u5df2\u6709<font color = \'#000000\'>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBeanMain;->getGame_info()Lcom/join/mgps/dto/AppBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/join/mgps/dto/AppBean;->getBespeak_count()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "</font>\u4eba\u9884\u7ea6"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    sget-object v6, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 736
    invoke-static/range {v32 .. v32}, Lcom/join/mgps/adapter/h4$o1;->a(Lcom/join/mgps/adapter/h4$o1;)Landroid/widget/LinearLayout;

    move-result-object v4

    new-instance v5, Lcom/join/mgps/adapter/h4$t;

    invoke-direct {v5, v12, v3, v1}, Lcom/join/mgps/adapter/h4$t;-><init>(Lcom/join/mgps/adapter/h4;Lcom/join/mgps/dto/AppBeanMain;Lcom/join/mgps/business/RecomDatabeanBusiness;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 737
    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBeanMain;->getGame_info()Lcom/join/mgps/dto/AppBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/AppBean;->getIs_bespeak()I

    move-result v4

    if-ne v4, v11, :cond_3e

    .line 738
    invoke-static/range {v32 .. v32}, Lcom/join/mgps/adapter/h4$o1;->q(Lcom/join/mgps/adapter/h4$o1;)Landroid/widget/TextView;

    move-result-object v1

    const-string v3, "\u5df2\u9884\u7ea6"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 739
    invoke-static/range {v32 .. v32}, Lcom/join/mgps/adapter/h4$o1;->q(Lcom/join/mgps/adapter/h4$o1;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 740
    invoke-static/range {v32 .. v32}, Lcom/join/mgps/adapter/h4$o1;->q(Lcom/join/mgps/adapter/h4$o1;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 741
    invoke-static/range {v32 .. v32}, Lcom/join/mgps/adapter/h4$o1;->q(Lcom/join/mgps/adapter/h4$o1;)Landroid/widget/TextView;

    move-result-object v1

    const v3, 0x7f08039b

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_3d

    .line 742
    :cond_3e
    invoke-static/range {v32 .. v32}, Lcom/join/mgps/adapter/h4$o1;->q(Lcom/join/mgps/adapter/h4$o1;)Landroid/widget/TextView;

    move-result-object v4

    const v5, 0x7f080c34

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 743
    invoke-static/range {v32 .. v32}, Lcom/join/mgps/adapter/h4$o1;->q(Lcom/join/mgps/adapter/h4$o1;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 744
    invoke-static/range {v32 .. v32}, Lcom/join/mgps/adapter/h4$o1;->q(Lcom/join/mgps/adapter/h4$o1;)Landroid/widget/TextView;

    move-result-object v4

    const v5, -0xb8b00

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 745
    invoke-static/range {v32 .. v32}, Lcom/join/mgps/adapter/h4$o1;->q(Lcom/join/mgps/adapter/h4$o1;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Lcom/join/mgps/adapter/h4$u;

    invoke-direct {v5, v12, v3, v1}, Lcom/join/mgps/adapter/h4$u;-><init>(Lcom/join/mgps/adapter/h4;Lcom/join/mgps/dto/AppBeanMain;Lcom/join/mgps/business/RecomDatabeanBusiness;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 746
    invoke-static/range {v32 .. v32}, Lcom/join/mgps/adapter/h4$o1;->q(Lcom/join/mgps/adapter/h4$o1;)Landroid/widget/TextView;

    move-result-object v1

    const-string v3, "\u9884\u7ea6"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 747
    :cond_3f
    :goto_3d
    invoke-virtual {v2}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_41

    invoke-virtual {v2}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_41

    .line 748
    invoke-static/range {v32 .. v32}, Lcom/join/mgps/adapter/h4$o1;->c(Lcom/join/mgps/adapter/h4$o1;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 749
    invoke-virtual {v2}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/AppBeanMain;

    .line 750
    iget-object v3, v12, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/drawee/generic/b;->t(Landroid/content/res/Resources;)Lcom/facebook/drawee/generic/b;

    move-result-object v3

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v4}, Lcom/facebook/drawee/generic/RoundingParams;->d(F)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/facebook/drawee/generic/b;->Y(Lcom/facebook/drawee/generic/RoundingParams;)Lcom/facebook/drawee/generic/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/drawee/generic/b;->a()Lcom/facebook/drawee/generic/a;

    move-result-object v3

    .line 751
    invoke-static/range {v32 .. v32}, Lcom/join/mgps/adapter/h4$o1;->g(Lcom/join/mgps/adapter/h4$o1;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/facebook/drawee/view/DraweeView;->setHierarchy(Lk0/b;)V

    .line 752
    invoke-static/range {v32 .. v32}, Lcom/join/mgps/adapter/h4$o1;->k(Lcom/join/mgps/adapter/h4$o1;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v3

    invoke-virtual {v1}, Lcom/join/mgps/dto/AppBeanMain;->getGame_info()Lcom/join/mgps/dto/AppBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/AppBean;->getIco_remote()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0807b1

    invoke-static {v3, v5, v4}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 753
    invoke-static/range {v32 .. v32}, Lcom/join/mgps/adapter/h4$o1;->g(Lcom/join/mgps/adapter/h4$o1;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v3

    invoke-virtual {v2}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/ModleBean;->getPic_remote()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v5, v4}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 754
    invoke-static/range {v32 .. v32}, Lcom/join/mgps/adapter/h4$o1;->o(Lcom/join/mgps/adapter/h4$o1;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v1}, Lcom/join/mgps/dto/AppBeanMain;->getGame_info()Lcom/join/mgps/dto/AppBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/AppBean;->getGame_name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 755
    invoke-static/range {v32 .. v32}, Lcom/join/mgps/adapter/h4$o1;->u(Lcom/join/mgps/adapter/h4$o1;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5df2\u6709<font color = \'#000000\'>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AppBeanMain;->getGame_info()Lcom/join/mgps/dto/AppBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/mgps/dto/AppBean;->getBespeak_count()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "</font>\u4eba\u9884\u7ea6"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    sget-object v5, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 756
    invoke-static/range {v32 .. v32}, Lcom/join/mgps/adapter/h4$o1;->c(Lcom/join/mgps/adapter/h4$o1;)Landroid/widget/LinearLayout;

    move-result-object v3

    new-instance v4, Lcom/join/mgps/adapter/h4$w;

    invoke-direct {v4, v12, v1, v2}, Lcom/join/mgps/adapter/h4$w;-><init>(Lcom/join/mgps/adapter/h4;Lcom/join/mgps/dto/AppBeanMain;Lcom/join/mgps/business/RecomDatabeanBusiness;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 757
    invoke-virtual {v1}, Lcom/join/mgps/dto/AppBeanMain;->getGame_info()Lcom/join/mgps/dto/AppBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getIs_bespeak()I

    move-result v3

    if-ne v3, v11, :cond_40

    .line 758
    invoke-static/range {v32 .. v32}, Lcom/join/mgps/adapter/h4$o1;->s(Lcom/join/mgps/adapter/h4$o1;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "\u5df2\u9884\u7ea6"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 759
    invoke-static/range {v32 .. v32}, Lcom/join/mgps/adapter/h4$o1;->s(Lcom/join/mgps/adapter/h4$o1;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 760
    invoke-static/range {v32 .. v32}, Lcom/join/mgps/adapter/h4$o1;->s(Lcom/join/mgps/adapter/h4$o1;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 761
    invoke-static/range {v32 .. v32}, Lcom/join/mgps/adapter/h4$o1;->s(Lcom/join/mgps/adapter/h4$o1;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f08039b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_3f

    .line 762
    :cond_40
    invoke-static/range {v32 .. v32}, Lcom/join/mgps/adapter/h4$o1;->s(Lcom/join/mgps/adapter/h4$o1;)Landroid/widget/TextView;

    move-result-object v3

    const v4, 0x7f080c34

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 763
    invoke-static/range {v32 .. v32}, Lcom/join/mgps/adapter/h4$o1;->s(Lcom/join/mgps/adapter/h4$o1;)Landroid/widget/TextView;

    move-result-object v3

    const-string v4, "\u9884\u7ea6"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 764
    invoke-static/range {v32 .. v32}, Lcom/join/mgps/adapter/h4$o1;->s(Lcom/join/mgps/adapter/h4$o1;)Landroid/widget/TextView;

    move-result-object v3

    const v4, -0xb8b00

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 765
    invoke-static/range {v32 .. v32}, Lcom/join/mgps/adapter/h4$o1;->s(Lcom/join/mgps/adapter/h4$o1;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 766
    invoke-static/range {v32 .. v32}, Lcom/join/mgps/adapter/h4$o1;->s(Lcom/join/mgps/adapter/h4$o1;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Lcom/join/mgps/adapter/h4$x;

    invoke-direct {v4, v12, v1, v2}, Lcom/join/mgps/adapter/h4$x;-><init>(Lcom/join/mgps/adapter/h4;Lcom/join/mgps/dto/AppBeanMain;Lcom/join/mgps/business/RecomDatabeanBusiness;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3f

    .line 767
    :cond_41
    invoke-static/range {v32 .. v32}, Lcom/join/mgps/adapter/h4$o1;->c(Lcom/join/mgps/adapter/h4$o1;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_3f

    :pswitch_5d
    move-object/from16 v25, v13

    const/4 v11, 0x1

    .line 768
    invoke-virtual {v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getRecomDatabeans()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_48

    .line 769
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_48

    const/4 v2, 0x0

    .line 770
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/business/RecomDatabeanBusiness;

    if-eqz v2, :cond_42

    .line 771
    invoke-virtual {v2}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v3

    .line 772
    invoke-static/range {v27 .. v27}, Lcom/join/mgps/adapter/h4$o2;->c(Lcom/join/mgps/adapter/h4$o2;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v3}, Lcom/join/mgps/dto/ModleBean;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 773
    invoke-static/range {v27 .. v27}, Lcom/join/mgps/adapter/h4$o2;->e(Lcom/join/mgps/adapter/h4$o2;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v3}, Lcom/join/mgps/dto/ModleBean;->getSub_title()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 774
    invoke-static/range {v27 .. v27}, Lcom/join/mgps/adapter/h4$o2;->g(Lcom/join/mgps/adapter/h4$o2;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v4

    invoke-virtual {v3}, Lcom/join/mgps/dto/ModleBean;->getPic_remote()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 775
    invoke-static/range {v27 .. v27}, Lcom/join/mgps/adapter/h4$o2;->a(Lcom/join/mgps/adapter/h4$o2;)Landroid/widget/LinearLayout;

    move-result-object v3

    new-instance v4, Lcom/join/mgps/adapter/h4$p;

    invoke-direct {v4, v12, v2, v10}, Lcom/join/mgps/adapter/h4$p;-><init>(Lcom/join/mgps/adapter/h4;Lcom/join/mgps/business/RecomDatabeanBusiness;Lcom/join/mgps/dto/MgpapaMainItemBean;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 776
    :cond_42
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/business/RecomDatabeanBusiness;

    if-eqz v2, :cond_43

    .line 777
    invoke-virtual {v2}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v3

    .line 778
    invoke-static/range {v27 .. v27}, Lcom/join/mgps/adapter/h4$o2;->i(Lcom/join/mgps/adapter/h4$o2;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v4

    invoke-virtual {v3}, Lcom/join/mgps/dto/ModleBean;->getPic_remote()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    :cond_43
    const/4 v3, 0x2

    .line 779
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/business/RecomDatabeanBusiness;

    if-eqz v2, :cond_48

    .line 780
    invoke-virtual {v1}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v1

    .line 781
    invoke-static/range {v27 .. v27}, Lcom/join/mgps/adapter/h4$o2;->k(Lcom/join/mgps/adapter/h4$o2;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/ModleBean;->getPic_remote()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    goto/16 :goto_3f

    :pswitch_5e
    move-object/from16 v25, v13

    const/4 v11, 0x1

    .line 782
    invoke-virtual {v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getRecomDatabeanLeft()Lcom/join/mgps/business/RecomDatabeanBusiness;

    move-result-object v1

    .line 783
    invoke-virtual {v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getRecomDatabeanRight()Lcom/join/mgps/business/RecomDatabeanBusiness;

    move-result-object v2

    .line 784
    invoke-virtual {v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getMoreType()I

    move-result v3

    move-object/from16 v4, v36

    const/4 v5, 0x0

    invoke-virtual {v12, v4, v1, v3, v5}, Lcom/join/mgps/adapter/h4;->g0(Lcom/join/mgps/adapter/h4$w1;Lcom/join/mgps/business/RecomDatabeanBusiness;II)V

    .line 785
    invoke-virtual {v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getMoreType()I

    move-result v1

    invoke-virtual {v12, v4, v2, v1, v11}, Lcom/join/mgps/adapter/h4;->g0(Lcom/join/mgps/adapter/h4$w1;Lcom/join/mgps/business/RecomDatabeanBusiness;II)V

    goto/16 :goto_3f

    :pswitch_5f
    move-object/from16 v25, v13

    .line 786
    invoke-static {v5}, Lcom/join/mgps/adapter/h4$x1;->a(Lcom/join/mgps/adapter/h4$x1;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "\u731c\u4f60\u559c\u6b22"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 787
    invoke-static {v5}, Lcom/join/mgps/adapter/h4$x1;->c(Lcom/join/mgps/adapter/h4$x1;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Lcom/join/mgps/adapter/h4$s;

    invoke-direct {v2, v12}, Lcom/join/mgps/adapter/h4$s;-><init>(Lcom/join/mgps/adapter/h4;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3f

    :pswitch_60
    move-object v3, v11

    move-object/from16 v25, v13

    const/16 v14, 0x8

    .line 788
    invoke-virtual {v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getRecomDatabeanLeft()Lcom/join/mgps/business/RecomDatabeanBusiness;

    move-result-object v11

    if-eqz v11, :cond_48

    .line 789
    invoke-virtual {v11}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v1

    .line 790
    invoke-static/range {v21 .. v21}, Lcom/join/mgps/adapter/h4$p2;->e(Lcom/join/mgps/adapter/h4$p2;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/ModleBean;->getSub_title()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 791
    invoke-static/range {v21 .. v21}, Lcom/join/mgps/adapter/h4$p2;->g(Lcom/join/mgps/adapter/h4$p2;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/ModleBean;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 792
    invoke-static/range {v21 .. v21}, Lcom/join/mgps/adapter/h4$p2;->c(Lcom/join/mgps/adapter/h4$p2;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/ModleBean;->getPic_remote()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 793
    invoke-static/range {v21 .. v21}, Lcom/join/mgps/adapter/h4$p2;->a(Lcom/join/mgps/adapter/h4$p2;)Landroid/widget/LinearLayout;

    move-result-object v1

    new-instance v2, Lcom/join/mgps/adapter/h4$q;

    invoke-direct {v2, v12, v11, v10}, Lcom/join/mgps/adapter/h4$q;-><init>(Lcom/join/mgps/adapter/h4;Lcom/join/mgps/business/RecomDatabeanBusiness;Lcom/join/mgps/dto/MgpapaMainItemBean;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 794
    invoke-virtual {v11}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/AppBeanMain;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AppBeanMain;->getGame_info()Lcom/join/mgps/dto/AppBean;

    move-result-object v1

    if-nez v1, :cond_44

    move-object/from16 v13, v21

    .line 795
    iget-object v1, v13, Lcom/join/mgps/adapter/h4$p2;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v14}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 796
    iget-object v1, v13, Lcom/join/mgps/adapter/h4$p2;->k:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3e

    :cond_44
    move-object/from16 v13, v21

    .line 797
    iget-object v1, v13, Lcom/join/mgps/adapter/h4$p2;->i:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 798
    iget-object v1, v13, Lcom/join/mgps/adapter/h4$p2;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 799
    :goto_3e
    iget-object v2, v13, Lcom/join/mgps/adapter/h4$p2;->j:Landroid/widget/TextView;

    iget-object v4, v13, Lcom/join/mgps/adapter/h4$p2;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v5, v13, Lcom/join/mgps/adapter/h4$p2;->f:Landroid/widget/TextView;

    iget-object v6, v13, Lcom/join/mgps/adapter/h4$p2;->g:Landroid/widget/TextView;

    iget-object v7, v13, Lcom/join/mgps/adapter/h4$p2;->h:Landroid/widget/RelativeLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getMoreType2()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getReMarks()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v1, p0

    move-object v3, v11

    invoke-direct/range {v1 .. v9}, Lcom/join/mgps/adapter/h4;->e0(Landroid/widget/TextView;Lcom/join/mgps/business/RecomDatabeanBusiness;Lcom/facebook/drawee/view/SimpleDraweeView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    iget-object v1, v13, Lcom/join/mgps/adapter/h4$p2;->i:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/join/mgps/adapter/h4$r;

    invoke-direct {v2, v12, v11, v10}, Lcom/join/mgps/adapter/h4$r;-><init>(Lcom/join/mgps/adapter/h4;Lcom/join/mgps/business/RecomDatabeanBusiness;Lcom/join/mgps/dto/MgpapaMainItemBean;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3f

    :pswitch_61
    move-object/from16 v25, v13

    const/4 v11, 0x1

    .line 801
    invoke-virtual {v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getRecomDatabeans()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_48

    .line 802
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_48

    const/4 v2, 0x0

    .line 803
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/business/RecomDatabeanBusiness;

    if-eqz v1, :cond_48

    .line 804
    invoke-virtual {v1}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v2

    .line 805
    invoke-static/range {v26 .. v26}, Lcom/join/mgps/adapter/h4$q2;->e(Lcom/join/mgps/adapter/h4$q2;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2}, Lcom/join/mgps/dto/ModleBean;->getSub_title()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    sget-object v5, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 806
    invoke-static/range {v26 .. v26}, Lcom/join/mgps/adapter/h4$q2;->g(Lcom/join/mgps/adapter/h4$q2;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2}, Lcom/join/mgps/dto/ModleBean;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 807
    invoke-virtual {v2}, Lcom/join/mgps/dto/ModleBean;->getPic_remote()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 808
    array-length v4, v3

    if-lez v4, :cond_45

    .line 809
    invoke-static/range {v26 .. v26}, Lcom/join/mgps/adapter/h4$q2;->m(Lcom/join/mgps/adapter/h4$q2;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, v3, v5

    const v6, 0x7f0807b1

    invoke-static {v4, v6, v5}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 810
    :cond_45
    array-length v4, v3

    if-le v4, v11, :cond_46

    .line 811
    invoke-static/range {v26 .. v26}, Lcom/join/mgps/adapter/h4$q2;->o(Lcom/join/mgps/adapter/h4$q2;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v4

    aget-object v5, v3, v11

    const v6, 0x7f0807b1

    invoke-static {v4, v6, v5}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 812
    :cond_46
    array-length v4, v3

    const/4 v5, 0x2

    if-le v4, v5, :cond_47

    .line 813
    invoke-static/range {v26 .. v26}, Lcom/join/mgps/adapter/h4$q2;->q(Lcom/join/mgps/adapter/h4$q2;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v4

    aget-object v3, v3, v5

    const v5, 0x7f0807b1

    invoke-static {v4, v5, v3}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 814
    :cond_47
    invoke-static/range {v26 .. v26}, Lcom/join/mgps/adapter/h4$q2;->k(Lcom/join/mgps/adapter/h4$q2;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/join/mgps/dto/ModleBean;->getComment_count()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 815
    invoke-static/range {v26 .. v26}, Lcom/join/mgps/adapter/h4$q2;->i(Lcom/join/mgps/adapter/h4$q2;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/join/mgps/dto/ModleBean;->getPv_count()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 816
    invoke-static/range {v26 .. v26}, Lcom/join/mgps/adapter/h4$q2;->m(Lcom/join/mgps/adapter/h4$q2;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v2

    new-instance v3, Lcom/join/mgps/adapter/h4$l;

    invoke-direct {v3, v12, v1, v10}, Lcom/join/mgps/adapter/h4$l;-><init>(Lcom/join/mgps/adapter/h4;Lcom/join/mgps/business/RecomDatabeanBusiness;Lcom/join/mgps/dto/MgpapaMainItemBean;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 817
    invoke-static/range {v26 .. v26}, Lcom/join/mgps/adapter/h4$q2;->c(Lcom/join/mgps/adapter/h4$q2;)Landroid/widget/LinearLayout;

    move-result-object v2

    new-instance v3, Lcom/join/mgps/adapter/h4$m;

    invoke-direct {v3, v12, v1, v10}, Lcom/join/mgps/adapter/h4$m;-><init>(Lcom/join/mgps/adapter/h4;Lcom/join/mgps/business/RecomDatabeanBusiness;Lcom/join/mgps/dto/MgpapaMainItemBean;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 818
    invoke-static/range {v26 .. v26}, Lcom/join/mgps/adapter/h4$q2;->o(Lcom/join/mgps/adapter/h4$q2;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v2

    new-instance v3, Lcom/join/mgps/adapter/h4$n;

    invoke-direct {v3, v12, v1, v10}, Lcom/join/mgps/adapter/h4$n;-><init>(Lcom/join/mgps/adapter/h4;Lcom/join/mgps/business/RecomDatabeanBusiness;Lcom/join/mgps/dto/MgpapaMainItemBean;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 819
    invoke-static/range {v26 .. v26}, Lcom/join/mgps/adapter/h4$q2;->a(Lcom/join/mgps/adapter/h4$q2;)Landroid/widget/LinearLayout;

    move-result-object v2

    new-instance v3, Lcom/join/mgps/adapter/h4$o;

    invoke-direct {v3, v12, v1, v10}, Lcom/join/mgps/adapter/h4$o;-><init>(Lcom/join/mgps/adapter/h4;Lcom/join/mgps/business/RecomDatabeanBusiness;Lcom/join/mgps/dto/MgpapaMainItemBean;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3f

    :pswitch_62
    move-object/from16 v25, v13

    .line 820
    invoke-virtual {v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getRecomDatabeans()Ljava/util/List;

    move-result-object v1

    .line 821
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 822
    new-instance v3, Lcom/join/mgps/adapter/q2;

    iget-object v4, v12, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-direct {v3, v4, v2}, Lcom/join/mgps/adapter/q2;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 823
    invoke-static/range {v24 .. v24}, Lcom/join/mgps/adapter/h4$r2;->a(Lcom/join/mgps/adapter/h4$r2;)Lit/sephiroth/android/library/widget/HListView;

    move-result-object v4

    invoke-virtual {v4, v3}, Lit/sephiroth/android/library/widget/HListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 824
    invoke-static/range {v24 .. v24}, Lcom/join/mgps/adapter/h4$r2;->a(Lcom/join/mgps/adapter/h4$r2;)Lit/sephiroth/android/library/widget/HListView;

    move-result-object v4

    new-instance v5, Lcom/join/mgps/adapter/h4$j;

    invoke-direct {v5, v12, v2}, Lcom/join/mgps/adapter/h4$j;-><init>(Lcom/join/mgps/adapter/h4;Ljava/util/ArrayList;)V

    invoke-virtual {v4, v5}, Lit/sephiroth/android/library/widget/AdapterView;->setOnItemClickListener(Lit/sephiroth/android/library/widget/AdapterView$d;)V

    .line 825
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 826
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 827
    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_3f

    :pswitch_63
    move-object/from16 v25, v13

    .line 828
    invoke-virtual {v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getRecomDatabeans()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_48

    .line 829
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_48

    const/4 v2, 0x0

    .line 830
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/business/RecomDatabeanBusiness;

    .line 831
    invoke-static/range {v23 .. v23}, Lcom/join/mgps/adapter/h4$s2;->a(Lcom/join/mgps/adapter/h4$s2;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/dto/ModleBean;->getPic_remote()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f080168

    invoke-static {v2, v4, v3}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 832
    invoke-static/range {v23 .. v23}, Lcom/join/mgps/adapter/h4$s2;->a(Lcom/join/mgps/adapter/h4$s2;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v2

    new-instance v3, Lcom/join/mgps/adapter/h4$i;

    invoke-direct {v3, v12, v1, v10}, Lcom/join/mgps/adapter/h4$i;-><init>(Lcom/join/mgps/adapter/h4;Lcom/join/mgps/business/RecomDatabeanBusiness;Lcom/join/mgps/dto/MgpapaMainItemBean;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4c} :catch_8

    :cond_48
    :goto_3f
    move-object/from16 v7, v25

    goto/16 :goto_4e

    :catch_8
    move-exception v0

    goto/16 :goto_50

    :pswitch_64
    move-object/from16 v25, v13

    const/4 v3, 0x3

    const/16 v7, 0x8

    const/4 v11, 0x1

    .line 833
    :try_start_4d
    invoke-virtual {v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getRecomDatabeanLeft()Lcom/join/mgps/business/RecomDatabeanBusiness;

    move-result-object v4

    .line 834
    invoke-virtual {v4}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_48

    .line 835
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_48

    const/4 v2, 0x0

    .line 836
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/join/mgps/dto/AppBeanMain;

    .line 837
    invoke-virtual {v8}, Lcom/join/mgps/dto/AppBeanMain;->getGame_info()Lcom/join/mgps/dto/AppBean;

    move-result-object v9

    .line 838
    invoke-virtual {v4}, Lcom/join/mgps/business/RecomDatabeanBusiness;->a()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v1

    .line 839
    invoke-virtual {v9}, Lcom/join/mgps/dto/AppBean;->getGift_package_switch()I

    move-result v2
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_4d} :catch_b

    if-ne v2, v11, :cond_49

    move-object/from16 v13, v42

    .line 840
    :try_start_4e
    iget-object v2, v13, Lcom/join/mgps/adapter/h4$h2;->n:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_4e} :catch_8

    goto :goto_40

    :cond_49
    move-object/from16 v13, v42

    .line 841
    :try_start_4f
    iget-object v2, v13, Lcom/join/mgps/adapter/h4$h2;->n:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 842
    :goto_40
    iget-object v2, v13, Lcom/join/mgps/adapter/h4$h2;->b:Landroid/widget/TextView;

    invoke-virtual {v9}, Lcom/join/mgps/dto/AppBean;->getGame_name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 843
    iget-object v2, v13, Lcom/join/mgps/adapter/h4$h2;->e:Landroid/widget/TextView;

    invoke-virtual {v9}, Lcom/join/mgps/dto/AppBean;->getInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_4f} :catch_b

    const-wide/16 v5, 0x0

    if-eqz v1, :cond_4a

    .line 844
    :try_start_50
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v5
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_50} :catch_8

    .line 845
    :cond_4a
    :try_start_51
    invoke-virtual {v9}, Lcom/join/mgps/dto/AppBean;->getGif_ico_remote()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v2
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_51} :catch_b

    if-eqz v2, :cond_4b

    .line 846
    :try_start_52
    iget-object v2, v13, Lcom/join/mgps/adapter/h4$h2;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v9}, Lcom/join/mgps/dto/AppBean;->getGif_ico_remote()Ljava/lang/String;

    move-result-object v15

    invoke-static {v2, v15}, Lcom/join/android/app/common/utils/MyImageLoader;->n(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_52} :catch_8

    goto :goto_41

    .line 847
    :cond_4b
    :try_start_53
    iget-object v2, v13, Lcom/join/mgps/adapter/h4$h2;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v9}, Lcom/join/mgps/dto/AppBean;->getIco_remote()Ljava/lang/String;

    move-result-object v15

    invoke-static {v2, v15}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 848
    :goto_41
    invoke-virtual {v9}, Lcom/join/mgps/dto/AppBean;->getScore()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v9}, Lcom/join/mgps/dto/AppBean;->getDown_count()I

    move-result v17

    invoke-virtual {v9}, Lcom/join/mgps/dto/AppBean;->getSize()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v9}, Lcom/join/mgps/dto/AppBean;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v19

    invoke-virtual {v9}, Lcom/join/mgps/dto/AppBean;->getTag_info()Ljava/util/ArrayList;

    move-result-object v20

    iget-object v2, v13, Lcom/join/mgps/adapter/h4$h2;->g:Landroid/widget/LinearLayout;

    iget-object v15, v12, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    const-string v3, "3"

    invoke-virtual {v8}, Lcom/join/mgps/dto/AppBeanMain;->getTpl_type()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    const/16 v23, 0x1

    goto :goto_42

    :cond_4c
    const/16 v23, 0x0

    :goto_42
    move-object/from16 v21, v2

    move-object/from16 v22, v15

    invoke-static/range {v16 .. v23}, Lcom/join/mgps/Util/UtilsMy;->I(Ljava/lang/String;ILjava/lang/String;Lcom/join/mgps/dto/TipNew;Ljava/util/List;Landroid/widget/LinearLayout;Landroid/content/Context;Z)V

    .line 849
    invoke-virtual {v9}, Lcom/join/mgps/dto/AppBean;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v2
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_53} :catch_b

    move-object/from16 v7, v25

    :try_start_54
    invoke-static {v2, v7, v1}, Lcom/join/mgps/Util/UtilsMy;->v2(Lcom/join/mgps/dto/TipNew;Landroid/view/View;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 850
    iget-object v2, v13, Lcom/join/mgps/adapter/h4$h2;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v11}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 851
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Lcom/join/mgps/dto/AppBean;->getPlugin_num()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const v3, 0x7f080a62

    const v11, 0x7f06002a

    if-eqz v2, :cond_4d

    .line 852
    iget-object v1, v13, Lcom/join/mgps/adapter/h4$h2;->d:Landroid/widget/TextView;

    .line 853
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 854
    iget-object v1, v13, Lcom/join/mgps/adapter/h4$h2;->d:Landroid/widget/TextView;

    const-string v2, "\u5f00\u59cb"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 855
    iget-object v1, v13, Lcom/join/mgps/adapter/h4$h2;->d:Landroid/widget/TextView;

    iget-object v2, v12, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 856
    iget-object v1, v13, Lcom/join/mgps/adapter/h4$h2;->g:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 857
    iget-object v1, v13, Lcom/join/mgps/adapter/h4$h2;->n:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_47

    :cond_4d
    const v2, 0x7f080a67

    if-nez v1, :cond_51

    .line 858
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v12, v13, v1, v3}, Lcom/join/mgps/adapter/h4;->i0(Lcom/join/mgps/adapter/h4$h2;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 859
    invoke-virtual {v9}, Lcom/join/mgps/dto/AppBean;->getTag_info()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/UtilsMy;->e0(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 860
    iget-object v1, v12, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v1

    iget-object v3, v12, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-virtual {v9}, Lcom/join/mgps/dto/AppBean;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 861
    invoke-virtual {v9}, Lcom/join/mgps/dto/AppBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v1

    invoke-virtual {v9}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_4f

    .line 862
    iget-object v1, v12, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v1

    iget-object v3, v12, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-virtual {v9}, Lcom/join/mgps/dto/AppBean;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Lcom/join/android/app/common/utils/APKUtils;->k(Landroid/content/Context;Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$a;

    move-result-object v1

    .line 863
    invoke-virtual {v9}, Lcom/join/mgps/dto/AppBean;->getVer()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4e

    invoke-virtual {v1}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    move-result v1

    invoke-virtual {v9}, Lcom/join/mgps/dto/AppBean;->getVer()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ge v1, v3, :cond_4e

    .line 864
    iget-object v1, v13, Lcom/join/mgps/adapter/h4$h2;->d:Landroid/widget/TextView;

    .line 865
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 866
    iget-object v1, v13, Lcom/join/mgps/adapter/h4$h2;->d:Landroid/widget/TextView;

    const-string v2, "\u66f4\u65b0"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 867
    iget-object v1, v13, Lcom/join/mgps/adapter/h4$h2;->d:Landroid/widget/TextView;

    iget-object v2, v12, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060030

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_47

    .line 868
    :cond_4e
    iget-object v1, v13, Lcom/join/mgps/adapter/h4$h2;->d:Landroid/widget/TextView;

    const v2, 0x7f080a6e

    .line 869
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 870
    iget-object v1, v13, Lcom/join/mgps/adapter/h4$h2;->d:Landroid/widget/TextView;

    iget-object v2, v12, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1100d2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 871
    iget-object v1, v13, Lcom/join/mgps/adapter/h4$h2;->d:Landroid/widget/TextView;

    iget-object v2, v12, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060033

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_47

    .line 872
    :cond_4f
    iget-object v1, v13, Lcom/join/mgps/adapter/h4$h2;->d:Landroid/widget/TextView;

    .line 873
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 874
    invoke-virtual {v9}, Lcom/join/mgps/dto/AppBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v1

    invoke-virtual {v9}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 875
    iget-object v1, v13, Lcom/join/mgps/adapter/h4$h2;->d:Landroid/widget/TextView;

    iget-object v2, v13, Lcom/join/mgps/adapter/h4$h2;->c:Landroid/widget/RelativeLayout;

    invoke-static {v1, v2, v9}, Lcom/join/mgps/Util/UtilsMy;->m2(Landroid/widget/TextView;Landroid/view/View;Lcom/join/mgps/dto/AppBean;)V

    goto/16 :goto_47

    .line 876
    :cond_50
    iget-object v1, v13, Lcom/join/mgps/adapter/h4$h2;->d:Landroid/widget/TextView;

    .line 877
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 878
    invoke-virtual {v9}, Lcom/join/mgps/dto/AppBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v1

    invoke-virtual {v9}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 879
    iget-object v1, v13, Lcom/join/mgps/adapter/h4$h2;->d:Landroid/widget/TextView;

    iget-object v2, v13, Lcom/join/mgps/adapter/h4$h2;->c:Landroid/widget/RelativeLayout;

    invoke-static {v1, v2, v9}, Lcom/join/mgps/Util/UtilsMy;->m2(Landroid/widget/TextView;Landroid/view/View;Lcom/join/mgps/dto/AppBean;)V

    goto/16 :goto_47

    .line 880
    :cond_51
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v14

    .line 881
    invoke-virtual {v9}, Lcom/join/mgps/dto/AppBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v15

    invoke-virtual {v9}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v3
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_54} :catch_c

    if-lez v3, :cond_52

    const/16 v14, 0x2b

    :cond_52
    if-eqz v14, :cond_5a

    const/16 v3, 0x1b

    if-eq v14, v3, :cond_59

    const/16 v3, 0x30

    if-eq v14, v3, :cond_58

    const-string v3, "/"

    const/4 v15, 0x2

    if-eq v14, v15, :cond_56

    const/4 v15, 0x3

    if-eq v14, v15, :cond_54

    const/4 v15, 0x5

    if-eq v14, v15, :cond_53

    const/4 v15, 0x6

    if-eq v14, v15, :cond_54

    const/4 v15, 0x7

    if-eq v14, v15, :cond_5a

    const/16 v15, 0x2a

    if-eq v14, v15, :cond_53

    const/16 v15, 0x2b

    if-eq v14, v15, :cond_5a

    packed-switch v14, :pswitch_data_3

    goto/16 :goto_47

    .line 882
    :pswitch_65
    :try_start_55
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v14, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v12, v13, v2, v14}, Lcom/join/mgps/adapter/h4;->i0(Lcom/join/mgps/adapter/h4$h2;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 883
    iget-object v2, v13, Lcom/join/mgps/adapter/h4$h2;->h:Landroid/widget/TextView;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5, v6}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, v6}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 884
    iget-object v2, v13, Lcom/join/mgps/adapter/h4$h2;->i:Landroid/widget/TextView;

    const-string v3, "\u70b9\u51fb\u91cd\u65b0\u89e3\u538b"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 885
    iget-object v2, v13, Lcom/join/mgps/adapter/h4$h2;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v5

    long-to-int v1, v5

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 886
    iget-object v1, v13, Lcom/join/mgps/adapter/h4$h2;->d:Landroid/widget/TextView;

    const v2, 0x7f080a7b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 887
    iget-object v1, v13, Lcom/join/mgps/adapter/h4$h2;->d:Landroid/widget/TextView;

    const-string v2, "\u89e3\u538b"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 888
    iget-object v1, v13, Lcom/join/mgps/adapter/h4$h2;->d:Landroid/widget/TextView;

    iget-object v2, v12, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_47

    .line 889
    :pswitch_66
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v12, v13, v2, v11}, Lcom/join/mgps/adapter/h4;->i0(Lcom/join/mgps/adapter/h4$h2;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 890
    iget-object v2, v13, Lcom/join/mgps/adapter/h4$h2;->h:Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5, v6}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, v6}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 891
    iget-object v2, v13, Lcom/join/mgps/adapter/h4$h2;->i:Landroid/widget/TextView;

    const-string v3, "\u89e3\u538b\u4e2d.."

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 892
    iget-object v2, v13, Lcom/join/mgps/adapter/h4$h2;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v5

    long-to-int v1, v5

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 893
    iget-object v1, v13, Lcom/join/mgps/adapter/h4$h2;->d:Landroid/widget/TextView;

    const v2, 0x7f0803ca

    .line 894
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 895
    iget-object v1, v13, Lcom/join/mgps/adapter/h4$h2;->d:Landroid/widget/TextView;

    const-string v2, "\u89e3\u538b\u4e2d"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 896
    iget-object v1, v13, Lcom/join/mgps/adapter/h4$h2;->d:Landroid/widget/TextView;

    iget-object v2, v12, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060031

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_47

    .line 897
    :pswitch_67
    iget-object v1, v13, Lcom/join/mgps/adapter/h4$h2;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 898
    iget-object v1, v13, Lcom/join/mgps/adapter/h4$h2;->d:Landroid/widget/TextView;

    const-string v2, "\u5b89\u88c5"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 899
    iget-object v1, v13, Lcom/join/mgps/adapter/h4$h2;->d:Landroid/widget/TextView;

    iget-object v2, v12, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060030

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 900
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v12, v13, v1, v2}, Lcom/join/mgps/adapter/h4;->i0(Lcom/join/mgps/adapter/h4$h2;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_47

    .line 901
    :pswitch_68
    iget-object v2, v13, Lcom/join/mgps/adapter/h4$h2;->d:Landroid/widget/TextView;

    const v14, 0x7f080a62

    .line 902
    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 903
    iget-object v2, v13, Lcom/join/mgps/adapter/h4$h2;->d:Landroid/widget/TextView;

    const-string v14, "\u7b49\u5f85"

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 904
    iget-object v2, v13, Lcom/join/mgps/adapter/h4$h2;->d:Landroid/widget/TextView;

    iget-object v14, v12, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 905
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v12, v13, v2, v2}, Lcom/join/mgps/adapter/h4;->i0(Lcom/join/mgps/adapter/h4$h2;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 906
    iget-object v2, v13, Lcom/join/mgps/adapter/h4$h2;->h:Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v14

    invoke-static {v14, v15}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, v6}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_55} :catch_c

    .line 907
    :try_start_56
    iget-object v2, v13, Lcom/join/mgps/adapter/h4$h2;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v5

    long-to-int v1, v5

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_56} :catch_9

    goto :goto_43

    :catch_9
    move-exception v0

    move-object v1, v0

    .line 908
    :try_start_57
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 909
    :goto_43
    iget-object v1, v13, Lcom/join/mgps/adapter/h4$h2;->i:Landroid/widget/TextView;

    const-string v2, "\u7b49\u5f85\u4e2d"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_47

    .line 910
    :pswitch_69
    iget-object v1, v13, Lcom/join/mgps/adapter/h4$h2;->d:Landroid/widget/TextView;

    .line 911
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 912
    iget-object v1, v13, Lcom/join/mgps/adapter/h4$h2;->d:Landroid/widget/TextView;

    const-string v2, "\u66f4\u65b0"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 913
    iget-object v1, v13, Lcom/join/mgps/adapter/h4$h2;->d:Landroid/widget/TextView;

    iget-object v2, v12, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060030

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 914
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v12, v13, v1, v2}, Lcom/join/mgps/adapter/h4;->i0(Lcom/join/mgps/adapter/h4$h2;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_47

    .line 915
    :cond_53
    iget-object v1, v13, Lcom/join/mgps/adapter/h4$h2;->d:Landroid/widget/TextView;

    const v2, 0x7f080a6e

    .line 916
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 917
    iget-object v1, v13, Lcom/join/mgps/adapter/h4$h2;->d:Landroid/widget/TextView;

    iget-object v2, v12, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1100d2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 918
    iget-object v1, v13, Lcom/join/mgps/adapter/h4$h2;->d:Landroid/widget/TextView;

    iget-object v2, v12, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060033

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 919
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v12, v13, v1, v1}, Lcom/join/mgps/adapter/h4;->i0(Lcom/join/mgps/adapter/h4$h2;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_47

    .line 920
    :cond_54
    iget-object v2, v13, Lcom/join/mgps/adapter/h4$h2;->d:Landroid/widget/TextView;

    const v14, 0x7f080a62

    .line 921
    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 922
    iget-object v2, v13, Lcom/join/mgps/adapter/h4$h2;->d:Landroid/widget/TextView;

    const-string v14, "\u7ee7\u7eed"

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 923
    iget-object v2, v13, Lcom/join/mgps/adapter/h4$h2;->d:Landroid/widget/TextView;

    iget-object v14, v12, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 924
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v12, v13, v2, v2}, Lcom/join/mgps/adapter/h4;->i0(Lcom/join/mgps/adapter/h4$h2;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_57} :catch_c

    .line 925
    :try_start_58
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v2, v14, v16

    if-nez v2, :cond_55

    .line 926
    iget-object v2, v13, Lcom/join/mgps/adapter/h4$h2;->h:Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v14

    invoke-static {v14, v15}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, v6}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_44

    .line 927
    :cond_55
    iget-object v2, v13, Lcom/join/mgps/adapter/h4$h2;->h:Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v14

    invoke-static {v14, v15}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, v6}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 928
    :goto_44
    iget-object v2, v13, Lcom/join/mgps/adapter/h4$h2;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v5

    long-to-int v1, v5

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_58} :catch_a

    goto :goto_45

    :catch_a
    move-exception v0

    move-object v1, v0

    .line 929
    :try_start_59
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 930
    :goto_45
    iget-object v1, v13, Lcom/join/mgps/adapter/h4$h2;->i:Landroid/widget/TextView;

    const-string v2, "\u6682\u505c\u4e2d"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_47

    .line 931
    :cond_56
    invoke-static {v1}, Lcom/join/mgps/Util/UtilsMy;->C3(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 932
    iget-object v2, v13, Lcom/join/mgps/adapter/h4$h2;->d:Landroid/widget/TextView;

    const v14, 0x7f080a62

    .line 933
    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 934
    iget-object v2, v13, Lcom/join/mgps/adapter/h4$h2;->d:Landroid/widget/TextView;

    const-string v14, "\u6682\u505c"

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 935
    iget-object v2, v13, Lcom/join/mgps/adapter/h4$h2;->d:Landroid/widget/TextView;

    iget-object v14, v12, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 936
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v12, v13, v2, v2}, Lcom/join/mgps/adapter/h4;->i0(Lcom/join/mgps/adapter/h4$h2;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 937
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v2, v14, v16

    if-nez v2, :cond_57

    .line 938
    iget-object v2, v13, Lcom/join/mgps/adapter/h4$h2;->h:Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v14

    invoke-static {v14, v15}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, v6}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_46

    .line 939
    :cond_57
    iget-object v2, v13, Lcom/join/mgps/adapter/h4$h2;->h:Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v14

    invoke-static {v14, v15}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, v6}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 940
    :goto_46
    iget-object v2, v13, Lcom/join/mgps/adapter/h4$h2;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v5

    long-to-int v3, v5

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 941
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    move-result-object v1

    .line 942
    iget-object v2, v13, Lcom/join/mgps/adapter/h4$h2;->i:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/S"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_47

    .line 943
    :cond_58
    iget-object v1, v13, Lcom/join/mgps/adapter/h4$h2;->d:Landroid/widget/TextView;

    const v2, 0x7f080a62

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 944
    iget-object v1, v13, Lcom/join/mgps/adapter/h4$h2;->d:Landroid/widget/TextView;

    const-string v2, "\u5b89\u88c5\u4e2d"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 945
    iget-object v1, v13, Lcom/join/mgps/adapter/h4$h2;->d:Landroid/widget/TextView;

    iget-object v2, v12, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 946
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v12, v13, v1, v2}, Lcom/join/mgps/adapter/h4;->i0(Lcom/join/mgps/adapter/h4$h2;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto :goto_47

    .line 947
    :cond_59
    iget-object v1, v13, Lcom/join/mgps/adapter/h4$h2;->d:Landroid/widget/TextView;

    const-string v2, "\u6682\u505c\u4e2d"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_47

    .line 948
    :cond_5a
    iget-object v1, v13, Lcom/join/mgps/adapter/h4$h2;->d:Landroid/widget/TextView;

    .line 949
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 950
    invoke-virtual {v9}, Lcom/join/mgps/dto/AppBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v1

    invoke-virtual {v9}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 951
    iget-object v1, v13, Lcom/join/mgps/adapter/h4$h2;->d:Landroid/widget/TextView;

    iget-object v2, v13, Lcom/join/mgps/adapter/h4$h2;->c:Landroid/widget/RelativeLayout;

    invoke-static {v1, v2, v9}, Lcom/join/mgps/Util/UtilsMy;->m2(Landroid/widget/TextView;Landroid/view/View;Lcom/join/mgps/dto/AppBean;)V

    .line 952
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v12, v13, v1, v2}, Lcom/join/mgps/adapter/h4;->i0(Lcom/join/mgps/adapter/h4$h2;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 953
    :goto_47
    iget-object v11, v13, Lcom/join/mgps/adapter/h4$h2;->c:Landroid/widget/RelativeLayout;

    new-instance v14, Lcom/join/mgps/adapter/h4$k1;

    invoke-virtual {v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getMoreType()I

    move-result v5

    invoke-virtual {v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getMoreType2()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getReMarks()Ljava/lang/String;

    move-result-object v15

    move-object v1, v14

    move-object/from16 v2, p0

    move-object v3, v4

    move v4, v5

    move-object v5, v6

    move-object v6, v15

    invoke-direct/range {v1 .. v6}, Lcom/join/mgps/adapter/h4$k1;-><init>(Lcom/join/mgps/adapter/h4;Lcom/join/mgps/business/RecomDatabeanBusiness;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v14}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 954
    iget-object v1, v13, Lcom/join/mgps/adapter/h4$h2;->m:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/join/mgps/adapter/h4$h;

    invoke-direct {v2, v12, v8, v10, v9}, Lcom/join/mgps/adapter/h4$h;-><init>(Lcom/join/mgps/adapter/h4;Lcom/join/mgps/dto/AppBeanMain;Lcom/join/mgps/dto/MgpapaMainItemBean;Lcom/join/mgps/dto/AppBean;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 955
    iget-object v1, v13, Lcom/join/mgps/adapter/h4$h2;->m:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 956
    iget-object v1, v13, Lcom/join/mgps/adapter/h4$h2;->o:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4e

    :catch_b
    move-exception v0

    move-object/from16 v7, v25

    goto/16 :goto_50

    :pswitch_6a
    move-object v7, v13

    .line 957
    invoke-virtual {v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getRecomDatabeans2()Ljava/util/List;

    move-result-object v1

    .line 958
    invoke-virtual {v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getRecomDatabeans()Ljava/util/List;

    .line 959
    invoke-virtual {v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getRecomDatabeanLeft()Lcom/join/mgps/business/RecomDatabeanBusiness;

    move-result-object v2

    .line 960
    invoke-static/range {v31 .. v31}, Lcom/join/mgps/adapter/h4$a2;->c(Lcom/join/mgps/adapter/h4$a2;)Landroid/widget/TextView;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 961
    invoke-static/range {v31 .. v31}, Lcom/join/mgps/adapter/h4$a2;->e(Lcom/join/mgps/adapter/h4$a2;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 962
    invoke-static/range {v31 .. v31}, Lcom/join/mgps/adapter/h4$a2;->a(Lcom/join/mgps/adapter/h4$a2;)Landroid/widget/TextView;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v4, v31

    .line 963
    iget-object v3, v4, Lcom/join/mgps/adapter/h4$a2;->d:Landroid/view/View;

    if-eqz v3, :cond_5b

    const/16 v5, 0x8

    .line 964
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_5b
    if-eqz v1, :cond_5c

    .line 965
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5c

    .line 966
    invoke-static {v4}, Lcom/join/mgps/adapter/h4$a2;->e(Lcom/join/mgps/adapter/h4$a2;)Landroid/widget/LinearLayout;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 967
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/business/RecomDatabeanBusiness;

    .line 968
    invoke-static {v4}, Lcom/join/mgps/adapter/h4$a2;->e(Lcom/join/mgps/adapter/h4$a2;)Landroid/widget/LinearLayout;

    move-result-object v5

    new-instance v6, Lcom/join/mgps/adapter/h4$b;

    invoke-direct {v6, v12, v3}, Lcom/join/mgps/adapter/h4$b;-><init>(Lcom/join/mgps/adapter/h4;Lcom/join/mgps/business/RecomDatabeanBusiness;)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 969
    invoke-static {v4}, Lcom/join/mgps/adapter/h4$a2;->a(Lcom/join/mgps/adapter/h4$a2;)Landroid/widget/TextView;

    move-result-object v5

    new-instance v6, Lcom/join/mgps/adapter/h4$c;

    invoke-direct {v6, v12, v3}, Lcom/join/mgps/adapter/h4$c;-><init>(Lcom/join/mgps/adapter/h4;Lcom/join/mgps/business/RecomDatabeanBusiness;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_48

    .line 970
    :cond_5c
    invoke-static {v4}, Lcom/join/mgps/adapter/h4$a2;->e(Lcom/join/mgps/adapter/h4$a2;)Landroid/widget/LinearLayout;

    move-result-object v3

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 971
    :goto_48
    invoke-virtual {v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getMoreType()I

    move-result v3

    if-eqz v3, :cond_62

    const/4 v5, 0x2

    if-eq v3, v5, :cond_5f

    packed-switch v3, :pswitch_data_4

    goto/16 :goto_4e

    .line 972
    :pswitch_6b
    invoke-static {v4}, Lcom/join/mgps/adapter/h4$a2;->a(Lcom/join/mgps/adapter/h4$a2;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "\u70ed\u95e8\u6e38\u620f\u5355"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 973
    invoke-static {v4}, Lcom/join/mgps/adapter/h4$a2;->e(Lcom/join/mgps/adapter/h4$a2;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 974
    invoke-static {v4}, Lcom/join/mgps/adapter/h4$a2;->e(Lcom/join/mgps/adapter/h4$a2;)Landroid/widget/LinearLayout;

    move-result-object v1

    sget-object v2, Lcom/join/mgps/adapter/g4;->a:Lcom/join/mgps/adapter/g4;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4e

    .line 975
    :pswitch_6c
    invoke-virtual {v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 976
    invoke-static {v4}, Lcom/join/mgps/adapter/h4$a2;->a(Lcom/join/mgps/adapter/h4$a2;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4e

    .line 977
    :pswitch_6d
    invoke-static {v4}, Lcom/join/mgps/adapter/h4$a2;->a(Lcom/join/mgps/adapter/h4$a2;)Landroid/widget/TextView;

    move-result-object v1

    const-string v3, "\u731c\u4f60\u559c\u6b22"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v2, :cond_6f

    .line 978
    invoke-virtual {v2}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v1

    .line 979
    invoke-static {v4}, Lcom/join/mgps/adapter/h4$a2;->a(Lcom/join/mgps/adapter/h4$a2;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/ModleBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4e

    .line 980
    :pswitch_6e
    invoke-virtual {v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/PapaMainLive;

    .line 981
    invoke-static {v4}, Lcom/join/mgps/adapter/h4$a2;->a(Lcom/join/mgps/adapter/h4$a2;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/PapaMainLive;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4e

    .line 982
    :pswitch_6f
    invoke-static {v4}, Lcom/join/mgps/adapter/h4$a2;->a(Lcom/join/mgps/adapter/h4$a2;)Landroid/widget/TextView;

    move-result-object v1

    const-string v3, "\u7f51\u6e38\u7cbe\u9009\u63a8\u8350"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v2, :cond_6f

    .line 983
    invoke-virtual {v2}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v1

    .line 984
    invoke-static {v4}, Lcom/join/mgps/adapter/h4$a2;->a(Lcom/join/mgps/adapter/h4$a2;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/ModleBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4e

    .line 985
    :pswitch_70
    invoke-static {v4}, Lcom/join/mgps/adapter/h4$a2;->a(Lcom/join/mgps/adapter/h4$a2;)Landroid/widget/TextView;

    move-result-object v1

    const-string v3, "\u6e38\u620f\u9884\u7ea6"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v2, :cond_6f

    .line 986
    invoke-virtual {v2}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v1

    .line 987
    invoke-static {v4}, Lcom/join/mgps/adapter/h4$a2;->a(Lcom/join/mgps/adapter/h4$a2;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/ModleBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4e

    .line 988
    :pswitch_71
    invoke-static {v4}, Lcom/join/mgps/adapter/h4$a2;->a(Lcom/join/mgps/adapter/h4$a2;)Landroid/widget/TextView;

    move-result-object v3

    const-string v5, "\u6700\u65b0\u7f51\u6e38"

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 989
    invoke-static {v4}, Lcom/join/mgps/adapter/h4$a2;->e(Lcom/join/mgps/adapter/h4$a2;)Landroid/widget/LinearLayout;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-eqz v2, :cond_5d

    .line 990
    invoke-virtual {v2}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v2

    .line 991
    invoke-static {v4}, Lcom/join/mgps/adapter/h4$a2;->a(Lcom/join/mgps/adapter/h4$a2;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2}, Lcom/join/mgps/dto/ModleBean;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5d
    if-eqz v1, :cond_5e

    .line 992
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5e

    const/4 v2, 0x0

    .line 993
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/business/RecomDatabeanBusiness;

    .line 994
    invoke-static {v4}, Lcom/join/mgps/adapter/h4$a2;->e(Lcom/join/mgps/adapter/h4$a2;)Landroid/widget/LinearLayout;

    move-result-object v2

    new-instance v3, Lcom/join/mgps/adapter/h4$f;

    invoke-direct {v3, v12, v1, v10}, Lcom/join/mgps/adapter/h4$f;-><init>(Lcom/join/mgps/adapter/h4;Lcom/join/mgps/business/RecomDatabeanBusiness;Lcom/join/mgps/dto/MgpapaMainItemBean;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 995
    invoke-static {v4}, Lcom/join/mgps/adapter/h4$a2;->a(Lcom/join/mgps/adapter/h4$a2;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Lcom/join/mgps/adapter/h4$g;

    invoke-direct {v3, v12, v1, v10}, Lcom/join/mgps/adapter/h4$g;-><init>(Lcom/join/mgps/adapter/h4;Lcom/join/mgps/business/RecomDatabeanBusiness;Lcom/join/mgps/dto/MgpapaMainItemBean;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4e

    .line 996
    :cond_5e
    invoke-static {v4}, Lcom/join/mgps/adapter/h4$a2;->e(Lcom/join/mgps/adapter/h4$a2;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_4e

    .line 997
    :cond_5f
    invoke-static {v4}, Lcom/join/mgps/adapter/h4$a2;->a(Lcom/join/mgps/adapter/h4$a2;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "\u5927\u603b\u7ba1\u64ad\u62a5"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v1, :cond_60

    .line 998
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_60

    const/4 v2, 0x0

    .line 999
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/business/RecomDatabeanBusiness;

    if-eqz v1, :cond_61

    .line 1000
    invoke-virtual {v1}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v1

    .line 1001
    invoke-static {v4}, Lcom/join/mgps/adapter/h4$a2;->a(Lcom/join/mgps/adapter/h4$a2;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/ModleBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_49

    .line 1002
    :cond_60
    invoke-static {v4}, Lcom/join/mgps/adapter/h4$a2;->c(Lcom/join/mgps/adapter/h4$a2;)Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1003
    :cond_61
    :goto_49
    invoke-static {v4}, Lcom/join/mgps/adapter/h4$a2;->e(Lcom/join/mgps/adapter/h4$a2;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1004
    invoke-static {v4}, Lcom/join/mgps/adapter/h4$a2;->e(Lcom/join/mgps/adapter/h4$a2;)Landroid/widget/LinearLayout;

    move-result-object v1

    new-instance v2, Lcom/join/mgps/adapter/h4$d;

    invoke-direct {v2, v12, v10}, Lcom/join/mgps/adapter/h4$d;-><init>(Lcom/join/mgps/adapter/h4;Lcom/join/mgps/dto/MgpapaMainItemBean;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1005
    invoke-static {v4}, Lcom/join/mgps/adapter/h4$a2;->a(Lcom/join/mgps/adapter/h4$a2;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Lcom/join/mgps/adapter/h4$e;

    invoke-direct {v2, v12, v10}, Lcom/join/mgps/adapter/h4$e;-><init>(Lcom/join/mgps/adapter/h4;Lcom/join/mgps/dto/MgpapaMainItemBean;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4e

    .line 1006
    :cond_62
    invoke-static {v4}, Lcom/join/mgps/adapter/h4$a2;->a(Lcom/join/mgps/adapter/h4$a2;)Landroid/widget/TextView;

    move-result-object v1

    const-string v3, "\u8fd1\u671f\u70ed\u95e8"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v2, :cond_63

    .line 1007
    invoke-virtual {v2}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v1

    .line 1008
    invoke-static {v4}, Lcom/join/mgps/adapter/h4$a2;->a(Lcom/join/mgps/adapter/h4$a2;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/ModleBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_63
    const v1, 0x7f0909eb

    .line 1009
    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1010
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 1011
    iget-object v3, v12, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0712cb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1012
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_4e

    :pswitch_72
    move-object v7, v13

    const/4 v11, 0x1

    .line 1013
    invoke-virtual {v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getRecomDatabeans()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_65

    .line 1014
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_65

    const/4 v2, 0x0

    .line 1015
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/business/RecomDatabeanBusiness;

    .line 1016
    invoke-virtual {v3}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v2

    if-eqz v2, :cond_65

    .line 1017
    sget-object v4, Lcom/join/mgps/adapter/h4;->C0:Lcom/join/mgps/adapter/h4$u2;

    invoke-static {v4}, Lcom/join/mgps/adapter/h4$u2;->F(Lcom/join/mgps/adapter/h4$u2;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v2}, Lcom/join/mgps/dto/ModleBean;->getSub_title()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1018
    sget-object v4, Lcom/join/mgps/adapter/h4;->C0:Lcom/join/mgps/adapter/h4$u2;

    invoke-static {v4}, Lcom/join/mgps/adapter/h4$u2;->J(Lcom/join/mgps/adapter/h4$u2;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v4

    invoke-virtual {v2}, Lcom/join/mgps/dto/ModleBean;->getPic_remote()Ljava/lang/String;

    move-result-object v2

    iget-object v5, v12, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-static {v5}, Lcom/join/android/app/common/utils/MyImageLoader;->C(Landroid/content/Context;)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v5

    const v6, 0x7f0807b1

    invoke-static {v4, v6, v2, v5}, Lcom/join/android/app/common/utils/MyImageLoader;->f(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 1019
    invoke-virtual {v3}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_64

    invoke-virtual {v3}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 1020
    :cond_64
    sget-object v2, Lcom/join/mgps/adapter/h4;->C0:Lcom/join/mgps/adapter/h4$u2;

    invoke-static {v2}, Lcom/join/mgps/adapter/h4$u2;->z(Lcom/join/mgps/adapter/h4$u2;)Landroid/widget/RelativeLayout;

    move-result-object v2

    new-instance v3, Lcom/join/mgps/adapter/h4$g1;

    invoke-direct {v3, v12, v1}, Lcom/join/mgps/adapter/h4$g1;-><init>(Lcom/join/mgps/adapter/h4;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1021
    :cond_65
    invoke-virtual {v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getRecomDatabeans2()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_66

    .line 1022
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_66

    const/4 v2, 0x0

    .line 1023
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/business/RecomDatabeanBusiness;

    .line 1024
    invoke-virtual {v3}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v2

    if-eqz v2, :cond_66

    .line 1025
    sget-object v3, Lcom/join/mgps/adapter/h4;->C0:Lcom/join/mgps/adapter/h4$u2;

    invoke-static {v3}, Lcom/join/mgps/adapter/h4$u2;->a(Lcom/join/mgps/adapter/h4$u2;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2}, Lcom/join/mgps/dto/ModleBean;->getSub_title()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1026
    sget-object v3, Lcom/join/mgps/adapter/h4;->C0:Lcom/join/mgps/adapter/h4$u2;

    invoke-static {v3}, Lcom/join/mgps/adapter/h4$u2;->c(Lcom/join/mgps/adapter/h4$u2;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2}, Lcom/join/mgps/dto/ModleBean;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1027
    sget-object v3, Lcom/join/mgps/adapter/h4;->C0:Lcom/join/mgps/adapter/h4$u2;

    invoke-static {v3}, Lcom/join/mgps/adapter/h4$u2;->e(Lcom/join/mgps/adapter/h4$u2;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v3

    invoke-virtual {v2}, Lcom/join/mgps/dto/ModleBean;->getPic_remote()Ljava/lang/String;

    move-result-object v2

    iget-object v4, v12, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/join/android/app/common/utils/MyImageLoader;->C(Landroid/content/Context;)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v4

    const v5, 0x7f0807b1

    invoke-static {v3, v5, v2, v4}, Lcom/join/android/app/common/utils/MyImageLoader;->f(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 1028
    sget-object v2, Lcom/join/mgps/adapter/h4;->C0:Lcom/join/mgps/adapter/h4$u2;

    invoke-static {v2}, Lcom/join/mgps/adapter/h4$u2;->B(Lcom/join/mgps/adapter/h4$u2;)Landroid/widget/RelativeLayout;

    move-result-object v2

    new-instance v3, Lcom/join/mgps/adapter/h4$h1;

    invoke-direct {v3, v12, v1}, Lcom/join/mgps/adapter/h4$h1;-><init>(Lcom/join/mgps/adapter/h4;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1029
    :cond_66
    invoke-virtual {v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getRecomDatabeans3()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_67

    .line 1030
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_67

    const/4 v2, 0x0

    .line 1031
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/business/RecomDatabeanBusiness;

    .line 1032
    invoke-virtual {v3}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v2

    if-eqz v2, :cond_67

    .line 1033
    sget-object v3, Lcom/join/mgps/adapter/h4;->C0:Lcom/join/mgps/adapter/h4$u2;

    invoke-static {v3}, Lcom/join/mgps/adapter/h4$u2;->n(Lcom/join/mgps/adapter/h4$u2;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2}, Lcom/join/mgps/dto/ModleBean;->getSub_title()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1034
    sget-object v3, Lcom/join/mgps/adapter/h4;->C0:Lcom/join/mgps/adapter/h4$u2;

    invoke-static {v3}, Lcom/join/mgps/adapter/h4$u2;->p(Lcom/join/mgps/adapter/h4$u2;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2}, Lcom/join/mgps/dto/ModleBean;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1035
    sget-object v3, Lcom/join/mgps/adapter/h4;->C0:Lcom/join/mgps/adapter/h4$u2;

    invoke-static {v3}, Lcom/join/mgps/adapter/h4$u2;->r(Lcom/join/mgps/adapter/h4$u2;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v3

    invoke-virtual {v2}, Lcom/join/mgps/dto/ModleBean;->getPic_remote()Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f0807b1

    invoke-static {v3, v4, v2}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 1036
    sget-object v2, Lcom/join/mgps/adapter/h4;->C0:Lcom/join/mgps/adapter/h4$u2;

    invoke-static {v2}, Lcom/join/mgps/adapter/h4$u2;->D(Lcom/join/mgps/adapter/h4$u2;)Landroid/widget/RelativeLayout;

    move-result-object v2

    new-instance v3, Lcom/join/mgps/adapter/h4$i1;

    invoke-direct {v3, v12, v1}, Lcom/join/mgps/adapter/h4$i1;-><init>(Lcom/join/mgps/adapter/h4;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1037
    :cond_67
    invoke-virtual {v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/GameDiscoverTheNewBean;

    if-eqz v1, :cond_6a

    .line 1038
    sget-object v2, Lcom/join/mgps/adapter/h4;->C0:Lcom/join/mgps/adapter/h4$u2;

    invoke-static {v2}, Lcom/join/mgps/adapter/h4$u2;->i(Lcom/join/mgps/adapter/h4$u2;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameDiscoverTheNewBean;->getGame_count()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\u6b3e"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1039
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameDiscoverTheNewBean;->getGame_list()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_68

    .line 1040
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_68

    .line 1041
    sget-object v2, Lcom/join/mgps/adapter/h4;->C0:Lcom/join/mgps/adapter/h4$u2;

    invoke-static {v2}, Lcom/join/mgps/adapter/h4$u2;->t(Lcom/join/mgps/adapter/h4$u2;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/activity/vipzone/bean/IconGame;

    invoke-virtual {v3}, Lcom/join/mgps/activity/vipzone/bean/IconGame;->getGame_ico()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    :cond_68
    if-eqz v1, :cond_69

    .line 1042
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v11, :cond_69

    .line 1043
    sget-object v2, Lcom/join/mgps/adapter/h4;->C0:Lcom/join/mgps/adapter/h4$u2;

    invoke-static {v2}, Lcom/join/mgps/adapter/h4$u2;->v(Lcom/join/mgps/adapter/h4$u2;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v2

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/activity/vipzone/bean/IconGame;

    invoke-virtual {v3}, Lcom/join/mgps/activity/vipzone/bean/IconGame;->getGame_ico()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    :cond_69
    if-eqz v1, :cond_6a

    .line 1044
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_6a

    .line 1045
    sget-object v2, Lcom/join/mgps/adapter/h4;->C0:Lcom/join/mgps/adapter/h4$u2;

    invoke-static {v2}, Lcom/join/mgps/adapter/h4$u2;->x(Lcom/join/mgps/adapter/h4$u2;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/activity/vipzone/bean/IconGame;

    invoke-virtual {v1}, Lcom/join/mgps/activity/vipzone/bean/IconGame;->getGame_ico()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 1046
    :cond_6a
    sget-object v1, Lcom/join/mgps/adapter/h4;->C0:Lcom/join/mgps/adapter/h4$u2;

    invoke-static {v1}, Lcom/join/mgps/adapter/h4$u2;->H(Lcom/join/mgps/adapter/h4$u2;)Landroid/widget/LinearLayout;

    move-result-object v1

    new-instance v2, Lcom/join/mgps/adapter/h4$j1;

    invoke-direct {v2, v12}, Lcom/join/mgps/adapter/h4$j1;-><init>(Lcom/join/mgps/adapter/h4;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1047
    sget-object v1, Lcom/join/mgps/adapter/h4;->C0:Lcom/join/mgps/adapter/h4$u2;

    invoke-static {v1}, Lcom/join/mgps/adapter/h4$u2;->g(Lcom/join/mgps/adapter/h4$u2;)Landroid/widget/LinearLayout;

    move-result-object v1

    new-instance v2, Lcom/join/mgps/adapter/h4$a;

    invoke-direct {v2, v12}, Lcom/join/mgps/adapter/h4$a;-><init>(Lcom/join/mgps/adapter/h4;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4e

    :pswitch_73
    move-object v7, v13

    const/4 v5, 0x0

    .line 1048
    invoke-virtual {v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getRecomDatabeans()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6e

    .line 1049
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_6e

    const/4 v6, 0x0

    .line 1050
    :goto_4a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v6, v2, :cond_6f

    .line 1051
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/business/RecomDatabeanBusiness;

    if-nez v2, :cond_6b

    move-object/from16 v4, p2

    const/4 v8, 0x0

    goto/16 :goto_4d

    .line 1052
    :cond_6b
    invoke-virtual {v2}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_6c

    .line 1053
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_6c

    const/4 v4, 0x0

    .line 1054
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/AppBeanMain;

    goto :goto_4b

    :cond_6c
    move-object v3, v5

    .line 1055
    :goto_4b
    invoke-virtual {v2}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v4

    .line 1056
    invoke-virtual {v4}, Lcom/join/mgps/dto/ModleBean;->getLabel()Ljava/lang/String;

    move-result-object v4

    .line 1057
    new-instance v8, Lcom/join/mgps/pref/PrefDef_;

    iget-object v9, v12, Lcom/join/mgps/adapter/h4;->b:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 1058
    invoke-static {v4}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6d

    invoke-virtual {v8}, Lcom/join/mgps/pref/PrefDef_;->lastTopTip()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v8

    invoke-virtual {v8}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6d

    .line 1059
    invoke-static/range {p2 .. p2}, Lcom/join/mgps/adapter/h4$v2;->a(Lcom/join/mgps/adapter/h4$v2;)Landroid/widget/LinearLayout;

    move-result-object v4

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1060
    invoke-static/range {p2 .. p2}, Lcom/join/mgps/adapter/h4$v2;->e(Lcom/join/mgps/adapter/h4$v2;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v2}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/ModleBean;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4c

    :cond_6d
    const/4 v8, 0x0

    .line 1061
    invoke-static/range {p2 .. p2}, Lcom/join/mgps/adapter/h4$v2;->a(Lcom/join/mgps/adapter/h4$v2;)Landroid/widget/LinearLayout;

    move-result-object v2

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1062
    :goto_4c
    invoke-static/range {p2 .. p2}, Lcom/join/mgps/adapter/h4$v2;->a(Lcom/join/mgps/adapter/h4$v2;)Landroid/widget/LinearLayout;

    move-result-object v2

    new-instance v4, Lcom/join/mgps/adapter/h4$r0;

    invoke-direct {v4, v12, v3}, Lcom/join/mgps/adapter/h4$r0;-><init>(Lcom/join/mgps/adapter/h4;Lcom/join/mgps/dto/AppBeanMain;)V

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1063
    invoke-static/range {p2 .. p2}, Lcom/join/mgps/adapter/h4$v2;->c(Lcom/join/mgps/adapter/h4$v2;)Landroid/widget/ImageView;

    move-result-object v2

    new-instance v3, Lcom/join/mgps/adapter/h4$c1;

    move-object/from16 v4, p2

    invoke-direct {v3, v12, v4}, Lcom/join/mgps/adapter/h4$c1;-><init>(Lcom/join/mgps/adapter/h4;Lcom/join/mgps/adapter/h4$v2;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_4d
    add-int/lit8 v6, v6, 0x1

    move-object/from16 p2, v4

    goto/16 :goto_4a

    :cond_6e
    move-object/from16 v4, p2

    .line 1064
    invoke-static {v4}, Lcom/join/mgps/adapter/h4$v2;->a(Lcom/join/mgps/adapter/h4$v2;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_59} :catch_c

    goto :goto_4e

    :catch_c
    move-exception v0

    goto :goto_4f

    :cond_6f
    :goto_4e
    move-object v13, v7

    goto :goto_52

    :catch_d
    move-exception v0

    move-object v7, v13

    :goto_4f
    move-object v1, v0

    move-object/from16 v25, v7

    goto :goto_51

    :catch_e
    move-exception v0

    move-object/from16 v25, p2

    :goto_50
    move-object v1, v0

    .line 1065
    :goto_51
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object/from16 v13, v25

    :goto_52
    return-object v13

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_8
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_23
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_23
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_2b
        :pswitch_25
        :pswitch_2a
        :pswitch_2b
        :pswitch_2b
        :pswitch_24
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_73
        :pswitch_72
        :pswitch_6a
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_46
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_46
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_4d
        :pswitch_47
        :pswitch_4c
        :pswitch_4d
        :pswitch_4d
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x9
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x4
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    const/16 v0, 0x28

    return v0
.end method

.method i0(Lcom/join/mgps/adapter/h4$h2;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p1, Lcom/join/mgps/adapter/h4$h2;->f:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object p2, p1, Lcom/join/mgps/adapter/h4$h2;->k:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 4
    iget-object p2, p1, Lcom/join/mgps/adapter/h4$h2;->l:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 5
    iget-object p2, p1, Lcom/join/mgps/adapter/h4$h2;->g:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6
    iget-object p1, p1, Lcom/join/mgps/adapter/h4$h2;->e:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 7
    :cond_0
    iget-object p2, p1, Lcom/join/mgps/adapter/h4$h2;->f:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 9
    iget-object p2, p1, Lcom/join/mgps/adapter/h4$h2;->k:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 10
    iget-object p2, p1, Lcom/join/mgps/adapter/h4$h2;->l:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 11
    :cond_1
    iget-object p2, p1, Lcom/join/mgps/adapter/h4$h2;->l:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 12
    iget-object p2, p1, Lcom/join/mgps/adapter/h4$h2;->k:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 13
    :goto_0
    iget-object p2, p1, Lcom/join/mgps/adapter/h4$h2;->g:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 14
    iget-object p1, p1, Lcom/join/mgps/adapter/h4$h2;->e:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method
