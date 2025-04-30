.class public Lcom/join/mgps/activity/GameTransferActivity;
.super Lcom/BaseActivity;
.source "GameTransferActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/GameTransferActivity$e;,
        Lcom/join/mgps/activity/GameTransferActivity$d;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c0044
.end annotation


# static fields
.field private static final C0:Ljava/lang/String; = "GameTransferActivity"

.field public static final D0:Ljava/lang/String;

.field public static final E0:Ljava/lang/String;

.field public static final F0:Ljava/lang/String;


# instance fields
.field A:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field A0:Landroid/content/ServiceConnection;

.field B:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/join/mgps/dto/GameTransferBean;",
            ">;"
        }
    .end annotation
.end field

.field B0:Lcom/join/mgps/customview/t;

.field C:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/join/mgps/dto/GameTransferBean;",
            ">;"
        }
    .end annotation
.end field

.field D:I

.field E:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field F:Ljava/util/concurrent/ExecutorService;

.field G:Lcom/join/mgps/activity/GameTransferActivity$e;

.field H:Lcom/join/mgps/task/b;

.field I:Ljava/util/concurrent/Future;

.field J:Lcom/join/mgps/task/d;

.field K:Ljava/util/concurrent/Future;

.field a:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f0905aa
    .end annotation
.end field

.field b:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f0905a8
    .end annotation
.end field

.field c:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f0905a6
    .end annotation
.end field

.field d:Lcom/join/mgps/adapter/i2;
    .annotation build Lorg/androidannotations/annotations/Bean;
    .end annotation
.end field

.field e:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f09059b
    .end annotation
.end field

.field f:Lcom/join/mgps/adapter/g2;
    .annotation build Lorg/androidannotations/annotations/Bean;
    .end annotation
.end field

.field g:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f090598
    .end annotation
.end field

.field final h:I

.field final i:I

.field j:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f090599
    .end annotation
.end field

.field k:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f0905a7
    .end annotation
.end field

.field l:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f0905a9
    .end annotation
.end field

.field m:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f0905a2
    .end annotation
.end field

.field n:Z

.field n0:Z

.field o:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f09059c
    .end annotation
.end field

.field o0:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field p:Landroid/content/Context;

.field p0:Ljava/lang/String;

.field q:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field q0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field r:J

.field r0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field s:Lcom/join/mgps/socket/server/a;

.field s0:Landroid/os/PowerManager;
    .annotation build Lorg/androidannotations/annotations/SystemService;
    .end annotation
.end field

.field t:Lcom/join/mgps/socket/client/a;

.field t0:Landroid/os/PowerManager$WakeLock;

.field u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field u0:Ljava/net/Socket;

.field v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field v0:Lcom/join/mgps/socket/b;

.field w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field w0:Lcom/join/mgps/receiver/ApWifiConnectedReceiver;

.field x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameTransferBean;",
            ">;"
        }
    .end annotation
.end field

.field x0:Lcom/join/mgps/receiver/NetWorkConnectedReceiver;

.field y:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field y0:I

.field z:Ljava/io/File;

.field z0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/join/mgps/activity/GameTransferActivity;->D0:Ljava/lang/String;

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/Android/obb"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/join/mgps/activity/GameTransferActivity;->E0:Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/Android/data"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/join/mgps/activity/GameTransferActivity;->F0:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->h:I

    const/4 v0, 0x2

    .line 3
    iput v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->i:I

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->n:Z

    .line 5
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->F:Ljava/util/concurrent/ExecutorService;

    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->G:Lcom/join/mgps/activity/GameTransferActivity$e;

    .line 7
    iput-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->H:Lcom/join/mgps/task/b;

    .line 8
    iput-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->I:Ljava/util/concurrent/Future;

    .line 9
    iput-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->J:Lcom/join/mgps/task/d;

    .line 10
    iput-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->K:Ljava/util/concurrent/Future;

    .line 11
    iput-boolean v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->n0:Z

    .line 12
    iput-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->o0:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 13
    iput-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->p0:Ljava/lang/String;

    .line 14
    iput-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->t0:Landroid/os/PowerManager$WakeLock;

    .line 15
    iput-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->u0:Ljava/net/Socket;

    .line 16
    iput v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->y0:I

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->z0:Ljava/util/List;

    .line 18
    new-instance v0, Lcom/join/mgps/activity/GameTransferActivity$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameTransferActivity$a;-><init>(Lcom/join/mgps/activity/GameTransferActivity;)V

    iput-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->A0:Landroid/content/ServiceConnection;

    .line 19
    iput-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->B0:Lcom/join/mgps/customview/t;

    return-void
.end method

