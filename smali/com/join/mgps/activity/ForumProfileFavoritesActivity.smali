.class public Lcom/join/mgps/activity/ForumProfileFavoritesActivity;
.super Lcom/BaseAppCompatActivity;
.source "ForumProfileFavoritesActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/ForumProfileFavoritesActivity$MediaCmd;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c042d
.end annotation


# static fields
.field private static final H0:Ljava/lang/String;

.field public static final I0:Ljava/lang/String; = "key_mediacmd"

.field public static final J0:Ljava/lang/String; = "key_mediacmd_params"


# instance fields
.field A:Landroid/app/Dialog;

.field A0:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field B:Lcom/join/mgps/customview/e$d;

.field B0:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field C:Lcom/join/mgps/customview/e;

.field private C0:I

.field D:Landroid/view/View;

.field private D0:I

.field E:I

.field private E0:Lcom/join/mgps/rpc/d;

.field F:Landroid/widget/FrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field F0:I

.field G:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field G0:Z

.field H:Lcom/join/android/app/component/video/MyVideoView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field I:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field J:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field K:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field a:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field b:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field c:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Lcom/join/mgps/customview/ForumLoadingView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;",
            ">;"
        }
    .end annotation
.end field

.field volatile f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0;",
            ">;"
        }
    .end annotation
.end field

.field g:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;

.field h:Lcom/join/mgps/customview/XListView2;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field i:Lcom/join/mgps/ptr/PtrClassicFrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field j:Lcom/join/mgps/rpc/h;

.field private k:Lcom/join/mgps/dialog/p0;

.field l:Lcom/join/mgps/dto/ExtBean;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field m:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$u;

.field n:Landroid/os/Handler;

.field n0:Lcom/join/android/app/component/video/MediaController;

.field private o:I

.field o0:I

.field private p:I

.field p0:Ljava/lang/String;

.field private final q:I

.field q0:Ljava/lang/String;

.field private final r:I

.field r0:Z

.field private final s:I

.field s0:Z

.field private final t:I

.field t0:I

.field private final u:I

.field u0:I

.field private final v:I

.field v0:I

.field private final w:I

.field w0:Lcom/join/mgps/customview/t;

.field private x:I

.field x0:Landroid/view/GestureDetector;

.field y:Lcom/join/android/app/component/video/c;

.field y0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field z:Lcom/join/mgps/rpc/d;

