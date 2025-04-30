.class public Lcom/join/mgps/activity/DocumentManageActivity;
.super Lcom/BaseFragmentActivity;
.source "DocumentManageActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/DocumentManageActivity$e;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c002e
.end annotation


# static fields
.field public static D0:I = 0x1
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field


# instance fields
.field A:Lcom/join/mgps/fragment/i3;

.field A0:Z

.field B:Lcom/join/mgps/fragment/i3;

.field B0:Z

.field C:Lcom/join/mgps/fragment/k3;

.field C0:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/join/mgps/dto/CloudListDataBean;",
            ">;"
        }
    .end annotation
.end field

.field D:Lcom/join/mgps/fragment/k3;

.field private E:Lcom/join/mgps/dto/AccountBean;

.field F:Lcom/join/mgps/rpc/c;

.field G:I

.field H:I

.field I:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

.field J:Lcom/join/mgps/activity/DocumentManageActivity$e;

.field K:Landroid/content/IntentFilter;

.field a:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field b:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field c:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Landroid/widget/RadioGroup;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Landroid/widget/RadioButton;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Landroid/widget/RadioButton;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field i:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field j:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field k:Landroid/widget/RadioGroup;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field l:Landroid/widget/RadioButton;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field m:Landroid/widget/RadioButton;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field n:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private n0:Lcom/github/snowdream/android/app/downloader/b$b;

.field o:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field o0:I

.field p:Landroid/widget/FrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field public p0:Z

.field q:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field q0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RomArchived;",
            ">;"
        }
    .end annotation
.end field

.field r:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field public r0:Z

.field s:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field public s0:Z

.field t:Landroid/app/Fragment;

.field private t0:Lq/rorbin/badgeview/a;

.field u:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field u0:Z

.field v:Lcom/github/snowdream/android/app/downloader/b;

.field private v0:Landroid/widget/TextView;

.field w:Landroid/content/Context;

.field w0:I

.field x:Lcom/join/mgps/dialog/x;

.field x0:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field y:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field y0:Landroid/widget/PopupWindow;

.field z:Lcom/join/mgps/dto/ArchiveNumDataBean;

.field z0:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/BaseFragmentActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->t:Landroid/app/Fragment;

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->G:I

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->H:I

    .line 5
    iput v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->o0:I

    .line 6
    iput-boolean v1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->p0:Z

    .line 7
    iput-boolean v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->r0:Z

    .line 8
    iput-boolean v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->s0:Z

    .line 9
    iput-boolean v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->u0:Z

    const/4 v0, 0x5

    .line 10
    iput v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->w0:I

    .line 11
    new-instance v0, Lcom/join/mgps/activity/DocumentManageActivity$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/DocumentManageActivity$c;-><init>(Lcom/join/mgps/activity/DocumentManageActivity;)V

    iput-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->x0:Landroid/os/Handler;

    .line 12
    iput-boolean v1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->z0:Z

    .line 13
    iput-boolean v1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->A0:Z

    .line 14
    iput-boolean v1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->B0:Z

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->C0:Ljava/util/Map;

    return-void
.end method

