.class public Lcom/join/mgps/activity/ShareWebActivity;
.super Lcom/BaseFragmentActivity;
.source "ShareWebActivity.java"

# interfaces
.implements Lcom/join/mgps/customview/LJWebView$b;
.implements Lcom/join/mgps/Util/e2$e;
.implements Lcom/mgsim/common/fragment/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/ShareWebActivity$o;,
        Lcom/join/mgps/activity/ShareWebActivity$p;,
        Lcom/join/mgps/activity/ShareWebActivity$q;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c0584
.end annotation


# static fields
.field public static final W0:I = 0x1

.field public static final X0:I = 0x2

.field public static final Y0:I = 0x1388

.field public static final Z0:I = 0x1389

.field public static final a1:I = 0x138a

.field public static final b1:I = 0x138b

.field private static final c1:I = 0x2

.field private static final d1:I = 0x1010

.field private static final e1:I = 0x64

.field private static final f1:I = 0xc8

.field private static final g1:I = 0xa


# instance fields
.field private A:Z

.field private A0:I

.field B:Lcom/join/mgps/Util/IntentDateBean;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private B0:I

.field C:Lcom/join/mgps/dto/IntentDataMain;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private C0:I

.field private D:Landroid/view/View;

.field private D0:I

.field private E:I

.field private E0:Lcom/papa91/battle/protocol/GameRoom;

.field private F:Landroid/webkit/WebChromeClient;

.field private F0:Lcom/join/mgps/dialog/v0;

.field private G:Z

.field private G0:Lcom/join/mgps/dialog/x0;

.field H:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field H0:Z

.field private I:Z

.field I0:Z

.field private J:Lcom/join/mgps/dialog/e0;

.field private J0:Landroid/app/Dialog;

.field private K:Lcom/join/mgps/dialog/s1;

.field private K0:Landroid/net/Uri;

.field private L0:Landroid/net/Uri;

.field private M0:Z

.field private N0:Lcom/join/mgps/Util/e2;

.field O0:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private P0:Z

.field private Q0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field R0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private S0:Lnet/bither/util/b$e;

.field private T0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private U0:Lcom/mgsim/common/fragment/BackHandledFragment;

.field private V0:Z

.field a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Landroid/os/Handler;

.field d:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field i:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field j:Landroid/widget/FrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field k:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field l:Lcom/join/mgps/customview/LJWebView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field m:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field n:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field n0:Lcom/join/mgps/dialog/x0;

.field o:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field o0:Z

.field p:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field p0:Landroid/app/Dialog;

.field q:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field q0:Landroidx/appcompat/app/AlertDialog$Builder;

.field r:Landroid/widget/FrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f091270
    .end annotation
.end field

.field private final r0:Lcom/join/mgps/activity/posting/PostingActivity$m;

.field s:Lcom/join/mgps/rpc/d;

.field private s0:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field t:Lcom/join/mgps/rpc/b;

.field t0:Z

.field private u:Ljava/lang/String;

.field u0:J

.field private v:Ljava/lang/String;

.field private v0:Lcom/join/mgps/socket/fight/arena/b;

.field private w:J

.field private w0:Ljava/lang/String;

.field private x:Landroid/app/Activity;

.field x0:Lcom/join/mgps/Util/b;
    .annotation build Lorg/androidannotations/annotations/Bean;
    .end annotation
.end field

.field private y:Z

.field private final y0:Lapp/mgsim/arena/SocketListener$NotifyObserver;

.field private z:Lcom/join/mgps/dto/AccountBean;

.field private z0:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/BaseFragmentActivity;-><init>()V

    const-string v0, "ShareWebActivity"

    .line 2
    iput-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->a:Ljava/lang/String;

    const-string v0, "PAPA_EMU_INTENT_EXTRA_ACTION_FROM"

    .line 3
    iput-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->b:Ljava/lang/String;

    .line 4
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->c:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->y:Z

    .line 6
    iput-boolean v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->A:Z

    .line 7
    iput v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->E:I

    .line 8
    iput-boolean v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->G:Z

    const/4 v1, 0x0

    .line 9
    iput-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity;->n0:Lcom/join/mgps/dialog/x0;

    .line 10
    iput-boolean v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->o0:Z

    .line 11
    iput-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity;->q0:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 12
    new-instance v1, Lcom/join/mgps/activity/ShareWebActivity$h;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ShareWebActivity$h;-><init>(Lcom/join/mgps/activity/ShareWebActivity;)V

    iput-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity;->r0:Lcom/join/mgps/activity/posting/PostingActivity$m;

    .line 13
    new-instance v1, Lcom/join/mgps/activity/ShareWebActivity$k;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ShareWebActivity$k;-><init>(Lcom/join/mgps/activity/ShareWebActivity;)V

    iput-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity;->s0:Landroid/os/Handler;

    .line 14
    iput-boolean v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->t0:Z

    const-wide/16 v1, 0x0

    .line 15
    iput-wide v1, p0, Lcom/join/mgps/activity/ShareWebActivity;->u0:J

    .line 16
    new-instance v1, Lcom/join/mgps/activity/ShareWebActivity$n;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ShareWebActivity$n;-><init>(Lcom/join/mgps/activity/ShareWebActivity;)V

    iput-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity;->y0:Lapp/mgsim/arena/SocketListener$NotifyObserver;

    const/4 v1, -0x1

    .line 17
    iput v1, p0, Lcom/join/mgps/activity/ShareWebActivity;->D0:I

    .line 18
    iput-boolean v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->H0:Z

    .line 19
    iput-boolean v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->I0:Z

    .line 20
    iput-boolean v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->M0:Z

    .line 21
    iput-boolean v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->P0:Z

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->Q0:Ljava/util/List;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->R0:Ljava/util/List;

    .line 24
    new-instance v0, Lcom/join/mgps/activity/ShareWebActivity$e;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ShareWebActivity$e;-><init>(Lcom/join/mgps/activity/ShareWebActivity;)V

    iput-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->S0:Lnet/bither/util/b$e;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->T0:Ljava/util/List;

    return-void
.end method