.field z0:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->H0:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/BaseAppCompatActivity;-><init>()V

    .line 2
    new-instance v0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity$k;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity$k;-><init>(Lcom/join/mgps/activity/ForumProfileFavoritesActivity;)V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->m:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$u;

    .line 3
    new-instance v0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity$o;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity$o;-><init>(Lcom/join/mgps/activity/ForumProfileFavoritesActivity;)V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->n:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->o:I

    .line 5
    iput v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->p:I

    .line 6
    iput v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->q:I

    const/16 v1, 0x10

    .line 7
    iput v1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->r:I

    const/16 v1, 0x20

    .line 8
    iput v1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->s:I

    const/16 v1, 0x11

    .line 9
    iput v1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->t:I

    const/16 v1, 0x12

    .line 10
    iput v1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->u:I

    const/16 v1, 0x14

    .line 11
    iput v1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->v:I

    const/16 v1, 0x18

    .line 12
    iput v1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->w:I

    .line 13
    iput v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->x:I

    .line 14
    new-instance v1, Lcom/join/mgps/activity/ForumProfileFavoritesActivity$g;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity$g;-><init>(Lcom/join/mgps/activity/ForumProfileFavoritesActivity;)V

    iput-object v1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->B:Lcom/join/mgps/customview/e$d;

    const/4 v1, -0x1

    .line 15
    iput v1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->E:I

    .line 16
    iput-boolean v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->s0:Z

    .line 17
    iput v1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->t0:I

    .line 18
    iput v1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->u0:I

    .line 19
    iput v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->v0:I

    const/4 v1, 0x0

    .line 20
    iput-object v1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->w0:Lcom/join/mgps/customview/t;

    .line 21
    new-instance v1, Landroid/view/GestureDetector;

    new-instance v2, Lcom/join/mgps/activity/ForumProfileFavoritesActivity$n;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity$n;-><init>(Lcom/join/mgps/activity/ForumProfileFavoritesActivity;)V

    invoke-direct {v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->x0:Landroid/view/GestureDetector;

    .line 22
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->z0:Ljava/util/Map;

    .line 23
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->A0:Ljava/util/Map;

    .line 24
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->B0:Ljava/util/Map;

    .line 25
    iput v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->C0:I

    .line 26
    iput v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->D0:I

    .line 27
    iput v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->F0:I

    .line 28
    iput-boolean v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->G0:Z

    return-void
.end method

.method private B1(Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V
    .locals 21

    move-object/from16 v6, p0

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    const-string v7, ""

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-nez v0, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    new-instance v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0;

    sget-object v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;->P_SUBJECT:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;

    new-instance v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$f;

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getBest()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v12, 0x1

    goto :goto_0

    :cond_0
    const/4 v12, 0x0

    .line 4
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    move-result-object v13

    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v14

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFid()I

    move-result v15

    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp()I

    move-result v3

    if-lez v3, :cond_1

    const/16 v16, 0x1

    goto :goto_1

    :cond_1
    const/16 v16, 0x0

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp_money()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 9
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getTag_info()Ljava/util/List;

    move-result-object v18

    .line 10
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getTags()Ljava/util/List;

    move-result-object v19

    .line 11
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFname()Ljava/lang/String;

    move-result-object v20

    const/4 v11, 0x0

    move-object v10, v2

    invoke-direct/range {v10 .. v20}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$f;-><init>(ZZLjava/lang/String;IIZLjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0;-><init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;Ljava/lang/Object;)V

    .line 12
    iget-object v1, v6, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_5

    .line 13
    new-instance v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0;

    sget-object v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;->P_SUBJECT:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;

    new-instance v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$f;

    .line 14
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getBest()I

    move-result v3

    if-lez v3, :cond_3

    const/4 v12, 0x1

    goto :goto_3

    :cond_3
    const/4 v12, 0x0

    .line 15
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    move-result-object v13

    .line 16
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v14

    const/4 v15, 0x0

    .line 17
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp()I

    move-result v3

    if-lez v3, :cond_4

    const/16 v16, 0x1

    goto :goto_4

    :cond_4
    const/16 v16, 0x0

    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp_money()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 19
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getTag_info()Ljava/util/List;

    move-result-object v18

    .line 20
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getTags()Ljava/util/List;

    move-result-object v19

    .line 21
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFname()Ljava/lang/String;

    move-result-object v20

    const/4 v11, 0x0

    move-object v10, v2

    invoke-direct/range {v10 .. v20}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$f;-><init>(ZZLjava/lang/String;IIZLjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0;-><init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;Ljava/lang/Object;)V

    .line 22
    iget-object v1, v6, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    .line 23
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_5

    :cond_6
    const/16 v19, 0x0

    goto :goto_6

    :cond_7
    :goto_5
    const/16 v19, 0x1

    .line 24
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 25
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp()I

    move-result v0

    if-lez v0, :cond_8

    const/4 v3, 0x1

    goto :goto_7

    :cond_8
    const/4 v3, 0x0

    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp_money()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getTag_info()Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, p0

    move/from16 v2, v19

    invoke-static/range {v0 .. v5}, Lcom/join/mgps/Util/i0;->m0(Landroid/content/Context;Ljava/lang/String;ZZLjava/lang/String;Ljava/util/List;)Landroid/text/SpannableStringBuilder;

    move-result-object v20

    .line 26
    new-instance v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$e;

    if-eqz v19, :cond_9

    .line 27
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getBest()I

    move-result v1

    if-lez v1, :cond_9

    const/4 v12, 0x1

    goto :goto_8

    :cond_9
    const/4 v12, 0x0

    .line 28
    :goto_8
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    move-result-object v13

    .line 29
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v14

    const/4 v15, 0x0

    if-eqz v19, :cond_a

    .line 30
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp()I

    move-result v1

    if-lez v1, :cond_a

    const/16 v16, 0x1

    goto :goto_9

    :cond_a
    const/16 v16, 0x0

    :goto_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp_money()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    if-eqz v19, :cond_b

    .line 32
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getTag_info()Ljava/util/List;

    move-result-object v1

    goto :goto_a

    :cond_b
    const/4 v1, 0x0

    :goto_a
    move-object/from16 v18, v1

    const/4 v11, 0x0

    move-object v10, v0

    invoke-direct/range {v10 .. v20}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$e;-><init>(ZZLjava/lang/String;IIZLjava/lang/String;Ljava/util/List;ZLandroid/text/SpannableStringBuilder;)V

    .line 33
    new-instance v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0;

    sget-object v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;->P_MESSAGE:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;

    invoke-direct {v1, v2, v0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0;-><init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;Ljava/lang/Object;)V

    .line 34
    iget-object v2, v6, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->f:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    iget-object v1, v6, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->g:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;

    invoke-virtual {v1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->j()Lcom/join/android/app/component/optimizetext/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/join/android/app/component/optimizetext/b;->e(Lcom/join/android/app/component/optimizetext/c;)V

    .line 36
    :cond_c
    :goto_b
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getRelation_game()Lcom/join/mgps/dto/ForumBean$GameInfo;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getRelation_game()Lcom/join/mgps/dto/ForumBean$GameInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_id()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    const/4 v0, 0x1

    goto :goto_c

    :cond_d
    const/4 v0, 0x0

    :goto_c
    if-nez v0, :cond_14

    .line 37
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getRs_list()Ljava/util/List;

    move-result-object v1

    .line 38
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 39
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->isAttach_video()Z

    move-result v3

    move-object v4, v7

    move-object v5, v4

    :goto_d
    if-eqz v1, :cond_10

    .line 40
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    if-ge v8, v10, :cond_10

    .line 41
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;

    .line 42
    invoke-virtual {v10}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getType()Ljava/lang/String;

    move-result-object v11

    const-string v12, "pic"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 43
    invoke-virtual {v10}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getRaw()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 44
    :cond_e
    invoke-virtual {v10}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getType()Ljava/lang/String;

    move-result-object v11

    const-string v12, "video"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 45
    invoke-static {v5}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 46
    invoke-virtual {v10}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getThumb()Ljava/lang/String;

    move-result-object v4

    .line 47
    invoke-virtual {v10}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getRaw()Ljava/lang/String;

    move-result-object v5

    :cond_f
    :goto_e
    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    .line 48
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 49
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    move-result-object v8

    goto :goto_f

    .line 50
    :cond_11
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 51
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    move-result-object v8

    goto :goto_f

    :cond_12
    move-object v8, v7

    :goto_f
    if-eqz v3, :cond_13

    .line 52
    new-instance v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0;

    sget-object v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;->P_VIDEO:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;

    new-instance v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$g;

    invoke-direct {v3, v4, v5, v8}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0;-><init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;Ljava/lang/Object;)V

    .line 53
    iget-object v2, v6, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->f:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_13
    if-eqz v1, :cond_14

    .line 54
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_14

    .line 55
    new-instance v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0;

    sget-object v4, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;->P_IMGS:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;

    new-instance v5, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$d;

    .line 56
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v8

    invoke-direct {v5, v1, v2, v8}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$d;-><init>(Ljava/util/List;Ljava/util/List;I)V

    invoke-direct {v3, v4, v5}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0;-><init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;Ljava/lang/Object;)V

    .line 57
    iget-object v1, v6, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->f:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_14
    :goto_10
    if-eqz v0, :cond_15

    .line 58
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getRelation_game()Lcom/join/mgps/dto/ForumBean$GameInfo;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->q1(Lcom/join/mgps/dto/ForumBean$GameInfo;)V

    .line 59
    new-instance v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0;

    sget-object v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;->POST_GAME:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;

    new-instance v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$i;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 61
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getRelation_game()Lcom/join/mgps/dto/ForumBean$GameInfo;

    move-result-object v4

    invoke-direct {v2, v9, v3, v4}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$i;-><init>(ZLjava/lang/String;Lcom/join/mgps/dto/ForumBean$GameInfo;)V

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0;-><init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;Ljava/lang/Object;)V

    .line 62
    iget-object v1, v6, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    :cond_15
    new-instance v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0;

    sget-object v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;->P_FOOTER:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;

    new-instance v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$c;

    const/4 v8, 0x1

    .line 64
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getAvatar_src()Ljava/lang/String;

    move-result-object v9

    .line 65
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getLast_comment_time()Ljava/lang/String;

    move-result-object v10

    .line 66
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getNickname()Ljava/lang/String;

    move-result-object v11

    .line 67
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPraise()I

    move-result v12

    .line 68
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getCommit()I

    move-result v13

    .line 69
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v14

    .line 70
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getView()I

    move-result v15

    .line 71
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_praise()Z

    move-result v16

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getUid()I

    move-result v17

    move-object v7, v2

    invoke-direct/range {v7 .. v17}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$c;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIZI)V

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0;-><init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;Ljava/lang/Object;)V

    .line 72
    iget-object v1, v6, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private C1(Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V
    .locals 20

    move-object/from16 v6, p0

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    move-result-object v0

    const-string v7, ""

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v0, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    new-instance v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0;

    sget-object v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;->POST_SUBJECT:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;

    new-instance v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$m;

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getBest()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    .line 4
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    move-result-object v12

    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v13

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFid()I

    move-result v14

    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v15, 0x1

    goto :goto_1

    :cond_1
    const/4 v15, 0x0

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp_money()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 9
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getTag_info()Ljava/util/List;

    move-result-object v17

    move-object v10, v2

    invoke-direct/range {v10 .. v17}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$m;-><init>(ZLjava/lang/String;IIZLjava/lang/String;Ljava/util/List;)V

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0;-><init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;Ljava/lang/Object;)V

    .line 10
    iget-object v1, v6, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v10, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v10, 0x1

    .line 12
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 13
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp()I

    move-result v0

    if-lez v0, :cond_5

    const/4 v3, 0x1

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp_money()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getTag_info()Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, p0

    move v2, v10

    invoke-static/range {v0 .. v5}, Lcom/join/mgps/Util/i0;->m0(Landroid/content/Context;Ljava/lang/String;ZZLjava/lang/String;Ljava/util/List;)Landroid/text/SpannableStringBuilder;

    move-result-object v19

    .line 14
    new-instance v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$l;

    if-eqz v10, :cond_6

    .line 15
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getBest()I

    move-result v1

    if-lez v1, :cond_6

    const/4 v12, 0x1

    goto :goto_5

    :cond_6
    const/4 v12, 0x0

    .line 16
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    move-result-object v13

    .line 17
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v14

    .line 18
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFid()I

    move-result v15

    if-eqz v10, :cond_7

    .line 19
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp()I

    move-result v1

    if-lez v1, :cond_7

    const/16 v16, 0x1

    goto :goto_6

    :cond_7
    const/16 v16, 0x0

    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp_money()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    if-eqz v10, :cond_8

    .line 21
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getTag_info()Ljava/util/List;

    move-result-object v1

    goto :goto_7

    :cond_8
    const/4 v1, 0x0

    :goto_7
    move-object/from16 v18, v1

    move-object v11, v0

    invoke-direct/range {v11 .. v19}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$l;-><init>(ZLjava/lang/String;IIZLjava/lang/String;Ljava/util/List;Landroid/text/SpannableStringBuilder;)V

    .line 22
    new-instance v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0;

    sget-object v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;->POST_MESSAGE:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;

    invoke-direct {v1, v2, v0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0;-><init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;Ljava/lang/Object;)V

    .line 23
    iget-object v2, v6, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->f:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    iget-object v1, v6, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->g:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;

    invoke-virtual {v1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->j()Lcom/join/android/app/component/optimizetext/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/join/android/app/component/optimizetext/b;->e(Lcom/join/android/app/component/optimizetext/c;)V

    .line 25
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getRs_list()Ljava/util/List;

    move-result-object v0

    .line 26
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 27
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->isAttach_video()Z

    move-result v2

    move-object v3, v7

    move-object v4, v3

    :goto_8
    if-eqz v0, :cond_c

    .line 28
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v8, v5, :cond_c

    .line 29
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;

    .line 30
    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getType()Ljava/lang/String;

    move-result-object v9

    const-string v10, "pic"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 31
    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getRaw()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 32
    :cond_a
    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getType()Ljava/lang/String;

    move-result-object v9

    const-string v10, "video"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 33
    invoke-static {v4}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 34
    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getThumb()Ljava/lang/String;

    move-result-object v3

    .line 35
    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getRaw()Ljava/lang/String;

    move-result-object v4

    :cond_b
    :goto_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 36
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 37
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    move-result-object v7

    goto :goto_a

    .line 38
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 39
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    move-result-object v7

    :cond_e
    :goto_a
    if-eqz v2, :cond_f

    .line 40
    new-instance v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0;

    sget-object v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;->POST_VIDEO_THUMBNAIL:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;

    new-instance v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$o;

    invoke-direct {v2, v3, v4, v7}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$o;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0;-><init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;Ljava/lang/Object;)V

    .line 41
    iget-object v1, v6, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_f
    if-eqz v0, :cond_10

    .line 42
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_10

    .line 43
    new-instance v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0;

    sget-object v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;->POST_IMAGE_THUMBNAIL:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;

    new-instance v4, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$k;

    .line 44
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v5

    invoke-direct {v4, v0, v1, v5}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$k;-><init>(Ljava/util/List;Ljava/util/List;I)V

    invoke-direct {v2, v3, v4}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0;-><init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;Ljava/lang/Object;)V

    .line 45
    iget-object v0, v6, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->f:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    :cond_10
    :goto_b
    new-instance v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0;

    sget-object v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;->POST_FOOTER:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;

    new-instance v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$h;

    .line 47
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v8

    .line 48
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFid()I

    move-result v9

    .line 49
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFname()Ljava/lang/String;

    move-result-object v10

    .line 50
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getView()I

    move-result v11

    .line 51
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getCommit()I

    move-result v12

    .line 52
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPraise()I

    move-result v13

    .line 53
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_praise()Z

    move-result v14

    const/4 v15, 0x0

    move-object v7, v2

    invoke-direct/range {v7 .. v15}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$h;-><init>(IILjava/lang/String;IIIZZ)V

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0;-><init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;Ljava/lang/Object;)V

    .line 54
    iget-object v1, v6, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic D0(Lcom/join/mgps/activity/ForumProfileFavoritesActivity;Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->isLogined(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private D1(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 3
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;

    .line 4
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 5
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->y1(Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;)V

    .line 6
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->A1(Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;)V

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 8
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->getPost()Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    move-result-object v2

    .line 9
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_favorite()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 10
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->y1(Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;)V

    .line 11
    invoke-direct {p0, v2}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->B1(Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method static synthetic E0(Lcom/join/mgps/activity/ForumProfileFavoritesActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->p:I

    return p0
.end method

.method static synthetic F0(Lcom/join/mgps/activity/ForumProfileFavoritesActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->p:I

    return p1
.end method

.method static synthetic G0(Lcom/join/mgps/activity/ForumProfileFavoritesActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->o:I

    return p0
.end method

.method static synthetic H0(Lcom/join/mgps/activity/ForumProfileFavoritesActivity;)Lcom/join/mgps/dialog/p0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->k:Lcom/join/mgps/dialog/p0;

    return-object p0
.end method

.method static synthetic I0(Lcom/join/mgps/activity/ForumProfileFavoritesActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->d1()V

    return-void
.end method

.method private J1(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->k:Lcom/join/mgps/dialog/p0;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/join/mgps/dialog/p0;

    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/p0;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->k:Lcom/join/mgps/dialog/p0;

    const-string v1, "\u786e\u5b9a"

    .line 3
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/p0;->f(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->k:Lcom/join/mgps/dialog/p0;

    const-string v1, "\u53d6\u6d88"

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/p0;->d(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->k:Lcom/join/mgps/dialog/p0;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/p0;->b(I)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->k:Lcom/join/mgps/dialog/p0;

    const-string v1, "\u786e\u5b9a\u8981\u5220\u9664\u8be5\u5e16\u5417\uff1f"

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/p0;->g(Ljava/lang/String;)Lcom/join/mgps/dialog/p0;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/activity/ForumProfileFavoritesActivity$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity$a;-><init>(Lcom/join/mgps/activity/ForumProfileFavoritesActivity;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/p0;->c(Landroid/view/View$OnClickListener;)Lcom/join/mgps/dialog/p0;

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->k:Lcom/join/mgps/dialog/p0;

    new-instance v1, Lcom/join/mgps/activity/ForumProfileFavoritesActivity$b;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity$b;-><init>(Lcom/join/mgps/activity/ForumProfileFavoritesActivity;I)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/p0;->e(Landroid/view/View$OnClickListener;)Lcom/join/mgps/dialog/p0;

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->k:Lcom/join/mgps/dialog/p0;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->k:Lcom/join/mgps/dialog/p0;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method

.method private L1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->a:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->i:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method private O0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->w0:Lcom/join/mgps/customview/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->w0:Lcom/join/mgps/customview/t;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private U0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->a:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->i:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method private X0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->c:Landroid/widget/TextView;

    const-string v1, "\u6211\u7684\u6536\u85cf"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->e:Ljava/util/List;

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->h:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->h:Lcom/join/mgps/customview/XListView2;

    sget v1, Lcom/join/mgps/Util/i0;->e:I

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPreLoadCount(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->h:Lcom/join/mgps/customview/XListView2;

    new-instance v1, Lcom/join/mgps/activity/ForumProfileFavoritesActivity$p;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity$p;-><init>(Lcom/join/mgps/activity/ForumProfileFavoritesActivity;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullLoadEnable(Lcom/join/mgps/customview/i;)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->h:Lcom/join/mgps/customview/XListView2;

    new-instance v1, Lcom/join/mgps/activity/ForumProfileFavoritesActivity$q;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity$q;-><init>(Lcom/join/mgps/activity/ForumProfileFavoritesActivity;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullRefreshEnable(Lcom/join/mgps/customview/j;)V

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->f:Ljava/util/List;

    .line 8
    new-instance v0, Lcom/join/android/app/component/video/c;

    sget-object v1, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->H0:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/join/android/app/component/video/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->y:Lcom/join/android/app/component/video/c;

    .line 9
    new-instance v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;

    iget-object v1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->y:Lcom/join/android/app/component/video/c;

    invoke-direct {v0, p0, v1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;-><init>(Landroid/content/Context;Lcom/join/android/app/component/video/c;)V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->g:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;

    .line 10
    iget-object v1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->m:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$u;

    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->M(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$u;)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->h:Lcom/join/mgps/customview/XListView2;

    iget-object v1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->g:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->h:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0, p0}, Lcom/join/mgps/customview/XListView2;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->h:Lcom/join/mgps/customview/XListView2;

    new-instance v1, Lcom/join/mgps/activity/ForumProfileFavoritesActivity$r;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity$r;-><init>(Lcom/join/mgps/activity/ForumProfileFavoritesActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->h:Lcom/join/mgps/customview/XListView2;

    new-instance v1, Lcom/join/mgps/activity/ForumProfileFavoritesActivity$s;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity$s;-><init>(Lcom/join/mgps/activity/ForumProfileFavoritesActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->h:Lcom/join/mgps/customview/XListView2;

    new-instance v1, Lcom/join/mgps/activity/ForumProfileFavoritesActivity$t;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity$t;-><init>(Lcom/join/mgps/activity/ForumProfileFavoritesActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-void
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

.method private c1()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->b1(I)V

    return-void
.end method

.method private d1()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->K0(I)V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->Z0()V

    .line 3
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->c1()V

    goto :goto_0

    :cond_0
    const v0, 0x7f110206

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->showToast(Ljava/lang/String;)V

    const/16 v0, 0x11

    .line 6
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->K0(I)V

    :goto_0
    return-void
.end method

.method private isLogined(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->accountBean(Landroid/content/Context;)Lcom/join/mgps/dto/AccountBean;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private o1()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->p0:Ljava/lang/String;

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->q0:Ljava/lang/String;

    .line 3
    iget-object v2, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->I:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object v2, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->I:Lcom/facebook/drawee/view/SimpleDraweeView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 5
    iget-object v2, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->I:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v2, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->K:Landroid/widget/LinearLayout;

    .line 7
    iget-object v2, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->n0:Lcom/join/android/app/component/video/MediaController;

    const/16 v4, 0x8

    if-nez v2, :cond_0

    .line 8
    new-instance v2, Lcom/join/android/app/component/video/MediaController;

    invoke-direct {v2, p0}, Lcom/join/android/app/component/video/MediaController;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->n0:Lcom/join/android/app/component/video/MediaController;

    .line 9
    invoke-virtual {v2}, Lcom/join/android/app/component/video/MediaController;->q()V

    .line 10
    iget-object v2, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->n0:Lcom/join/android/app/component/video/MediaController;

    invoke-virtual {v2}, Lcom/join/android/app/component/video/MediaController;->hide()V

    .line 11
    iget-object v2, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->n0:Lcom/join/android/app/component/video/MediaController;

    invoke-virtual {v2, v4}, Landroid/widget/MediaController;->setVisibility(I)V

    .line 12
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->H:Lcom/join/android/app/component/video/MyVideoView;

    invoke-virtual {v2}, Lcom/join/android/app/component/video/MyVideoView;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 13
    iget-object v2, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->H:Lcom/join/android/app/component/video/MyVideoView;

    if-eqz v2, :cond_1

    .line 14
    invoke-virtual {v2}, Lcom/join/android/app/component/video/MyVideoView;->I()V

    .line 15
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 16
    :cond_1
    iget-object v2, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->n0:Lcom/join/android/app/component/video/MediaController;

    if-eqz v2, :cond_2

    .line 17
    invoke-virtual {v2, v4}, Landroid/widget/MediaController;->setVisibility(I)V

    .line 18
    :cond_2
    iget-object v2, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->H:Lcom/join/android/app/component/video/MyVideoView;

    invoke-virtual {v2, v3}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 19
    iget-object v2, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->n0:Lcom/join/android/app/component/video/MediaController;

    iget-object v4, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->H:Lcom/join/android/app/component/video/MyVideoView;

    invoke-virtual {v2, v4}, Lcom/join/android/app/component/video/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 20
    iget-object v2, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->n0:Lcom/join/android/app/component/video/MediaController;

    iget-object v4, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->H:Lcom/join/android/app/component/video/MyVideoView;

    invoke-virtual {v2, v4}, Lcom/join/android/app/component/video/MediaController;->setMediaPlayer(Lcom/join/android/app/component/video/MediaController$e;)V

    .line 21
    iget-object v2, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->H:Lcom/join/android/app/component/video/MyVideoView;

    iget-object v4, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->n0:Lcom/join/android/app/component/video/MediaController;

    invoke-virtual {v2, v4}, Lcom/join/android/app/component/video/MyVideoView;->setMediaController(Lcom/join/android/app/component/video/MediaController;)V

    .line 22
    iget-object v2, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->H:Lcom/join/android/app/component/video/MyVideoView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->requestFocus()Z

    .line 23
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 24
    iget-object v1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->H:Lcom/join/android/app/component/video/MyVideoView;

    invoke-virtual {v1}, Lcom/join/android/app/component/video/MyVideoView;->E()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->H:Lcom/join/android/app/component/video/MyVideoView;

    invoke-virtual {v1}, Lcom/join/android/app/component/video/MyVideoView;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_3

    .line 25
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->x1()V

    const-string v0, "play a last video ..."

    .line 26
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    goto :goto_0

    .line 27
    :cond_3
    iget-object v1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->H:Lcom/join/android/app/component/video/MyVideoView;

    invoke-virtual {v1, v0}, Lcom/join/android/app/component/video/MyVideoView;->setVideoPath(Ljava/lang/String;)V

    const-string v0, "play a new video ..."

    .line 28
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 29
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->H:Lcom/join/android/app/component/video/MyVideoView;

    new-instance v1, Lcom/join/mgps/activity/ForumProfileFavoritesActivity$h;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity$h;-><init>(Lcom/join/mgps/activity/ForumProfileFavoritesActivity;)V

    invoke-virtual {v0, v1}, Lcom/join/android/app/component/video/MyVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 30
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->H:Lcom/join/android/app/component/video/MyVideoView;

    new-instance v1, Lcom/join/mgps/activity/ForumProfileFavoritesActivity$i;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity$i;-><init>(Lcom/join/mgps/activity/ForumProfileFavoritesActivity;)V

    invoke-virtual {v0, v1}, Lcom/join/android/app/component/video/MyVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 31
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->H:Lcom/join/android/app/component/video/MyVideoView;

    new-instance v1, Lcom/join/mgps/activity/ForumProfileFavoritesActivity$j;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity$j;-><init>(Lcom/join/mgps/activity/ForumProfileFavoritesActivity;)V

    invoke-virtual {v0, v1}, Lcom/join/android/app/component/video/MyVideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 32
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->H:Lcom/join/android/app/component/video/MyVideoView;

    new-instance v1, Lcom/join/mgps/activity/ForumProfileFavoritesActivity$l;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity$l;-><init>(Lcom/join/mgps/activity/ForumProfileFavoritesActivity;)V

    invoke-virtual {v0, v1}, Lcom/join/android/app/component/video/MyVideoView;->setScreenChangedListener(Lcom/join/android/app/component/video/MyVideoView$h;)V

    .line 33
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->J:Landroid/widget/ImageView;

    new-instance v1, Lcom/join/mgps/activity/ForumProfileFavoritesActivity$m;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity$m;-><init>(Lcom/join/mgps/activity/ForumProfileFavoritesActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private receiveDelete(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->y0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 4
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    iget-object v2, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->z0:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    const/4 v0, 0x2

    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->P1(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->h:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {p1}, Landroid/widget/ListView;->requestLayout()V

    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->f1()V

    return-void
.end method

.method private receiveError(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->z0:Ljava/util/Map;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->C3(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    const/4 v0, 0x3

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->P1(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->f1()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private receiveStart(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->y0:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->E3(Ljava/util/List;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->z0:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->z0:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->y0:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->z0:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->P1(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->f1()V

    return-void
.end method

.method private receiveSuccess(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->z0:Ljava/util/Map;

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->y0:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->z0:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->P1(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->z0:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-nez v0, :cond_2

    return-void

    .line 7
    :cond_2
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 8
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCfg_ver()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSource_ver()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSource_ver(Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->h:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {p1}, Landroid/widget/ListView;->requestLayout()V

    .line 12
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->f1()V

    :cond_3
    :goto_0
    return-void
.end method

.method private s1()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->y0:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->y0:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v2

    invoke-virtual {v2, v1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v1

    const/4 v2, 0x4

    .line 4
    invoke-virtual {p0, v1, v2}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->i1(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateProgressPartly()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->h:Lcom/join/mgps/customview/XListView2;

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->g:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget v1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->D0:I

    :goto_0
    iget v2, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->C0:I

    if-gt v1, v2, :cond_5

    .line 4
    iget-object v2, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->g:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;

    invoke-virtual {v2, v1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->getItemViewType(I)I

    move-result v2

    sget-object v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;->GAME_ITEM:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    iget-object v2, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->g:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;

    invoke-virtual {v2, v1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$b;

    .line 6
    invoke-virtual {v2}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$b;->a()Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 7
    invoke-virtual {v2}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$b;->a()Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->getGame()Lcom/join/mgps/dto/CollectionBeanSub;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {v2}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$b;->a()Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v3

    .line 9
    invoke-virtual {v2}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$b;->a()Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->getGame()Lcom/join/mgps/dto/CollectionBeanSub;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 10
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_3

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v2

    const/16 v4, 0xc

    if-ne v2, v4, :cond_4

    .line 11
    :cond_3
    iget v2, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->D0:I

    sub-int v2, v1, v2

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 12
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;

    if-eqz v4, :cond_4

    .line 13
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v4

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/join/android/app/common/servcie/a;->f(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v4

    .line 14
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;

    invoke-virtual {p0, v2, v3, v4}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->Q1(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    const/4 v2, 0x4

    .line 15
    invoke-virtual {p0, v4, v2}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->P1(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method


# virtual methods
.method A1(Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->z1(Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;)V

    .line 2
    new-instance v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0;

    sget-object v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;->GAME_ITEM:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;

    new-instance v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$b;

    invoke-direct {v2, p1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$b;-><init>(Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;)V

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0;-><init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->f:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method E1()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->G:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0, p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->T0(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->F:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070ca1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 6
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070c9d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 7
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070c9c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    if-eqz v0, :cond_2

    .line 8
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->F:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2, v3, v2, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->G:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->postInvalidate()V

    return-void
.end method

.method F1()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->h:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->setNoMore()V

    return-void
.end method

.method G1(Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->D:Landroid/view/View;

    if-nez v0, :cond_1

    const v0, 0x7f090169

    .line 2
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->D:Landroid/view/View;

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->C:Lcom/join/mgps/customview/e;

    if-nez v0, :cond_2

    .line 4
    invoke-static {p0}, Lcom/join/mgps/customview/f;->z(Landroid/content/Context;)Lcom/join/mgps/customview/f;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->C:Lcom/join/mgps/customview/e;

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->C:Lcom/join/mgps/customview/e;

    iget-object v1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->B:Lcom/join/mgps/customview/e$d;

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/e;->m(Lcom/join/mgps/customview/e$d;)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->C:Lcom/join/mgps/customview/e;

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->C:Lcom/join/mgps/customview/e;

    iget-object v1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->D:Landroid/view/View;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/customview/e;->p(Landroid/view/View;[Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method H1()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/a0;->c0(Landroid/content/Context;)Lcom/join/mgps/Util/a0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/z;->m(Landroid/content/Context;)V

    return-void
.end method

.method I1()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    return-void
.end method

.method J0(ILjava/lang/String;)V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 4
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 5
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 6
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 8
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const-string v1, ""

    .line 9
    :goto_1
    new-instance v3, Lcom/join/mgps/dto/RequestdetialFolowAndBeSpeak;

    invoke-direct {v3}, Lcom/join/mgps/dto/RequestdetialFolowAndBeSpeak;-><init>()V

    .line 10
    invoke-virtual {v3, v1}, Lcom/join/mgps/dto/RequestdetialFolowAndBeSpeak;->setApp_ver(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v3, p2}, Lcom/join/mgps/dto/RequestdetialFolowAndBeSpeak;->setGame_id(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v3, v2}, Lcom/join/mgps/dto/RequestdetialFolowAndBeSpeak;->setUid(I)V

    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getMobile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/join/mgps/dto/RequestdetialFolowAndBeSpeak;->setMobile(Ljava/lang/String;)V

    .line 14
    invoke-static {p0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/join/mgps/Util/RequestBeanUtil;->getDetialFollowAnd(Lcom/join/mgps/dto/RequestdetialFolowAndBeSpeak;)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    goto :goto_2

    .line 15
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->z:Lcom/join/mgps/rpc/d;

    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/d;->d0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object v1

    goto :goto_2

    .line 16
    :cond_2
    iget-object v1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->z:Lcom/join/mgps/rpc/d;

    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/d;->o(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object v1

    goto :goto_2

    .line 17
    :cond_3
    iget-object v1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->z:Lcom/join/mgps/rpc/d;

    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/d;->D(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object v1

    goto :goto_2

    .line 18
    :cond_4
    iget-object v1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->z:Lcom/join/mgps/rpc/d;

    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/d;->O0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object v1

    :goto_2
    if-eqz v1, :cond_5

    .line 19
    invoke-virtual {p0, v1, p1, p2}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->R1(Lcom/join/mgps/dto/ResultMainBean;ILjava/lang/String;)V

    goto :goto_3

    .line 20
    :cond_5
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const p2, 0x7f110122

    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    goto :goto_3

    .line 21
    :cond_6
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const p2, 0x7f110227

    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method K0(I)V
    .locals 7
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->x:I

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    if-ne p1, v1, :cond_1

    .line 2
    iput v1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->x:I

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->d:Lcom/join/mgps/customview/ForumLoadingView;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    goto/16 :goto_1

    :cond_1
    const/4 v1, 0x0

    if-nez p1, :cond_2

    .line 4
    iput v1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->x:I

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->d:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {p1}, Lcom/join/mgps/customview/ForumLoadingView;->m()V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->d:Lcom/join/mgps/customview/ForumLoadingView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    goto/16 :goto_1

    :cond_2
    or-int/2addr p1, v0

    .line 7
    iput p1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->x:I

    const/16 p1, 0x1f

    const/16 v0, 0x1a

    const/16 v2, 0x16

    const/16 v3, -0xb

    .line 8
    invoke-virtual {p0, v3}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->L0(I)Z

    move-result v3

    const/16 v4, 0x9

    const-string v5, "\u7f51\u7edc\u8fde\u63a5\u5931\u8d25\uff0c\u518d\u8bd5\u8bd5\u5427~"

    const/16 v6, 0x10

    if-eqz v3, :cond_3

    .line 9
    iput v6, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->x:I

    .line 10
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->d:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {p1, v5}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedMsg(Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->d:Lcom/join/mgps/customview/ForumLoadingView;

    new-instance v0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity$c;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity$c;-><init>(Lcom/join/mgps/activity/ForumProfileFavoritesActivity;Lcom/join/mgps/customview/ForumLoadingView;)V

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 12
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->d:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {p1, v4}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    goto :goto_1

    .line 13
    :cond_3
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->L0(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 14
    iput v6, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->x:I

    .line 15
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->d:Lcom/join/mgps/customview/ForumLoadingView;

    const-string v0, "\u8fd8\u6ca1\u6709\u6536\u85cf\u5185\u5bb9~"

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedMsg(Ljava/lang/String;)V

    .line 16
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->d:Lcom/join/mgps/customview/ForumLoadingView;

    new-instance v0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity$d;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity$d;-><init>(Lcom/join/mgps/activity/ForumProfileFavoritesActivity;Lcom/join/mgps/customview/ForumLoadingView;)V

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 17
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->d:Lcom/join/mgps/customview/ForumLoadingView;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 18
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->d:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->setReloadingVisibility(I)V

    .line 19
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->d:Lcom/join/mgps/customview/ForumLoadingView;

    const v0, 0x7f0809bc

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedReloadingRes(I)V

    goto :goto_1

    .line 20
    :cond_4
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->L0(I)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->L0(I)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    const/16 p1, 0x11

    .line 21
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->L0(I)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 22
    iput v6, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->x:I

    .line 23
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->d:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {p1, v5}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedMsg(Ljava/lang/String;)V

    .line 24
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->d:Lcom/join/mgps/customview/ForumLoadingView;

    new-instance v0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity$f;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity$f;-><init>(Lcom/join/mgps/activity/ForumProfileFavoritesActivity;Lcom/join/mgps/customview/ForumLoadingView;)V

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 25
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->d:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {p1, v4}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    goto :goto_1

    .line 26
    :cond_6
    :goto_0
    iput v6, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->x:I

    .line 27
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->d:Lcom/join/mgps/customview/ForumLoadingView;

    const-string v0, "\u52a0\u8f7d\u5931\u8d25\uff0c\u518d\u8bd5\u8bd5\u5427~"

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedMsg(Ljava/lang/String;)V

    .line 28
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->d:Lcom/join/mgps/customview/ForumLoadingView;

    new-instance v0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity$e;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity$e;-><init>(Lcom/join/mgps/activity/ForumProfileFavoritesActivity;Lcom/join/mgps/customview/ForumLoadingView;)V

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 29
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->d:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {p1, v6}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    :cond_7
    :goto_1
    return-void
.end method

.method K1(Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->A:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/join/mgps/Util/a0;->c0(Landroid/content/Context;)Lcom/join/mgps/Util/a0;

    move-result-object v1

    new-instance v7, Lcom/join/mgps/activity/ForumProfileFavoritesActivity$u;

    invoke-direct {v7, p0, p1}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity$u;-><init>(Lcom/join/mgps/activity/ForumProfileFavoritesActivity;Ljava/lang/String;)V

    const-string v3, "\u53d6\u6d88\u6536\u85cf"

    const-string v4, "\u786e\u5b9a\u8981\u53d6\u6d88\u6536\u85cf\u5417\uff1f"

    const-string v5, "\u53d6\u6d88"

    const-string v6, "\u786e\u5b9a"

    move-object v2, p0

    invoke-virtual/range {v1 .. v7}, Lcom/join/mgps/Util/z;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ll1/b;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->A:Landroid/app/Dialog;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->A:Landroid/app/Dialog;

    const v1, 0x7f09036b

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 4
    new-instance v1, Lcom/join/mgps/activity/ForumProfileFavoritesActivity$v;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity$v;-><init>(Lcom/join/mgps/activity/ForumProfileFavoritesActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->A:Landroid/app/Dialog;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->A:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method

.method L0(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->x:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method M0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->f:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method M1()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->H:Lcom/join/android/app/component/video/MyVideoView;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/video/MyVideoView;->seekTo(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->H:Lcom/join/android/app/component/video/MyVideoView;

    invoke-virtual {v0}, Lcom/join/android/app/component/video/MyVideoView;->I()V

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->o0:I

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->H:Lcom/join/android/app/component/video/MyVideoView;

    invoke-virtual {v0}, Lcom/join/android/app/component/video/MyVideoView;->G()V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->K:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->n0:Lcom/join/android/app/component/video/MediaController;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/widget/MediaController;->setVisibility(I)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->J:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->F:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 11
    iput-boolean v1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->s0:Z

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->O1()V

    :cond_2
    :goto_0
    return-void
.end method

.method N0(Landroid/content/Context;I)V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {p1, p2}, Lcom/join/mgps/Util/i0;->c0(Landroid/content/Context;I)Lcom/join/mgps/dto/ForumRequestBean$ForumPostsDeleteRequestBean;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->j:Lcom/join/mgps/rpc/h;

    invoke-static {p1, p2}, Lcom/join/mgps/Util/i0;->c0(Landroid/content/Context;I)Lcom/join/mgps/dto/ForumRequestBean$ForumPostsDeleteRequestBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsDeleteRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/join/mgps/rpc/h;->q0(Ljava/util/Map;)Lcom/join/mgps/dto/ForumResponse;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/join/mgps/dto/ForumData$ForumPostsDeleteData;

    :cond_0
    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumPostsDeleteData;->isResult()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 5
    :goto_0
    invoke-virtual {p0, p2, p1}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->g1(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 6
    :catch_0
    :try_start_1
    invoke-virtual {p0, p2, v0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->g1(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_1
    return-void

    .line 7
    :goto_2
    throw p1
.end method

.method N1()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->h:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->i()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->n:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->n:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method

.method O1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->H:Lcom/join/android/app/component/video/MyVideoView;

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->r0:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/join/android/app/component/video/MyVideoView;->setFullScreen(Z)V

    :cond_0
    return-void
.end method

.method P0(Ljava/lang/String;)V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "\u83b7\u53d6\u6e38\u620f\u4fe1\u606f\u5931\u8d25"

    if-eqz v0, :cond_5

    .line 2
    iget v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->F0:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 5
    :goto_0
    invoke-static {p0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v2, v4}, Lcom/join/mgps/Util/RequestBeanUtil;->getAppDetialBean(Ljava/lang/String;ILcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/RecomRequestBean;

    move-result-object p1

    .line 6
    iget-object v2, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->E0:Lcom/join/mgps/rpc/d;

    invoke-interface {v2, p1}, Lcom/join/mgps/rpc/d;->R(Lcom/join/mgps/dto/RecomRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    move-result v2

    if-eqz v2, :cond_2

    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_4

    .line 10
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/DetailResultBean;

    .line 11
    iget-boolean v2, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->G0:Z

    if-eqz v2, :cond_4

    .line 12
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->startDown(Lcom/join/mgps/dto/DetailResultBean;)V

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    move-result p1

    if-eqz p1, :cond_3

    .line 14
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->showToast(Ljava/lang/String;)V

    goto :goto_1

    .line 15
    :cond_3
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->showToast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 16
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 17
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->showToast(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    :cond_4
    :goto_1
    iput v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->F0:I

    .line 19
    iput-boolean v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->G0:Z

    goto :goto_3

    .line 20
    :goto_2
    iput v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->F0:I

    .line 21
    iput-boolean v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->G0:Z

    .line 22
    throw p1

    .line 23
    :cond_5
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->showToast(Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method P1(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 5

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    .line 1
    sget-object v2, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->H0:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "event="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "downloadTask="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->S0(Ljava/lang/String;)Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_3

    if-eq p2, v3, :cond_3

    if-eq p2, v4, :cond_2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 4
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 5
    :cond_3
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    :goto_0
    return-void
.end method

.method Q0()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    iput-boolean v2, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->r0:Z

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->L1()V

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->E1()V

    .line 5
    invoke-virtual {p0, v2, v2}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->j1(II)V

    goto :goto_1

    .line 6
    :cond_1
    iput-boolean v1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->r0:Z

    .line 7
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->U0()V

    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->w1()Landroid/widget/RelativeLayout$LayoutParams;

    :goto_1
    return-void
.end method

.method Q1(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 8

    if-nez p3, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    invoke-virtual {p3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    mul-double v0, v0, v2

    mul-double v0, v0, v2

    double-to-long v0, v0

    .line 2
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v4, 0x0

    const-string v6, "/"

    cmp-long v7, v2, v4

    if-nez v7, :cond_1

    .line 3
    :try_start_1
    iget-object v2, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->j:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v2, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->j:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    :goto_0
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    .line 6
    iget-object v0, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->m:Landroid/widget/ProgressBar;

    invoke-virtual {p3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_1

    .line 7
    :cond_2
    iget-object v0, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->l:Landroid/widget/ProgressBar;

    invoke-virtual {p3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 8
    :goto_1
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    .line 9
    iget-object p1, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->k:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/S"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_2
    return-void
.end method

.method R0(I)Lcom/join/mgps/dto/ForumBean$ForumPostsBean;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->e:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;

    .line 5
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 6
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->getPost()Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 7
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->getPost()Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v2

    if-ne p1, v2, :cond_1

    :cond_2
    return-object v1
.end method

.method R1(Lcom/join/mgps/dto/ResultMainBean;ILjava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    move-result p2

    if-ne p2, v0, :cond_2

    .line 2
    invoke-virtual {p0, p3}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->S0(Ljava/lang/String;)Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->e:Ljava/util/List;

    if-eqz p2, :cond_1

    .line 4
    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 5
    iget-object p2, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->e:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 6
    invoke-static {p1}, Lcom/join/mgps/Util/i0;->h1(Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;)V

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->f1()V

    goto :goto_0

    .line 8
    :cond_2
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p2

    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getError_info()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method S0(Ljava/lang/String;)Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;

    .line 2
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->getGame()Lcom/join/mgps/dto/CollectionBeanSub;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->getGame()Lcom/join/mgps/dto/CollectionBeanSub;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->getGame()Lcom/join/mgps/dto/CollectionBeanSub;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method S1()Z
    .locals 1

    .line 1
    invoke-direct {p0, p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->accountBean(Landroid/content/Context;)Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->isTourist()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method T0(Landroid/content/Context;)I
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    iget v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->v0:I

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const v1, 0x3fe66666    # 1.8f

    const v2, 0x7f070ca1

    .line 4
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    sub-int/2addr v0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    int-to-float v0, v0

    mul-float v0, v0, p1

    div-float/2addr v0, v1

    float-to-int p1, v0

    .line 5
    iput p1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->v0:I

    .line 6
    :cond_1
    iget p1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->v0:I

    return p1
.end method

.method public T1(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->i:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->i:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method U1(Landroid/widget/AbsListView;III)V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->h1()V

    return-void
.end method

.method V0()V
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/c0;->d(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->getDownloadTaskInfo()V

    .line 3
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0}, Lg1/f;->d()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->y0:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->y0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 6
    iget-object v2, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->z0:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Lcom/join/mgps/rpc/impl/c;->P1()Lcom/join/mgps/rpc/impl/c;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->E0:Lcom/join/mgps/rpc/d;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method V1(Landroid/widget/AbsListView;I)V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->Y0()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->n1(Z)V

    .line 2
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getImagePipeline()Lcom/facebook/imagepipeline/core/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/g;->H()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getImagePipeline()Lcom/facebook/imagepipeline/core/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/g;->N()V

    :cond_0
    return-void
.end method

.method public W0()V
    .locals 0

    return-void
.end method

.method Y0()Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->E:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->h:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 3
    iget-object v2, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->h:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v2}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v2

    .line 4
    iget v3, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->E:I

    sub-int/2addr v0, v1

    if-lt v3, v0, :cond_1

    if-gt v3, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method Z0()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->a1()V

    return-void
.end method

.method a1()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const/16 v0, 0x12

    .line 1
    :try_start_0
    invoke-static {}, Ln1/t;->p()Ln1/t;

    move-result-object v1

    sget-object v2, Lcom/join/mgps/dto/ForumBean$ForumEvent;->MyProfileFavorites:Lcom/join/mgps/dto/ForumBean$ForumEvent;

    invoke-virtual {v1, v2}, Ln1/t;->o(Lcom/join/mgps/dto/ForumBean$ForumEvent;)Lcom/join/mgps/db/tables/ForumTable;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Lcom/join/mgps/db/tables/ForumTable;->getArgs1()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->K0(I)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {v1}, Lcom/join/mgps/db/tables/ForumTable;->getArgs1()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/i0;->J(Ljava/lang/String;)Lcom/join/mgps/dto/ForumData$ForumUserFavoritesDatas;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesDatas;->getFavorites_list()Ljava/util/List;

    move-result-object v2

    :cond_1
    if-eqz v2, :cond_2

    .line 6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    .line 7
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v1

    sget v1, Lcom/join/mgps/Util/i0;->d:I

    int-to-float v1, v1

    div-float/2addr v3, v1

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v1, v3

    iput v1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->o:I

    .line 8
    invoke-virtual {p0, v2, v1}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->r1(Ljava/util/List;I)V

    const/16 v1, 0x20

    .line 9
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->K0(I)V

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->K0(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 11
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->K0(I)V

    .line 12
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method afterViews()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/f;->A0()Lcom/join/mgps/rpc/impl/f;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->j:Lcom/join/mgps/rpc/h;

    .line 2
    invoke-static {}, Lcom/join/mgps/rpc/impl/c;->P1()Lcom/join/mgps/rpc/impl/c;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->z:Lcom/join/mgps/rpc/d;

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->V0()V

    .line 4
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->X0()V

    .line 5
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->d1()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method b1(I)V
    .locals 12
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const-string v5, ""

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    const/4 v8, 0x0

    const/4 v9, -0x1

    if-eqz v0, :cond_c

    .line 2
    iget v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->p:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-ne v0, v9, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->N1()V

    .line 4
    :cond_1
    iput p1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->p:I

    const/16 v10, 0x18

    const/4 v11, 0x1

    if-le p1, v11, :cond_2

    .line 5
    :try_start_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->I1()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :catch_0
    move-exception p1

    goto/16 :goto_4

    .line 6
    :cond_2
    :goto_0
    :try_start_1
    invoke-static {p0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    invoke-static {}, Lcom/join/mgps/Util/RequestBeanUtil;->getVersionAndVersionName()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v6, v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 7
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v6, v5

    .line 8
    :goto_1
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->T(Landroid/content/Context;)Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    .line 9
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->Y0(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 10
    iget-object v1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->j:Lcom/join/mgps/rpc/h;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v2

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/join/mgps/Util/i0;->d:I

    const/4 v7, 0x2

    move-object v0, v1

    move v1, v2

    move-object v2, v3

    move v3, p1

    invoke-interface/range {v0 .. v7}, Lcom/join/mgps/rpc/h;->y(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;I)Lcom/join/mgps/dto/ForumResponse;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesDatas;

    if-ne p1, v11, :cond_3

    .line 12
    invoke-static {v0}, Lcom/join/mgps/Util/i0;->s1(Lcom/join/mgps/dto/ForumData$ForumUserFavoritesDatas;)V

    :cond_3
    if-eqz v0, :cond_6

    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesDatas;->getFavorites_list()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 14
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_4

    .line 15
    iput p1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->o:I

    .line 16
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->r1(Ljava/util/List;I)V

    goto :goto_2

    .line 17
    :cond_4
    iput v9, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->p:I

    .line 18
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_5

    if-ne p1, v11, :cond_5

    const/16 p1, 0x14

    .line 19
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->K0(I)V

    goto :goto_3

    :cond_5
    const/16 p1, 0x20

    .line 20
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->K0(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 21
    :cond_6
    iget p1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->p:I

    if-eq p1, v9, :cond_7

    .line 22
    iput v8, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->p:I

    .line 23
    :cond_7
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->N1()V

    return-void

    .line 24
    :cond_8
    :try_start_3
    iput v8, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->p:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 25
    iput v8, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->p:I

    .line 26
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->N1()V

    return-void

    .line 27
    :cond_9
    :try_start_4
    invoke-virtual {p0, v10}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->K0(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 28
    :goto_3
    iget p1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->p:I

    if-eq p1, v9, :cond_a

    goto :goto_5

    .line 29
    :goto_4
    :try_start_5
    invoke-virtual {p0, v10}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->K0(I)V

    .line 30
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 31
    iget p1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->p:I

    if-eq p1, v9, :cond_a

    .line 32
    :goto_5
    iput v8, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->p:I

    .line 33
    :cond_a
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->N1()V

    goto :goto_7

    .line 34
    :goto_6
    iget v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->p:I

    if-eq v0, v9, :cond_b

    .line 35
    iput v8, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->p:I

    .line 36
    :cond_b
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->N1()V

    .line 37
    throw p1

    .line 38
    :cond_c
    iget p1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->p:I

    if-eq p1, v9, :cond_d

    .line 39
    iput v8, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->p:I

    :cond_d
    const p1, 0x7f110206

    .line 40
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->showToast(Ljava/lang/String;)V

    const/16 p1, 0x11

    .line 41
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->K0(I)V

    .line 42
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->N1()V

    :goto_7
    return-void
.end method

.method back_image()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public callbackPlayVideo(Landroid/os/Bundle;)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "key_mediacmd"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_mediacmd_params"

    .line 2
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "callbackPlayVideo"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cmd="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "params="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v2, v6

    invoke-static {v2}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 4
    sget-object v2, Lcom/join/mgps/activity/ForumProfileFavoritesActivity$MediaCmd;->CMD_PLAY:Lcom/join/mgps/activity/ForumProfileFavoritesActivity$MediaCmd;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v0, 0x0

    move-object v2, v0

    const/4 v3, 0x0

    .line 5
    :goto_0
    array-length v7, p1

    if-ge v3, v7, :cond_5

    .line 6
    aget-object v7, p1, v3

    check-cast v7, Ljava/lang/String;

    if-eqz v3, :cond_3

    if-eq v3, v5, :cond_2

    if-eq v3, v6, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, v7

    goto :goto_1

    :cond_2
    move-object v0, v7

    goto :goto_1

    .line 7
    :cond_3
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 8
    iget v8, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->o0:I

    if-ne v7, v8, :cond_4

    return-void

    .line 9
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->M1()V

    .line 10
    iput v7, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->o0:I

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    new-array p1, v1, [Ljava/lang/String;

    const-string v1, "CMD_PLAY"

    aput-object v1, p1, v4

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "videoUrl="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "coverUrl="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v6

    invoke-static {p1}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->F:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 13
    iput-boolean v5, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->s0:Z

    .line 14
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->E1()V

    .line 15
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->m1(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 16
    :cond_6
    sget-object v2, Lcom/join/mgps/activity/ForumProfileFavoritesActivity$MediaCmd;->CMD_PLAY_BACKGROUND:Lcom/join/mgps/activity/ForumProfileFavoritesActivity$MediaCmd;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 17
    iget v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->o0:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    return-void

    .line 18
    :cond_7
    aget-object p1, p1, v4

    check-cast p1, Ljava/lang/String;

    .line 19
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 20
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->F:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 21
    iput-boolean v4, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->s0:Z

    .line 22
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->M1()V

    goto/16 :goto_4

    .line 23
    :cond_8
    iget p1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->o0:I

    if-ne p1, v1, :cond_9

    return-void

    .line 24
    :cond_9
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->F:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 25
    iput-boolean v5, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->s0:Z

    goto/16 :goto_4

    .line 26
    :cond_a
    sget-object v2, Lcom/join/mgps/activity/ForumProfileFavoritesActivity$MediaCmd;->CMD_PAUSE:Lcom/join/mgps/activity/ForumProfileFavoritesActivity$MediaCmd;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 27
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->l1()V

    goto/16 :goto_4

    .line 28
    :cond_b
    sget-object v2, Lcom/join/mgps/activity/ForumProfileFavoritesActivity$MediaCmd;->CMD_STOP:Lcom/join/mgps/activity/ForumProfileFavoritesActivity$MediaCmd;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 29
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->M1()V

    goto/16 :goto_4

    .line 30
    :cond_c
    sget-object v2, Lcom/join/mgps/activity/ForumProfileFavoritesActivity$MediaCmd;->CMD_FULLSCREEN:Lcom/join/mgps/activity/ForumProfileFavoritesActivity$MediaCmd;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const-string v0, "false"

    const/4 v1, 0x0

    .line 31
    :goto_2
    array-length v2, p1

    if-ge v1, v2, :cond_f

    if-nez v1, :cond_d

    .line 32
    aget-object v0, p1, v4

    check-cast v0, Ljava/lang/String;

    :cond_d
    if-ne v1, v5, :cond_e

    .line 33
    aget-object v2, p1, v5

    check-cast v2, Ljava/lang/String;

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 34
    :cond_f
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 35
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->Q0()V

    goto :goto_4

    .line 36
    :cond_10
    sget-object v2, Lcom/join/mgps/activity/ForumProfileFavoritesActivity$MediaCmd;->CMD_TRANSLATE_Y:Lcom/join/mgps/activity/ForumProfileFavoritesActivity$MediaCmd;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "0"

    move-object v2, v0

    const/4 v3, 0x0

    .line 37
    :goto_3
    array-length v7, p1

    if-ge v3, v7, :cond_13

    if-nez v3, :cond_11

    .line 38
    aget-object v0, p1, v4

    check-cast v0, Ljava/lang/String;

    :cond_11
    if-ne v3, v5, :cond_12

    .line 39
    aget-object v2, p1, v5

    check-cast v2, Ljava/lang/String;

    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 40
    :cond_13
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 41
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "CMD_TRANSLATE_Y"

    aput-object v2, v1, v4

    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "top="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "offset="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v1}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->j1(II)V

    :cond_14
    :goto_4
    return-void
.end method

.method changeDownloadTaskNumber(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-eq p2, v1, :cond_9

    const/4 v1, 0x3

    if-eq p2, v1, :cond_8

    const/4 v1, 0x5

    if-eq p2, v1, :cond_6

    const/4 v1, 0x6

    if-eq p2, v1, :cond_5

    const/4 v1, 0x7

    if-eq p2, v1, :cond_3

    const/16 v1, 0xa

    if-eq p2, v1, :cond_1

    const/16 p1, 0xb

    if-eq p2, p1, :cond_7

    goto/16 :goto_0

    .line 2
    :cond_1
    iget-object p2, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->A0:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 3
    iget-object p2, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->A0:Ljava/util/Map;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_2
    iget-object p2, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->B0:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    .line 5
    iget-object p2, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->B0:Ljava/util/Map;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->A0:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->A0:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->B0:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->B0:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 10
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->B0:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->B0:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 12
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->A0:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 13
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->A0:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->B0:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 15
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->B0:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 16
    :cond_8
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->B0:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 17
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->B0:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 18
    :cond_9
    iget-object p2, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->A0:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    .line 19
    iget-object p2, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->A0:Ljava/util/Map;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :cond_a
    iget-object p2, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->B0:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    .line 21
    iget-object p2, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->B0:Ljava/util/Map;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :cond_b
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->updateDownloadView()V

    return-void
.end method

.method e1()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->g:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;

    iget-object v1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->P(Ljava/util/List;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->g:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;

    invoke-virtual {v0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method declared-synchronized f1()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->f:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->f:Ljava/util/List;

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->e:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->D1(Ljava/util/List;)V

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->e1()V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->e:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->x:I

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->d:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {v0}, Lcom/join/mgps/customview/ForumLoadingView;->m()V

    const/16 v0, 0x16

    .line 9
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->K0(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method g1(IZ)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    if-eqz p2, :cond_2

    .line 1
    iget-object p2, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->e:Ljava/util/List;

    const/4 v0, 0x2

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-eqz p2, :cond_1

    .line 2
    iget-object p2, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->e:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 3
    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;

    .line 5
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->getType()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 6
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->getPost()Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->getPost()Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 8
    iget-object p2, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->e:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->N1()V

    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->f1()V

    .line 11
    :cond_1
    new-instance p2, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;

    invoke-direct {p2}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;-><init>()V

    .line 12
    invoke-virtual {p2, v0}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->setType(I)V

    .line 13
    new-instance v0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;-><init>()V

    .line 14
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setPid(I)V

    .line 15
    invoke-virtual {p2, v0}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->setPost(Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V

    .line 16
    invoke-static {p2}, Lcom/join/mgps/Util/i0;->h1(Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;)V

    .line 17
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string p2, "\u5220\u9664\u6210\u529f"

    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 18
    :cond_2
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string p2, "\u5220\u9664\u5931\u8d25"

    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method getDownloadTaskInfo()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0}, Lg1/f;->r()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v1

    invoke-virtual {v1}, Lg1/f;->q()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 5
    iget-object v3, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->A0:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 8
    iget-object v2, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->B0:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->updateDownloadView()V

    return-void
.end method

.method h1()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->E:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->h:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->h:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v2}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v2

    .line 4
    iget v3, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->E:I

    add-int/lit8 v4, v1, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lt v3, v4, :cond_1

    if-gt v3, v2, :cond_1

    .line 5
    invoke-virtual {p0, v6}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->n1(Z)V

    .line 6
    iget v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->E:I

    sub-int/2addr v0, v1

    add-int/2addr v0, v6

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0, v5}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->n1(Z)V

    .line 8
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->h:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 9
    iget-object v1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getBottom()I

    move-result v1

    .line 10
    iget-object v2, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->h:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v2}, Landroid/widget/ListView;->getTop()I

    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 12
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 13
    sget-object v3, Lcom/join/mgps/activity/MGMainActivity$MediaCmd;->CMD_TRANSLATE_Y:Lcom/join/mgps/activity/MGMainActivity$MediaCmd;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    const-string v4, "key_mediacmd"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    .line 14
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    const-string v0, "key_mediacmd_params"

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->callbackPlayVideo(Landroid/os/Bundle;)V

    :cond_2
    return-void
.end method

.method i1(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 4

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_2

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->e:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;

    .line 3
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->getGame()Lcom/join/mgps/dto/CollectionBeanSub;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 6
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 9
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->getPost()Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 10
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getRelation_game()Lcom/join/mgps/dto/ForumBean$GameInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 11
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getRelation_game()Lcom/join/mgps/dto/ForumBean$GameInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 12
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getRelation_game()Lcom/join/mgps/dto/ForumBean$GameInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 13
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getRelation_game()Lcom/join/mgps/dto/ForumBean$GameInfo;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/ForumBean$GameInfo;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    :goto_1
    or-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    .line 14
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->f1()V

    :cond_3
    return-void
.end method

.method j1(II)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->F:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTop()I

    move-result p1

    .line 3
    iget-object p2, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->F:Landroid/widget/FrameLayout;

    neg-int p1, p1

    int-to-float p1, p1

    invoke-static {p2, p1}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    return-void

    .line 4
    :cond_1
    iput p1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->t0:I

    .line 5
    iput p2, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->u0:I

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/String;

    const-string p2, "offsetContainer"

    aput-object p2, p1, v3

    .line 6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mTop="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->t0:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mOffsetY="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->u0:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v2

    invoke-static {p1}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->F:Landroid/widget/FrameLayout;

    iget p2, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->u0:I

    int-to-float p2, p2

    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    return-void
.end method

.method k1(Lcom/join/mgps/dto/CollectionBeanSub;)V
    .locals 2
    .param p1    # Lcom/join/mgps/dto/CollectionBeanSub;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
            value = "gameData"
        .end annotation
    .end param
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.android.app.mgsim.wufun.broadcast.paygamefinish",
            "com.join.android.app.mgsim.wufun.broadcast.refreshMyGame"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-static {}, Ln1/e0;->o()Ln1/e0;

    move-result-object v0

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln1/e0;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/PurchasedListTable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/join/mgps/db/tables/PurchasedListTable;

    invoke-direct {v0}, Lcom/join/mgps/db/tables/PurchasedListTable;-><init>()V

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/db/tables/PurchasedListTable;->setGame_id(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Ln1/e0;->o()Ln1/e0;

    move-result-object p1

    invoke-virtual {p1, v0}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->g:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method l1()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->H:Lcom/join/android/app/component/video/MyVideoView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Lcom/join/android/app/component/video/MyVideoView;->isPlaying()Z

    move-result v0

    and-int/2addr v0, v2

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->H:Lcom/join/android/app/component/video/MyVideoView;

    invoke-virtual {v0}, Lcom/join/android/app/component/video/MyVideoView;->pause()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->J:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method m1(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->p0:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->H:Lcom/join/android/app/component/video/MyVideoView;

    invoke-virtual {v0}, Lcom/join/android/app/component/video/MyVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->l1()V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->H:Lcom/join/android/app/component/video/MyVideoView;

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0}, Lcom/join/android/app/component/video/MyVideoView;->E()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->p0:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->H:Lcom/join/android/app/component/video/MyVideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/join/android/app/component/video/MyVideoView;->seekTo(I)V

    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->x1()V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->H:Lcom/join/android/app/component/video/MyVideoView;

    invoke-virtual {v0}, Lcom/join/android/app/component/video/MyVideoView;->G()V

    .line 9
    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->p0:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->q0:Ljava/lang/String;

    .line 11
    invoke-static {p1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 12
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->M1()V

    return-void

    .line 13
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->I:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 14
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->J:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 15
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->o1()V

    return-void
.end method

.method n1(Z)V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    sget-object v1, Lcom/join/mgps/activity/MGMainActivity$MediaCmd;->CMD_PLAY_BACKGROUND:Lcom/join/mgps/activity/MGMainActivity$MediaCmd;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_mediacmd"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "key_mediacmd_params"

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->callbackPlayVideo(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p1, 0x3

    if-ne p2, p1, :cond_0

    .line 2
    invoke-virtual {p0, p3}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->u1(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->T1(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->y:Lcom/join/android/app/component/video/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/join/android/app/component/video/c;->z()V

    .line 3
    :cond_0
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/c0;->e(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->M0()V

    .line 5
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onEventMainThread(Lcom/join/mgps/event/l;)V
    .locals 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/event/l;->a()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/event/l;->c()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->changeDownloadTaskNumber(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/event/l;->c()I

    move-result p1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_5

    const/4 v2, 0x3

    if-eq p1, v2, :cond_4

    const/4 v1, 0x5

    if-eq p1, v1, :cond_3

    const/4 v3, 0x6

    if-eq p1, v3, :cond_2

    const/4 v3, 0x7

    if-eq p1, v3, :cond_1

    const/16 v2, 0x8

    if-eq p1, v2, :cond_0

    const/16 v4, 0x30

    if-eq p1, v4, :cond_3

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 p1, 0x9

    .line 4
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 5
    :pswitch_1
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 6
    :pswitch_2
    invoke-virtual {p0, v0, v3}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->z0:Ljava/util/Map;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    .line 8
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->updateProgressPartly()V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p0, v0, v3}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 11
    :cond_3
    :pswitch_3
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 12
    :cond_4
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    :cond_5
    const/4 p1, 0x1

    .line 13
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    :cond_6
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onFavoriteChanged(IZ)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/BaseAppCompatActivity;->onFavoriteChanged(IZ)V

    xor-int/lit8 p2, p2, 0x1

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->g1(IZ)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->r0:Z

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->O1()V

    return p1

    .line 5
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->M1()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->y:Lcom/join/android/app/component/video/c;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/join/android/app/component/video/c;->A()V

    .line 4
    :cond_0
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->y:Lcom/join/android/app/component/video/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/join/android/app/component/video/c;->B()V

    .line 3
    :cond_0
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onResume()V

    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    add-int v0, p2, p3

    add-int/lit8 v0, v0, -0x1

    .line 1
    iput v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->C0:I

    .line 2
    iput p2, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->D0:I

    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->U1(Landroid/widget/AbsListView;III)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->y:Lcom/join/android/app/component/video/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/join/android/app/component/video/c;->e(Landroid/widget/AbsListView;III)V

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->V1(Landroid/widget/AbsListView;I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->y:Lcom/join/android/app/component/video/c;

    invoke-virtual {v0, p1, p2}, Lcom/join/android/app/component/video/c;->i(Landroid/widget/AbsListView;I)V

    return-void
.end method

.method p1(I)V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->Y0(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->L0(Landroid/content/Context;)V

    .line 3
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "\u5c1a\u672a\u767b\u5f55\uff0c\u8bf7\u5148\u767b\u5f55\uff01"

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-static {p0, p1}, Lcom/join/mgps/Util/i0;->e0(Landroid/content/Context;I)Lcom/join/mgps/dto/ForumRequestBean$ForumPostsPraiseRequestBean;

    move-result-object v0

    const-string v1, ""

    .line 5
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsPraiseRequestBean;->setDevice_id(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->j:Lcom/join/mgps/rpc/h;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsPraiseRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/join/mgps/rpc/h;->o(Ljava/util/Map;)Lcom/join/mgps/dto/ForumResponse;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 7
    :cond_1
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumResponse;->getError()I

    move-result v2

    const/16 v3, 0x2c2

    if-ne v2, v3, :cond_2

    .line 8
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->v1(I)V

    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->H1()V

    return-void

    .line 10
    :cond_2
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ForumData$ForumPostsPraiseData;

    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumData$ForumPostsPraiseData;->isResult()Z

    .line 12
    invoke-static {v0, p1}, Lcom/join/mgps/Util/i0;->m1(Lcom/join/mgps/dto/ForumRequestBean$ForumPostsPraiseRequestBean;Lcom/join/mgps/dto/ForumData$ForumPostsPraiseData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method q1(Lcom/join/mgps/dto/ForumBean$GameInfo;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 1
    :try_start_0
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    .line 2
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/ForumBean$GameInfo;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->z0:Ljava/util/Map;

    if-eqz p1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->y0:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->z0:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method r1(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;",
            ">;I)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 2
    iget-object p2, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->e:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 3
    iput v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->o:I

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->N1()V

    .line 5
    :cond_0
    iget-object p2, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->e:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->N1()V

    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->f1()V

    return-void
.end method

.method showMessage(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method

.method showToast(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method

.method startDown(Lcom/join/mgps/dto/DetailResultBean;)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getDownloadtaskDown()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->i1(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 3
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPay_game_amount()I

    move-result v1

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->n0(ILjava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/join/mgps/Util/UtilsMy;->m3(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->d1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/DetailResultBean;)V

    .line 6
    invoke-static {p0, v0}, Lcom/join/mgps/Util/UtilsMy;->T0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getDown_status()I

    move-result p1

    const/4 v1, 0x5

    if-ne p1, v1, :cond_3

    .line 8
    invoke-static {p0, v0}, Lcom/join/mgps/Util/UtilsMy;->R0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 9
    :cond_3
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTp_down_url()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getOther_down_switch()I

    move-result v1

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCdn_down_switch()I

    move-result v2

    invoke-static {p0, v0, p1, v1, v2}, Lcom/join/mgps/Util/UtilsMy;->F0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;II)V

    :cond_4
    :goto_0
    return-void
.end method

.method t1()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->s0:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->F:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->F:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method u1(Landroid/content/Intent;)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "pid"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "view"

    .line 2
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "comment"

    .line 3
    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "praise"

    .line 4
    invoke-virtual {p1, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "isPraise"

    .line 5
    invoke-virtual {p1, v5, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v5, 0x1

    const-string v6, "isFavorite"

    .line 6
    invoke-virtual {p1, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-nez v0, :cond_1

    return-void

    .line 7
    :cond_1
    iget-object v5, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->e:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 8
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 9
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;

    .line 10
    invoke-virtual {v6}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->getType()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    .line 11
    invoke-virtual {v6}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->getPost()Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 12
    invoke-virtual {v6}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->getPost()Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    move-result-object v6

    .line 13
    invoke-virtual {v6}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v7

    if-ne v7, v0, :cond_2

    .line 14
    invoke-virtual {v6, v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setView(I)V

    .line 15
    invoke-virtual {v6, v3}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setCommit(I)V

    .line 16
    invoke-virtual {v6, v4}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setPraise(I)V

    .line 17
    invoke-virtual {v6, v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setIs_praise(Z)V

    if-nez p1, :cond_3

    .line 18
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->e:Ljava/util/List;

    invoke-interface {p1, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 19
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->f1()V

    :cond_4
    return-void
.end method

.method updateDownloadView()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    return-void
.end method

.method updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    if-eqz p1, :cond_0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->receiveError(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 2
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->receiveSuccess(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 3
    :pswitch_2
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->s1()V

    goto :goto_0

    .line 4
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->receiveDelete(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 5
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->receiveStart(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method v1(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->e:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_4

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;

    .line 4
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->getPost()Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    .line 6
    :cond_2
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 7
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_praise()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPraise()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPraise()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    :goto_1
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setPraise(I)V

    .line 8
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_praise()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setIs_praise(Z)V

    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->f1()V

    :cond_4
    return-void
.end method

.method w1()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->F:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 3
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 4
    iget-object v3, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->F:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2, v2, v2, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 5
    :cond_0
    iget-object v3, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->G:Landroid/widget/RelativeLayout;

    if-nez v3, :cond_1

    return-object v0

    .line 6
    :cond_1
    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v3, :cond_2

    .line 7
    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 8
    :cond_2
    iget-object v1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->F:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setTop(I)V

    return-object v0
.end method

.method x1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->H:Lcom/join/android/app/component/video/MyVideoView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Lcom/join/android/app/component/video/MyVideoView;->E()Z

    move-result v0

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->K:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->I:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->J:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->H:Lcom/join/android/app/component/video/MyVideoView;

    invoke-virtual {v0}, Lcom/join/android/app/component/video/MyVideoView;->start()V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->n0:Lcom/join/android/app/component/video/MediaController;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->setVisibility(I)V

    goto :goto_1

    .line 7
    :cond_1
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->o1()V

    :cond_2
    :goto_1
    return-void
.end method

.method y1(Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0;

    sget-object v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;->FAVORITE_ITEM_HEADER:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;

    new-instance v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$a;

    const/4 v3, 0x0

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->getType()I

    move-result v4

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->getFav_time()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v3, v4, p1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$a;-><init>(ZILjava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0;-><init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->f:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method z1(Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;)V
    .locals 2

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->getGame()Lcom/join/mgps/dto/CollectionBeanSub;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->getGame()Lcom/join/mgps/dto/CollectionBeanSub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->getGame()Lcom/join/mgps/dto/CollectionBeanSub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->z0:Ljava/util/Map;

    if-eqz p1, :cond_2

    if-nez v0, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->y0:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->z0:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    return-void
.end method