.method static synthetic E0(Lcom/join/mgps/activity/DocumentManageActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->v0:Landroid/widget/TextView;

    return-object p0
.end method

.method public static G0(Ljava/lang/String;Ljava/lang/String;)J
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method private K0()Lcom/join/mgps/dto/ArchiveColudArgs;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->E:Lcom/join/mgps/dto/AccountBean;

    const-string v1, ""

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->w:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v0

    iget-object v2, p0, Lcom/join/mgps/activity/DocumentManageActivity;->y:Ljava/lang/String;

    invoke-virtual {v0, v1, v1, v2}, Lcom/join/mgps/Util/RequestBeanUtil;->getArchiveNum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ArchiveColudArgs;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->w:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/join/mgps/activity/DocumentManageActivity;->E:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/DocumentManageActivity;->E:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/join/mgps/activity/DocumentManageActivity;->y:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/join/mgps/Util/RequestBeanUtil;->getArchiveNum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ArchiveColudArgs;

    move-result-object v0

    return-object v0
.end method

.method private O0()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/github/snowdream/android/app/downloader/b;->e()Lcom/github/snowdream/android/app/downloader/b;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->v:Lcom/github/snowdream/android/app/downloader/b;

    .line 2
    new-instance v0, Lcom/join/mgps/activity/DocumentManageActivity$d;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/DocumentManageActivity$d;-><init>(Lcom/join/mgps/activity/DocumentManageActivity;)V

    iput-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->n0:Lcom/github/snowdream/android/app/downloader/b$b;

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->v:Lcom/github/snowdream/android/app/downloader/b;

    invoke-virtual {v1, v0}, Lcom/github/snowdream/android/app/downloader/b;->m(Lcom/github/snowdream/android/app/downloader/b$b;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->v:Lcom/github/snowdream/android/app/downloader/b;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/b;->i()V

    return-void
.end method

.method private P0()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private b1(I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/DocumentManageActivity;->N0(Landroidx/fragment/app/FragmentTransaction;)V

    .line 3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 4
    iget-object v2, p0, Lcom/join/mgps/activity/DocumentManageActivity;->y:Ljava/lang/String;

    const-string v3, "gameid"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "type"

    .line 5
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const v2, 0x7f090533

    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->A:Lcom/join/mgps/fragment/i3;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/join/mgps/fragment/j3;

    invoke-direct {p1}, Lcom/join/mgps/fragment/j3;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->A:Lcom/join/mgps/fragment/i3;

    .line 8
    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->A:Lcom/join/mgps/fragment/i3;

    invoke-virtual {v0, v2, p1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    if-ne p1, v3, :cond_3

    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->B:Lcom/join/mgps/fragment/i3;

    if-nez p1, :cond_2

    .line 12
    new-instance p1, Lcom/join/mgps/fragment/j3;

    invoke-direct {p1}, Lcom/join/mgps/fragment/j3;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->B:Lcom/join/mgps/fragment/i3;

    .line 13
    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 14
    iget-object p1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->B:Lcom/join/mgps/fragment/i3;

    invoke-virtual {v0, v2, p1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_0

    .line 15
    :cond_2
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_0

    :cond_3
    const/4 v3, 0x3

    if-ne p1, v3, :cond_5

    .line 16
    iget-object p1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->C:Lcom/join/mgps/fragment/k3;

    if-nez p1, :cond_4

    .line 17
    new-instance p1, Lcom/join/mgps/fragment/l3;

    invoke-direct {p1}, Lcom/join/mgps/fragment/l3;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->C:Lcom/join/mgps/fragment/k3;

    .line 18
    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 19
    iget-object p1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->C:Lcom/join/mgps/fragment/k3;

    invoke-virtual {v0, v2, p1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_0

    .line 20
    :cond_4
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_0

    .line 21
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->D:Lcom/join/mgps/fragment/k3;

    if-nez p1, :cond_6

    .line 22
    new-instance p1, Lcom/join/mgps/fragment/l3;

    invoke-direct {p1}, Lcom/join/mgps/fragment/l3;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->D:Lcom/join/mgps/fragment/k3;

    .line 23
    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 24
    iget-object p1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->D:Lcom/join/mgps/fragment/k3;

    invoke-virtual {v0, v2, p1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_0

    .line 25
    :cond_6
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 26
    :goto_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public static checkDeviceHasNavigationBar(Landroid/content/Context;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "config_showNavigationBar"

    const-string v1, "bool"

    const-string v2, "android"

    .line 2
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    :try_start_0
    const-string v0, "android.os.SystemProperties"

    .line 4
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "get"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    .line 5
    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "qemu.hw.mainkeys"

    aput-object v5, v4, v1

    .line 6
    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "1"

    .line 7
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "0"

    .line 8
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    move v1, p0

    :goto_1
    move p0, v1

    :catch_0
    return p0
.end method


# virtual methods
.method public D0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->f:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060035

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->g:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->l:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->m:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->f:Landroid/widget/RadioButton;

    const v1, 0x7f0800b3

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->g:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->l:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->m:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    return-void
.end method

.method F0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->B0:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/DocumentManageActivity;->Q0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lcom/join/mgps/va/overmind/e;->p()Lcom/join/mgps/va/overmind/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/va/overmind/e;->g()V

    :cond_1
    return-void
.end method

.method H0()V
    .locals 0

    return-void
.end method

.method I0(Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/UtilsMy;->v3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->w1(I)Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/join/mgps/Util/u;->d:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "papa91"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x2f

    .line 6
    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    .line 8
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 9
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 11
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 12
    :cond_0
    new-instance v4, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 13
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 14
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/join/mgps/Util/g0;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveCover()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".png"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/join/mgps/activity/DocumentManageActivity;->J0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    .line 16
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 17
    invoke-virtual {p1, v4}, Lcom/join/mgps/dto/CloudListDataBean;->setArchiveFilePath(Ljava/lang/String;)V

    .line 18
    :cond_2
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/DocumentManageActivity;->g1(Lcom/join/mgps/dto/CloudListDataBean;)V

    return-void
.end method

.method J0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 4
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 5
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 6
    :try_start_1
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 7
    invoke-static {p3}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 8
    :cond_1
    invoke-virtual {p3}, Ljava/io/File;->createNewFile()Z

    .line 9
    new-instance p2, Ljava/net/URL;

    invoke-direct {p2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    const/16 p2, 0x1388

    .line 11
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const-string p2, "GET"

    .line 12
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 13
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 14
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p2

    const/16 v0, 0xc8

    if-ne p2, v0, :cond_3

    .line 15
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 16
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 17
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x0

    .line 18
    invoke-virtual {p2, v0, v2, v1}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 19
    :cond_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 20
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    goto :goto_2

    .line 21
    :cond_3
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 22
    invoke-static {p3}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v0, p3

    goto :goto_1

    :catch_1
    move-exception p1

    .line 23
    :goto_1
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz v0, :cond_4

    .line 24
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 25
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_2
    return-void
.end method

.method L0()V
    .locals 12
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/join/mgps/activity/DocumentManageActivity;->K0()Lcom/join/mgps/dto/ArchiveColudArgs;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->F:Lcom/join/mgps/rpc/c;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveColudArgs;->getArgs()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/c;->f(Ljava/util/Map;)Lcom/join/mgps/dto/ArchiveNumDataBean;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->z:Lcom/join/mgps/dto/ArchiveNumDataBean;

    if-eqz v0, :cond_10

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveNumDataBean;->getCode()I

    move-result v0

    const/16 v1, 0x258

    if-ne v0, v1, :cond_10

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->z:Lcom/join/mgps/dto/ArchiveNumDataBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveNumDataBean;->getData_info()Lcom/join/mgps/dto/ArchiveNumDataBean$DataInfoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveNumDataBean$DataInfoBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 5
    sput-boolean v1, Lcom/MApplication;->E:Z

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->z:Lcom/join/mgps/dto/ArchiveNumDataBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveNumDataBean;->getData_info()Lcom/join/mgps/dto/ArchiveNumDataBean$DataInfoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveNumDataBean$DataInfoBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/MApplication;->F:Ljava/lang/String;

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->z:Lcom/join/mgps/dto/ArchiveNumDataBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveNumDataBean;->getData_info()Lcom/join/mgps/dto/ArchiveNumDataBean$DataInfoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveNumDataBean$DataInfoBean;->getPid()I

    move-result v0

    sput v0, Lcom/MApplication;->G:I

    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/activity/DocumentManageActivity;->M0()V

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->z:Lcom/join/mgps/dto/ArchiveNumDataBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveNumDataBean;->getData_info()Lcom/join/mgps/dto/ArchiveNumDataBean$DataInfoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveNumDataBean$DataInfoBean;->getHasNoComment()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/activity/DocumentManageActivity;->showRedPoint()V

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->u:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->getArchiveCoinPref()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v0

    iget-object v2, p0, Lcom/join/mgps/activity/DocumentManageActivity;->z:Lcom/join/mgps/dto/ArchiveNumDataBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/ArchiveNumDataBean;->getData_info()Lcom/join/mgps/dto/ArchiveNumDataBean$DataInfoBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/ArchiveNumDataBean$DataInfoBean;->getArchiveCoin()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->u:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->cloudVipLink()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    iget-object v2, p0, Lcom/join/mgps/activity/DocumentManageActivity;->z:Lcom/join/mgps/dto/ArchiveNumDataBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/ArchiveNumDataBean;->getData_info()Lcom/join/mgps/dto/ArchiveNumDataBean$DataInfoBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/ArchiveNumDataBean$DataInfoBean;->getVipLink()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 13
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    iget-object v2, p0, Lcom/join/mgps/activity/DocumentManageActivity;->y:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    .line 14
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/join/mgps/Util/f0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/join/mgps/activity/DocumentManageActivity;->q0:Ljava/util/List;

    .line 15
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v3

    const-string v4, "31"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 16
    iget-object v3, p0, Lcom/join/mgps/activity/DocumentManageActivity;->q0:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "_v2"

    if-eqz v6, :cond_3

    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/join/mgps/dto/RomArchived;

    .line 17
    invoke-virtual {v6}, Lcom/join/mgps/dto/RomArchived;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x1

    goto :goto_0

    .line 18
    :cond_3
    iget-object v3, p0, Lcom/join/mgps/activity/DocumentManageActivity;->q0:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 19
    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 20
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/join/mgps/dto/RomArchived;

    if-eqz v5, :cond_6

    if-nez v4, :cond_6

    .line 21
    iput-boolean v2, p0, Lcom/join/mgps/activity/DocumentManageActivity;->r0:Z

    .line 22
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/join/mgps/Util/j1;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_1

    .line 23
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_6
    if-eqz v5, :cond_4

    if-eqz v4, :cond_4

    .line 24
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/join/mgps/Util/j1;->a(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 25
    iput-boolean v2, p0, Lcom/join/mgps/activity/DocumentManageActivity;->s0:Z

    .line 26
    invoke-virtual {v6}, Lcom/join/mgps/dto/RomArchived;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 27
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 28
    :cond_7
    invoke-virtual {v6}, Lcom/join/mgps/dto/RomArchived;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_1

    .line 29
    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 30
    :cond_9
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v0

    const-string v3, "33"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    .line 31
    iget-object v3, p0, Lcom/join/mgps/activity/DocumentManageActivity;->q0:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const-wide/16 v4, 0x0

    move-wide v6, v4

    :cond_a
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/join/mgps/dto/RomArchived;

    .line 32
    invoke-virtual {v8}, Lcom/join/mgps/dto/RomArchived;->getArchivedTime()Ljava/lang/String;

    move-result-object v9

    const-string v10, "MM\u6708dd\u65e5 HH:mm"

    invoke-static {v9, v10}, Lcom/join/mgps/activity/DocumentManageActivity;->G0(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v9

    cmp-long v11, v6, v4

    if-nez v11, :cond_b

    move-object v0, v8

    move-wide v6, v9

    :cond_b
    cmp-long v11, v6, v9

    if-lez v11, :cond_a

    move-object v0, v8

    move-wide v6, v9

    goto :goto_2

    :cond_c
    if-eqz v0, :cond_d

    .line 33
    invoke-virtual {v0}, Lcom/join/mgps/dto/RomArchived;->getFileName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "vba"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 34
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/DocumentManageActivity;->a1(Z)V

    .line 35
    :cond_d
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->q0:Ljava/util/List;

    if-eqz v0, :cond_e

    .line 36
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/DocumentManageActivity;->f1(I)V

    goto :goto_3

    .line 37
    :cond_e
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/DocumentManageActivity;->f1(I)V

    goto :goto_3

    .line 38
    :cond_f
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/DocumentManageActivity;->f1(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_10
    :goto_3
    return-void
.end method

.method M0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->C:Lcom/join/mgps/fragment/k3;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/fragment/k3;->M()V

    :cond_0
    return-void
.end method

.method public N0(Landroidx/fragment/app/FragmentTransaction;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->A:Lcom/join/mgps/fragment/i3;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->B:Lcom/join/mgps/fragment/i3;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->C:Lcom/join/mgps/fragment/k3;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->D:Lcom/join/mgps/fragment/k3;

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    :cond_3
    return-void
.end method

.method public Q0()Z
    .locals 2

    .line 1
    sget v0, Lcom/join/mgps/activity/DocumentManageActivity;->D0:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method R0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->B0:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->B0:Z

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->o:Landroid/widget/TextView;

    const-string v1, "\u6279\u91cf\u6a21\u5f0f"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.join.mgps.activity.joinManage"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->I:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    invoke-virtual {v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    :cond_0
    return-void
.end method

.method S0()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->B0:Z

    if-nez v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->w:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->w:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u65e0\u7f51\u7edc\u94fe\u63a5"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->E:Lcom/join/mgps/dto/AccountBean;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->w:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->isTourist()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/DocumentManageActivity;->D0()V

    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/activity/DocumentManageActivity;->H0()V

    const/4 v0, 0x4

    .line 7
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/DocumentManageActivity;->d1(I)V

    .line 8
    iget-object v1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->n:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9
    iget-object v1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->m:Landroid/widget/RadioButton;

    const v2, 0x7f0800b0

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 10
    iget-object v1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->m:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0603db

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 11
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/DocumentManageActivity;->b1(I)V

    .line 12
    invoke-virtual {p0}, Lcom/join/mgps/activity/DocumentManageActivity;->hideRedPoint()V

    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->z:Lcom/join/mgps/dto/ArchiveNumDataBean;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveNumDataBean;->getData_info()Lcom/join/mgps/dto/ArchiveNumDataBean$DataInfoBean;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->z:Lcom/join/mgps/dto/ArchiveNumDataBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveNumDataBean;->getData_info()Lcom/join/mgps/dto/ArchiveNumDataBean$DataInfoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveNumDataBean$DataInfoBean;->getHasNoComment()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->z:Lcom/join/mgps/dto/ArchiveNumDataBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveNumDataBean;->getData_info()Lcom/join/mgps/dto/ArchiveNumDataBean$DataInfoBean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ArchiveNumDataBean$DataInfoBean;->setHasNoComment(I)V

    goto :goto_1

    .line 15
    :cond_2
    :goto_0
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->w:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    :cond_3
    :goto_1
    return-void
.end method

.method T0()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->B0:Z

    if-nez v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->w:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->w:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u65e0\u7f51\u7edc\u94fe\u63a5"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->E:Lcom/join/mgps/dto/AccountBean;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->w:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->isTourist()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/DocumentManageActivity;->H0()V

    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/DocumentManageActivity;->d1(I)V

    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/activity/DocumentManageActivity;->D0()V

    .line 8
    iget-object v1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->n:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9
    iget-object v1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->g:Landroid/widget/RadioButton;

    const v2, 0x7f0800b0

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 10
    iget-object v1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->g:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0603db

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 11
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/DocumentManageActivity;->b1(I)V

    goto :goto_1

    .line 12
    :cond_2
    :goto_0
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->w:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    :cond_3
    :goto_1
    return-void
.end method

.method U0()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->B0:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/DocumentManageActivity;->H0()V

    const/4 v0, 0x2

    .line 3
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/DocumentManageActivity;->d1(I)V

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/DocumentManageActivity;->D0()V

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->n:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->f:Landroid/widget/RadioButton;

    const v2, 0x7f0800b0

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->f:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0603db

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 8
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/DocumentManageActivity;->b1(I)V

    :cond_0
    return-void
.end method

.method V0()V
    .locals 4
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->B0:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->w:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->w:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u65e0\u7f51\u7edc\u94fe\u63a5"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/DocumentManageActivity;->H0()V

    const/4 v0, 0x3

    .line 5
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/DocumentManageActivity;->d1(I)V

    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/activity/DocumentManageActivity;->D0()V

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->n:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8
    iget-object v1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->l:Landroid/widget/RadioButton;

    const v2, 0x7f0800b0

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 9
    iget-object v1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->l:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0603db

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 10
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/DocumentManageActivity;->b1(I)V

    :cond_1
    return-void
.end method

.method W0(Landroid/content/Intent;)V
    .locals 9
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.cloud.downCloud"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/DocumentManageActivity;->P0()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->G:I

    .line 3
    iput v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->H:I

    const-string v1, "downCloud"

    .line 4
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/CloudListDataBean;

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->C0:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFile()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFileName()Ljava/lang/String;

    move-result-object v5

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x3

    .line 8
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/CloudListDataBean;->setStatus(I)V

    .line 9
    new-instance v1, Lcom/github/snowdream/android/app/downloader/c;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFile()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getFileSize()J

    move-result-wide v7

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/github/snowdream/android/app/downloader/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 10
    iget-object v2, p0, Lcom/join/mgps/activity/DocumentManageActivity;->v:Lcom/github/snowdream/android/app/downloader/b;

    invoke-virtual {v2, v1}, Lcom/github/snowdream/android/app/downloader/b;->b(Lcom/github/snowdream/android/app/downloader/c;)Ljava/lang/String;

    .line 11
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    .line 12
    iget-object v1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->x:Lcom/join/mgps/dialog/x;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 13
    iget-object v1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->x:Lcom/join/mgps/dialog/x;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getFileSize()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/join/mgps/Util/UtilsMy;->d(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "K"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "0"

    invoke-virtual {v1, p1, v2, v0}, Lcom/join/mgps/dialog/x;->c(Ljava/lang/String;Ljava/lang/String;I)Lcom/join/mgps/dialog/x;

    return-void
.end method

.method X0(Landroid/content/Intent;)V
    .locals 9
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.cloud.downCloud.all"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/DocumentManageActivity;->P0()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "downClouds"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->G:I

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->x:Lcom/join/mgps/dialog/x;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->x:Lcom/join/mgps/dialog/x;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "0K"

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v3, v4}, Lcom/join/mgps/dialog/x;->c(Ljava/lang/String;Ljava/lang/String;I)Lcom/join/mgps/dialog/x;

    .line 6
    iput v4, p0, Lcom/join/mgps/activity/DocumentManageActivity;->H:I

    .line 7
    iget v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->G:I

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->x:Lcom/join/mgps/dialog/x;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x64

    iget v4, p0, Lcom/join/mgps/activity/DocumentManageActivity;->G:I

    div-int/2addr v2, v4

    invoke-virtual {v0, v1, v3, v2}, Lcom/join/mgps/dialog/x;->c(Ljava/lang/String;Ljava/lang/String;I)Lcom/join/mgps/dialog/x;

    .line 9
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/CloudListDataBean;

    .line 10
    iget-object v1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->C0:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFile()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFileName()Ljava/lang/String;

    move-result-object v5

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/join/mgps/Util/u;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/CloudListDataBean;->setArchiveFilePath(Ljava/lang/String;)V

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/io/File;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x3

    .line 14
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/CloudListDataBean;->setStatus(I)V

    .line 15
    new-instance v1, Lcom/github/snowdream/android/app/downloader/c;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFile()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/join/mgps/dto/CloudListDataBean;->getFileSize()J

    move-result-wide v7

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/github/snowdream/android/app/downloader/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 16
    iget-object v2, p0, Lcom/join/mgps/activity/DocumentManageActivity;->v:Lcom/github/snowdream/android/app/downloader/b;

    invoke-virtual {v2, v1}, Lcom/github/snowdream/android/app/downloader/b;->b(Lcom/github/snowdream/android/app/downloader/c;)Ljava/lang/String;

    .line 17
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method Y0()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->B0:Z

    if-nez v0, :cond_1

    .line 2
    iget-boolean v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->z0:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->d:Landroid/widget/ImageView;

    const v1, 0x7f0800b8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->f:Landroid/widget/RadioButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->g:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->z0:Z

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/DocumentManageActivity;->D0()V

    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/activity/DocumentManageActivity;->H0()V

    const/4 v0, 0x2

    .line 9
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/DocumentManageActivity;->d1(I)V

    .line 10
    iget-object v1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->n:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->f:Landroid/widget/RadioButton;

    const v3, 0x7f0800b0

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 12
    iget-object v1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->f:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0603db

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 13
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/DocumentManageActivity;->b1(I)V

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->d:Landroid/widget/ImageView;

    const v1, 0x7f0800b2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->f:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->g:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 17
    iput-boolean v2, p0, Lcom/join/mgps/activity/DocumentManageActivity;->z0:Z

    :cond_1
    :goto_0
    return-void
.end method

.method Z0()V
    .locals 7
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->B0:Z

    if-nez v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->w:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->w:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u65e0\u7f51\u7edc\u94fe\u63a5"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->A0:Z

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->j:Landroid/widget/ImageView;

    const v3, 0x7f0800b8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->k:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 7
    iput-boolean v1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->A0:Z

    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/activity/DocumentManageActivity;->hideRedPoint()V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/DocumentManageActivity;->D0()V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->k:Landroid/widget/RadioGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 12
    invoke-virtual {p0}, Lcom/join/mgps/activity/DocumentManageActivity;->H0()V

    const/4 v0, 0x3

    .line 13
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/DocumentManageActivity;->d1(I)V

    .line 14
    iget-object v2, p0, Lcom/join/mgps/activity/DocumentManageActivity;->j:Landroid/widget/ImageView;

    const v4, 0x7f0800b2

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 15
    iget-object v2, p0, Lcom/join/mgps/activity/DocumentManageActivity;->l:Landroid/widget/RadioButton;

    const v5, 0x7f0800b0

    invoke-virtual {v2, v5}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 16
    iget-object v2, p0, Lcom/join/mgps/activity/DocumentManageActivity;->l:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0603db

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 17
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/DocumentManageActivity;->b1(I)V

    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->z:Lcom/join/mgps/dto/ArchiveNumDataBean;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveNumDataBean;->getData_info()Lcom/join/mgps/dto/ArchiveNumDataBean$DataInfoBean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->z:Lcom/join/mgps/dto/ArchiveNumDataBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveNumDataBean;->getData_info()Lcom/join/mgps/dto/ArchiveNumDataBean$DataInfoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveNumDataBean$DataInfoBean;->getHasNoComment()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 20
    invoke-virtual {p0}, Lcom/join/mgps/activity/DocumentManageActivity;->showRedPoint()V

    .line 21
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 22
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->k:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v3}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 23
    iput-boolean v3, p0, Lcom/join/mgps/activity/DocumentManageActivity;->A0:Z

    :cond_3
    :goto_0
    return-void
.end method

.method public a1(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->p0:Z

    return-void
.end method

.method afterViews()V
    .locals 8
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iput-object p0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->w:Landroid/content/Context;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->b:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->E:Lcom/join/mgps/dto/AccountBean;

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->k:Landroid/widget/RadioGroup;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 6
    new-instance v0, Lcom/join/mgps/activity/DocumentManageActivity$e;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/DocumentManageActivity$e;-><init>(Lcom/join/mgps/activity/DocumentManageActivity;)V

    iput-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->J:Lcom/join/mgps/activity/DocumentManageActivity$e;

    .line 7
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->K:Landroid/content/IntentFilter;

    const-string v3, "com.join.mgps.activity.quitManage"

    .line 8
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->w:Landroid/content/Context;

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->I:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 10
    invoke-static {}, Lcom/join/mgps/rpc/impl/b;->k()Lcom/join/mgps/rpc/impl/b;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->F:Lcom/join/mgps/rpc/c;

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->d:Landroid/widget/ImageView;

    const v3, 0x7f0800b2

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->I:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    iget-object v4, p0, Lcom/join/mgps/activity/DocumentManageActivity;->J:Lcom/join/mgps/activity/DocumentManageActivity$e;

    iget-object v5, p0, Lcom/join/mgps/activity/DocumentManageActivity;->K:Landroid/content/IntentFilter;

    invoke-virtual {v0, v4, v5}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f07142a

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f071315

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    .line 15
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07115c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    .line 16
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0711ae

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    .line 17
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 18
    iget v6, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v7, v5, 0x2

    sub-int/2addr v6, v7

    mul-int v0, v0, v6

    .line 19
    div-int/2addr v0, v4

    .line 20
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v4, v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 21
    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 22
    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 23
    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 24
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    invoke-virtual {p0}, Lcom/join/mgps/activity/DocumentManageActivity;->D0()V

    .line 26
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->f:Landroid/widget/RadioButton;

    const v4, 0x7f0800b0

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 27
    invoke-virtual {p0}, Lcom/join/mgps/activity/DocumentManageActivity;->D0()V

    .line 28
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->k:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 29
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 30
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 31
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->l:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 32
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->l:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0603db

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTextColor(I)V

    const/4 v0, 0x3

    .line 33
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/DocumentManageActivity;->b1(I)V

    .line 34
    invoke-virtual {p0}, Lcom/join/mgps/activity/DocumentManageActivity;->L0()V

    .line 35
    invoke-direct {p0}, Lcom/join/mgps/activity/DocumentManageActivity;->O0()V

    .line 36
    new-instance v0, Lcom/join/mgps/dialog/x;

    const v1, 0x7f12014a

    invoke-direct {v0, p0, v1}, Lcom/join/mgps/dialog/x;-><init>(Landroid/content/Context;I)V

    const-string v1, "\u5b58\u6863\u4e0b\u8f7d\u4e2d"

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/x;->f(Ljava/lang/String;)Lcom/join/mgps/dialog/x;

    move-result-object v0

    const-string v1, "\u53d6\u6d88\u4e0b\u8f7d"

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/x;->e(Ljava/lang/String;)Lcom/join/mgps/dialog/x;

    move-result-object v0

    const-string v1, "\u540e\u53f0\u8fd0\u884c"

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/x;->b(Ljava/lang/String;)Lcom/join/mgps/dialog/x;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/activity/DocumentManageActivity$b;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/DocumentManageActivity$b;-><init>(Lcom/join/mgps/activity/DocumentManageActivity;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/x;->d(Lcom/join/mgps/dialog/x$c;)Lcom/join/mgps/dialog/x;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/activity/DocumentManageActivity$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/DocumentManageActivity$a;-><init>(Lcom/join/mgps/activity/DocumentManageActivity;)V

    .line 37
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/x;->a(Lcom/join/mgps/dialog/x$c;)Lcom/join/mgps/dialog/x;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->x:Lcom/join/mgps/dialog/x;

    return-void
.end method

.method c1()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.wufun.cloud.showDownDialog"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->v:Lcom/github/snowdream/android/app/downloader/b;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/b;->g()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->x:Lcom/join/mgps/dialog/x;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method

.method d1(I)V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    return-void
.end method

.method e1(Lcom/join/mgps/dto/ArchiveNumDataBean;)V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    return-void
.end method

.method f1(I)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    const-string v0, "\u4e2a"

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->r:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v2, p0, Lcom/join/mgps/activity/DocumentManageActivity;->z:Lcom/join/mgps/dto/ArchiveNumDataBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/ArchiveNumDataBean;->getData_info()Lcom/join/mgps/dto/ArchiveNumDataBean$DataInfoBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/ArchiveNumDataBean$DataInfoBean;->getBgImg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->c:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->i:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/join/mgps/activity/DocumentManageActivity;->z:Lcom/join/mgps/dto/ArchiveNumDataBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/ArchiveNumDataBean;->getData_info()Lcom/join/mgps/dto/ArchiveNumDataBean$DataInfoBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/ArchiveNumDataBean$DataInfoBean;->getMarketNum()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
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

.method g1(Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/event/e;

    invoke-direct {v0}, Lcom/join/mgps/event/e;-><init>()V

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/CloudListDataBean;->setStatus(I)V

    .line 3
    invoke-virtual {v0, p1}, Lcom/join/mgps/event/e;->f(Lcom/join/mgps/dto/CloudListDataBean;)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/join/mgps/event/e;->j(I)V

    .line 5
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    return-void
.end method

.method hideRedPoint()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->t0:Lq/rorbin/badgeview/a;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, v1}, Lq/rorbin/badgeview/a;->hide(Z)V

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/BaseFragmentActivity;->onDestroy()V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/DocumentManageActivity;->H0()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->v:Lcom/github/snowdream/android/app/downloader/b;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->n0:Lcom/github/snowdream/android/app/downloader/b$b;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/b;->j(Lcom/github/snowdream/android/app/downloader/b$b;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->I:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->J:Lcom/join/mgps/activity/DocumentManageActivity$e;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onEventMainThread(Lcom/join/mgps/event/e;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/DocumentManageActivity;->Q0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/join/mgps/va/overmind/e;->p()Lcom/join/mgps/va/overmind/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/va/overmind/e;->g()V

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->B0:Z

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    .line 5
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseFragmentActivity;->onResume()V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/DocumentManageActivity;->O0()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    .line 2
    iget p1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->o0:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 3
    iget-boolean p1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->u0:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->u0:Z

    .line 5
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/DocumentManageActivity;->d1(I)V

    :cond_0
    return-void
.end method

.method showRedPoint()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    new-instance v0, Lq/rorbin/badgeview/QBadgeView;

    iget-object v1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->w:Landroid/content/Context;

    invoke-direct {v0, v1}, Lq/rorbin/badgeview/QBadgeView;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->s:Landroid/widget/TextView;

    .line 2
    invoke-virtual {v0, v1}, Lq/rorbin/badgeview/QBadgeView;->c(Landroid/view/View;)Lq/rorbin/badgeview/a;

    move-result-object v0

    const/4 v1, -0x1

    .line 3
    invoke-interface {v0, v1}, Lq/rorbin/badgeview/a;->q(I)Lq/rorbin/badgeview/a;

    move-result-object v0

    const/high16 v2, 0x40800000    # 4.0f

    const/4 v3, 0x1

    .line 4
    invoke-interface {v0, v2, v3}, Lq/rorbin/badgeview/a;->u(FZ)Lq/rorbin/badgeview/a;

    move-result-object v0

    const/high16 v2, -0x10000

    .line 5
    invoke-interface {v0, v2}, Lq/rorbin/badgeview/a;->g(I)Lq/rorbin/badgeview/a;

    move-result-object v0

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07110f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lq/rorbin/badgeview/a;->v(FZ)Lq/rorbin/badgeview/a;

    move-result-object v0

    const v2, 0x800055

    .line 7
    invoke-interface {v0, v2}, Lq/rorbin/badgeview/a;->o(I)Lq/rorbin/badgeview/a;

    move-result-object v0

    .line 8
    invoke-interface {v0, v1}, Lq/rorbin/badgeview/a;->l(I)Lq/rorbin/badgeview/a;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->t0:Lq/rorbin/badgeview/a;

    return-void
.end method