.method private C1()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/IntentUtil;->getSplashActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 3
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/IntentUtil;->setSplashActivity(Landroid/app/Activity;)V

    .line 4
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 5
    const-class v2, Lcom/join/mgps/activity/MGMainActivity_;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v0, 0x4000000

    .line 6
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 v0, 0x20000000

    .line 7
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 8
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/ShareWebActivity;->backModGame()V

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method static synthetic D0(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/ShareWebActivity;->x:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic E0(Lcom/join/mgps/activity/ShareWebActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ShareWebActivity;->Y1(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic F0(Lcom/join/mgps/activity/ShareWebActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ShareWebActivity;->m2(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic G0(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/ShareWebActivity;->s0:Landroid/os/Handler;

    return-object p0
.end method

.method private G1(Landroid/content/Intent;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "key_selected_images"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1

    .line 3
    :cond_1
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method static synthetic H0(Lcom/join/mgps/activity/ShareWebActivity;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->w:J

    return-wide v0
.end method

.method private H1(I)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->I:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const p1, 0x7f1103a4

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/wufan91/live"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 7
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 8
    invoke-static {v3}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/16 v0, 0x64

    if-eq p1, v0, :cond_4

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_3

    goto :goto_1

    :cond_3
    const-string p1, "_select"

    .line 9
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ShareWebActivity;->v1(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity;->K0:Landroid/net/Uri;

    .line 10
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "image/*"

    .line 11
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 12
    invoke-virtual {p0, p1, v0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    :cond_4
    const-string p1, ""

    .line 13
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ShareWebActivity;->v1(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity;->K0:Landroid/net/Uri;

    .line 14
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 15
    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity;->K0:Landroid/net/Uri;

    const-string v2, "output"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 16
    invoke-virtual {p0, p1, v0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_1
    return-void
.end method

.method static synthetic I0(Lcom/join/mgps/activity/ShareWebActivity;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/activity/ShareWebActivity;->w:J

    return-wide p1
.end method

.method static synthetic J0(Lcom/join/mgps/activity/ShareWebActivity;)Lcom/join/mgps/dto/AccountBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/ShareWebActivity;->z:Lcom/join/mgps/dto/AccountBean;

    return-object p0
.end method

.method static synthetic K0(Lcom/join/mgps/activity/ShareWebActivity;Lcom/join/mgps/dto/AccountBean;)Lcom/join/mgps/dto/AccountBean;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity;->z:Lcom/join/mgps/dto/AccountBean;

    return-object p1
.end method

.method static synthetic L0(Lcom/join/mgps/activity/ShareWebActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/activity/ShareWebActivity;->A:Z

    return p1
.end method

.method static synthetic M0(Lcom/join/mgps/activity/ShareWebActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/ShareWebActivity;->C1()V

    return-void
.end method

.method static synthetic N0(Lcom/join/mgps/activity/ShareWebActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/ShareWebActivity;->E:I

    return p1
.end method

.method static synthetic O0(Lcom/join/mgps/activity/ShareWebActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/ShareWebActivity;->O1()V

    return-void
.end method

.method private O1()V
    .locals 4

    .line 1
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f1204d0

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->J0:Landroid/app/Dialog;

    const v1, 0x7f0c018d

    .line 2
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity;->J0:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const/16 v3, 0x50

    .line 7
    invoke-virtual {v1, v3}, Landroid/view/Window;->setGravity(I)V

    .line 8
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->J0:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->J0:Landroid/app/Dialog;

    const v1, 0x7f090266

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity;->J0:Landroid/app/Dialog;

    const v2, 0x7f090c13

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 12
    iget-object v2, p0, Lcom/join/mgps/activity/ShareWebActivity;->J0:Landroid/app/Dialog;

    const v3, 0x7f0901bc

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 13
    new-instance v3, Lcom/join/mgps/activity/ShareWebActivity$b;

    invoke-direct {v3, p0}, Lcom/join/mgps/activity/ShareWebActivity$b;-><init>(Lcom/join/mgps/activity/ShareWebActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    new-instance v0, Lcom/join/mgps/activity/ShareWebActivity$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ShareWebActivity$c;-><init>(Lcom/join/mgps/activity/ShareWebActivity;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    new-instance v0, Lcom/join/mgps/activity/ShareWebActivity$d;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ShareWebActivity$d;-><init>(Lcom/join/mgps/activity/ShareWebActivity;)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->J0:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method static synthetic P0(Lcom/join/mgps/activity/ShareWebActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/ShareWebActivity;->Z1()V

    return-void
.end method

.method static synthetic Q0(Lcom/join/mgps/activity/ShareWebActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/ShareWebActivity;->w0:Ljava/lang/String;

    return-object p0
.end method

.method private Q1()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->E0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getP1()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 3
    iput v3, p0, Lcom/join/mgps/activity/ShareWebActivity;->z0:I

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    move-result v0

    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity;->x0:Lcom/join/mgps/Util/b;

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 5
    iput v3, p0, Lcom/join/mgps/activity/ShareWebActivity;->D0:I

    .line 6
    :cond_1
    iput v2, p0, Lcom/join/mgps/activity/ShareWebActivity;->z0:I

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->E0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getP2()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    move-result v1

    if-nez v1, :cond_2

    .line 9
    iput v3, p0, Lcom/join/mgps/activity/ShareWebActivity;->A0:I

    goto :goto_1

    .line 10
    :cond_2
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    move-result v0

    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity;->x0:Lcom/join/mgps/Util/b;

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 11
    iput v2, p0, Lcom/join/mgps/activity/ShareWebActivity;->D0:I

    .line 12
    :cond_3
    iput v2, p0, Lcom/join/mgps/activity/ShareWebActivity;->A0:I

    .line 13
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->E0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getP3()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    move-result v1

    if-nez v1, :cond_4

    .line 15
    iput v3, p0, Lcom/join/mgps/activity/ShareWebActivity;->B0:I

    goto :goto_2

    .line 16
    :cond_4
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    move-result v0

    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity;->x0:Lcom/join/mgps/Util/b;

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v1

    if-ne v0, v1, :cond_5

    const/4 v0, 0x2

    .line 17
    iput v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->D0:I

    .line 18
    :cond_5
    iput v2, p0, Lcom/join/mgps/activity/ShareWebActivity;->B0:I

    .line 19
    :goto_2
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->E0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getP4()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    move-result v1

    if-nez v1, :cond_6

    .line 21
    iput v3, p0, Lcom/join/mgps/activity/ShareWebActivity;->C0:I

    goto :goto_3

    .line 22
    :cond_6
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    move-result v0

    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity;->x0:Lcom/join/mgps/Util/b;

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x3

    .line 23
    iput v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->D0:I

    .line 24
    :cond_7
    iput v2, p0, Lcom/join/mgps/activity/ShareWebActivity;->C0:I

    :goto_3
    return-void
.end method

.method static synthetic R0(Lcom/join/mgps/activity/ShareWebActivity;)Lcom/join/mgps/dialog/e0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/ShareWebActivity;->J:Lcom/join/mgps/dialog/e0;

    return-object p0
.end method

.method private R1(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->x:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static synthetic S0(Lcom/join/mgps/activity/ShareWebActivity;)Lcom/join/mgps/socket/fight/arena/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/ShareWebActivity;->v0:Lcom/join/mgps/socket/fight/arena/b;

    return-object p0
.end method

.method private S1(Landroid/content/Context;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p1, p1, 0xf

    const/4 v0, 0x3

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic T0(Lcom/join/mgps/activity/ShareWebActivity;Lcom/join/mgps/dialog/e0;)Lcom/join/mgps/dialog/e0;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity;->J:Lcom/join/mgps/dialog/e0;

    return-object p1
.end method

.method static synthetic U0(Lcom/join/mgps/activity/ShareWebActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/ShareWebActivity;->Q1()V

    return-void
.end method

.method private U1(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lodeWebView() called."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/mgps/Util/t0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :try_start_0
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->l:Lcom/join/mgps/customview/LJWebView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->l:Lcom/join/mgps/customview/LJWebView;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f071486

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/join/mgps/customview/LJWebView;->setBarHeight(I)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->l:Lcom/join/mgps/customview/LJWebView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/join/mgps/customview/LJWebView;->setClickable(Z)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->l:Lcom/join/mgps/customview/LJWebView;

    invoke-virtual {v0, v2}, Lcom/join/mgps/customview/LJWebView;->setUseWideViewPort(Z)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->l:Lcom/join/mgps/customview/LJWebView;

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/LJWebView;->setSupportZoom(Z)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->l:Lcom/join/mgps/customview/LJWebView;

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/LJWebView;->setBuiltInZoomControls(Z)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->l:Lcom/join/mgps/customview/LJWebView;

    invoke-virtual {v0, v2}, Lcom/join/mgps/customview/LJWebView;->setJavaScriptEnabled(Z)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->l:Lcom/join/mgps/customview/LJWebView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/LJWebView;->setCacheMode(I)V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->l:Lcom/join/mgps/customview/LJWebView;

    new-instance v1, Lcom/join/mgps/activity/ShareWebActivity$q;

    invoke-direct {v1, p0, p0}, Lcom/join/mgps/activity/ShareWebActivity$q;-><init>(Lcom/join/mgps/activity/ShareWebActivity;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/LJWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->l:Lcom/join/mgps/customview/LJWebView;

    new-instance v1, Lcom/join/mgps/activity/ShareWebActivity$o;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ShareWebActivity$o;-><init>(Lcom/join/mgps/activity/ShareWebActivity;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/LJWebView;->r(Ljava/lang/Object;)V

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->l:Lcom/join/mgps/customview/LJWebView;

    new-instance v1, Lcom/join/mgps/activity/ShareWebActivity$p;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ShareWebActivity$p;-><init>(Lcom/join/mgps/activity/ShareWebActivity;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/LJWebView;->s(Ljava/lang/Object;)V

    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->l:Lcom/join/mgps/customview/LJWebView;

    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/LJWebView;->w(Ljava/lang/String;)V

    .line 16
    iget-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity;->l:Lcom/join/mgps/customview/LJWebView;

    new-instance v0, Lcom/join/mgps/activity/ShareWebActivity$i;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ShareWebActivity$i;-><init>(Lcom/join/mgps/activity/ShareWebActivity;)V

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/LJWebView;->setonShowFileChooser(Lcom/join/mgps/customview/LJWebView$c;)V

    .line 17
    iget-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity;->l:Lcom/join/mgps/customview/LJWebView;

    invoke-virtual {p1, p0}, Lcom/join/mgps/customview/LJWebView;->setActivity(Landroid/app/Activity;)V

    goto :goto_0

    .line 18
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ShareWebActivity;->showLodingFailed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic V0(Lcom/join/mgps/activity/ShareWebActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/ShareWebActivity;->z0:I

    return p0
.end method

.method static synthetic W0(Lcom/join/mgps/activity/ShareWebActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/ShareWebActivity;->A0:I

    return p0
.end method

.method static synthetic X0(Lcom/join/mgps/activity/ShareWebActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/ShareWebActivity;->B0:I

    return p0
.end method

.method private X1()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.OPENABLE"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "*/*"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity;->x:Landroid/app/Activity;

    const-string v2, "Image Chooser"

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const v2, 0xa8e2

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic Y0(Lcom/join/mgps/activity/ShareWebActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/ShareWebActivity;->C0:I

    return p0
.end method

.method private Y1(Ljava/lang/String;)V
    .locals 10

    const-string v0, "download"

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    .line 2
    new-instance v1, Landroid/app/DownloadManager$Query;

    invoke-direct {v1}, Landroid/app/DownloadManager$Query;-><init>()V

    .line 3
    invoke-virtual {v0, v1}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v1

    .line 4
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "_id"

    .line 5
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string v3, "title"

    .line 6
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "local_uri"

    .line 7
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "status"

    .line 8
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const-string v6, "bytes_so_far"

    .line 9
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "total_size"

    .line 10
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 11
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "downId:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ",status:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",title:"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",address:"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",size:"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",sizeTotal:"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-static {v4}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "/"

    .line 13
    invoke-virtual {v4, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x1

    add-int/2addr v3, v5

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 14
    sget-object v4, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v4}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 15
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "temp_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 17
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 19
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 20
    :cond_1
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 22
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :cond_2
    new-array v3, v5, [J

    const/4 v4, 0x0

    int-to-long v5, v2

    aput-wide v5, v3, v4

    .line 23
    invoke-virtual {v0, v3}, Landroid/app/DownloadManager;->remove([J)I

    goto/16 :goto_0

    .line 24
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-void
.end method

.method static synthetic Z0(Lcom/join/mgps/activity/ShareWebActivity;)Lcom/papa91/battle/protocol/GameRoom;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/ShareWebActivity;->E0:Lcom/papa91/battle/protocol/GameRoom;

    return-object p0
.end method

.method private Z1()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->r:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->k:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4
    iget v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->E:I

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    .line 7
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 8
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 9
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, -0x401

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method

.method static synthetic a1(Lcom/join/mgps/activity/ShareWebActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/ShareWebActivity;->D0:I

    return p0
.end method

.method private accountBean(Landroid/content/Context;)Lcom/join/mgps/dto/AccountBean;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object p1

    return-object p1
.end method

.method static synthetic b1(Lcom/join/mgps/activity/ShareWebActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ShareWebActivity;->f2(Ljava/lang/String;)V

    return-void
.end method

.method private b2(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "UTF-8"

    .line 1
    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity;->x:Landroid/app/Activity;

    invoke-static {v1}, Lcom/join/android/app/common/utils/j;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/j;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/ShareWebActivity;->x:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/join/android/app/common/utils/j;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/Util/w0;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "{requestId}"

    .line 3
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "{requestTime}"

    .line 5
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 6
    iget-object v2, p0, Lcom/join/mgps/activity/ShareWebActivity;->x:Landroid/app/Activity;

    invoke-static {v2}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 7
    iget-object v2, p0, Lcom/join/mgps/activity/ShareWebActivity;->x:Landroid/app/Activity;

    invoke-static {v2}, Lcom/join/android/app/common/utils/f;->d(Landroid/content/Context;)B

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_5

    const/4 v4, 0x1

    if-eq v2, v4, :cond_4

    const/4 v4, 0x2

    if-eq v2, v4, :cond_3

    const/4 v4, 0x3

    if-eq v2, v4, :cond_2

    const/4 v4, 0x4

    if-eq v2, v4, :cond_1

    const/4 v4, 0x5

    if-eq v2, v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "13-1-7"

    goto :goto_1

    :cond_1
    const-string v2, "13-1-4"

    goto :goto_1

    :cond_2
    const-string v2, "13-1-5"

    goto :goto_1

    :cond_3
    const-string v2, "13-1-6"

    goto :goto_1

    :cond_4
    const-string v2, "13-1-2"

    goto :goto_1

    :cond_5
    const-string v2, "13-1-0"

    goto :goto_1

    :cond_6
    :goto_0
    move-object v2, v3

    :goto_1
    const-string v4, "{network}"

    .line 8
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 9
    :try_start_0
    sget-object v2, Lcom/MApplication;->u:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/join/mgps/Util/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    .line 10
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v3

    :goto_2
    const-string v4, "{clientIp}"

    .line 11
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 12
    iget-object v2, p0, Lcom/join/mgps/activity/ShareWebActivity;->x:Landroid/app/Activity;

    invoke-direct {p0, v2}, Lcom/join/mgps/activity/ShareWebActivity;->S1(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "13-3-3"

    goto :goto_3

    :cond_7
    const-string v2, "13-3-2"

    :goto_3
    const-string v4, "{deviceType}"

    .line 13
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :try_start_1
    const-string v2, "http.agent"

    .line 14
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 15
    :try_start_2
    invoke-static {v2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :catch_1
    move-exception v4

    goto :goto_4

    :catch_2
    move-exception v4

    move-object v2, v3

    .line 16
    :goto_4
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5
    const-string v4, "{ua}"

    .line 17
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 18
    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    :try_start_3
    const-string v4, "{brand}"

    .line 19
    invoke-static {v2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_6

    :catch_3
    move-exception v2

    .line 20
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 21
    :goto_6
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    :try_start_4
    const-string v4, "{model}"

    .line 22
    invoke-static {v2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_7

    :catch_4
    move-exception v0

    .line 23
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 24
    :goto_7
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->x:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ShareWebActivity;->E1(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "{carrier}"

    .line 25
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "{platid}"

    const-string v2, "android"

    .line 26
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "{imei}"

    .line 27
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "{imeiMd5}"

    .line 28
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 29
    sget-object v0, Lcom/MApplication;->A:Ljava/lang/String;

    const-string v2, "{oaid}"

    .line 30
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 31
    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 32
    invoke-static {v0}, Lcom/join/mgps/Util/v0;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_8
    move-object v0, v3

    :goto_8
    const-string v2, "{oaidMd5}"

    .line 33
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "{androidId}"

    .line 34
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 35
    invoke-static {v1}, Lcom/join/mgps/Util/v0;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "{androidIdMd5}"

    .line 36
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "{idfa}"

    .line 37
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "{idfaMd5}"

    .line 38
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "{caid}"

    .line 39
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "{caidMd5}"

    .line 40
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic c1(Lcom/join/mgps/activity/ShareWebActivity;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ShareWebActivity;->H1(I)V

    return-void
.end method

.method private c2()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    return-void
.end method

.method private checkGameIsInstall(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->H0:Z

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->I0:Z

    .line 3
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v1

    invoke-virtual {v1, p1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    .line 4
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_3

    .line 5
    iput-boolean v1, p0, Lcom/join/mgps/activity/ShareWebActivity;->H0:Z

    .line 6
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object v2

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ln1/p;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 7
    iget-object v2, p0, Lcom/join/mgps/activity/ShareWebActivity;->x:Landroid/app/Activity;

    new-array v3, v0, [Ljava/lang/String;

    invoke-static {v2, p1, v0, v3}, Lcom/join/android/app/common/utils/h;->t(Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;Z[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/join/mgps/activity/ShareWebActivity;->x:Landroid/app/Activity;

    invoke-static {v2, p1}, Lcom/join/mgps/Util/UtilsMy;->q0(Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    iput-boolean v1, p0, Lcom/join/mgps/activity/ShareWebActivity;->I0:Z

    goto :goto_1

    .line 9
    :cond_1
    :goto_0
    iput-boolean v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->I0:Z

    goto :goto_1

    .line 10
    :cond_2
    iput-boolean v1, p0, Lcom/join/mgps/activity/ShareWebActivity;->I0:Z

    goto :goto_1

    .line 11
    :cond_3
    iput-boolean v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->H0:Z

    .line 12
    :goto_1
    iget-boolean p1, p0, Lcom/join/mgps/activity/ShareWebActivity;->I0:Z

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/join/mgps/activity/ShareWebActivity;->H0:Z

    if-eqz p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method static synthetic d1(Lcom/join/mgps/activity/ShareWebActivity;)Lcom/join/mgps/dialog/s1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/ShareWebActivity;->K:Lcom/join/mgps/dialog/s1;

    return-object p0
.end method

.method private d2(Lcom/papa91/battle/protocol/GameRoom;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->F0:Lcom/join/mgps/dialog/v0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/join/mgps/dialog/v0;->a()V

    .line 2
    :cond_0
    new-instance v0, Lcom/join/mgps/dialog/v0;

    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity;->x:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/join/mgps/dialog/v0;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->F0:Lcom/join/mgps/dialog/v0;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u52a0\u5165\u5931\u8d25\uff0c\u60a8\u4e0e"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\u623f\u95f4\u4e0d\u5728\u540c\u4e00\u6218\u533a\n\u8bf7\u8fdb\u5165\u8be5\u6e38\u620f\u623f\u95f4\u5217\u8868\uff0c\u5e76\u5207\u6362\u81f3\u3010"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getBattleArea()Lcom/papa91/battle/protocol/BattleArea;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/socket/fight/arena/c;->d(Lcom/papa91/battle/protocol/BattleArea;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u3011\u540e\u518d\u67e5\u627e\u623f\u95f4\u53f7\u8fdb\u5165"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {v0, p1}, Lcom/join/mgps/dialog/v0;->d(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity;->F0:Lcom/join/mgps/dialog/v0;

    invoke-virtual {p1}, Lcom/join/mgps/dialog/v0;->e()V

    return-void
.end method

.method static synthetic e1(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/app/Dialog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/ShareWebActivity;->J0:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic f1(Lcom/join/mgps/activity/ShareWebActivity;Lcom/join/mgps/dialog/s1;)Lcom/join/mgps/dialog/s1;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity;->K:Lcom/join/mgps/dialog/s1;

    return-object p1
.end method

.method private f2(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->G0:Lcom/join/mgps/dialog/x0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->G0:Lcom/join/mgps/dialog/x0;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->x:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/mgps/Util/a0;->c0(Landroid/content/Context;)Lcom/join/mgps/Util/a0;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity;->x:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/join/mgps/Util/z;->z(Landroid/content/Context;Ljava/lang/String;Z)Lcom/join/mgps/dialog/x0;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity;->G0:Lcom/join/mgps/dialog/x0;

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dialog/x0;->b()V

    return-void
.end method

.method static synthetic g1(Lcom/join/mgps/activity/ShareWebActivity;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/ShareWebActivity;->T0:Ljava/util/List;

    return-object p0
.end method

.method static synthetic h1(Lcom/join/mgps/activity/ShareWebActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/ShareWebActivity;->p2()V

    return-void
.end method

.method static synthetic i1(Lcom/join/mgps/activity/ShareWebActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/activity/ShareWebActivity;->P0:Z

    return p1
.end method

.method static synthetic j1(Lcom/join/mgps/activity/ShareWebActivity;)Lcom/join/mgps/activity/posting/PostingActivity$m;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/ShareWebActivity;->r0:Lcom/join/mgps/activity/posting/PostingActivity$m;

    return-object p0
.end method

.method private j2(I)V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity;->x:Landroid/app/Activity;

    const-class v2, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity_;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/activity/ShareWebActivity;->E0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v2}, Lcom/papa91/battle/protocol/GameRoom;->getGameId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gameId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    iget-boolean v1, p0, Lcom/join/mgps/activity/ShareWebActivity;->I0:Z

    const-string v2, "hasPlug"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4
    iget-boolean v1, p0, Lcom/join/mgps/activity/ShareWebActivity;->H0:Z

    const-string v2, "hasRom"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0, v0, p1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic k1(Lcom/join/mgps/activity/ShareWebActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/ShareWebActivity;->X1()V

    return-void
.end method

.method static synthetic l1(Lcom/join/mgps/activity/ShareWebActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/ShareWebActivity;->u:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic m1(Lcom/join/mgps/activity/ShareWebActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity;->u:Ljava/lang/String;

    return-object p1
.end method

.method private m2(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ShareWebActivity$l;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ShareWebActivity$l;-><init>(Lcom/join/mgps/activity/ShareWebActivity;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic n1(Lcom/join/mgps/activity/ShareWebActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/activity/ShareWebActivity;->y:Z

    return p0
.end method

.method static synthetic o1(Lcom/join/mgps/activity/ShareWebActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/activity/ShareWebActivity;->y:Z

    return p1
.end method

.method static synthetic p1(Lcom/join/mgps/activity/ShareWebActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/ShareWebActivity;->c2()V

    return-void
.end method

.method private p2()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->T0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->O0:Ljava/util/Iterator;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->O0:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity;->N0:Lcom/join/mgps/Util/e2;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/join/mgps/activity/ShareWebActivity;->z:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/join/mgps/activity/ShareWebActivity;->z:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/join/mgps/Util/e2;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->O0:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 6
    :cond_0
    new-instance v0, Lcom/join/mgps/dto/LiveUploadData;

    invoke-direct {v0}, Lcom/join/mgps/dto/LiveUploadData;-><init>()V

    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/LiveUploadData;->setCode(I)V

    .line 8
    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity;->Q0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/LiveUploadData;->setCode(I)V

    goto :goto_0

    .line 10
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity;->Q0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/LiveUploadData;->setData([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 11
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 12
    :goto_0
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity;->l:Lcom/join/mgps/customview/LJWebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:papaChoiceAndUploadImg(\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\')"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/join/mgps/customview/LJWebView;->w(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method static synthetic q1(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/ShareWebActivity;->c:Landroid/os/Handler;

    return-object p0
.end method

.method private u1()Z
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_3

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 3
    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v1, "android.permission.CAMERA"

    .line 5
    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v1, "android.permission.READ_PHONE_STATE"

    .line 7
    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    .line 8
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    .line 10
    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v2, 0x2

    .line 11
    invoke-static {p0, v0, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return v1

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private v1(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity;->z:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ".jpg"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/wufan91/live"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 4
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    const/4 p1, 0x0

    return-object p1

    .line 6
    :cond_0
    :try_start_0
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 9
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 10
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    const-string v0, "\u751f\u6210\u5c01\u9762\u5931\u8d25"

    .line 12
    invoke-static {p0, v0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 13
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".fileprovider"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-static {p0, p1, v1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method A1(Ljava/lang/String;Lcom/join/mgps/Util/IntentDateBean;)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lcom/tbruyelle/rxpermissions2/c;

    invoke-direct {v0, p0}, Lcom/tbruyelle/rxpermissions2/c;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    .line 2
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions2/c;->s([Ljava/lang/String;)Lio/reactivex/z;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/activity/ShareWebActivity$g;

    invoke-direct {v1, p0, p2, p1}, Lcom/join/mgps/activity/ShareWebActivity$g;-><init>(Lcom/join/mgps/activity/ShareWebActivity;Lcom/join/mgps/Util/IntentDateBean;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, v1}, Lio/reactivex/z;->B5(Lw2/g;)Lio/reactivex/disposables/b;
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

.method B1()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/IntentUtil;->goMyGameManagerActivity(Landroid/content/Context;)V

    return-void
.end method

.method public D(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;Landroid/webkit/WebChromeClient;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity;->D:Landroid/view/View;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p3, p0, Lcom/join/mgps/activity/ShareWebActivity;->F:Landroid/webkit/WebChromeClient;

    .line 3
    iget-object p2, p0, Lcom/join/mgps/activity/ShareWebActivity;->k:Landroid/widget/RelativeLayout;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4
    iget-object p2, p0, Lcom/join/mgps/activity/ShareWebActivity;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 5
    iget-object p2, p0, Lcom/join/mgps/activity/ShareWebActivity;->r:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 6
    iget-object p2, p0, Lcom/join/mgps/activity/ShareWebActivity;->r:Landroid/widget/FrameLayout;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 7
    iget-object p2, p0, Lcom/join/mgps/activity/ShareWebActivity;->r:Landroid/widget/FrameLayout;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    invoke-virtual {p0, p3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 9
    invoke-direct {p0}, Lcom/join/mgps/activity/ShareWebActivity;->c2()V

    return-void
.end method

.method D1(Landroid/content/Intent;)V
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

.method public E1(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "13-4-0"

    :try_start_0
    const-string v1, "phone"

    .line 1
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 2
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "46000"

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "46002"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "46001"

    .line 4
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p1, "13-4-2"

    return-object p1

    :cond_2
    const-string v1, "46003"

    .line 5
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "13-4-3"

    return-object p1

    :cond_3
    :goto_0
    const-string p1, "13-4-1"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    return-object v0
.end method

.method F1(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "\u83b7\u53d6\u6e38\u620f\u4fe1\u606f\u5931\u8d25"

    if-eqz v0, :cond_4

    .line 2
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-static {p0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v0, v4}, Lcom/join/mgps/Util/RequestBeanUtil;->getAppDetialBean(Ljava/lang/String;ILcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/RecomRequestBean;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->s:Lcom/join/mgps/rpc/d;

    invoke-interface {v0, p1}, Lcom/join/mgps/rpc/d;->R(Lcom/join/mgps/dto/RecomRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_5

    .line 9
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/DetailResultBean;

    const/16 v0, 0x6e

    .line 10
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    if-eqz p2, :cond_1

    .line 11
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/DetailResultBean;->setDown_url_remote(Ljava/lang/String;)V

    .line 12
    :cond_1
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ShareWebActivity;->startDown(Lcom/join/mgps/dto/DetailResultBean;)V

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    move-result p1

    if-eqz p1, :cond_3

    .line 14
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/ShareWebActivity;->i2(Ljava/lang/String;)V

    goto :goto_1

    .line 15
    :cond_3
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/ShareWebActivity;->i2(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 17
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/ShareWebActivity;->i2(Ljava/lang/String;)V

    goto :goto_1

    .line 18
    :cond_4
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/ShareWebActivity;->i2(Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

.method I1()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const-string v0, ""

    .line 1
    iget-boolean v1, p0, Lcom/join/mgps/activity/ShareWebActivity;->t0:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Lcom/join/mgps/activity/ShareWebActivity;->t0:Z

    .line 3
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity;->z:Lcom/join/mgps/dto/AccountBean;

    .line 4
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity;->z:Lcom/join/mgps/dto/AccountBean;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_0

    .line 6
    :cond_1
    :try_start_0
    new-instance v1, Lcom/join/mgps/dto/AccountUserInfoRequestBean;

    invoke-direct {v1}, Lcom/join/mgps/dto/AccountUserInfoRequestBean;-><init>()V

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/join/mgps/activity/ShareWebActivity;->z:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/AccountUserInfoRequestBean;->setUid(Ljava/lang/String;)V

    .line 8
    iget-object v2, p0, Lcom/join/mgps/activity/ShareWebActivity;->z:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/AccountUserInfoRequestBean;->setToken(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/AccountUserInfoRequestBean;->setDevice_id(Ljava/lang/String;)V

    .line 10
    invoke-static {v1}, Lcom/join/mgps/Util/u1;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/AccountUserInfoRequestBean;->setSign(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->t:Lcom/join/mgps/rpc/b;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountUserInfoRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/b;->d(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 12
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getError()I

    move-result v1

    if-nez v1, :cond_4

    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/AccountBean;

    if-eqz v0, :cond_3

    .line 14
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v1

    if-eqz v1, :cond_3

    .line 15
    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity;->z:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getSvip_level()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/AccountBean;->setSvip_level(I)V

    .line 16
    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity;->z:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getVip_level()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/AccountBean;->setVip_level(I)V

    .line 17
    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity;->z:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getLive_total_charm()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/AccountBean;->setLive_total_charm(I)V

    .line 18
    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity;->z:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getIs_anchor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/AccountBean;->setIs_anchor(I)V

    .line 19
    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity;->z:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getPapaMoney()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/join/mgps/dto/AccountBean;->setPapaMoney(J)V

    .line 20
    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity;->z:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getMember_title()Lcom/join/mgps/dto/AccountBean$MemberInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/AccountBean;->setMember_title(Lcom/join/mgps/dto/AccountBean$MemberInfo;)V

    .line 21
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 22
    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity;->z:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/AccountBean;->setNickname(Ljava/lang/String;)V

    .line 23
    :cond_2
    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity;->z:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getIs_real_name()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/AccountBean;->setIs_real_name(I)V

    .line 24
    :cond_3
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity;->z:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v0, v1, p0}, Lcom/join/mgps/Util/b;->saveAccountData(Lcom/join/mgps/dto/AccountBean;Landroid/content/Context;)V

    goto :goto_1

    .line 25
    :cond_4
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getError()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 27
    :cond_5
    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.action_login_701"

    .line 28
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_6
    :goto_1
    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->t0:Z

    return-void
.end method

.method public J1(Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/join/mgps/activity/label/MainLabelActivity_;->j1(Landroid/content/Context;)Lcom/join/mgps/activity/label/MainLabelActivity_$r;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/label/MainLabelActivity_$r;->d(I)Lcom/join/mgps/activity/label/MainLabelActivity_$r;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto :goto_0

    :cond_0
    const-string p1, "uploadData"

    const-string v0, "  goMyMainLabel tag_id is null "

    .line 3
    invoke-static {p1, v0}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V
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

.method public K1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 3
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p3, ""

    .line 4
    :cond_1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p0, p1, v0, p3}, Lcom/join/mgps/Util/IntentUtil;->goMainLabelActivity(Landroid/content/Context;IILjava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "uploadData"

    const-string p2, "  goMyMainLabel tag_id is null "

    .line 5
    invoke-static {p1, p2}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public L1()V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/join/mgps/activity/SearchLabelActivity_;->u(Landroid/content/Context;)Lcom/join/mgps/activity/SearchLabelActivity_$j;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/SearchLabelActivity_$j;->a(I)Lcom/join/mgps/activity/SearchLabelActivity_$j;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method

.method M1(Lcom/papa91/battle/protocol/GameRoom;)V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ShareWebActivity;->dismissLoadingDialog()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity;->E0:Lcom/papa91/battle/protocol/GameRoom;

    .line 3
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getAllowPeripheralJoin()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->x:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/mgps/socket/fight/arena/c;->o(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity;->x:Landroid/app/Activity;

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "\u7981\u6b62\u5916\u8bbe\u7528\u6237\u52a0\u5165!"

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->E0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getBattleArea()Lcom/papa91/battle/protocol/BattleArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/BattleArea;->getNumber()I

    move-result v0

    sget-object v1, Lcom/papa91/battle/protocol/BattleArea;->ALL:Lcom/papa91/battle/protocol/BattleArea;

    invoke-virtual {v1}, Lcom/papa91/battle/protocol/BattleArea;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->E0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getBattleArea()Lcom/papa91/battle/protocol/BattleArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/BattleArea;->getNumber()I

    move-result v0

    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity;->v0:Lcom/join/mgps/socket/fight/arena/b;

    invoke-virtual {v1}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->n()Lcom/papa91/battle/protocol/BattleArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/papa91/battle/protocol/BattleArea;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 6
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ShareWebActivity;->d2(Lcom/papa91/battle/protocol/GameRoom;)V

    return-void

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getGameId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/ShareWebActivity;->checkGameIsInstall(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 p1, 0x1010

    .line 9
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ShareWebActivity;->j2(I)V

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getHasJoinPassword()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ShareWebActivity;->e2(Lcom/papa91/battle/protocol/GameRoom;)V

    goto :goto_0

    .line 12
    :cond_3
    invoke-virtual {p0, p1, v1}, Lcom/join/mgps/activity/ShareWebActivity;->y1(Lcom/papa91/battle/protocol/GameRoom;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public N(ILjava/lang/String;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  onUploadResult "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "uploadData"

    invoke-static {v1, v0}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->P0:Z

    const-string v1, "\')"

    const-string v2, "\u8bf7\u7a0d\u5019..."

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity;->Q0:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity;->O0:Ljava/util/Iterator;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    invoke-direct {p0}, Lcom/join/mgps/activity/ShareWebActivity;->p2()V

    goto/16 :goto_2

    .line 6
    :cond_1
    new-instance p1, Lcom/join/mgps/dto/LiveUploadData;

    invoke-direct {p1}, Lcom/join/mgps/dto/LiveUploadData;-><init>()V

    .line 7
    invoke-virtual {p1, v3}, Lcom/join/mgps/dto/LiveUploadData;->setCode(I)V

    .line 8
    :try_start_0
    iget-object p2, p0, Lcom/join/mgps/activity/ShareWebActivity;->Q0:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/LiveUploadData;->setData([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 9
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 10
    :goto_0
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 11
    iget-object p2, p0, Lcom/join/mgps/activity/ShareWebActivity;->l:Lcom/join/mgps/customview/LJWebView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "javascript:papaChoiceAndUploadImg(\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/join/mgps/customview/LJWebView;->w(Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity;->n0:Lcom/join/mgps/dialog/x0;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 13
    iget-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity;->n0:Lcom/join/mgps/dialog/x0;

    invoke-virtual {p1, v2}, Lcom/join/mgps/dialog/x0;->a(Ljava/lang/String;)Landroid/app/Dialog;

    .line 14
    iput-boolean v3, p0, Lcom/join/mgps/activity/ShareWebActivity;->P0:Z

    goto :goto_2

    .line 15
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->n0:Lcom/join/mgps/dialog/x0;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->n0:Lcom/join/mgps/dialog/x0;

    invoke-virtual {v0, v2}, Lcom/join/mgps/dialog/x0;->a(Ljava/lang/String;)Landroid/app/Dialog;

    if-nez p1, :cond_3

    .line 17
    iget-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity;->l:Lcom/join/mgps/customview/LJWebView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:papaLiveCropImage2(\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/join/mgps/customview/LJWebView;->w(Ljava/lang/String;)V

    const-string p1, "\u4e0a\u4f20\u6210\u529f"

    .line 18
    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 19
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u4e0a\u4f20\u5931\u8d25\uff0c\u9519\u8bef\u7801 "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 20
    :goto_1
    iput-boolean v3, p0, Lcom/join/mgps/activity/ShareWebActivity;->M0:Z

    :goto_2
    return-void
.end method

.method public N1()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->D:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method P1(Z)V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity;->x:Landroid/app/Activity;

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "\u6b63\u5728\u8fde\u63a5\u670d\u52a1\u5668\uff0c\u8bf7\u7a0d\u5019..."

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    .line 2
    :cond_0
    new-instance p1, Lcom/join/mgps/socket/fight/arena/b;

    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->x:Landroid/app/Activity;

    new-instance v1, Lcom/join/mgps/activity/ShareWebActivity$m;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ShareWebActivity$m;-><init>(Lcom/join/mgps/activity/ShareWebActivity;)V

    invoke-direct {p1, v0, v1}, Lcom/join/mgps/socket/fight/arena/b;-><init>(Landroid/app/Activity;Lcom/join/mgps/socket/fight/arena/b$b;)V

    iput-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity;->v0:Lcom/join/mgps/socket/fight/arena/b;

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/socket/fight/arena/b;->bindService()V

    return-void
.end method

.method T1(Ljava/lang/String;)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity;->w0:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->x:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity;->x:Landroid/app/Activity;

    const/4 v0, 0x0

    const-string v1, "\u5f53\u524d\u7f51\u7edc\u4e0d\u53ef\u7528\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/ShareWebActivity;->q2()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/activity/ShareWebActivity;->g2()V

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->v0:Lcom/join/mgps/socket/fight/arena/b;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    move-result-object v0

    if-nez v0, :cond_2

    .line 7
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/ShareWebActivity;->P1(Z)V

    return-void

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->v0:Lcom/join/mgps/socket/fight/arena/b;

    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    move-result-object v0

    iget-object v2, p0, Lcom/join/mgps/activity/ShareWebActivity;->y0:Lapp/mgsim/arena/SocketListener$NotifyObserver;

    invoke-virtual {v0, v2}, Lcom/join/mgps/socket/fight/arena/ArenaService;->z(Lapp/mgsim/arena/SocketListener$NotifyObserver;)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->n0:Lcom/join/mgps/dialog/x0;

    invoke-virtual {v0}, Lcom/join/mgps/dialog/x0;->b()V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->n0:Lcom/join/mgps/dialog/x0;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->v0:Lcom/join/mgps/socket/fight/arena/b;

    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/ArenaService;->s()Z

    move-result v0

    if-nez v0, :cond_3

    .line 12
    iget-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity;->v0:Lcom/join/mgps/socket/fight/arena/b;

    const-string v0, "register_type_NewArenaMainFragment"

    invoke-static {v0}, Lapp/mgsim/arena/ArenaRequestFactory;->login(Ljava/lang/String;)Lapp/mgsim/arena/ArenaRequest;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/socket/fight/arena/b;->f(Lapp/mgsim/arena/ArenaRequest;)V

    goto :goto_0

    .line 13
    :cond_3
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ShareWebActivity;->z1(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public U()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->l:Lcom/join/mgps/customview/LJWebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/ShareWebActivity;->h2()V

    :cond_0
    return-void
.end method

.method V1()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->a:Ljava/lang/String;

    const-string v1, "loding_faile() called."

    invoke-static {v0, v1}, Lcom/join/mgps/Util/t0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->l:Lcom/join/mgps/customview/LJWebView;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->y:Z

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->u:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/join/mgps/activity/ShareWebActivity;->U1(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method W1(Lapp/mgsim/arena/SocketError;)V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget v0, p1, Lapp/mgsim/arena/SocketError;->errorType:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity;->x:Landroid/app/Activity;

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "\u7f51\u7edc\u5f02\u5e38\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5!"

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->x:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    iget-object p1, p1, Lapp/mgsim/arena/SocketError;->errorInfo:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/ShareWebActivity;->g2()V

    return-void
.end method

.method a2()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->u:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/join/mgps/activity/ShareWebActivity;->U1(Ljava/lang/String;)V

    return-void
.end method

.method afterview()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    const-string v0, "http://"

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/c;->P1()Lcom/join/mgps/rpc/impl/c;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity;->s:Lcom/join/mgps/rpc/d;

    .line 2
    invoke-static {}, Lcom/join/mgps/rpc/impl/a;->b0()Lcom/join/mgps/rpc/b;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity;->t:Lcom/join/mgps/rpc/b;

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity;->a:Ljava/lang/String;

    const-string v2, "afterView() called."

    invoke-static {v1, v2}, Lcom/join/mgps/Util/t0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :try_start_0
    iput-object p0, p0, Lcom/join/mgps/activity/ShareWebActivity;->x:Landroid/app/Activity;

    const-string v1, "com.join.mgps.papa.share_webview_raiseVip"

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 6
    new-instance v1, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v1}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity;->B:Lcom/join/mgps/Util/IntentDateBean;

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/ShareWebActivity;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "gameId"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/join/mgps/rpc/g;->k:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/member/vip_view/welcome?gameId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/join/mgps/activity/ShareWebActivity;->u:Ljava/lang/String;

    const-string v3, "1"

    .line 10
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/join/mgps/rpc/g;->k:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/member/vip_view/welfare/battle_bullet_screen?gameId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity;->u:Ljava/lang/String;

    goto/16 :goto_0

    :cond_0
    const-string v3, "2"

    .line 12
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/join/mgps/rpc/g;->k:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/member/vip_view/welfare/game_level?gameId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity;->u:Ljava/lang/String;

    goto/16 :goto_0

    :cond_1
    const-string v3, "3"

    .line 14
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/join/mgps/rpc/g;->k:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/member/vip_view/welfare/game_one_key_skill?gameId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity;->u:Ljava/lang/String;

    goto/16 :goto_0

    :cond_2
    const-string v3, "4"

    .line 16
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/join/mgps/rpc/g;->k:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/member/vip_view/welfare/game_more_archive?gameId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity;->u:Ljava/lang/String;

    goto/16 :goto_0

    :cond_3
    const-string v3, "5"

    .line 18
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/join/mgps/rpc/g;->k:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/member/vip_view/welfare/game_bug?gameId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity;->u:Ljava/lang/String;

    goto/16 :goto_0

    :cond_4
    const-string v3, "6"

    .line 20
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/join/mgps/rpc/g;->k:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/member/vip_view/welfare/game_practice?gameId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity;->u:Ljava/lang/String;

    goto :goto_0

    :cond_5
    const-string v3, "7"

    .line 22
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/join/mgps/rpc/g;->k:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/member/vip_view/welfare/game_enhance?gameId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity;->u:Ljava/lang/String;

    goto :goto_0

    :cond_6
    const-string v3, "8"

    .line 24
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/join/mgps/rpc/g;->k:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/member/vip_view/welfare/ad?gameId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity;->u:Ljava/lang/String;

    goto :goto_0

    :cond_7
    const-string v2, "9"

    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 27
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity;->u:Ljava/lang/String;

    .line 28
    :cond_8
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity;->B:Lcom/join/mgps/Util/IntentDateBean;

    iget-object v2, p0, Lcom/join/mgps/activity/ShareWebActivity;->u:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 29
    iput-boolean v1, p0, Lcom/join/mgps/activity/ShareWebActivity;->o0:Z

    .line 30
    :cond_9
    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity;->B:Lcom/join/mgps/Util/IntentDateBean;

    .line 31
    invoke-virtual {v1}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type_val()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/join/mgps/activity/ShareWebActivity;->u:Ljava/lang/String;

    .line 32
    invoke-virtual {v1}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type_val()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/join/mgps/activity/ShareWebActivity;->v:Ljava/lang/String;

    .line 33
    invoke-virtual {v1}, Lcom/join/mgps/Util/IntentDateBean;->getFrom()Ljava/lang/String;

    move-result-object v2

    const-string v3, "11"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_a

    .line 34
    invoke-virtual {p0, v3}, Lcom/join/mgps/activity/ShareWebActivity;->P1(Z)V

    .line 35
    :cond_a
    iget-object v2, p0, Lcom/join/mgps/activity/ShareWebActivity;->u:Ljava/lang/String;

    if-nez v2, :cond_b

    const-string v2, ""

    .line 36
    iput-object v2, p0, Lcom/join/mgps/activity/ShareWebActivity;->u:Ljava/lang/String;

    .line 37
    :cond_b
    iget-object v2, p0, Lcom/join/mgps/activity/ShareWebActivity;->u:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    iget-object v2, p0, Lcom/join/mgps/activity/ShareWebActivity;->u:Ljava/lang/String;

    const-string v4, "file://"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    iget-object v2, p0, Lcom/join/mgps/activity/ShareWebActivity;->u:Ljava/lang/String;

    const-string v4, "https://"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->u:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->u:Ljava/lang/String;

    .line 39
    :cond_c
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->u:Ljava/lang/String;

    const-string v2, "jump_url_type"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 40
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->u:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/join/mgps/activity/ShareWebActivity;->b2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->u:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 41
    :cond_d
    :try_start_1
    invoke-virtual {v1}, Lcom/join/mgps/Util/IntentDateBean;->getObject()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 42
    invoke-virtual {v1}, Lcom/join/mgps/Util/IntentDateBean;->getObject()Ljava/lang/Object;

    move-result-object v0

    .line 43
    instance-of v2, v0, Lcom/join/mgps/dto/UpdateIntentDataBean;

    if-eqz v2, :cond_e

    .line 44
    check-cast v0, Lcom/join/mgps/dto/UpdateIntentDataBean;

    .line 45
    invoke-virtual {v0}, Lcom/join/mgps/dto/UpdateIntentDataBean;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 46
    invoke-virtual {v0}, Lcom/join/mgps/dto/UpdateIntentDataBean;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    invoke-static {v0}, Lcom/join/android/app/common/utils/APKUtils;->E(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 47
    :catch_0
    :cond_e
    :try_start_2
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->u:Ljava/lang/String;

    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const-string v2, "&type="

    if-eqz v0, :cond_f

    .line 48
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/join/mgps/activity/ShareWebActivity;->u:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&ver="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/join/mgps/activity/ShareWebActivity;->U1(Ljava/lang/String;)V

    goto :goto_1

    .line 49
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/join/mgps/activity/ShareWebActivity;->u:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "?ver="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/join/mgps/activity/ShareWebActivity;->U1(Ljava/lang/String;)V

    .line 50
    :goto_1
    invoke-virtual {v1}, Lcom/join/mgps/Util/IntentDateBean;->getObject()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 51
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/join/mgps/Util/IntentDateBean;->getObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    :cond_10
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_11

    const-string v2, "\u7f51\u9875\u52a0\u8f7d\u5931\u8d25\uff0c\u518d\u8bd5\u8bd5\u5427~"

    .line 53
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    :cond_11
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->l:Lcom/join/mgps/customview/LJWebView;

    if-eqz v0, :cond_12

    .line 55
    invoke-virtual {v0, p0}, Lcom/join/mgps/customview/LJWebView;->setMethodListenter(Lcom/join/mgps/customview/LJWebView$b;)V

    .line 56
    :cond_12
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->x:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/mgps/Util/a0;->c0(Landroid/content/Context;)Lcom/join/mgps/Util/a0;

    move-result-object v0

    iget-object v2, p0, Lcom/join/mgps/activity/ShareWebActivity;->x:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Lcom/join/mgps/Util/z;->x(Landroid/content/Context;)Lcom/join/mgps/dialog/x0;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->n0:Lcom/join/mgps/dialog/x0;

    .line 57
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/c0;->d(Ljava/lang/Object;)V

    .line 58
    new-instance v0, Lcom/join/mgps/Util/e2;

    invoke-direct {v0, p0, p0}, Lcom/join/mgps/Util/e2;-><init>(Landroid/content/Context;Lcom/join/mgps/Util/e2$e;)V

    iput-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->N0:Lcom/join/mgps/Util/e2;

    .line 59
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->l:Lcom/join/mgps/customview/LJWebView;

    invoke-virtual {v0}, Lcom/join/mgps/customview/LJWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    new-instance v2, Lcom/join/mgps/activity/ShareWebActivity$f;

    invoke-direct {v2, p0, v1}, Lcom/join/mgps/activity/ShareWebActivity$f;-><init>(Lcom/join/mgps/activity/ShareWebActivity;Lcom/join/mgps/Util/IntentDateBean;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 60
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method backModGame()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->B:Lcom/join/mgps/Util/IntentDateBean;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/Util/IntentDateBean;->getExt1()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity;->B:Lcom/join/mgps/Util/IntentDateBean;

    invoke-virtual {v1}, Lcom/join/mgps/Util/IntentDateBean;->getExt2()Ljava/lang/String;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/join/mgps/activity/ShareWebActivity;->B:Lcom/join/mgps/Util/IntentDateBean;

    invoke-virtual {v2}, Lcom/join/mgps/Util/IntentDateBean;->getExt3()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "modGame"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {v2}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v2, "0"

    .line 7
    :cond_2
    invoke-static {}, Lcom/join/mgps/va/overmind/e;->p()Lcom/join/mgps/va/overmind/e;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, p0, v2, v1}, Lcom/join/mgps/va/overmind/e;->S(Landroid/content/Context;ILjava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method checkToken()V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const-string v0, ""

    .line 1
    :try_start_0
    invoke-static {}, Lcom/join/mgps/rpc/impl/a;->b0()Lcom/join/mgps/rpc/b;

    move-result-object v1

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getAccount_type()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 4
    new-instance v3, Lcom/join/mgps/dto/AccountUserInfoRequestBean;

    invoke-direct {v3}, Lcom/join/mgps/dto/AccountUserInfoRequestBean;-><init>()V

    .line 5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/AccountUserInfoRequestBean;->setUid(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/join/mgps/dto/AccountUserInfoRequestBean;->setToken(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v3, v0}, Lcom/join/mgps/dto/AccountUserInfoRequestBean;->setDevice_id(Ljava/lang/String;)V

    .line 8
    invoke-static {v3}, Lcom/join/mgps/Util/u1;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/join/mgps/dto/AccountUserInfoRequestBean;->setSign(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v3}, Lcom/join/mgps/dto/AccountUserInfoRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/b;->h(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/AccountTokenSuccess;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountTokenSuccess;->getUser_info()Lcom/join/mgps/dto/AccountBean;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/AccountTokenSuccess;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountTokenSuccess;->getUser_info()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getVip_level()I

    move-result v1

    if-lez v1, :cond_0

    .line 13
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v1

    .line 14
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getVip_level()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/AccountBean;->setVip_level(I)V

    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getSvip_level()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/AccountBean;->setSvip_level(I)V

    .line 16
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getVip_exp_time()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/join/mgps/dto/AccountBean;->setVip_exp_time(J)V

    .line 17
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getIs_anchor()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/AccountBean;->setIs_anchor(I)V

    .line 18
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0, v1, p0}, Lcom/join/mgps/Util/b;->saveAccountData(Lcom/join/mgps/dto/AccountBean;Landroid/content/Context;)V

    .line 19
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->L(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method dismissLoadingDialog()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->n0:Lcom/join/mgps/dialog/x0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->G0:Lcom/join/mgps/dialog/x0;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    return-void
.end method

.method e2(Lcom/papa91/battle/protocol/GameRoom;)V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/customview/input/a;

    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity;->x:Landroid/app/Activity;

    const-string v2, "\u8bf7\u8f93\u5165\u623f\u95f4\u5bc6\u7801"

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/join/mgps/customview/input/a;-><init>(Landroid/content/Context;Ljava/lang/String;IZ)V

    .line 2
    new-instance v1, Lcom/join/mgps/activity/ShareWebActivity$a;

    invoke-direct {v1, p0, v0, p1}, Lcom/join/mgps/activity/ShareWebActivity$a;-><init>(Lcom/join/mgps/activity/ShareWebActivity;Lcom/join/mgps/customview/input/a;Lcom/papa91/battle/protocol/GameRoom;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/input/a;->g(Lcom/join/mgps/customview/input/InputNumView$d;)V

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/customview/input/a;->h()V

    return-void
.end method

.method g2()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->x:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/mgps/Util/a0;->c0(Landroid/content/Context;)Lcom/join/mgps/Util/a0;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity;->x:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/z;->j(Landroid/content/Context;)V

    return-void
.end method

.method public goMyAlbumActivity4PickPic()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->x:Landroid/app/Activity;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->x:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->c2(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->x:Landroid/app/Activity;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->x:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->c2(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_0
    if-eqz v2, :cond_2

    .line 5
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/join/android/app/component/album/MyAlbumActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 7
    iget-object v2, p0, Lcom/join/mgps/activity/ShareWebActivity;->Q0:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 8
    iget-object v2, p0, Lcom/join/mgps/activity/ShareWebActivity;->R0:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 9
    iget-object v2, p0, Lcom/join/mgps/activity/ShareWebActivity;->R0:Ljava/util/List;

    check-cast v2, Ljava/io/Serializable;

    const-string v3, "key_selected_images"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/16 v1, 0x100

    .line 11
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_2
    return-void
.end method

.method h2()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->a:Ljava/lang/String;

    const-string v1, "showMain() called."

    invoke-static {v0, v1}, Lcom/join/mgps/Util/t0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->e:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->l:Lcom/join/mgps/customview/LJWebView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V
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

.method handleFailure(Lapp/mgsim/arena/ArenaResponse;)V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget v0, p1, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_6

    const/16 v1, 0x8

    if-eq v0, v1, :cond_5

    const/16 v1, 0x9

    if-eq v0, v1, :cond_4

    const/16 v1, 0xd

    if-eq v0, v1, :cond_3

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    const/16 v1, 0x11

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->x:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-static {p1}, Lcom/join/mgps/socket/fight/arena/c;->g(Lapp/mgsim/arena/ArenaResponse;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    const-string p1, ""

    goto :goto_0

    :cond_0
    const-string p1, "\u8be5\u623f\u95f4\u4e3a\u6bd4\u8d5b\u4e13\u7528\u623f\u95f4,\u975e\u53c2\u8d5b\u9009\u624b\u65e0\u6cd5\u52a0\u5165"

    goto :goto_0

    :cond_1
    const-string p1, "\u65e0\u6cd5\u52a0\u5165\uff0c\u4f60\u88ab\u7981\u6b62\u52a0\u5165\u8be5\u623f\u95f4"

    goto :goto_0

    .line 3
    :cond_2
    iget-object p1, p1, Lapp/mgsim/arena/ArenaResponse;->errorInfo:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string p1, "\u94dc\u677f\u4e0d\u8db3\uff0c\u65e0\u6cd5\u52a0\u5165\u623f\u95f4"

    goto :goto_0

    :cond_4
    const-string p1, "\u623f\u95f4\u5df2\u6ee1\uff0c\u65e0\u6cd5\u52a0\u5165!"

    goto :goto_0

    :cond_5
    const-string p1, "\u623f\u95f4\u4e0d\u5b58\u5728"

    goto :goto_0

    :cond_6
    const-string p1, "\u5bc6\u7801\u8f93\u5165\u9519\u8bef\uff0c\u8bf7\u91cd\u8bd5"

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->x:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/activity/ShareWebActivity;->dismissLoadingDialog()V

    return-void
.end method

.method i2(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->x:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method

.method k2(Lcom/join/mgps/dto/DetailResultBean;)V
    .locals 10
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 2
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v1

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/mgps/dto/ModInfoBean;->getMain_game_id()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v1, v4}, Lg1/f;->C([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v1

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getPackage_name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lg1/f;->D(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    :goto_0
    const/4 v4, 0x5

    if-eqz v1, :cond_a

    .line 4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_a

    .line 5
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v5, 0x0

    :cond_2
    const/4 v6, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 6
    sget-object v8, Lcom/join/mgps/enums/Dtype;->MOD:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 7
    invoke-static {}, Lcom/join/mgps/va/overmind/e;->p()Lcom/join/mgps/va/overmind/e;

    move-result-object v5

    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/join/mgps/va/overmind/e;->D(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v5

    if-ne v5, v4, :cond_3

    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 8
    :cond_4
    invoke-static {p0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v6

    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, p0, v8}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v6

    if-ne v6, v4, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_5
    if-eqz v5, :cond_6

    if-eqz v6, :cond_6

    .line 9
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/ModInfoBean;->getMain_game_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    goto :goto_2

    :cond_6
    if-eqz v5, :cond_7

    .line 10
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 11
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    goto :goto_2

    :cond_7
    if-eqz v6, :cond_8

    .line 12
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/ModInfoBean;->getMain_game_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    goto :goto_2

    .line 13
    :cond_8
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 14
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    :cond_9
    if-nez v0, :cond_a

    .line 15
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/ModInfoBean;->getMain_game_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    :cond_a
    :goto_2
    if-nez v0, :cond_c

    .line 16
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v0

    if-nez v0, :cond_b

    .line 17
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getDownloadtaskDown()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    goto :goto_3

    .line 18
    :cond_b
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->x:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->K0(Landroid/content/Context;Lcom/join/mgps/dto/DetailResultBean;)V

    return-void

    :cond_c
    :goto_3
    if-eqz v0, :cond_10

    .line 19
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPay_game_amount()I

    move-result v1

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->n0(ILjava/lang/String;)I

    move-result v1

    if-lez v1, :cond_d

    .line 20
    iget-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity;->x:Landroid/app/Activity;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->m3(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_4

    .line 21
    :cond_d
    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->d1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/DetailResultBean;)V

    .line 22
    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity;->x:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/join/mgps/Util/UtilsMy;->T0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_4

    .line 23
    :cond_e
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getDown_status()I

    move-result p1

    if-ne p1, v4, :cond_f

    .line 24
    iget-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity;->x:Landroid/app/Activity;

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->R0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_4

    .line 25
    :cond_f
    iget-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity;->x:Landroid/app/Activity;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTp_down_url()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getOther_down_switch()I

    move-result v2

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCdn_down_switch()I

    move-result v3

    invoke-static {p1, v0, v1, v2, v3}, Lcom/join/mgps/Util/UtilsMy;->F0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_10
    :goto_4
    return-void
.end method

.method public l2(Lcom/join/mgps/dto/PapayOrder;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->x:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/mgps/activity/PayNowActivity_;->j1(Landroid/content/Context;)Lcom/join/mgps/activity/PayNowActivity_$k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/PayNowActivity_$k;->c(Lcom/join/mgps/dto/PapayOrder;)Lcom/join/mgps/activity/PayNowActivity_$k;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method

.method n2(Lcom/join/mgps/dto/CreateVipData;)V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    const-string v0, ""

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity;->x:Landroid/app/Activity;

    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity;->z:Lcom/join/mgps/dto/AccountBean;

    .line 2
    new-instance v1, Lcom/join/mgps/dto/PapayOrder;

    invoke-direct {v1}, Lcom/join/mgps/dto/PapayOrder;-><init>()V

    const-string v2, "16000431"

    .line 3
    iput-object v2, v1, Lcom/join/mgps/dto/PapayOrder;->APPKEY:Ljava/lang/String;

    const/4 v2, 0x0

    .line 4
    iput v2, v1, Lcom/join/mgps/dto/PapayOrder;->PAYTYPE:I

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/join/mgps/rpc/g;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/member/buy_vip/callback"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/join/mgps/dto/PapayOrder;->NOTIFY_URI:Ljava/lang/String;

    const-string v2, "\u609f\u996d\u5145\u503c"

    .line 6
    iput-object v2, v1, Lcom/join/mgps/dto/PapayOrder;->APP_NAME:Ljava/lang/String;

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "papavip"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/join/mgps/dto/PapayOrder;->APP_ORDER_ID:Ljava/lang/String;

    .line 8
    iget-object v2, p0, Lcom/join/mgps/activity/ShareWebActivity;->z:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v2

    iput v2, v1, Lcom/join/mgps/dto/PapayOrder;->PA_OPEN_UID:I

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/join/mgps/activity/ShareWebActivity;->z:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/join/mgps/dto/PapayOrder;->APP_USER_ID:Ljava/lang/String;

    .line 10
    iget-object v2, p0, Lcom/join/mgps/activity/ShareWebActivity;->z:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getNickname()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/join/mgps/dto/PapayOrder;->APP_USER_NAME:Ljava/lang/String;

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "month"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CreateVipData;->getMonth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/join/mgps/dto/PapayOrder;->PRODUCT_ID:Ljava/lang/String;

    const-string v2, "\u4f1a\u5458\u5145\u503c"

    .line 12
    iput-object v2, v1, Lcom/join/mgps/dto/PapayOrder;->PRODUCT_NAME:Ljava/lang/String;

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/dto/CreateVipData;->getAmount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/join/mgps/dto/PapayOrder;->MONEY_AMOUNT:Ljava/lang/String;

    const/4 v2, 0x1

    .line 14
    iput v2, v1, Lcom/join/mgps/dto/PapayOrder;->APP_DISTRICT:I

    .line 15
    iput v2, v1, Lcom/join/mgps/dto/PapayOrder;->APP_SERVER:I

    .line 16
    invoke-virtual {p1}, Lcom/join/mgps/dto/CreateVipData;->getExtra()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/join/mgps/dto/PapayOrder;->APP_EXT1:Ljava/lang/String;

    .line 17
    iput-object v0, v1, Lcom/join/mgps/dto/PapayOrder;->APP_EXT2:Ljava/lang/String;

    .line 18
    iput v2, v1, Lcom/join/mgps/dto/PapayOrder;->PAYORRECHARGE:I

    .line 19
    iput v2, v1, Lcom/join/mgps/dto/PapayOrder;->ORDERTYPE:I

    const/4 p1, 0x3

    .line 20
    iput p1, v1, Lcom/join/mgps/dto/PapayOrder;->PAYSHOWTYPE:I

    .line 21
    iget-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity;->z:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/join/mgps/dto/PapayOrder;->TOKEN:Ljava/lang/String;

    .line 22
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/ShareWebActivity;->l2(Lcom/join/mgps/dto/PapayOrder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 23
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public o2(Landroid/net/Uri;)V
    .locals 3

    const-string v0, "_crop"

    .line 1
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/ShareWebActivity;->v1(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->L0:Landroid/net/Uri;

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.action.CROP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "image/*"

    .line 3
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "crop"

    const-string v1, "true"

    .line 4
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "aspectX"

    const/16 v1, 0x154

    .line 5
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "aspectY"

    const/16 v2, 0x122

    .line 6
    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "outputX"

    .line 7
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "outputY"

    .line 8
    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "scale"

    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "scaleUpIfNeeded"

    .line 10
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "return-data"

    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 12
    iget-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity;->L0:Landroid/net/Uri;

    const-string v1, "output"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 13
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1}, Landroid/graphics/Bitmap$CompressFormat;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "outputFormat"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0xa

    .line 14
    invoke-virtual {p0, v0, p1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    const-string v0, ""

    const/4 v1, -0x1

    if-ne p2, v1, :cond_3

    const/16 v2, 0xa

    if-eq p1, v2, :cond_2

    const/16 v2, 0x64

    if-eq p1, v2, :cond_1

    const/16 v2, 0xc8

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/join/mgps/Util/g0;->s(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 2
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/ShareWebActivity;->o2(Landroid/net/Uri;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v2, p0, Lcom/join/mgps/activity/ShareWebActivity;->K0:Landroid/net/Uri;

    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/ShareWebActivity;->o2(Landroid/net/Uri;)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    .line 5
    iput-boolean v2, p0, Lcom/join/mgps/activity/ShareWebActivity;->M0:Z

    .line 6
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getImagePipeline()Lcom/facebook/imagepipeline/core/g;

    move-result-object v2

    .line 7
    iget-object v3, p0, Lcom/join/mgps/activity/ShareWebActivity;->L0:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Lcom/facebook/imagepipeline/core/g;->h(Landroid/net/Uri;)V

    .line 8
    iget-object v3, p0, Lcom/join/mgps/activity/ShareWebActivity;->L0:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Lcom/facebook/imagepipeline/core/g;->f(Landroid/net/Uri;)V

    .line 9
    iget-object v3, p0, Lcom/join/mgps/activity/ShareWebActivity;->L0:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Lcom/facebook/imagepipeline/core/g;->e(Landroid/net/Uri;)V

    .line 10
    iget-object v2, p0, Lcom/join/mgps/activity/ShareWebActivity;->N0:Lcom/join/mgps/Util/e2;

    iget-object v3, p0, Lcom/join/mgps/activity/ShareWebActivity;->L0:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/join/mgps/activity/ShareWebActivity;->z:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/join/mgps/activity/ShareWebActivity;->z:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/join/mgps/Util/e2;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v2, p0, Lcom/join/mgps/activity/ShareWebActivity;->n0:Lcom/join/mgps/dialog/x0;

    invoke-virtual {v2}, Lcom/join/mgps/dialog/x0;->b()V

    .line 12
    iget-object v2, p0, Lcom/join/mgps/activity/ShareWebActivity;->n0:Lcom/join/mgps/dialog/x0;

    const-string v3, "\u6b63\u5728\u4e0a\u4f20\u76f4\u64ad\u5c01\u9762"

    invoke-virtual {v2, v3}, Lcom/join/mgps/dialog/x0;->a(Ljava/lang/String;)Landroid/app/Dialog;

    .line 13
    iget-object v2, p0, Lcom/join/mgps/activity/ShareWebActivity;->n0:Lcom/join/mgps/dialog/x0;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    :cond_3
    :goto_0
    const/16 v2, 0x100

    if-ne p1, v2, :cond_5

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->R0:Ljava/util/List;

    if-nez v0, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->R0:Ljava/util/List;

    .line 15
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->R0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->R0:Ljava/util/List;

    invoke-direct {p0, p3}, Lcom/join/mgps/activity/ShareWebActivity;->G1(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 17
    invoke-static {}, Lnet/bither/util/b;->q()Lnet/bither/util/b;

    move-result-object v0

    invoke-virtual {v0}, Lnet/bither/util/b;->y()V

    goto :goto_1

    :cond_5
    const/16 v2, 0x1010

    if-ne p1, v2, :cond_8

    if-ne p2, v1, :cond_8

    .line 18
    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity;->E0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v1}, Lcom/papa91/battle/protocol/GameRoom;->getHasJoinPassword()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->E0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ShareWebActivity;->e2(Lcom/papa91/battle/protocol/GameRoom;)V

    goto :goto_1

    .line 20
    :cond_6
    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity;->E0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v1}, Lcom/papa91/battle/protocol/GameRoom;->getHasJoinPassword()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->E0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ShareWebActivity;->e2(Lcom/papa91/battle/protocol/GameRoom;)V

    goto :goto_1

    :cond_7
    const-string v1, "\u6b63\u5728\u83b7\u53d6\u623f\u95f4..."

    .line 22
    invoke-direct {p0, v1}, Lcom/join/mgps/activity/ShareWebActivity;->f2(Ljava/lang/String;)V

    .line 23
    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity;->E0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {p0, v1, v0}, Lcom/join/mgps/activity/ShareWebActivity;->y1(Lcom/papa91/battle/protocol/GameRoom;Ljava/lang/String;)V

    .line 24
    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->l:Lcom/join/mgps/customview/LJWebView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/join/mgps/customview/LJWebView;->q(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->U0:Lcom/mgsim/common/fragment/BackHandledFragment;

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

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->l:Lcom/join/mgps/customview/LJWebView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/customview/LJWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ShareWebActivity;->t1()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->G:Z

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity;->l:Lcom/join/mgps/customview/LJWebView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/join/mgps/customview/LJWebView;->w(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/join/mgps/Util/c0;->e(Ljava/lang/Object;)V

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity;->C:Lcom/join/mgps/dto/IntentDataMain;

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Activity;->moveTaskToBack(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 8
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->S0:Lnet/bither/util/b$e;

    if-eqz v0, :cond_1

    .line 9
    invoke-static {}, Lnet/bither/util/b;->q()Lnet/bither/util/b;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity;->S0:Lnet/bither/util/b$e;

    invoke-virtual {v0, v1}, Lnet/bither/util/b;->z(Lnet/bither/util/b$e;)V

    .line 10
    :cond_1
    invoke-super {p0}, Lcom/BaseFragmentActivity;->onDestroy()V

    return-void
.end method

.method public onEventMainThread(Lcom/join/mgps/dto/PapayResult;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_4

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/PapayResult;->getStatus()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity;->l:Lcom/join/mgps/customview/LJWebView;

    const-string v0, "javascript:papaPayResult(5003)"

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/LJWebView;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity;->l:Lcom/join/mgps/customview/LJWebView;

    const-string v0, "javascript:papaPayResult(5002)"

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/LJWebView;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity;->l:Lcom/join/mgps/customview/LJWebView;

    const-string v0, "javascript:papaPayResult(5001)"

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/LJWebView;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity;->l:Lcom/join/mgps/customview/LJWebView;

    const-string v0, "javascript:papaPayResult(5000)"

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/LJWebView;->w(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onEventMainThread(Lcom/join/mgps/event/l;)V
    .locals 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/event/l;->a()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/join/android/app/common/utils/APKUtils;->E(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v0

    const-string v1, ")"

    const-string v2, ","

    const-string v3, "javascript:papaGameStatusNotify("

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->l:Lcom/join/mgps/customview/LJWebView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRef_crc_sign_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/LJWebView;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->l:Lcom/join/mgps/customview/LJWebView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/LJWebView;->w(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->a:Ljava/lang/String;

    const-string v1, "onKeyDown() called."

    invoke-static {v0, v1}, Lcom/join/mgps/Util/t0;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    if-ne p1, v0, :cond_6

    .line 2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_6

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/activity/ShareWebActivity;->N1()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity;->F:Landroid/webkit/WebChromeClient;

    invoke-virtual {p1}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    return v1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->v:Ljava/lang/String;

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->v:Ljava/lang/String;

    iget-object v2, p0, Lcom/join/mgps/activity/ShareWebActivity;->u:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-direct {p0}, Lcom/join/mgps/activity/ShareWebActivity;->C1()V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->v:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 8
    invoke-direct {p0}, Lcom/join/mgps/activity/ShareWebActivity;->C1()V

    return v1

    :cond_2
    const-string v2, "?"

    .line 9
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->v:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 11
    :cond_3
    iget-object v3, p0, Lcom/join/mgps/activity/ShareWebActivity;->u:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 12
    iget-object v3, p0, Lcom/join/mgps/activity/ShareWebActivity;->u:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/join/mgps/activity/ShareWebActivity;->u:Ljava/lang/String;

    .line 13
    :cond_4
    iget-object v2, p0, Lcom/join/mgps/activity/ShareWebActivity;->v:Ljava/lang/String;

    invoke-static {v2}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/join/mgps/activity/ShareWebActivity;->u:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 14
    invoke-direct {p0}, Lcom/join/mgps/activity/ShareWebActivity;->C1()V

    .line 15
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->l:Lcom/join/mgps/customview/LJWebView;

    invoke-virtual {v0}, Lcom/join/mgps/customview/LJWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 16
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string p1, "javascript:papaBackPageUp()"

    .line 17
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return v1

    .line 18
    :cond_6
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->l:Lcom/join/mgps/customview/LJWebView;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Lcom/join/mgps/customview/LJWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "onPause"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity;->l:Lcom/join/mgps/customview/LJWebView;

    invoke-virtual {v1}, Lcom/join/mgps/customview/LJWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

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

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    array-length p1, p3

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_2

    aget v0, p3, p2

    if-eqz v0, :cond_1

    return-void

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/join/mgps/activity/ShareWebActivity;->I:Z

    :goto_1
    return-void
.end method

.method protected onResume()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/BaseFragmentActivity;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->l:Lcom/join/mgps/customview/LJWebView;

    const-string v1, "javascript:papaActivityOnResume()"

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/LJWebView;->w(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->l:Lcom/join/mgps/customview/LJWebView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    :try_start_0
    invoke-virtual {v0}, Lcom/join/mgps/customview/LJWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "onResume"

    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v2, p0, Lcom/join/mgps/activity/ShareWebActivity;->l:Lcom/join/mgps/customview/LJWebView;

    invoke-virtual {v2}, Lcom/join/mgps/customview/LJWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 8
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->x:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->z:Lcom/join/mgps/dto/AccountBean;

    .line 9
    iget-boolean v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->A:Z

    if-eqz v0, :cond_3

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->l:Lcom/join/mgps/customview/LJWebView;

    if-eqz v0, :cond_2

    .line 11
    new-instance v0, Lcom/join/mgps/dto/WebAccountDataBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/WebAccountDataBean;-><init>()V

    .line 12
    iget-object v2, p0, Lcom/join/mgps/activity/ShareWebActivity;->z:Lcom/join/mgps/dto/AccountBean;

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 13
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/WebAccountDataBean;->setHasLogin(Z)V

    .line 14
    iget-object v2, p0, Lcom/join/mgps/activity/ShareWebActivity;->z:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/WebAccountDataBean;->setAccountBean(Lcom/join/mgps/dto/AccountBean;)V

    goto :goto_1

    .line 15
    :cond_1
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/WebAccountDataBean;->setHasLogin(Z)V

    .line 16
    iget-object v2, p0, Lcom/join/mgps/activity/ShareWebActivity;->z:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/WebAccountDataBean;->setAccountBean(Lcom/join/mgps/dto/AccountBean;)V

    .line 17
    :goto_1
    iget-object v2, p0, Lcom/join/mgps/activity/ShareWebActivity;->l:Lcom/join/mgps/customview/LJWebView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "javascript:papaPutAccountData("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/join/mgps/customview/LJWebView;->w(Ljava/lang/String;)V

    .line 18
    :cond_2
    iput-boolean v1, p0, Lcom/join/mgps/activity/ShareWebActivity;->A:Z

    .line 19
    :cond_3
    invoke-static {}, Lnet/bither/util/b;->q()Lnet/bither/util/b;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity;->S0:Lnet/bither/util/b$e;

    invoke-virtual {v0, v1}, Lnet/bither/util/b;->e(Lnet/bither/util/b$e;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->l:Lcom/join/mgps/customview/LJWebView;

    invoke-virtual {v0}, Lcom/join/mgps/customview/LJWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    return-void
.end method

.method public p0(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->g:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public q0()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->D:Landroid/view/View;

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/ShareWebActivity;->Z1()V

    return-void
.end method

.method q2()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->x:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/join/mgps/activity/ShareWebActivity;->accountBean(Landroid/content/Context;)Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->z:Lcom/join/mgps/dto/AccountBean;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->x:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->isTourist()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method r1()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->v:Ljava/lang/String;

    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/ShareWebActivity;->C1()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->l:Lcom/join/mgps/customview/LJWebView;

    invoke-virtual {v0}, Lcom/join/mgps/customview/LJWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "javascript:papaBackPageUp()"

    .line 5
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-direct {p0}, Lcom/join/mgps/activity/ShareWebActivity;->C1()V

    :goto_0
    return-void
.end method

.method public s()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->l:Lcom/join/mgps/customview/LJWebView;

    invoke-virtual {v0}, Lcom/join/mgps/customview/LJWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/join/mgps/activity/ShareWebActivity;->C1()V

    :goto_0
    return-void
.end method

.method s1()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/ShareWebActivity;->C1()V

    return-void
.end method

.method search()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->x:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/mgps/activity/SearchHintActivity_;->S1(Landroid/content/Context;)Lcom/join/mgps/activity/SearchHintActivity_$y;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method

.method setNetwork()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->a:Ljava/lang/String;

    const-string v1, "setNetwork() called."

    invoke-static {v0, v1}, Lcom/join/mgps/Util/t0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->I2(Landroid/content/Context;)V

    return-void
.end method

.method showLoding()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->a:Ljava/lang/String;

    const-string v1, "showLoding() called."

    invoke-static {v0, v1}, Lcom/join/mgps/Util/t0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->d:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->l:Lcom/join/mgps/customview/LJWebView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V
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
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->a:Ljava/lang/String;

    const-string v1, "showLodingFailed() called."

    invoke-static {v0, v1}, Lcom/join/mgps/Util/t0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->e:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->d:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->l:Lcom/join/mgps/customview/LJWebView;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V
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

.method startDown(Lcom/join/mgps/dto/DetailResultBean;)V
    .locals 7
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadPointBase;->get_from()I

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadPointBase;->get_from_type()I

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadPointBase;->get_from()I

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadPointBase;->get_from_type()I

    .line 8
    :goto_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getTag_info()Ljava/util/ArrayList;

    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "VIRTUAL_SINGLE"

    goto :goto_1

    :cond_1
    const-string v1, ""

    .line 10
    :goto_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/TipNew;->getModel()Lcom/join/mgps/dto/TipBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "7"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    move-object v2, v1

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    const/4 v1, 0x1

    const-string v2, "ANDROID_SINGLE"

    :goto_2
    const/4 v4, 0x2

    if-nez v1, :cond_6

    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getPlugin_num()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_3

    .line 12
    :cond_3
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getPlugin_num()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/join/mgps/Util/UtilsMy;->H1(I)Z

    move-result v3

    :goto_3
    if-eqz v3, :cond_5

    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getPlugin_num()Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-static {v1}, Lcom/join/mgps/Util/UtilsMy;->y1(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_type()I

    move-result v1

    if-ne v1, v4, :cond_4

    const-string v2, "SO_SIMULATOR"

    goto :goto_4

    :cond_4
    const-string v2, "RAW_SIMULATOR"

    :cond_5
    :goto_4
    move v1, v3

    .line 16
    :cond_6
    :try_start_0
    new-instance v3, Lcom/join/mgps/pref/PrefDef_;

    iget-object v5, p0, Lcom/join/mgps/activity/ShareWebActivity;->x:Landroid/app/Activity;

    invoke-direct {v3, v5}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/join/mgps/pref/PrefDef_;->androidIdNullsKey()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v3

    invoke-virtual {v3}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 17
    invoke-static {v3}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 18
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v5

    const-class v6, Ljava/util/List;

    invoke-virtual {v5, v3, v6}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 19
    sget-object v5, Lcom/MApplication;->z:Ljava/lang/String;

    invoke-static {v5}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    sget-object v5, Lcom/MApplication;->z:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    if-eqz v1, :cond_7

    .line 20
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v3

    iget-object v5, p0, Lcom/join/mgps/activity/ShareWebActivity;->x:Landroid/app/Activity;

    invoke-virtual {v3, v5}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_7

    return-void

    :catch_0
    nop

    .line 21
    :cond_7
    new-instance v3, Lcom/join/mgps/pref/PrefDef_;

    iget-object v5, p0, Lcom/join/mgps/activity/ShareWebActivity;->x:Landroid/app/Activity;

    invoke-direct {v3, v5}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/join/mgps/pref/PrefDef_;->download_game_switch()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v3

    invoke-virtual {v3}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v1, :cond_8

    if-eqz v3, :cond_8

    .line 22
    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity;->x:Landroid/app/Activity;

    new-instance v3, Lcom/join/mgps/activity/ShareWebActivity$j;

    invoke-direct {v3, p0, p1}, Lcom/join/mgps/activity/ShareWebActivity$j;-><init>(Lcom/join/mgps/activity/ShareWebActivity;Lcom/join/mgps/dto/DetailResultBean;)V

    invoke-static {v1, v4, v0, v2, v3}, Lcom/join/mgps/Util/UtilsMy;->p0(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/join/mgps/activity/arena/GameRoomActivity$x;)V

    goto :goto_5

    .line 23
    :cond_8
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ShareWebActivity;->k2(Lcom/join/mgps/dto/DetailResultBean;)V

    :goto_5
    return-void
.end method

.method t1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->v0:Lcom/join/mgps/socket/fight/arena/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->a:Ljava/lang/String;

    const-string v1, "--- removeObserver---"

    invoke-static {v0, v1}, Lcom/join/mgps/Util/t0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->v0:Lcom/join/mgps/socket/fight/arena/b;

    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity;->y0:Lapp/mgsim/arena/SocketListener$NotifyObserver;

    invoke-virtual {v0, v1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->A(Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->v0:Lcom/join/mgps/socket/fight/arena/b;

    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->g()V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->v0:Lcom/join/mgps/socket/fight/arena/b;

    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->stopService()V

    :cond_0
    return-void
.end method

.method public v0(Lcom/mgsim/common/fragment/BackHandledFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity;->U0:Lcom/mgsim/common/fragment/BackHandledFragment;

    return-void
.end method

.method w1(I)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->x:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->z:Lcom/join/mgps/dto/AccountBean;

    .line 2
    :try_start_0
    new-instance v0, Lcom/join/mgps/dto/VipMoneyRequest;

    invoke-direct {v0}, Lcom/join/mgps/dto/VipMoneyRequest;-><init>()V

    .line 3
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/VipMoneyRequest;->setMonth(I)V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity;->z:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/VipMoneyRequest;->setToken(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity;->z:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/VipMoneyRequest;->setUid(I)V

    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity;->t:Lcom/join/mgps/rpc/b;

    invoke-virtual {v0}, Lcom/join/mgps/dto/VipMoneyRequest;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/b;->w(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;

    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/activity/ShareWebActivity;->dismissLoadingDialog()V

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getError()I

    move-result v1

    if-nez v1, :cond_0

    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/CreateVipData;

    .line 10
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/CreateVipData;->setMonth(I)V

    .line 11
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ShareWebActivity;->n2(Lcom/join/mgps/dto/CreateVipData;)V

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getError()I

    move-result p1

    const/16 v0, 0x2bd

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Lcom/join/mgps/activity/ShareWebActivity;->A:Z

    .line 14
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->x:Landroid/app/Activity;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/join/mgps/Util/IntentUtil;->goMyAccountLoginActivity(Landroid/content/Context;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 15
    :catch_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/ShareWebActivity;->dismissLoadingDialog()V

    :cond_1
    :goto_0
    return-void
.end method

.method x1()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->n0:Lcom/join/mgps/dialog/x0;

    invoke-virtual {v0}, Lcom/join/mgps/dialog/x0;->b()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->n0:Lcom/join/mgps/dialog/x0;

    const-string v1, "\u6b63\u5728\u4e0a\u4f20\u56fe\u7247\u8bf7\u7a0d\u5019"

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/x0;->a(Ljava/lang/String;)Landroid/app/Dialog;

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->n0:Lcom/join/mgps/dialog/x0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    return-void
.end method

.method y1(Lcom/papa91/battle/protocol/GameRoom;Ljava/lang/String;)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->v0:Lcom/join/mgps/socket/fight/arena/b;

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    move-result v1

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getElite()Z

    move-result p1

    const-string v2, "register_type_NewArenaMainFragment"

    invoke-static {v2, v1, p2, p1}, Lapp/mgsim/arena/ArenaRequestFactory;->joinRoom(Ljava/lang/String;ILjava/lang/String;Z)Lapp/mgsim/arena/ArenaRequest;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/socket/fight/arena/b;->f(Lapp/mgsim/arena/ArenaRequest;)V

    return-void
.end method

.method z1(Ljava/lang/String;)V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->v0:Lcom/join/mgps/socket/fight/arena/b;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const-string v1, "register_type_NewArenaMainFragment"

    invoke-static {v1, p1}, Lapp/mgsim/arena/ArenaRequestFactory;->searchRoomById(Ljava/lang/String;I)Lapp/mgsim/arena/ArenaRequest;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/socket/fight/arena/b;->f(Lapp/mgsim/arena/ArenaRequest;)V

    return-void
.end method