.method private B1(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 4

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/event/s;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    invoke-direct {v1, v3, v2}, Lcom/join/mgps/event/s;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    const/16 v0, 0xc

    .line 2
    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 3
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v1

    invoke-virtual {v1, p1}, Lg1/f;->c0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)I

    .line 4
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->g2(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 5
    new-instance v0, Lcom/join/mgps/task/e;

    iget-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->p:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Lcom/join/mgps/task/e;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;Z)V

    .line 6
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private C1(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 4

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/event/s;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    invoke-direct {v1, v3, v2}, Lcom/join/mgps/event/s;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/join/mgps/Util/u;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/roms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc

    .line 3
    invoke-static {p1, v1}, Lcom/join/mgps/Util/UtilsMy;->g2(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 4
    new-instance v1, Lcom/join/mgps/task/h;

    iget-object v2, p0, Lcom/join/mgps/activity/GameTransferActivity;->p:Landroid/content/Context;

    invoke-direct {v1, p1, v2, v0}, Lcom/join/mgps/task/h;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private E0(Lcom/join/mgps/dto/GameTransferBean;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameTransferBean;->getId()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->E:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameTransferBean;->getFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPath(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object p1

    .line 5
    sget-object v1, Lcom/join/mgps/enums/Dtype;->android:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x7

    const/16 v3, 0xb

    if-eqz v1, :cond_4

    .line 6
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->p:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v1

    iget-object v4, p0, Lcom/join/mgps/activity/GameTransferActivity;->p:Landroid/content/Context;

    invoke-virtual {v1, v4, p1}, Lcom/join/android/app/common/utils/APKUtils;->k(Landroid/content/Context;Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$a;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    move-result p1

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-lt p1, v1, :cond_0

    .line 9
    new-instance p1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    return-void

    .line 10
    :cond_0
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object p1

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 11
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getId()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setId(I)V

    return-void

    :cond_1
    const/4 p1, 0x1

    .line 12
    invoke-virtual {v0, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->set_from_type(I)V

    .line 13
    sget-object p1, Lcom/join/mgps/enums/Dtype;->androiddata:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 14
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/GameTransferActivity;->B1(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_0

    .line 15
    :cond_2
    sget-object p1, Lcom/join/mgps/enums/Dtype;->androidobb:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 16
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/GameTransferActivity;->B1(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_0

    .line 17
    :cond_3
    invoke-virtual {v0, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 18
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setGameZipPath(Ljava/lang/String;)V

    .line 19
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object p1

    invoke-virtual {p1, v0}, Lg1/f;->c0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)I

    .line 20
    invoke-static {v0, v3}, Lcom/join/mgps/Util/UtilsMy;->g2(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 21
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    new-instance v1, Lcom/join/mgps/event/s;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/join/mgps/event/s;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v1}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 22
    :cond_4
    sget-object v1, Lcom/join/mgps/enums/Dtype;->apk:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 23
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object p1

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 24
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getId()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setId(I)V

    return-void

    :cond_5
    const/16 p1, 0xc

    .line 25
    invoke-virtual {v0, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 26
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object p1

    invoke-virtual {p1, v0}, Lg1/f;->c0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)I

    .line 27
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/GameTransferActivity;->C1(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 28
    :cond_6
    sget-object v1, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 29
    invoke-virtual {v0, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 30
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setGameZipPath(Ljava/lang/String;)V

    .line 31
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object p1

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 32
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getId()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setId(I)V

    .line 33
    :cond_7
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object p1

    invoke-virtual {p1, v0}, Lg1/f;->c0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)I

    .line 34
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->w:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    invoke-static {v0, v3}, Lcom/join/mgps/Util/UtilsMy;->g2(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 36
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    new-instance v1, Lcom/join/mgps/event/s;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/join/mgps/event/s;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v1}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    :cond_8
    :goto_0
    return-void
.end method

.method static synthetic F0()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/activity/GameTransferActivity;->C0:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic G0(Lcom/join/mgps/activity/GameTransferActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/GameTransferActivity;->P0()V

    return-void
.end method

.method private J0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->z:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/q1;->c(Ljava/lang/String;)J

    move-result-wide v0

    .line 2
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getUnzip_size()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getUnzip_size()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    goto :goto_0

    :cond_0
    move-wide v5, v3

    :goto_0
    cmp-long v2, v5, v3

    if-nez v2, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float p1, p1, v2

    mul-float p1, p1, v2

    float-to-long v5, p1

    :cond_1
    cmp-long p1, v5, v0

    if-lez p1, :cond_2

    const-string p1, "\u5b58\u50a8\u7a7a\u95f4\u4e0d\u8db3\u4f20\u8f93\u5931\u8d25"

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameTransferActivity;->toast(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private K0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->z:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/q1;->c(Ljava/lang/String;)J

    move-result-wide v0

    .line 2
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getUnzip_size()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getUnzip_size()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    goto :goto_0

    :cond_0
    move-wide v5, v3

    :goto_0
    cmp-long v2, v5, v3

    if-nez v2, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float v2, v2, v3

    mul-float v2, v2, v3

    float-to-long v5, v2

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v2

    .line 6
    sget-object v3, Lcom/join/mgps/enums/Dtype;->android:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-wide/16 v7, 0x2

    if-eqz v3, :cond_4

    .line 7
    sget-object v2, Lcom/join/mgps/enums/Dtype;->androiddata:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    sget-object v2, Lcom/join/mgps/enums/Dtype;->androidobb:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 9
    :cond_3
    sget-object v2, Lcom/join/mgps/enums/Dtype;->androidobbdata:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_1

    .line 10
    :cond_4
    sget-object p1, Lcom/join/mgps/enums/Dtype;->apk:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    :goto_1
    mul-long v5, v5, v7

    goto :goto_2

    .line 11
    :cond_5
    sget-object p1, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    :goto_2
    cmp-long p1, v5, v0

    if-lez p1, :cond_7

    const-string p1, "\u5b58\u50a8\u7a7a\u95f4\u4e0d\u8db3\u4f20\u8f93\u5931\u8d25"

    .line 12
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameTransferActivity;->toast(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_7
    const/4 p1, 0x1

    return p1
.end method

.method private M1(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/join/mgps/activity/GameTransferActivity;->F0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/activity/GameTransferActivity;->O1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private N0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/mgps/Util/f0;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/RomArchived;

    .line 3
    invoke-virtual {v1}, Lcom/join/mgps/dto/RomArchived;->getArchivedPath()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {v1}, Lcom/join/mgps/dto/RomArchived;->getArchivedImagePath()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {v2}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/io/File;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/join/mgps/Util/g0;->c(Ljava/lang/String;Ljava/lang/String;)Z

    .line 9
    :cond_1
    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/io/File;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/join/mgps/Util/g0;->c(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method private N1(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/join/mgps/activity/GameTransferActivity;->E0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/activity/GameTransferActivity;->O1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private O1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/event/s;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    invoke-direct {v1, v3, v2}, Lcom/join/mgps/event/s;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->o0:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xb

    if-ne v0, v2, :cond_0

    .line 3
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/join/mgps/activity/GameTransferActivity;->o0:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 v0, 0x0

    .line 6
    :goto_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/join/mgps/activity/GameTransferActivity;->z:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".zip"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 12
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 13
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 14
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    .line 15
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 16
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    .line 17
    invoke-static {v2}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 18
    :try_start_2
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float v2, v2, v3

    mul-float v2, v2, v3

    float-to-long v2, v2

    move-wide v6, v2

    goto :goto_2

    :catch_2
    move-exception v2

    .line 19
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    move-wide v6, v3

    .line 20
    :goto_2
    new-instance v2, Lcom/join/mgps/activity/GameTransferActivity$d;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v8

    move-object v3, v2

    move-object v4, p0

    move-object v5, v0

    invoke-direct/range {v3 .. v8}, Lcom/join/mgps/activity/GameTransferActivity$d;-><init>(Lcom/join/mgps/activity/GameTransferActivity;Ljava/io/File;JLjava/lang/String;)V

    .line 21
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 22
    invoke-static {p2, v0}, Lcom/join/mgps/Util/s2;->l(Ljava/util/Collection;Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 23
    invoke-virtual {v2, v1}, Lcom/join/mgps/activity/GameTransferActivity$d;->a(Z)V

    .line 24
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_3
    move-exception p2

    .line 25
    :try_start_4
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 26
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object p2

    new-instance v3, Lcom/join/mgps/event/s;

    const/16 v4, 0x8

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, v4, p1}, Lcom/join/mgps/event/s;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, v3}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    .line 27
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    const-string p1, ""
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 28
    invoke-virtual {v2, v1}, Lcom/join/mgps/activity/GameTransferActivity$d;->a(Z)V

    return-object p1

    :goto_3
    invoke-virtual {v2, v1}, Lcom/join/mgps/activity/GameTransferActivity$d;->a(Z)V

    .line 29
    throw p1
.end method

.method private P0()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->n0:Z

    if-eqz v0, :cond_1

    .line 2
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->o0:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 5
    :goto_0
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/papa/sim/statistic/p;->k0(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->B0:Lcom/join/mgps/customview/t;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->B0:Lcom/join/mgps/customview/t;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_2
    return-void
.end method

.method private P1(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Ljava/lang/String;
    .locals 9

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/event/s;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    invoke-direct {v1, v3, v2}, Lcom/join/mgps/event/s;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 5
    new-instance v7, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/join/mgps/activity/GameTransferActivity;->z:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".zip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 7
    new-instance v1, Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 8
    :cond_0
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 9
    :try_start_0
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 10
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 11
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    .line 12
    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 13
    :try_start_1
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float v1, v1, v2

    mul-float v1, v1, v2

    float-to-long v1, v1

    move-wide v4, v1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 14
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    move-wide v4, v2

    .line 15
    :goto_1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/GameTransferActivity;->N0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 16
    new-instance v8, Lcom/join/mgps/activity/GameTransferActivity$d;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v6

    move-object v1, v8

    move-object v2, p0

    move-object v3, v7

    invoke-direct/range {v1 .. v6}, Lcom/join/mgps/activity/GameTransferActivity$d;-><init>(Lcom/join/mgps/activity/GameTransferActivity;Ljava/io/File;JLjava/lang/String;)V

    const/4 v1, 0x0

    .line 17
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 18
    invoke-static {v0, v7}, Lcom/join/mgps/Util/s2;->j(Ljava/io/File;Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 19
    invoke-virtual {v8, v1}, Lcom/join/mgps/activity/GameTransferActivity$d;->a(Z)V

    .line 20
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception v0

    .line 21
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 22
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v2, Lcom/join/mgps/event/s;

    const/16 v3, 0x8

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v3, p1}, Lcom/join/mgps/event/s;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    .line 23
    invoke-static {v7}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    const-string p1, ""
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 24
    invoke-virtual {v8, v1}, Lcom/join/mgps/activity/GameTransferActivity$d;->a(Z)V

    return-object p1

    :goto_2
    invoke-virtual {v8, v1}, Lcom/join/mgps/activity/GameTransferActivity$d;->a(Z)V

    .line 25
    throw p1
.end method

.method private V0(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/activity/GameTransferActivity;->u:Ljava/util/List;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 3
    iget-object v2, p0, Lcom/join/mgps/activity/GameTransferActivity;->u:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 4
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p1, 0x1

    .line 5
    invoke-virtual {v2, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->set_from_type(I)V

    move-object v1, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v1
.end method

.method private W0(I)Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->u:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    return-object p1
.end method

.method private z1(Ljava/io/File;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 5

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Lcom/join/mgps/socket/entity/d;

    invoke-direct {v0}, Lcom/join/mgps/socket/entity/d;-><init>()V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/Util/g0;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/socket/entity/d;->f(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/socket/entity/d;->g(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/socket/entity/d;->h(J)V

    .line 5
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/socket/entity/d;->i(Ljava/lang/String;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 6
    sget-object v3, Lcom/join/mgps/activity/GameTransferActivity;->C0:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "transferFile: \u6587\u4ef6\u540d\u79f0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/join/mgps/socket/entity/d;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSize(J)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->v0:Lcom/join/mgps/socket/b;

    invoke-virtual {p1, v0}, Lcom/join/mgps/socket/b;->j(Lcom/join/mgps/socket/entity/d;)V

    .line 9
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p2

    .line 11
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/papa/sim/statistic/p;->n0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method A1()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->x0:Lcom/join/mgps/receiver/NetWorkConnectedReceiver;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->w0:Lcom/join/mgps/receiver/ApWifiConnectedReceiver;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    return-void
.end method

.method D1()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->B:Landroid/util/SparseArray;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->v:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->d:Lcom/join/mgps/adapter/i2;

    invoke-virtual {v0}, Lcom/join/mgps/adapter/a5;->c()Landroid/util/SparseArray;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->v:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateGameFileStatu2Waiting: size"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_1

    .line 5
    iget-object v5, p0, Lcom/join/mgps/activity/GameTransferActivity;->v:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 6
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v5

    .line 7
    invoke-virtual {p0, v5}, Lcom/join/mgps/activity/GameTransferActivity;->Z0(Ljava/lang/String;)I

    move-result v5

    .line 8
    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/join/mgps/dto/GameTransferBean;

    .line 9
    invoke-virtual {v6, v4}, Lcom/join/mgps/dto/GameTransferBean;->setTransferStatus(I)V

    .line 10
    invoke-virtual {v6, v2}, Lcom/join/mgps/dto/GameTransferBean;->setSelectedTransfer(Z)V

    .line 11
    invoke-virtual {v0, v5, v6}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 12
    iget-object v4, p0, Lcom/join/mgps/activity/GameTransferActivity;->x:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->d:Lcom/join/mgps/adapter/i2;

    invoke-virtual {v0, v4}, Lcom/join/mgps/adapter/i2;->l(Z)V

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->d:Lcom/join/mgps/adapter/i2;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 15
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameTransferActivity;->r1()V

    .line 16
    iget v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->D:I

    iget-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->v:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->D:I

    :cond_2
    :goto_1
    return-void
.end method

.method E1(Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->d:Lcom/join/mgps/adapter/i2;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/adapter/a5;->c()Landroid/util/SparseArray;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    .line 4
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/GameTransferBean;

    .line 5
    iget-object v5, p0, Lcom/join/mgps/activity/GameTransferActivity;->x:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateGameListCheckStatus: index:::"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ":::checked:::"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v4, p1}, Lcom/join/mgps/dto/GameTransferBean;->setSelectedTransfer(Z)V

    .line 8
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {v4}, Lcom/join/mgps/dto/GameTransferBean;->getId()Ljava/lang/String;

    move-result-object v4

    .line 10
    invoke-direct {p0, v4}, Lcom/join/mgps/activity/GameTransferActivity;->V0(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v4

    .line 11
    iget-object v5, p0, Lcom/join/mgps/activity/GameTransferActivity;->v:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 12
    iget-object v5, p0, Lcom/join/mgps/activity/GameTransferActivity;->v:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 13
    :cond_1
    invoke-virtual {p0, v4}, Lcom/join/mgps/activity/GameTransferActivity;->o1(Lcom/join/mgps/dto/GameTransferBean;)V

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 14
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->d:Lcom/join/mgps/adapter/i2;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 15
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->v:Ljava/util/List;

    if-eqz p1, :cond_5

    .line 16
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GameTransferActivity;->s1(I)V

    if-lez p1, :cond_4

    .line 18
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->k:Landroid/widget/Button;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2

    .line 19
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->k:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_5
    :goto_2
    return-void
.end method

.method F1(Ljava/lang/String;I)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->d:Lcom/join/mgps/adapter/i2;

    invoke-virtual {v0}, Lcom/join/mgps/adapter/a5;->c()Landroid/util/SparseArray;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 3
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/GameTransferBean;

    .line 4
    invoke-virtual {v3}, Lcom/join/mgps/dto/GameTransferBean;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5
    invoke-virtual {v3, p2}, Lcom/join/mgps/dto/GameTransferBean;->setTransferStatus(I)V

    .line 6
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->d:Lcom/join/mgps/adapter/i2;

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method G1(Ljava/lang/String;I)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->f:Lcom/join/mgps/adapter/g2;

    invoke-virtual {v0}, Lcom/join/mgps/adapter/a5;->c()Landroid/util/SparseArray;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 3
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/GameTransferBean;

    .line 4
    invoke-virtual {v3}, Lcom/join/mgps/dto/GameTransferBean;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5
    invoke-virtual {v3, p2}, Lcom/join/mgps/dto/GameTransferBean;->setTransferStatus(I)V

    .line 6
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->f:Lcom/join/mgps/adapter/g2;

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public H0(Landroid/util/SparseArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/join/mgps/dto/GameTransferBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->B:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 4
    iget-object v3, p0, Lcom/join/mgps/activity/GameTransferActivity;->B:Landroid/util/SparseArray;

    add-int v4, v0, v1

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/GameTransferBean;

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method H1()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->p0:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->p0:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GameTransferActivity;->c1(Ljava/lang/String;)I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->f:Lcom/join/mgps/adapter/g2;

    invoke-virtual {v1}, Lcom/join/mgps/adapter/a5;->c()Landroid/util/SparseArray;

    move-result-object v1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 4
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 5
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/GameTransferBean;

    const/16 v3, 0x64

    .line 6
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/GameTransferBean;->setProgerss(I)V

    const/16 v3, 0x9

    .line 7
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/GameTransferBean;->setTransferStatus(I)V

    const/4 v3, 0x0

    .line 8
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/GameTransferBean;->setSelectedTransfer(Z)V

    .line 9
    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 10
    iget-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->f:Lcom/join/mgps/adapter/g2;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method I0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    sget-object v0, Lcom/join/mgps/enums/Dtype;->apk:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/join/mgps/Util/f0;->f(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method I1()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->o0:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->d:Lcom/join/mgps/adapter/i2;

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GameTransferActivity;->Z0(Ljava/lang/String;)I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->d:Lcom/join/mgps/adapter/i2;

    invoke-virtual {v1}, Lcom/join/mgps/adapter/a5;->c()Landroid/util/SparseArray;

    move-result-object v1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 5
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 6
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/GameTransferBean;

    .line 7
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v3

    invoke-virtual {v2}, Lcom/join/mgps/dto/GameTransferBean;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/papa/sim/statistic/p;->o0(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x64

    .line 8
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/GameTransferBean;->setProgerss(I)V

    const/4 v3, 0x3

    .line 9
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/GameTransferBean;->setTransferStatus(I)V

    const/4 v3, 0x0

    .line 10
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/GameTransferBean;->setSelectedTransfer(Z)V

    .line 11
    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 12
    iget-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->d:Lcom/join/mgps/adapter/i2;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->v0:Lcom/join/mgps/socket/b;

    invoke-virtual {v0}, Lcom/join/mgps/socket/b;->q()V

    .line 14
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameTransferActivity;->w1()V

    goto :goto_0

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->v0:Lcom/join/mgps/socket/b;

    invoke-virtual {v0}, Lcom/join/mgps/socket/b;->q()V

    .line 16
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameTransferActivity;->w1()V

    :cond_2
    :goto_0
    return-void
.end method

.method J1(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameTransferActivity;->c1(Ljava/lang/String;)I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->f:Lcom/join/mgps/adapter/g2;

    invoke-virtual {v0}, Lcom/join/mgps/adapter/a5;->c()Landroid/util/SparseArray;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/GameTransferBean;

    const/4 v1, 0x4

    .line 4
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/GameTransferBean;->setTransferStatus(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->f:Lcom/join/mgps/adapter/g2;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method K1(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameTransferActivity;->Z0(Ljava/lang/String;)I

    move-result p1

    if-gez p1, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameTransferActivity;->w1()V

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->d:Lcom/join/mgps/adapter/i2;

    invoke-virtual {v0}, Lcom/join/mgps/adapter/a5;->c()Landroid/util/SparseArray;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/GameTransferBean;

    const/4 v2, 0x4

    .line 5
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/GameTransferBean;->setTransferStatus(I)V

    .line 6
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->d:Lcom/join/mgps/adapter/i2;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameTransferActivity;->w1()V

    return-void
.end method

.method L0(Ljava/lang/String;)V
    .locals 6

    if-eqz p1, :cond_b

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v0, ":"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 3
    array-length v0, p1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 4
    aget-object v0, p1, v0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->p0:Ljava/lang/String;

    const/4 v1, 0x1

    .line 6
    aget-object v1, p1, v1

    const/4 v2, 0x2

    .line 7
    aget-object p1, p1, v2

    .line 8
    sget-object v2, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 9
    iget-object v3, p0, Lcom/join/mgps/activity/GameTransferActivity;->p0:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/join/mgps/activity/GameTransferActivity;->d1(Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    .line 10
    :cond_2
    iget-object v3, p0, Lcom/join/mgps/activity/GameTransferActivity;->p0:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/join/mgps/activity/GameTransferActivity;->Y0(Ljava/lang/String;)I

    move-result v3

    .line 11
    :goto_0
    iget-object v4, p0, Lcom/join/mgps/activity/GameTransferActivity;->E:Ljava/util/Map;

    iget-object v5, p0, Lcom/join/mgps/activity/GameTransferActivity;->p0:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 12
    invoke-direct {p0, v4}, Lcom/join/mgps/activity/GameTransferActivity;->K0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 13
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GameTransferActivity;->J1(Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->v0:Lcom/join/mgps/socket/b;

    invoke-virtual {p1, v0}, Lcom/join/mgps/socket/b;->e(Ljava/lang/String;)V

    return-void

    :cond_3
    const/4 v0, -0x1

    if-ne v3, v0, :cond_8

    .line 15
    sget-object v0, Lcom/join/mgps/enums/Dtype;->android:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    if-eqz v4, :cond_6

    .line 16
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->p:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v0

    iget-object v2, p0, Lcom/join/mgps/activity/GameTransferActivity;->p:Landroid/content/Context;

    invoke-virtual {v0, v2, p1}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 18
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0, v4}, Lg1/f;->c0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)I

    .line 19
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    iget-object v2, p0, Lcom/join/mgps/activity/GameTransferActivity;->p0:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    const/4 v2, 0x5

    invoke-static {v0, v2}, Lcom/join/mgps/Util/UtilsMy;->g2(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->p:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v0

    iget-object v2, p0, Lcom/join/mgps/activity/GameTransferActivity;->p:Landroid/content/Context;

    invoke-virtual {v0, v2, p1}, Lcom/join/android/app/common/utils/APKUtils;->k(Landroid/content/Context;Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$a;

    move-result-object p1

    .line 21
    invoke-virtual {p1}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    move-result p1

    .line 22
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-le v0, p1, :cond_4

    .line 23
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->v0:Lcom/join/mgps/socket/b;

    invoke-virtual {p1}, Lcom/join/mgps/socket/b;->i()V

    goto :goto_2

    .line 24
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->v0:Lcom/join/mgps/socket/b;

    invoke-virtual {p1}, Lcom/join/mgps/socket/b;->h()V

    goto :goto_2

    .line 25
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->v0:Lcom/join/mgps/socket/b;

    invoke-virtual {p1}, Lcom/join/mgps/socket/b;->i()V

    goto :goto_2

    .line 26
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->v0:Lcom/join/mgps/socket/b;

    invoke-virtual {p1}, Lcom/join/mgps/socket/b;->i()V

    goto :goto_2

    .line 27
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->v0:Lcom/join/mgps/socket/b;

    invoke-virtual {p1}, Lcom/join/mgps/socket/b;->i()V

    goto :goto_2

    .line 28
    :cond_8
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 29
    invoke-virtual {p0, v3}, Lcom/join/mgps/activity/GameTransferActivity;->e1(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 30
    :cond_9
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->p0:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameTransferActivity;->b1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 31
    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-le v0, p1, :cond_a

    .line 32
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->v0:Lcom/join/mgps/socket/b;

    invoke-virtual {p1}, Lcom/join/mgps/socket/b;->i()V

    goto :goto_2

    .line 33
    :cond_a
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->v0:Lcom/join/mgps/socket/b;

    invoke-virtual {p1}, Lcom/join/mgps/socket/b;->h()V

    :cond_b
    :goto_2
    return-void
.end method

.method declared-synchronized L1()V
    .locals 8

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->d:Lcom/join/mgps/adapter/i2;

    invoke-virtual {v0}, Lcom/join/mgps/adapter/a5;->c()Landroid/util/SparseArray;

    move-result-object v0

    .line 2
    iget-boolean v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->n0:Z

    const v2, 0x7f110121

    if-eqz v1, :cond_4

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->x:Ljava/util/List;

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v4, v6, :cond_2

    .line 5
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/join/mgps/dto/GameTransferBean;

    if-eqz v6, :cond_1

    .line 6
    invoke-virtual {v6}, Lcom/join/mgps/dto/GameTransferBean;->getTransferStatus()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    add-int/lit8 v5, v5, 0x1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    const-string v0, "\u5df2\u5b8c\u6210 %s/%s"

    if-lez v1, :cond_3

    if-ge v5, v1, :cond_3

    .line 7
    iget-object v2, p0, Lcom/join/mgps/activity/GameTransferActivity;->k:Landroid/widget/Button;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v4, v3

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->k:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_2

    .line 9
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameTransferActivity;->l1()V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->k:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 11
    :goto_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameTransferActivity;->v1()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method M0(Ljava/lang/String;)V
    .locals 5

    if-eqz p1, :cond_0

    .line 1
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    const-class v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/join/android/app/common/utils/JsonMapper;->createCollectionType(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->z0:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public O0(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->z:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/join/mgps/task/b;

    invoke-direct {v0, p1}, Lcom/join/mgps/task/b;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->H:Lcom/join/mgps/task/b;

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->F:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->I:Ljava/util/concurrent/Future;

    :cond_0
    return-void
.end method

.method Q0(Lcom/join/mgps/socket/entity/c;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p1, Lcom/join/mgps/socket/entity/c;->x:Ljava/lang/String;

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GameTransferActivity;->c1(Ljava/lang/String;)I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->f:Lcom/join/mgps/adapter/g2;

    invoke-virtual {v1}, Lcom/join/mgps/adapter/a5;->c()Landroid/util/SparseArray;

    move-result-object v1

    .line 4
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/GameTransferBean;

    .line 5
    iget v2, p1, Lcom/join/mgps/socket/entity/c;->v:I

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/GameTransferBean;->setTransferStatus(I)V

    .line 6
    iget-object v2, p1, Lcom/join/mgps/socket/entity/c;->t:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/GameTransferBean;->setFilePath(Ljava/lang/String;)V

    .line 7
    iget v2, p1, Lcom/join/mgps/socket/entity/c;->v:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const/4 p1, 0x3

    if-eq v2, p1, :cond_2

    const/4 p1, 0x4

    if-eq v2, p1, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->f:Lcom/join/mgps/adapter/g2;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->f:Lcom/join/mgps/adapter/g2;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 10
    invoke-direct {p0, v1}, Lcom/join/mgps/activity/GameTransferActivity;->E0(Lcom/join/mgps/dto/GameTransferBean;)V

    goto :goto_0

    .line 11
    :cond_3
    iget p1, p1, Lcom/join/mgps/socket/entity/c;->u:I

    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/GameTransferBean;->setProgerss(I)V

    .line 12
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->f:Lcom/join/mgps/adapter/g2;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :goto_0
    return-void
.end method

.method R0(Lcom/join/mgps/socket/entity/c;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p1, Lcom/join/mgps/socket/entity/c;->x:Ljava/lang/String;

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GameTransferActivity;->Z0(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    if-gez v0, :cond_3

    .line 3
    iget p1, p1, Lcom/join/mgps/socket/entity/c;->v:I

    if-eq p1, v1, :cond_1

    if-ne p1, v2, :cond_2

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameTransferActivity;->w1()V

    :cond_2
    return-void

    .line 5
    :cond_3
    iget-object v3, p0, Lcom/join/mgps/activity/GameTransferActivity;->d:Lcom/join/mgps/adapter/i2;

    invoke-virtual {v3}, Lcom/join/mgps/adapter/a5;->c()Landroid/util/SparseArray;

    move-result-object v3

    .line 6
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/GameTransferBean;

    .line 7
    iget v5, p1, Lcom/join/mgps/socket/entity/c;->v:I

    invoke-virtual {v4, v5}, Lcom/join/mgps/dto/GameTransferBean;->setTransferStatus(I)V

    .line 8
    invoke-virtual {v3, v0, v4}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 9
    iget v3, p1, Lcom/join/mgps/socket/entity/c;->v:I

    const/4 v5, 0x2

    if-eq v3, v5, :cond_6

    const-string v5, ":::\u540d\u79f0::::"

    if-eq v3, v2, :cond_5

    if-eq v3, v1, :cond_4

    goto :goto_0

    .line 10
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SendFile:;;;;Failed index"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/join/mgps/dto/GameTransferBean;->getGameName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->d:Lcom/join/mgps/adapter/i2;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 12
    iget-object p1, p1, Lcom/join/mgps/socket/entity/c;->t:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameTransferActivity;->O0(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameTransferActivity;->w1()V

    goto :goto_0

    .line 14
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SendFile:;;;;Success index"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/join/mgps/dto/GameTransferBean;->getGameName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v1

    .line 16
    invoke-virtual {v4}, Lcom/join/mgps/dto/GameTransferBean;->getId()Ljava/lang/String;

    move-result-object v2

    .line 17
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lcom/papa/sim/statistic/p;->o0(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->d:Lcom/join/mgps/adapter/i2;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 19
    iget-object p1, p1, Lcom/join/mgps/socket/entity/c;->t:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameTransferActivity;->O0(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameTransferActivity;->w1()V

    goto :goto_0

    .line 21
    :cond_6
    iget p1, p1, Lcom/join/mgps/socket/entity/c;->u:I

    invoke-virtual {v4, p1}, Lcom/join/mgps/dto/GameTransferBean;->setProgerss(I)V

    .line 22
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->d:Lcom/join/mgps/adapter/i2;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :goto_0
    return-void
.end method

.method S0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameTransferActivity;->init()V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameTransferActivity;->initData()V

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameTransferActivity;->initView()V

    .line 4
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->t(Ljava/lang/Object;)V

    return-void
.end method

.method T0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)Lcom/join/mgps/dto/GameTransferBean;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    new-instance v0, Lcom/join/mgps/dto/GameTransferBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/GameTransferBean;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/GameTransferBean;->setId(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/GameTransferBean;->setGameName(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/GameTransferBean;->setFileType(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, p2}, Lcom/join/mgps/dto/GameTransferBean;->setTransferStatus(I)V

    .line 6
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/join/mgps/dto/GameTransferBean;->setFilePath(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/join/mgps/dto/GameTransferBean;->setSize(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPortraitURL()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/GameTransferBean;->setIconUrl(Ljava/lang/String;)V

    return-object v0
.end method

.method U0()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->v:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->w:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 3
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    .line 4
    iget-object v3, p0, Lcom/join/mgps/activity/GameTransferActivity;->v:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 5
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 6
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v2, 0x0

    .line 7
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_1

    :catch_0
    move-exception v3

    .line 8
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_1
    if-eqz v2, :cond_1

    .line 9
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 10
    iget-object v2, p0, Lcom/join/mgps/activity/GameTransferActivity;->q0:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method X0()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->E:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->z0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 3
    iget-object v2, p0, Lcom/join/mgps/activity/GameTransferActivity;->E:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x0

    .line 5
    :goto_1
    iget-object v2, p0, Lcom/join/mgps/activity/GameTransferActivity;->z0:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDownloadTask: \u540d\u79f0"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/join/mgps/activity/GameTransferActivity;->z0:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget-object v2, p0, Lcom/join/mgps/activity/GameTransferActivity;->z0:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 8
    invoke-virtual {p0, v2, v3}, Lcom/join/mgps/activity/GameTransferActivity;->T0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)Lcom/join/mgps/dto/GameTransferBean;

    move-result-object v2

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 10
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->f:Lcom/join/mgps/adapter/g2;

    invoke-virtual {v1, v0}, Lcom/join/mgps/adapter/a5;->a(Landroid/util/SparseArray;)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->d:Lcom/join/mgps/adapter/i2;

    invoke-virtual {v0, v3}, Lcom/join/mgps/adapter/i2;->l(Z)V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->d:Lcom/join/mgps/adapter/i2;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->z0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDownloadTask: \u4f20\u8f93\u8bb0\u5f55"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->f:Lcom/join/mgps/adapter/g2;

    invoke-virtual {v1}, Lcom/join/mgps/adapter/a5;->c()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method

.method Y0(Ljava/lang/String;)I
    .locals 4

    const/4 v0, -0x1

    if-eqz p1, :cond_2

    .line 1
    iget-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->u:Ljava/util/List;

    if-nez v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 3
    iget-object v3, p0, Lcom/join/mgps/activity/GameTransferActivity;->u:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v3, :cond_1

    .line 4
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method Z0(Ljava/lang/String;)I
    .locals 5

    const/4 v0, -0x1

    if-eqz p1, :cond_2

    .line 1
    iget-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->d:Lcom/join/mgps/adapter/i2;

    if-nez v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {v1}, Lcom/join/mgps/adapter/a5;->c()Landroid/util/SparseArray;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 4
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/GameTransferBean;

    if-eqz v4, :cond_1

    .line 5
    invoke-virtual {v4}, Lcom/join/mgps/dto/GameTransferBean;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method a1(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->u:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->u:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 3
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method b1(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/GameTransferActivity;->V0(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method bindService()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->q:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/join/mgps/service/SocketServerService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    .line 3
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/join/mgps/service/SocketClientService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/activity/GameTransferActivity;->A0:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v2, v1}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method c1(Ljava/lang/String;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->f:Lcom/join/mgps/adapter/g2;

    invoke-virtual {v0}, Lcom/join/mgps/adapter/a5;->c()Landroid/util/SparseArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/GameTransferBean;

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v2}, Lcom/join/mgps/dto/GameTransferBean;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_1
    return v1
.end method

.method public canApClientConnect(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/event/d;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 2
    iget p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->y0:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->y0:I

    if-le p1, v0, :cond_2

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->y0:I

    :cond_2
    :goto_0
    return-void
.end method

.method public chooseSendFileEvent(Lcom/join/mgps/dto/GameTransferBean;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->u:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameTransferBean;->getId()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameTransferBean;->isSelectedTransfer()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->v:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/join/mgps/activity/GameTransferActivity;->V0(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->v:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->D:I

    if-ne p1, v0, :cond_2

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->n:Z

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameTransferActivity;->o1(Lcom/join/mgps/dto/GameTransferBean;)V

    .line 9
    iget-boolean p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->n:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->n:Z

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 12
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->v:Ljava/util/List;

    if-eqz p1, :cond_3

    .line 13
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameTransferActivity;->s1(I)V

    .line 14
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameTransferActivity;->l1()V

    :cond_4
    :goto_1
    return-void
.end method

.method public connectedEvent(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "dis"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method d1(Ljava/lang/String;)I
    .locals 6

    const/4 v0, -0x1

    if-eqz p1, :cond_2

    .line 1
    iget-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->w:Ljava/util/List;

    if-nez v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 3
    iget-object v3, p0, Lcom/join/mgps/activity/GameTransferActivity;->w:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v3, :cond_1

    .line 4
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPlugTaskListIndex: \u662f\u5426\u5b58\u5728"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method public dialogEvent(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "ok"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method e1(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->w:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->w:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 3
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method f1()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->u:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->u:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->u:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/4 v2, -0x1

    .line 4
    invoke-virtual {p0, v1, v2}, Lcom/join/mgps/activity/GameTransferActivity;->T0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)Lcom/join/mgps/dto/GameTransferBean;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lcom/join/mgps/activity/GameTransferActivity;->B:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method g1()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->c:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/join/mgps/customview/DrawableDividerItemDecoration;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080a75

    .line 2
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v1, v2, v4, v5}, Lcom/join/mgps/customview/DrawableDividerItemDecoration;-><init>(Landroid/graphics/drawable/Drawable;ZZ)V

    .line 3
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 5
    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setChangeDuration(J)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->c:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    .line 8
    new-instance v0, Lcom/join/mgps/customview/PaPaLinearLayoutManager;

    invoke-direct {v0, p0}, Lcom/join/mgps/customview/PaPaLinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 9
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 10
    iget-object v7, p0, Lcom/join/mgps/activity/GameTransferActivity;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v7, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->d:Lcom/join/mgps/adapter/i2;

    iget-object v7, p0, Lcom/join/mgps/activity/GameTransferActivity;->B:Landroid/util/SparseArray;

    invoke-virtual {v0, v7}, Lcom/join/mgps/adapter/a5;->h(Landroid/util/SparseArray;)V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->c:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v7, p0, Lcom/join/mgps/activity/GameTransferActivity;->d:Lcom/join/mgps/adapter/i2;

    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->e:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v7, Lcom/join/mgps/customview/DrawableDividerItemDecoration;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 14
    invoke-virtual {v8, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v7, v3, v4, v5}, Lcom/join/mgps/customview/DrawableDividerItemDecoration;-><init>(Landroid/graphics/drawable/Drawable;ZZ)V

    .line 15
    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->e:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    .line 17
    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setChangeDuration(J)V

    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->e:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->e:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    .line 20
    new-instance v0, Lcom/join/mgps/customview/PaPaLinearLayoutManager;

    invoke-direct {v0, p0}, Lcom/join/mgps/customview/PaPaLinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 21
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 22
    iget-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->e:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 23
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->f:Lcom/join/mgps/adapter/g2;

    iget-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->C:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/a5;->h(Landroid/util/SparseArray;)V

    .line 24
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->e:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->f:Lcom/join/mgps/adapter/g2;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method h1()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->u0:Ljava/net/Socket;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->q:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 3
    new-instance v0, Lcom/join/mgps/socket/server/a;

    iget-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->p:Landroid/content/Context;

    iget-object v2, p0, Lcom/join/mgps/activity/GameTransferActivity;->u0:Ljava/net/Socket;

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/socket/server/a;-><init>(Landroid/content/Context;Ljava/net/Socket;)V

    iput-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->s:Lcom/join/mgps/socket/server/a;

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 4
    new-instance v0, Lcom/join/mgps/socket/client/a;

    iget-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->p:Landroid/content/Context;

    iget-object v2, p0, Lcom/join/mgps/activity/GameTransferActivity;->u0:Ljava/net/Socket;

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/socket/client/a;-><init>(Landroid/content/Context;Ljava/net/Socket;)V

    iput-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->t:Lcom/join/mgps/socket/client/a;

    .line 5
    :cond_2
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->r:J

    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameTransferActivity;->j1()V

    return-void
.end method

.method i1()V
    .locals 5

    .line 1
    new-instance v0, Lcom/join/mgps/task/d;

    iget-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->p:Landroid/content/Context;

    const/4 v2, 0x1

    const-wide/16 v3, 0x7d0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/join/mgps/task/d;-><init>(Landroid/content/Context;ZJ)V

    iput-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->J:Lcom/join/mgps/task/d;

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->F:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->K:Ljava/util/concurrent/Future;

    return-void
.end method

.method init()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->p:Landroid/content/Context;

    .line 2
    invoke-static {}, Lcom/join/mgps/socket/b;->d()Lcom/join/mgps/socket/b;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->v0:Lcom/join/mgps/socket/b;

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->p:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/q1;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->z:Ljava/io/File;

    .line 5
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->z:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->s0:Landroid/os/PowerManager;

    const v1, 0x1000001a

    const-string v2, "My Lock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->t0:Landroid/os/PowerManager$WakeLock;

    .line 8
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameTransferActivity;->bindService()V

    return-void
.end method

.method initData()V
    .locals 2

    .line 1
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lg1/f;->N(Lcom/join/mgps/enums/Dtype;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->u:Ljava/util/List;

    .line 2
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0}, Lg1/f;->I()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->w:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->v:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->q0:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->r0:Ljava/util/List;

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->E:Ljava/util/Map;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->x:Ljava/util/List;

    .line 8
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->B:Landroid/util/SparseArray;

    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameTransferActivity;->f1()V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->D:I

    .line 11
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->C:Landroid/util/SparseArray;

    return-void
.end method

.method initView()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameTransferActivity;->g1()V

    .line 2
    iget v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->q:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/GameTransferActivity;->k1(I)V

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameTransferActivity;->m1()V

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameTransferActivity;->i1()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 6
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/GameTransferActivity;->k1(I)V

    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameTransferActivity;->n1()V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->v0:Lcom/join/mgps/socket/b;

    invoke-virtual {v0}, Lcom/join/mgps/socket/b;->f()V

    :cond_1
    :goto_0
    return-void
.end method

.method j1()V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameTransferActivity$e;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameTransferActivity$e;-><init>(Lcom/join/mgps/activity/GameTransferActivity;)V

    iput-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->G:Lcom/join/mgps/activity/GameTransferActivity$e;

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->F:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->I:Ljava/util/concurrent/Future;

    return-void
.end method

.method k1(I)V
    .locals 4

    const/4 v0, 0x1

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->g:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result p1

    if-nez p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->g:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->j:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->e:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->k:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->m:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->l:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    .line 10
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->j:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result p1

    if-nez p1, :cond_1

    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->j:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 12
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->g:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 13
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 14
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->e:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 15
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->k:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 16
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->m:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 17
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->l:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 18
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->y:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->showHistroyHint()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 19
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method l1()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->n0:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->k:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->k:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method m1()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.WIFI_HOTSPOT_CLIENTS_CHANGED"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4
    new-instance v1, Lcom/join/mgps/receiver/ApWifiConnectedReceiver;

    invoke-direct {v1}, Lcom/join/mgps/receiver/ApWifiConnectedReceiver;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->w0:Lcom/join/mgps/receiver/ApWifiConnectedReceiver;

    .line 5
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method n1()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.STATE_CHANGE"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5
    new-instance v1, Lcom/join/mgps/receiver/NetWorkConnectedReceiver;

    invoke-direct {v1}, Lcom/join/mgps/receiver/NetWorkConnectedReceiver;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->x0:Lcom/join/mgps/receiver/NetWorkConnectedReceiver;

    .line 6
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public o1(Lcom/join/mgps/dto/GameTransferBean;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->v:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameTransferBean;->getId()Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 4
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x0

    .line 5
    invoke-virtual {v1, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->set_from_type(I)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->v:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method onClick(Landroid/view/View;)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
        value = {
            0x7f090598,
            0x7f090599,
            0x7f0905a7,
            0x7f0905a3,
            0x7f0905a2,
            0x7f090595
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 2
    :sswitch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick: +\u65f6\u5019\u53ef\u7528"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/activity/GameTransferActivity;->k:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->isEnabled()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3
    iget-boolean p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->n0:Z

    if-nez p1, :cond_1

    .line 4
    iget p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->q:I

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->t:Lcom/join/mgps/socket/client/a;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/socket/client/a;->f()V

    .line 6
    :cond_0
    iput-boolean v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->n0:Z

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->k:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameTransferActivity;->D1()V

    goto :goto_0

    :cond_1
    const-string p1, "\u8bf7\u7b49\u5f85\u5f53\u524d\u4f20\u8f93\u5b8c\u6210"

    .line 9
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameTransferActivity;->toast(Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :sswitch_1
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->y:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->edit()Lcom/join/mgps/pref/PrefDef_$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_$a;->J2()Lorg/androidannotations/api/sharedpreferences/c;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/androidannotations/api/sharedpreferences/c;->b(Z)Lorg/androidannotations/api/sharedpreferences/e;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/pref/PrefDef_$a;

    invoke-virtual {p1}, Lorg/androidannotations/api/sharedpreferences/e;->a()V

    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->o:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 12
    :sswitch_2
    iget-boolean p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->n0:Z

    if-nez p1, :cond_2

    .line 13
    iget-boolean p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->n:Z

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->n:Z

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 15
    iget-boolean p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->n:Z

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameTransferActivity;->E1(Z)V

    goto :goto_0

    :sswitch_3
    const/4 p1, 0x2

    .line 16
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameTransferActivity;->k1(I)V

    goto :goto_0

    .line 17
    :sswitch_4
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/GameTransferActivity;->k1(I)V

    goto :goto_0

    .line 18
    :sswitch_5
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameTransferActivity;->u1()V

    :cond_2
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f090595 -> :sswitch_5
        0x7f090598 -> :sswitch_4
        0x7f090599 -> :sswitch_3
        0x7f0905a2 -> :sswitch_2
        0x7f0905a3 -> :sswitch_1
        0x7f0905a7 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->s:Lcom/join/mgps/socket/server/a;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/socket/server/a;->b()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->t:Lcom/join/mgps/socket/client/a;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/socket/client/a;->b()V

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameTransferActivity;->stopService()V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->v0:Lcom/join/mgps/socket/b;

    invoke-virtual {v0}, Lcom/join/mgps/socket/b;->b()V

    .line 8
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->y(Ljava/lang/Object;)V

    .line 9
    iget v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->q:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->p:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/f;->i(Landroid/content/Context;)Lcom/join/mgps/Util/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/f;->f()V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->p:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/WifiUtils;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/WifiUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->p:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/WifiUtils;->openWifi(Landroid/content/Context;)V

    .line 12
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameTransferActivity;->y1()V

    .line 13
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameTransferActivity;->x1()V

    .line 14
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameTransferActivity;->A1()V

    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->t0:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_3

    .line 16
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 17
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->F:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_4

    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->F:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 19
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->B0:Lcom/join/mgps/customview/t;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->B0:Lcom/join/mgps/customview/t;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->B0:Lcom/join/mgps/customview/t;

    :cond_5
    return-void
.end method

.method public onEventMainThread(Lcom/join/mgps/event/l;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/event/l;->a()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/event/l;->c()I

    move-result p1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    new-instance v1, Lcom/join/mgps/event/s;

    const/16 v2, 0x9

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/join/mgps/event/s;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v1}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameTransferActivity;->u1()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onSocketReceiverEvent(Lcom/join/mgps/socket/entity/a;)V
    .locals 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->r:J

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSocketReceiverEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->r:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3
    instance-of v0, p1, Lcom/join/mgps/socket/entity/c;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 4
    check-cast p1, Lcom/join/mgps/socket/entity/c;

    iget v0, p1, Lcom/join/mgps/socket/entity/c;->w:I

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameTransferActivity;->R0(Lcom/join/mgps/socket/entity/c;)V

    goto/16 :goto_1

    :cond_1
    if-ne v0, v1, :cond_11

    .line 6
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameTransferActivity;->Q0(Lcom/join/mgps/socket/entity/c;)V

    goto/16 :goto_1

    .line 7
    :cond_2
    instance-of v0, p1, Lcom/join/mgps/socket/entity/g;

    if-eqz v0, :cond_11

    .line 8
    check-cast p1, Lcom/join/mgps/socket/entity/g;

    iget-object p1, p1, Lcom/join/mgps/socket/entity/g;->s:Ljava/lang/String;

    const-string v0, "$HB$"

    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_3

    .line 10
    iget p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->q:I

    if-ne p1, v2, :cond_11

    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->v0:Lcom/join/mgps/socket/b;

    invoke-virtual {p1}, Lcom/join/mgps/socket/b;->k()V

    goto/16 :goto_1

    :cond_3
    const-string v0, "$DMH$"

    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x5

    if-eqz v0, :cond_5

    .line 13
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->q:I

    if-ne p1, v2, :cond_4

    .line 16
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->v0:Lcom/join/mgps/socket/b;

    invoke-virtual {p1}, Lcom/join/mgps/socket/b;->f()V

    goto/16 :goto_1

    :cond_4
    if-ne p1, v1, :cond_11

    .line 17
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->t:Lcom/join/mgps/socket/client/a;

    invoke-virtual {p1}, Lcom/join/mgps/socket/client/a;->e()V

    goto/16 :goto_1

    :cond_5
    const-string v0, "$TLH$"

    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    .line 19
    iget v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->q:I

    if-ne v0, v1, :cond_6

    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->t:Lcom/join/mgps/socket/client/a;

    invoke-virtual {v0}, Lcom/join/mgps/socket/client/a;->f()V

    :cond_6
    const-string v0, ":"

    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 22
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v0, v1

    .line 23
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 24
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameTransferActivity;->M0(Ljava/lang/String;)V

    .line 25
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->z0:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v3, :cond_7

    .line 26
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameTransferActivity;->X0()V

    .line 27
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->v0:Lcom/join/mgps/socket/b;

    invoke-virtual {p1}, Lcom/join/mgps/socket/b;->g()V

    goto :goto_0

    .line 28
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->v0:Lcom/join/mgps/socket/b;

    invoke-virtual {p1}, Lcom/join/mgps/socket/b;->a()V

    .line 29
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->k:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 30
    iput-boolean v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->n0:Z

    .line 31
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSocketReceiverEvent: \u662f\u5426\u53ef\u7528"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->k:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_8
    const-string v0, "$TLO$"

    .line 32
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 33
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameTransferActivity;->w1()V

    goto/16 :goto_1

    :cond_9
    const-string v0, "$SSSSLH$"

    .line 34
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v4, 0x8

    if-eqz v0, :cond_a

    .line 35
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 36
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameTransferActivity;->J1(Ljava/lang/String;)V

    goto :goto_1

    :cond_a
    const-string v0, "$SRSSLH$"

    .line 37
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 38
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 39
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameTransferActivity;->K1(Ljava/lang/String;)V

    goto :goto_1

    :cond_b
    const-string v0, "$STH$"

    .line 40
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 41
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 42
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameTransferActivity;->L0(Ljava/lang/String;)V

    goto :goto_1

    :cond_c
    const-string v0, "$STY$"

    .line 43
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 44
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameTransferActivity;->q1()V

    goto :goto_1

    :cond_d
    const-string v0, "$STN$"

    .line 45
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 46
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameTransferActivity;->I1()V

    goto :goto_1

    :cond_e
    const-string v0, "$SNSUUO$"

    .line 47
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 48
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameTransferActivity;->H1()V

    goto :goto_1

    :cond_f
    const-string v0, "$SSSF$"

    .line 49
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 50
    iget p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->q:I

    if-ne p1, v1, :cond_10

    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->t:Lcom/join/mgps/socket/client/a;

    if-eqz p1, :cond_10

    .line 51
    invoke-virtual {p1}, Lcom/join/mgps/socket/client/a;->e()V

    .line 52
    :cond_10
    iput-boolean v2, p0, Lcom/join/mgps/activity/GameTransferActivity;->n0:Z

    .line 53
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->k:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 54
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->d:Lcom/join/mgps/adapter/i2;

    iget-boolean v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->n0:Z

    invoke-virtual {p1, v0}, Lcom/join/mgps/adapter/i2;->l(Z)V

    .line 55
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->d:Lcom/join/mgps/adapter/i2;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_11
    :goto_1
    return-void
.end method

.method public p1(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->B:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-le p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->B:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->B:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_1

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->B:Landroid/util/SparseArray;

    .line 5
    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge p1, v1, :cond_2

    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->B:Landroid/util/SparseArray;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/GameTransferBean;

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move p1, v2

    goto :goto_0

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->B:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->B:Landroid/util/SparseArray;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    :goto_1
    return-void
.end method

.method q1()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->o0:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    sget-object v2, Lcom/join/mgps/enums/Dtype;->android:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 4
    sget-object v0, Lcom/join/mgps/enums/Dtype;->androiddata:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/join/mgps/activity/GameTransferActivity;->o0:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->o0:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-direct {p0, v0}, Lcom/join/mgps/activity/GameTransferActivity;->M1(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Ljava/lang/String;

    move-result-object v0

    .line 6
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 8
    :cond_1
    sget-object v0, Lcom/join/mgps/enums/Dtype;->androidobb:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/join/mgps/activity/GameTransferActivity;->o0:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->o0:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-direct {p0, v0}, Lcom/join/mgps/activity/GameTransferActivity;->N1(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Ljava/lang/String;

    move-result-object v0

    .line 10
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->o0:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    const/16 v2, 0xb

    if-ne v0, v2, :cond_3

    .line 13
    new-instance v1, Ljava/io/File;

    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->o0:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 14
    :cond_3
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v4, p0, Lcom/join/mgps/activity/GameTransferActivity;->o0:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 15
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 16
    :cond_4
    sget-object v2, Lcom/join/mgps/enums/Dtype;->apk:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->o0:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->o0:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-direct {p0, v0}, Lcom/join/mgps/activity/GameTransferActivity;->P1(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    return-void

    .line 20
    :cond_5
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 21
    :cond_6
    sget-object v2, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 22
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v4, p0, Lcom/join/mgps/activity/GameTransferActivity;->o0:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    move-object v1, v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 23
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_7
    :goto_1
    if-eqz v1, :cond_8

    .line 24
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 25
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->o0:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-direct {p0, v1, v0}, Lcom/join/mgps/activity/GameTransferActivity;->z1(Ljava/io/File;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_2

    .line 26
    :cond_8
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/event/s;

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/join/mgps/activity/GameTransferActivity;->o0:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/join/mgps/event/s;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    :goto_2
    return-void
.end method

.method r1()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameTransferActivity;->U0()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->r0:Ljava/util/List;

    iget-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->v:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->r0:Ljava/util/List;

    iget-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->q0:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->v0:Lcom/join/mgps/socket/b;

    iget-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->r0:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/join/mgps/socket/b;->n(Ljava/util/List;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->q0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->r0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->A:Ljava/util/Iterator;

    return-void
.end method

.method s1(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const p1, 0x7f110084

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->l:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method stopService()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->A0:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2
    iget v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->q:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/join/mgps/service/SocketServerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/join/mgps/service/SocketClientService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 5
    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    return-void
.end method

.method t1()V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/customview/t;

    const v1, 0x7f120176

    invoke-direct {v0, p0, v1}, Lcom/join/mgps/customview/t;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->B0:Lcom/join/mgps/customview/t;

    const v1, 0x7f0c009a

    .line 2
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->B0:Lcom/join/mgps/customview/t;

    const v1, 0x7f090364

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->B0:Lcom/join/mgps/customview/t;

    const v2, 0x7f09036b

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 5
    iget-object v2, p0, Lcom/join/mgps/activity/GameTransferActivity;->B0:Lcom/join/mgps/customview/t;

    const v3, 0x7f09100a

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 6
    iget-object v3, p0, Lcom/join/mgps/activity/GameTransferActivity;->B0:Lcom/join/mgps/customview/t;

    const v4, 0x7f09036e

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 7
    iget-object v4, p0, Lcom/join/mgps/activity/GameTransferActivity;->B0:Lcom/join/mgps/customview/t;

    const v5, 0x7f090370

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const-string v5, "\u63d0\u793a"

    .line 8
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v2, "\u9000\u51fa\u4f1a\u4e2d\u65ad\u8fde\u63a5\u53ca\u6b63\u5728\u8fdb\u884c\u7684\u4f20\u8f93\uff0c\u786e\u8ba4\u9000\u51fa\u5417\uff1f"

    .line 9
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0x8

    .line 10
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v2, "\u786e\u8ba4"

    .line 11
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string v2, "\u53d6\u6d88"

    .line 12
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 13
    new-instance v2, Lcom/join/mgps/activity/GameTransferActivity$b;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/GameTransferActivity$b;-><init>(Lcom/join/mgps/activity/GameTransferActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    new-instance v0, Lcom/join/mgps/activity/GameTransferActivity$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameTransferActivity$c;-><init>(Lcom/join/mgps/activity/GameTransferActivity;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->B0:Lcom/join/mgps/customview/t;

    if-eqz v0, :cond_1

    .line 16
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->B0:Lcom/join/mgps/customview/t;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method

.method toast(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->p:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method

.method u1()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameTransferActivity;->t1()V

    return-void
.end method

.method v1()V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->d:Lcom/join/mgps/adapter/i2;

    invoke-virtual {v0}, Lcom/join/mgps/adapter/a5;->c()Landroid/util/SparseArray;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    .line 3
    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 4
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/GameTransferBean;

    .line 5
    invoke-virtual {v3}, Lcom/join/mgps/dto/GameTransferBean;->getTransferStatus()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 6
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/GameTransferActivity;->p1(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/GameTransferActivity;->H0(Landroid/util/SparseArray;)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->d:Lcom/join/mgps/adapter/i2;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method w1()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->A:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->A:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iput-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->o0:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 3
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->o0:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lcom/join/mgps/activity/GameTransferActivity;->o0:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v2

    .line 6
    iget-object v3, p0, Lcom/join/mgps/activity/GameTransferActivity;->o0:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-direct {p0, v3}, Lcom/join/mgps/activity/GameTransferActivity;->J0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->v0:Lcom/join/mgps/socket/b;

    invoke-virtual {v1, v0}, Lcom/join/mgps/socket/b;->m(Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->v0:Lcom/join/mgps/socket/b;

    invoke-virtual {v1, v0}, Lcom/join/mgps/socket/b;->l(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GameTransferActivity;->K1(Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_1
    iget v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->q:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->t:Lcom/join/mgps/socket/client/a;

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {v0}, Lcom/join/mgps/socket/client/a;->e()V

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->v0:Lcom/join/mgps/socket/b;

    invoke-virtual {v0}, Lcom/join/mgps/socket/b;->o()V

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->n0:Z

    .line 15
    iget-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->d:Lcom/join/mgps/adapter/i2;

    invoke-virtual {v1, v0}, Lcom/join/mgps/adapter/i2;->l(Z)V

    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->d:Lcom/join/mgps/adapter/i2;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->r0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 18
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameTransferActivity;->L1()V

    return-void
.end method

.method x1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->J:Lcom/join/mgps/task/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->K:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->J:Lcom/join/mgps/task/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/join/mgps/task/d;->d(Z)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->K:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method y1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->G:Lcom/join/mgps/activity/GameTransferActivity$e;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->I:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/GameTransferActivity$e;->a(Z)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity;->I:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method public zipEvent(Lcom/join/mgps/event/s;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p1, Lcom/join/mgps/event/s;->b:Ljava/lang/String;

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/join/mgps/activity/GameTransferActivity;->r:J

    .line 3
    iget p1, p1, Lcom/join/mgps/event/s;->a:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 p1, 0x9

    .line 4
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/GameTransferActivity;->G1(Ljava/lang/String;I)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->E:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 6
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameTransferActivity;->I0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 7
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameTransferActivity;->O0(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const/16 p1, 0x8

    .line 9
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/GameTransferActivity;->G1(Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_2
    const/4 p1, 0x7

    .line 10
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/GameTransferActivity;->G1(Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_3
    const/4 p1, 0x6

    .line 11
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/GameTransferActivity;->G1(Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_4
    const/4 p1, 0x5

    .line 12
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/GameTransferActivity;->F1(Ljava/lang/String;I)V

    .line 13
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity;->v0:Lcom/join/mgps/socket/b;

    invoke-virtual {p1}, Lcom/join/mgps/socket/b;->p()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
