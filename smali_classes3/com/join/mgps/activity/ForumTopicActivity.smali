.class public Lcom/join/mgps/activity/ForumTopicActivity;
.super Lcom/BaseAppCompatActivity;
.source "ForumTopicActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/ForumTopicActivity$MediaCmd;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c0406
.end annotation


# static fields
.field public static final n0:Ljava/lang/String; = "key_forum_topic_bean"

.field public static final o0:Ljava/lang/String; = "key_mediacmd"

.field public static final p0:Ljava/lang/String; = "key_mediacmd_params"


# instance fields
.field A:Lcom/join/android/app/component/video/MediaController;

.field B:I

.field C:Ljava/lang/String;

.field D:Ljava/lang/String;

.field E:Z

.field F:Z

.field G:I

.field H:I

.field I:I

.field J:Lcom/join/mgps/customview/t;

.field K:Landroid/view/GestureDetector;

.field private a:Ljava/lang/String;

.field b:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field c:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Lcom/join/mgps/customview/ForumLoadingView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Lcom/join/mgps/customview/XListView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Lcom/join/mgps/rpc/h;

.field h:Lcom/join/mgps/customview/j;

.field i:Lcom/join/mgps/adapter/ForumTopicAdapter$k;

.field j:Lcom/join/mgps/dto/ExtBean;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field k:Lcom/join/mgps/adapter/ForumTopicAdapter;

.field volatile l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/ForumTopicAdapter$t;",
            ">;"
        }
    .end annotation
.end field

.field m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumPostsBean;",
            ">;"
        }
    .end annotation
.end field

.field n:Lcom/join/mgps/dto/ForumBean$ForumTopicBean;

.field o:I

.field p:I

.field q:Lcom/join/android/app/component/video/c;

.field r:Landroid/os/Handler;

.field s:Lcom/join/mgps/customview/e;

.field t:I

.field u:Landroid/widget/FrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field v:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field w:Lcom/join/android/app/component/video/MyVideoView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field x:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field y:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field z:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/BaseAppCompatActivity;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->a:Ljava/lang/String;

    .line 3
    new-instance v0, Lcom/join/mgps/activity/ForumTopicActivity$k;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumTopicActivity$k;-><init>(Lcom/join/mgps/activity/ForumTopicActivity;)V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->r:Landroid/os/Handler;

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->t:I

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->F:Z

    .line 6
    iput v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->G:I

    .line 7
    iput v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->H:I

    .line 8
    iput v1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->I:I

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->J:Lcom/join/mgps/customview/t;

    .line 10
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/join/mgps/activity/ForumTopicActivity$f;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumTopicActivity$f;-><init>(Lcom/join/mgps/activity/ForumTopicActivity;)V

    invoke-direct {v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->K:Landroid/view/GestureDetector;

    return-void
.end method

.method static synthetic D0(Lcom/join/mgps/activity/ForumTopicActivity;Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ForumTopicActivity;->isLogined(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static synthetic E0(Lcom/join/mgps/activity/ForumTopicActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->W0()V

    return-void
.end method

.method private G0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->l:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->m:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->n:Lcom/join/mgps/dto/ForumBean$ForumTopicBean;

    .line 6
    iput-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->j:Lcom/join/mgps/dto/ExtBean;

    .line 7
    iput-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->r:Landroid/os/Handler;

    .line 8
    iput-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->h:Lcom/join/mgps/customview/j;

    return-void
.end method

.method private I0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->J:Lcom/join/mgps/customview/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->J:Lcom/join/mgps/customview/t;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private N0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->b:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->f:Lcom/join/mgps/customview/XListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    return-void
.end method

.method private O0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->n:Lcom/join/mgps/dto/ForumBean$ForumTopicBean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumTopicBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->n:Lcom/join/mgps/dto/ForumBean$ForumTopicBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumTopicBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->c:Landroid/widget/TextView;

    const-string v1, "\u8bdd\u9898\u4e13\u533a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private P0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->f:Lcom/join/mgps/customview/XListView;

    sget v1, Lcom/join/mgps/Util/i0;->e:I

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView;->setPreLoadCount(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->f:Lcom/join/mgps/customview/XListView;

    new-instance v1, Lcom/join/mgps/activity/ForumTopicActivity$g;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumTopicActivity$g;-><init>(Lcom/join/mgps/activity/ForumTopicActivity;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView;->setPullLoadEnable(Lcom/join/mgps/customview/i;)V

    .line 3
    new-instance v0, Lcom/join/mgps/activity/ForumTopicActivity$h;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumTopicActivity$h;-><init>(Lcom/join/mgps/activity/ForumTopicActivity;)V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->h:Lcom/join/mgps/customview/j;

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->f:Lcom/join/mgps/customview/XListView;

    invoke-virtual {v1, v0}, Lcom/join/mgps/customview/XListView;->setPullRefreshEnable(Lcom/join/mgps/customview/j;)V

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->l:Ljava/util/List;

    .line 6
    new-instance v0, Lcom/join/android/app/component/video/c;

    iget-object v1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->a:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/join/android/app/component/video/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->q:Lcom/join/android/app/component/video/c;

    .line 7
    new-instance v0, Lcom/join/mgps/adapter/ForumTopicAdapter;

    iget-object v1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->q:Lcom/join/android/app/component/video/c;

    invoke-direct {v0, p0, v1}, Lcom/join/mgps/adapter/ForumTopicAdapter;-><init>(Landroid/content/Context;Lcom/join/android/app/component/video/c;)V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->k:Lcom/join/mgps/adapter/ForumTopicAdapter;

    .line 8
    iget-object v1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->f:Lcom/join/mgps/customview/XListView;

    invoke-virtual {v1, v0}, Lcom/join/mgps/customview/XListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->f:Lcom/join/mgps/customview/XListView;

    invoke-virtual {v0, p0}, Lcom/join/mgps/customview/XListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 10
    new-instance v0, Lcom/join/mgps/activity/ForumTopicActivity$i;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumTopicActivity$i;-><init>(Lcom/join/mgps/activity/ForumTopicActivity;)V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->i:Lcom/join/mgps/adapter/ForumTopicAdapter$k;

    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->k:Lcom/join/mgps/adapter/ForumTopicAdapter;

    invoke-virtual {v1, v0}, Lcom/join/mgps/adapter/ForumTopicAdapter;->x(Lcom/join/mgps/adapter/ForumTopicAdapter$k;)V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->f:Lcom/join/mgps/customview/XListView;

    new-instance v1, Lcom/join/mgps/activity/ForumTopicActivity$j;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumTopicActivity$j;-><init>(Lcom/join/mgps/activity/ForumTopicActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private Q0()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumTopicActivity;->F0(I)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->P0()V

    return-void
.end method

.method private V0()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumTopicActivity;->U0(I)V

    return-void
.end method

.method private W0()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumTopicActivity;->F0(I)V

    .line 2
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->V0()V

    goto :goto_0

    :cond_0
    const v0, 0x7f110206

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumTopicActivity;->showToast(Ljava/lang/String;)V

    const/16 v0, 0x9

    .line 5
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumTopicActivity;->F0(I)V

    :goto_0
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

.method private e1()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->C:Ljava/lang/String;

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->D:Ljava/lang/String;

    .line 3
    iget-object v2, p0, Lcom/join/mgps/activity/ForumTopicActivity;->x:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object v2, p0, Lcom/join/mgps/activity/ForumTopicActivity;->x:Lcom/facebook/drawee/view/SimpleDraweeView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 5
    iget-object v2, p0, Lcom/join/mgps/activity/ForumTopicActivity;->x:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v2, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->z:Landroid/widget/LinearLayout;

    .line 7
    iget-object v2, p0, Lcom/join/mgps/activity/ForumTopicActivity;->A:Lcom/join/android/app/component/video/MediaController;

    const/16 v4, 0x8

    if-nez v2, :cond_0

    .line 8
    new-instance v2, Lcom/join/android/app/component/video/MediaController;

    invoke-direct {v2, p0}, Lcom/join/android/app/component/video/MediaController;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/join/mgps/activity/ForumTopicActivity;->A:Lcom/join/android/app/component/video/MediaController;

    .line 9
    invoke-virtual {v2}, Lcom/join/android/app/component/video/MediaController;->q()V

    .line 10
    iget-object v2, p0, Lcom/join/mgps/activity/ForumTopicActivity;->A:Lcom/join/android/app/component/video/MediaController;

    invoke-virtual {v2}, Lcom/join/android/app/component/video/MediaController;->hide()V

    .line 11
    iget-object v2, p0, Lcom/join/mgps/activity/ForumTopicActivity;->A:Lcom/join/android/app/component/video/MediaController;

    invoke-virtual {v2, v4}, Landroid/widget/MediaController;->setVisibility(I)V

    .line 12
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/activity/ForumTopicActivity;->w:Lcom/join/android/app/component/video/MyVideoView;

    invoke-virtual {v2}, Lcom/join/android/app/component/video/MyVideoView;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 13
    iget-object v2, p0, Lcom/join/mgps/activity/ForumTopicActivity;->w:Lcom/join/android/app/component/video/MyVideoView;

    if-eqz v2, :cond_1

    .line 14
    invoke-virtual {v2}, Lcom/join/android/app/component/video/MyVideoView;->I()V

    .line 15
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 16
    :cond_1
    iget-object v2, p0, Lcom/join/mgps/activity/ForumTopicActivity;->A:Lcom/join/android/app/component/video/MediaController;

    if-eqz v2, :cond_2

    .line 17
    invoke-virtual {v2, v4}, Landroid/widget/MediaController;->setVisibility(I)V

    .line 18
    :cond_2
    iget-object v2, p0, Lcom/join/mgps/activity/ForumTopicActivity;->w:Lcom/join/android/app/component/video/MyVideoView;

    invoke-virtual {v2, v3}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 19
    iget-object v2, p0, Lcom/join/mgps/activity/ForumTopicActivity;->A:Lcom/join/android/app/component/video/MediaController;

    iget-object v4, p0, Lcom/join/mgps/activity/ForumTopicActivity;->w:Lcom/join/android/app/component/video/MyVideoView;

    invoke-virtual {v2, v4}, Lcom/join/android/app/component/video/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 20
    iget-object v2, p0, Lcom/join/mgps/activity/ForumTopicActivity;->A:Lcom/join/android/app/component/video/MediaController;

    iget-object v4, p0, Lcom/join/mgps/activity/ForumTopicActivity;->w:Lcom/join/android/app/component/video/MyVideoView;

    invoke-virtual {v2, v4}, Lcom/join/android/app/component/video/MediaController;->setMediaPlayer(Lcom/join/android/app/component/video/MediaController$e;)V

    .line 21
    iget-object v2, p0, Lcom/join/mgps/activity/ForumTopicActivity;->w:Lcom/join/android/app/component/video/MyVideoView;

    iget-object v4, p0, Lcom/join/mgps/activity/ForumTopicActivity;->A:Lcom/join/android/app/component/video/MediaController;

    invoke-virtual {v2, v4}, Lcom/join/android/app/component/video/MyVideoView;->setMediaController(Lcom/join/android/app/component/video/MediaController;)V

    .line 22
    iget-object v2, p0, Lcom/join/mgps/activity/ForumTopicActivity;->w:Lcom/join/android/app/component/video/MyVideoView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->requestFocus()Z

    .line 23
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 24
    iget-object v1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->w:Lcom/join/android/app/component/video/MyVideoView;

    invoke-virtual {v1}, Lcom/join/android/app/component/video/MyVideoView;->E()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->w:Lcom/join/android/app/component/video/MyVideoView;

    invoke-virtual {v1}, Lcom/join/android/app/component/video/MyVideoView;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_3

    .line 25
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->o1()V

    const-string v0, "play a last video ..."

    .line 26
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    goto :goto_0

    .line 27
    :cond_3
    iget-object v1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->w:Lcom/join/android/app/component/video/MyVideoView;

    invoke-virtual {v1, v0}, Lcom/join/android/app/component/video/MyVideoView;->setVideoPath(Ljava/lang/String;)V

    const-string v0, "play a new video ..."

    .line 28
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 29
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->w:Lcom/join/android/app/component/video/MyVideoView;

    new-instance v1, Lcom/join/mgps/activity/ForumTopicActivity$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumTopicActivity$a;-><init>(Lcom/join/mgps/activity/ForumTopicActivity;)V

    invoke-virtual {v0, v1}, Lcom/join/android/app/component/video/MyVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 30
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->w:Lcom/join/android/app/component/video/MyVideoView;

    new-instance v1, Lcom/join/mgps/activity/ForumTopicActivity$b;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumTopicActivity$b;-><init>(Lcom/join/mgps/activity/ForumTopicActivity;)V

    invoke-virtual {v0, v1}, Lcom/join/android/app/component/video/MyVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 31
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->w:Lcom/join/android/app/component/video/MyVideoView;

    new-instance v1, Lcom/join/mgps/activity/ForumTopicActivity$c;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumTopicActivity$c;-><init>(Lcom/join/mgps/activity/ForumTopicActivity;)V

    invoke-virtual {v0, v1}, Lcom/join/android/app/component/video/MyVideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 32
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->w:Lcom/join/android/app/component/video/MyVideoView;

    new-instance v1, Lcom/join/mgps/activity/ForumTopicActivity$d;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumTopicActivity$d;-><init>(Lcom/join/mgps/activity/ForumTopicActivity;)V

    invoke-virtual {v0, v1}, Lcom/join/android/app/component/video/MyVideoView;->setScreenChangedListener(Lcom/join/android/app/component/video/MyVideoView$h;)V

    .line 33
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->y:Landroid/widget/ImageView;

    new-instance v1, Lcom/join/mgps/activity/ForumTopicActivity$e;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumTopicActivity$e;-><init>(Lcom/join/mgps/activity/ForumTopicActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private g1(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumPostsBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->m:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->m:Ljava/util/List;

    :cond_0
    if-eqz p2, :cond_2

    .line 2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->m:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 4
    iput v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->p:I

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->m:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->y1()V

    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->Y0()V

    return-void
.end method

.method private h1(Lcom/join/mgps/dto/ForumBean$ForumTopicBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->n:Lcom/join/mgps/dto/ForumBean$ForumTopicBean;

    return-void
.end method

.method private isLogined(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ForumTopicActivity;->accountBean(Landroid/content/Context;)Lcom/join/mgps/dto/AccountBean;

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

.method private p1(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumPostsBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 4
    invoke-direct {p0, v1}, Lcom/join/mgps/activity/ForumTopicActivity;->s1(Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private s1(Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V
    .locals 25

    move-object/from16 v6, p0

    .line 1
    invoke-static/range {p0 .. p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/join/mgps/adapter/ForumTopicAdapter$t;

    sget-object v2, Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;->POST_HEADER:Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;

    new-instance v3, Lcom/join/mgps/adapter/ForumTopicAdapter$t$g;

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getAvatar_src()Ljava/lang/String;

    move-result-object v9

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getNickname()Ljava/lang/String;

    move-result-object v10

    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getAdd_time()J

    move-result-wide v11

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFirst()I

    move-result v4

    const/16 v24, 0x0

    const/4 v5, 0x1

    if-lez v4, :cond_0

    const/4 v13, 0x1

    goto :goto_0

    :cond_0
    const/4 v13, 0x0

    .line 7
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v14

    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFid()I

    move-result v15

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getUid()I

    move-result v4

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v0

    if-ne v4, v0, :cond_1

    const/16 v16, 0x1

    goto :goto_1

    :cond_1
    const/16 v16, 0x0

    .line 10
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getForum_auth()I

    move-result v0

    if-ne v0, v5, :cond_2

    const/16 v17, 0x1

    goto :goto_2

    :cond_2
    const/16 v17, 0x0

    :goto_2
    const/16 v18, 0x0

    .line 11
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getVip_level()I

    move-result v19

    .line 12
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSvip_level()I

    move-result v20

    .line 13
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getCopper_title()Lcom/join/mgps/dto/ForumBean$ForumCopperTitle;

    move-result-object v0

    const-string v4, ""

    if-eqz v0, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getCopper_title()Lcom/join/mgps/dto/ForumBean$ForumCopperTitle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumCopperTitle;->getBattleTitle()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v21, v0

    goto :goto_3

    :cond_3
    move-object/from16 v21, v4

    .line 14
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getCopper_title()Lcom/join/mgps/dto/ForumBean$ForumCopperTitle;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getCopper_title()Lcom/join/mgps/dto/ForumBean$ForumCopperTitle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumCopperTitle;->getBattleColor()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v22, v0

    goto :goto_4

    :cond_4
    move-object/from16 v22, v4

    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getUid()I

    move-result v23

    const/4 v8, 0x0

    move-object v7, v3

    invoke-direct/range {v7 .. v23}, Lcom/join/mgps/adapter/ForumTopicAdapter$t$g;-><init>(ZLjava/lang/String;Ljava/lang/String;JZIIZZIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v1, v2, v3}, Lcom/join/mgps/adapter/ForumTopicAdapter$t;-><init>(Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;Ljava/lang/Object;)V

    .line 15
    iget-object v0, v6, Lcom/join/mgps/activity/ForumTopicActivity;->l:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 17
    new-instance v0, Lcom/join/mgps/adapter/ForumTopicAdapter$t;

    sget-object v1, Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;->POST_SUBJECT:Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;

    new-instance v2, Lcom/join/mgps/adapter/ForumTopicAdapter$t$j;

    .line 18
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getBest()I

    move-result v3

    if-lez v3, :cond_5

    const/4 v8, 0x1

    goto :goto_5

    :cond_5
    const/4 v8, 0x0

    .line 19
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    move-result-object v9

    .line 20
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v10

    .line 21
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFid()I

    move-result v11

    .line 22
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp()I

    move-result v3

    if-lez v3, :cond_6

    const/4 v12, 0x1

    goto :goto_6

    :cond_6
    const/4 v12, 0x0

    :goto_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp_money()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 24
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getTag_info()Ljava/util/List;

    move-result-object v14

    move-object v7, v2

    invoke-direct/range {v7 .. v14}, Lcom/join/mgps/adapter/ForumTopicAdapter$t$j;-><init>(ZLjava/lang/String;IIZLjava/lang/String;Ljava/util/List;)V

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/ForumTopicAdapter$t;-><init>(Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;Ljava/lang/Object;)V

    .line 25
    iget-object v1, v6, Lcom/join/mgps/activity/ForumTopicActivity;->l:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_7

    :cond_8
    const/4 v7, 0x0

    goto :goto_8

    :cond_9
    :goto_7
    const/4 v7, 0x1

    .line 27
    :goto_8
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 28
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v3, 0x1

    goto :goto_9

    :cond_a
    const/4 v3, 0x0

    :goto_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp_money()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getTag_info()Ljava/util/List;

    move-result-object v9

    move-object/from16 v0, p0

    move v2, v7

    move-object v10, v4

    move-object v4, v8

    const/4 v8, 0x1

    move-object v5, v9

    invoke-static/range {v0 .. v5}, Lcom/join/mgps/Util/i0;->m0(Landroid/content/Context;Ljava/lang/String;ZZLjava/lang/String;Ljava/util/List;)Landroid/text/SpannableStringBuilder;

    move-result-object v19

    .line 29
    new-instance v0, Lcom/join/mgps/adapter/ForumTopicAdapter$t$i;

    if-eqz v7, :cond_b

    .line 30
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getBest()I

    move-result v1

    if-lez v1, :cond_b

    const/4 v12, 0x1

    goto :goto_a

    :cond_b
    const/4 v12, 0x0

    .line 31
    :goto_a
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    move-result-object v13

    .line 32
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v14

    .line 33
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFid()I

    move-result v15

    if-eqz v7, :cond_c

    .line 34
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp()I

    move-result v1

    if-lez v1, :cond_c

    const/16 v16, 0x1

    goto :goto_b

    :cond_c
    const/16 v16, 0x0

    :goto_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp_money()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    if-eqz v7, :cond_d

    .line 36
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getTag_info()Ljava/util/List;

    move-result-object v1

    goto :goto_c

    :cond_d
    const/4 v1, 0x0

    :goto_c
    move-object/from16 v18, v1

    move-object v11, v0

    invoke-direct/range {v11 .. v19}, Lcom/join/mgps/adapter/ForumTopicAdapter$t$i;-><init>(ZLjava/lang/String;IIZLjava/lang/String;Ljava/util/List;Landroid/text/SpannableStringBuilder;)V

    .line 37
    new-instance v1, Lcom/join/mgps/adapter/ForumTopicAdapter$t;

    sget-object v2, Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;->POST_MESSAGE:Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;

    invoke-direct {v1, v2, v0}, Lcom/join/mgps/adapter/ForumTopicAdapter$t;-><init>(Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;Ljava/lang/Object;)V

    .line 38
    iget-object v2, v6, Lcom/join/mgps/activity/ForumTopicActivity;->l:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    iget-object v1, v6, Lcom/join/mgps/activity/ForumTopicActivity;->k:Lcom/join/mgps/adapter/ForumTopicAdapter;

    invoke-virtual {v1}, Lcom/join/mgps/adapter/ForumTopicAdapter;->g()Lcom/join/android/app/component/optimizetext/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/join/android/app/component/optimizetext/b;->e(Lcom/join/android/app/component/optimizetext/c;)V

    goto :goto_d

    :cond_e
    move-object v10, v4

    .line 40
    :goto_d
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getRs_list()Ljava/util/List;

    move-result-object v0

    .line 41
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 42
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->isAttach_video()Z

    move-result v2

    move-object v3, v10

    move-object v4, v3

    const/4 v5, 0x0

    .line 43
    :goto_e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_11

    .line 44
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;

    .line 45
    invoke-virtual {v7}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getType()Ljava/lang/String;

    move-result-object v8

    const-string v9, "pic"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 46
    invoke-virtual {v7}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getRaw()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 47
    :cond_f
    invoke-virtual {v7}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getType()Ljava/lang/String;

    move-result-object v8

    const-string v9, "video"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 48
    invoke-static {v4}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 49
    invoke-virtual {v7}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getThumb()Ljava/lang/String;

    move-result-object v3

    .line 50
    invoke-virtual {v7}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getRaw()Ljava/lang/String;

    move-result-object v4

    :cond_10
    :goto_f
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    .line 51
    :cond_11
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 52
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    move-result-object v5

    goto :goto_10

    .line 53
    :cond_12
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 54
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    move-result-object v5

    goto :goto_10

    :cond_13
    move-object v5, v10

    :goto_10
    if-eqz v2, :cond_14

    .line 55
    new-instance v0, Lcom/join/mgps/adapter/ForumTopicAdapter$t;

    sget-object v1, Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;->POST_VIDEO_THUMBNAIL:Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;

    new-instance v2, Lcom/join/mgps/adapter/ForumTopicAdapter$t$l;

    invoke-direct {v2, v3, v4, v5}, Lcom/join/mgps/adapter/ForumTopicAdapter$t$l;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/ForumTopicAdapter$t;-><init>(Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;Ljava/lang/Object;)V

    .line 56
    iget-object v1, v6, Lcom/join/mgps/activity/ForumTopicActivity;->l:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 57
    :cond_14
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_15

    .line 58
    new-instance v2, Lcom/join/mgps/adapter/ForumTopicAdapter$t;

    sget-object v3, Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;->POST_IMAGE_THUMBNAIL:Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;

    new-instance v4, Lcom/join/mgps/adapter/ForumTopicAdapter$t$h;

    .line 59
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v5

    invoke-direct {v4, v0, v1, v5}, Lcom/join/mgps/adapter/ForumTopicAdapter$t$h;-><init>(Ljava/util/List;Ljava/util/List;I)V

    invoke-direct {v2, v3, v4}, Lcom/join/mgps/adapter/ForumTopicAdapter$t;-><init>(Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;Ljava/lang/Object;)V

    .line 60
    iget-object v0, v6, Lcom/join/mgps/activity/ForumTopicActivity;->l:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    :cond_15
    :goto_11
    new-instance v0, Lcom/join/mgps/adapter/ForumTopicAdapter$t;

    sget-object v1, Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;->POST_FOOTER:Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;

    new-instance v2, Lcom/join/mgps/adapter/ForumTopicAdapter$t$f;

    .line 62
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v8

    .line 63
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFid()I

    move-result v9

    .line 64
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFname()Ljava/lang/String;

    move-result-object v10

    .line 65
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getView()I

    move-result v11

    .line 66
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getCommit()I

    move-result v12

    .line 67
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPraise()I

    move-result v13

    .line 68
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_praise()Z

    move-result v14

    const/4 v15, 0x0

    move-object v7, v2

    invoke-direct/range {v7 .. v15}, Lcom/join/mgps/adapter/ForumTopicAdapter$t$f;-><init>(IILjava/lang/String;IIIZZ)V

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/ForumTopicAdapter$t;-><init>(Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;Ljava/lang/Object;)V

    .line 69
    iget-object v1, v6, Lcom/join/mgps/activity/ForumTopicActivity;->l:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private w1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->b:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->f:Lcom/join/mgps/customview/XListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method A1()Z
    .locals 1

    .line 1
    invoke-direct {p0, p0}, Lcom/join/mgps/activity/ForumTopicActivity;->accountBean(Landroid/content/Context;)Lcom/join/mgps/dto/AccountBean;

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

.method B1(I)Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->o:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->y1()V

    return v1

    :cond_0
    if-ne p1, v0, :cond_1

    return v1

    .line 3
    :cond_1
    iput p1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->o:I

    .line 4
    iput p1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->o:I

    const/4 p1, 0x0

    return p1
.end method

.method public C1(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->f:Lcom/join/mgps/customview/XListView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->f:Lcom/join/mgps/customview/XListView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method D1(Landroid/widget/AbsListView;III)V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->Z0()V

    return-void
.end method

.method E1(Landroid/widget/AbsListView;I)V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->T0()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumTopicActivity;->d1(Z)V

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

.method F0(I)V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/16 v0, 0x9

    if-eq p1, v0, :cond_2

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->e:Lcom/join/mgps/customview/ForumLoadingView;

    const-string v1, "\u52a0\u8f7d\u5931\u8d25\uff0c\u518d\u8bd5\u8bd5\u5427~"

    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedMsg(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->e:Lcom/join/mgps/customview/ForumLoadingView;

    new-instance v1, Lcom/join/mgps/activity/ForumTopicActivity$n;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/ForumTopicActivity$n;-><init>(Lcom/join/mgps/activity/ForumTopicActivity;Lcom/join/mgps/customview/ForumLoadingView;)V

    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->e:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->e:Lcom/join/mgps/customview/ForumLoadingView;

    const-string v1, "\u6ca1\u6709\u66f4\u591a\u8bdd\u9898\u54e6~"

    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedMsg(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->e:Lcom/join/mgps/customview/ForumLoadingView;

    new-instance v1, Lcom/join/mgps/activity/ForumTopicActivity$m;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/ForumTopicActivity$m;-><init>(Lcom/join/mgps/activity/ForumTopicActivity;Lcom/join/mgps/customview/ForumLoadingView;)V

    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->e:Lcom/join/mgps/customview/ForumLoadingView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->setReloadingVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->e:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->e:Lcom/join/mgps/customview/ForumLoadingView;

    new-instance v1, Lcom/join/mgps/activity/ForumTopicActivity$l;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/ForumTopicActivity$l;-><init>(Lcom/join/mgps/activity/ForumTopicActivity;Lcom/join/mgps/customview/ForumLoadingView;)V

    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->e:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    goto :goto_0

    .line 10
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->e:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    goto :goto_0

    .line 11
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->e:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    :goto_0
    return-void
.end method

.method H0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->s:Lcom/join/mgps/customview/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->s:Lcom/join/mgps/customview/e;

    invoke-virtual {v0}, Lcom/join/mgps/customview/e;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->s:Lcom/join/mgps/customview/e;

    return-void
.end method

.method J0()V
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
    iput-boolean v2, p0, Lcom/join/mgps/activity/ForumTopicActivity;->E:Z

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->w1()V

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->t1()V

    .line 5
    invoke-virtual {p0, v2, v2}, Lcom/join/mgps/activity/ForumTopicActivity;->a1(II)V

    goto :goto_1

    .line 6
    :cond_1
    iput-boolean v1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->E:Z

    .line 7
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->N0()V

    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->n1()Landroid/widget/RelativeLayout$LayoutParams;

    :goto_1
    return-void
.end method

.method K0(I)Lcom/join/mgps/dto/ForumBean$ForumPostsBean;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->m:Ljava/util/List;

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

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 5
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v2

    if-ne p1, v2, :cond_1

    :cond_2
    return-object v1
.end method

.method public L0()V
    .locals 5

    .line 1
    :try_start_0
    new-instance v0, Lcom/join/mgps/dto/ForumBean$ForumTopicBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/ForumBean$ForumTopicBean;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->n:Lcom/join/mgps/dto/ForumBean$ForumTopicBean;

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_forum_topic_bean"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 5
    :cond_0
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v1

    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v2

    const-class v3, Lcom/join/mgps/dto/ForumBean$ForumTopicBean;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Lcom/join/android/app/common/utils/JsonMapper;->createCollectionType(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/ForumBean$ForumTopicBean;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->n:Lcom/join/mgps/dto/ForumBean$ForumTopicBean;
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

.method M0(Landroid/content/Context;)I
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    iget v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->I:I

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
    iput p1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->I:I

    .line 6
    :cond_1
    iget p1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->I:I

    return p1
.end method

.method R0()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const v1, 0x7f110206

    .line 2
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/ForumTopicActivity;->showToast(Ljava/lang/String;)V

    const/16 v1, 0x9

    .line 3
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/ForumTopicActivity;->F0(I)V

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->y1()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method S0(Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumPostsBean;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->y1()V

    :cond_2
    return p1
.end method

.method T0()Z
    .locals 5

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->t:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->f:Lcom/join/mgps/customview/XListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 3
    iget-object v2, p0, Lcom/join/mgps/activity/ForumTopicActivity;->f:Lcom/join/mgps/customview/XListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v2

    .line 4
    iget v3, p0, Lcom/join/mgps/activity/ForumTopicActivity;->t:I

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    if-lt v3, v0, :cond_1

    if-gt v3, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method U0(I)V
    .locals 11
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumTopicActivity;->B1(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 3
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->T(Landroid/content/Context;)Lcom/join/mgps/dto/AccountBean;

    move-result-object v3

    const-string v10, ""

    const-string v4, ""

    .line 4
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->Y0(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5
    invoke-virtual {v3}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v4

    .line 6
    invoke-virtual {v3}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v3

    move-object v7, v3

    move v6, v4

    goto :goto_0

    :cond_1
    move-object v7, v4

    const/4 v6, 0x0

    .line 7
    :goto_0
    iget-object v3, p0, Lcom/join/mgps/activity/ForumTopicActivity;->j:Lcom/join/mgps/dto/ExtBean;

    if-eqz v3, :cond_2

    .line 8
    invoke-virtual {v3}, Lcom/join/mgps/dto/ExtBean;->getFrom()Ljava/lang/String;

    .line 9
    iget-object v3, p0, Lcom/join/mgps/activity/ForumTopicActivity;->j:Lcom/join/mgps/dto/ExtBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/ExtBean;->getPosition()Ljava/lang/String;

    .line 10
    :cond_2
    iget-object v4, p0, Lcom/join/mgps/activity/ForumTopicActivity;->g:Lcom/join/mgps/rpc/h;

    iget-object v3, p0, Lcom/join/mgps/activity/ForumTopicActivity;->n:Lcom/join/mgps/dto/ForumBean$ForumTopicBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumBean$ForumTopicBean;->getTid()I

    move-result v5

    sget v9, Lcom/join/mgps/Util/i0;->d:I

    move v8, p1

    invoke-interface/range {v4 .. v10}, Lcom/join/mgps/rpc/h;->h(IILjava/lang/String;IILjava/lang/String;)Lcom/join/mgps/dto/ForumResponse;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 11
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/ForumData$ForumForumTopicData;

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 12
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumData$ForumForumTopicData;->getTopic()Lcom/join/mgps/dto/ForumBean$ForumTopicBean;

    move-result-object v4

    .line 13
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumData$ForumForumTopicData;->getPosts_list()Ljava/util/List;

    move-result-object v5

    .line 14
    invoke-direct {p0, v4}, Lcom/join/mgps/activity/ForumTopicActivity;->h1(Lcom/join/mgps/dto/ForumBean$ForumTopicBean;)V

    .line 15
    invoke-direct {p0, p1, v5}, Lcom/join/mgps/activity/ForumTopicActivity;->g1(ILjava/util/List;)V

    move-object v4, v5

    :cond_3
    if-eqz v3, :cond_5

    .line 16
    invoke-virtual {p0, v4}, Lcom/join/mgps/activity/ForumTopicActivity;->S0(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    .line 17
    :cond_4
    iput p1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->p:I

    const/4 p1, 0x2

    .line 18
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumTopicActivity;->F0(I)V

    goto :goto_2

    .line 19
    :cond_5
    :goto_1
    iput v2, p0, Lcom/join/mgps/activity/ForumTopicActivity;->o:I

    const/4 v3, 0x1

    if-ne p1, v3, :cond_6

    const/16 p1, 0xa

    .line 20
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumTopicActivity;->F0(I)V

    .line 21
    :cond_6
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->y1()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    iget p1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->o:I

    if-eq p1, v2, :cond_7

    .line 23
    iput v1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->o:I

    .line 24
    :cond_7
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->y1()V

    return-void

    .line 25
    :cond_8
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumTopicActivity;->F0(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    :goto_2
    iget p1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->o:I

    if-eq p1, v2, :cond_9

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 27
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumTopicActivity;->F0(I)V

    .line 28
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 29
    iget p1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->o:I

    if-eq p1, v2, :cond_9

    .line 30
    :goto_3
    iput v1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->o:I

    .line 31
    :cond_9
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->y1()V

    goto :goto_5

    .line 32
    :goto_4
    iget v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->o:I

    if-eq v0, v2, :cond_a

    .line 33
    iput v1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->o:I

    .line 34
    :cond_a
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->y1()V

    .line 35
    throw p1

    :cond_b
    const p1, 0x7f110206

    .line 36
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumTopicActivity;->showToast(Ljava/lang/String;)V

    const/16 p1, 0x9

    .line 37
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumTopicActivity;->F0(I)V

    .line 38
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->y1()V

    :goto_5
    return-void
.end method

.method X0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->k:Lcom/join/mgps/adapter/ForumTopicAdapter;

    iget-object v1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->l:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/ForumTopicAdapter;->z(Ljava/util/List;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->k:Lcom/join/mgps/adapter/ForumTopicAdapter;

    invoke-virtual {v0}, Lcom/join/mgps/adapter/ForumTopicAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method declared-synchronized Y0()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->l:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->l:Ljava/util/List;

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->q1()V

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->r1()V

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->X0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method Z0()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->t:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->f:Lcom/join/mgps/customview/XListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/join/mgps/activity/ForumTopicActivity;->f:Lcom/join/mgps/customview/XListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v2

    .line 4
    iget v3, p0, Lcom/join/mgps/activity/ForumTopicActivity;->t:I

    add-int/lit8 v4, v1, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-lt v3, v4, :cond_1

    if-gt v3, v2, :cond_1

    .line 5
    invoke-virtual {p0, v5}, Lcom/join/mgps/activity/ForumTopicActivity;->d1(Z)V

    .line 6
    iget v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->t:I

    sub-int/2addr v0, v1

    add-int/2addr v0, v6

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0, v6}, Lcom/join/mgps/activity/ForumTopicActivity;->d1(Z)V

    .line 8
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->f:Lcom/join/mgps/customview/XListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 9
    iget-object v1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getBottom()I

    move-result v1

    .line 10
    iget-object v2, p0, Lcom/join/mgps/activity/ForumTopicActivity;->f:Lcom/join/mgps/customview/XListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getTop()I

    move-result v2

    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    add-int/2addr v0, v2

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

    aput-object v4, v3, v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    const-string v0, "key_mediacmd_params"

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/ForumTopicActivity;->callbackPlayVideo(Landroid/os/Bundle;)V

    :cond_2
    return-void
.end method

.method a1(II)V
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
    iget-object p1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->u:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTop()I

    move-result p1

    .line 3
    iget-object p2, p0, Lcom/join/mgps/activity/ForumTopicActivity;->u:Landroid/widget/FrameLayout;

    neg-int p1, p1

    int-to-float p1, p1

    invoke-static {p2, p1}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    return-void

    .line 4
    :cond_1
    iput p1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->G:I

    .line 5
    iput p2, p0, Lcom/join/mgps/activity/ForumTopicActivity;->H:I

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/String;

    const-string p2, "offsetContainer"

    aput-object p2, p1, v3

    .line 6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mTop="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->G:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mOffsetY="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->H:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v2

    invoke-static {p1}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->u:Landroid/widget/FrameLayout;

    iget p2, p0, Lcom/join/mgps/activity/ForumTopicActivity;->H:I

    int-to-float p2, p2

    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    return-void
.end method

.method afterViews()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/f;->A0()Lcom/join/mgps/rpc/impl/f;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->g:Lcom/join/mgps/rpc/h;

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->L0()V

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->O0()V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->e:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {v0}, Lcom/join/mgps/customview/ForumLoadingView;->m()V

    .line 5
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->Q0()V

    .line 6
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->W0()V

    return-void
.end method

.method b1()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->w:Lcom/join/android/app/component/video/MyVideoView;

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
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->w:Lcom/join/android/app/component/video/MyVideoView;

    invoke-virtual {v0}, Lcom/join/android/app/component/video/MyVideoView;->pause()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->y:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
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

.method c1(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->C:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->w:Lcom/join/android/app/component/video/MyVideoView;

    invoke-virtual {v0}, Lcom/join/android/app/component/video/MyVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->b1()V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->w:Lcom/join/android/app/component/video/MyVideoView;

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0}, Lcom/join/android/app/component/video/MyVideoView;->E()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->C:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->w:Lcom/join/android/app/component/video/MyVideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/join/android/app/component/video/MyVideoView;->seekTo(I)V

    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->o1()V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->w:Lcom/join/android/app/component/video/MyVideoView;

    invoke-virtual {v0}, Lcom/join/android/app/component/video/MyVideoView;->G()V

    .line 9
    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->C:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcom/join/mgps/activity/ForumTopicActivity;->D:Ljava/lang/String;

    .line 11
    invoke-static {p1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 12
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->x1()V

    return-void

    .line 13
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->x:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 14
    iget-object p1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->y:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 15
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->e1()V

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
    sget-object v2, Lcom/join/mgps/activity/ForumTopicActivity$MediaCmd;->CMD_PLAY:Lcom/join/mgps/activity/ForumTopicActivity$MediaCmd;

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
    iget v8, p0, Lcom/join/mgps/activity/ForumTopicActivity;->B:I

    if-ne v7, v8, :cond_4

    return-void

    .line 9
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->x1()V

    .line 10
    iput v7, p0, Lcom/join/mgps/activity/ForumTopicActivity;->B:I

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
    iget-object p1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->u:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 13
    iget-object p1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->w:Lcom/join/android/app/component/video/MyVideoView;

    invoke-virtual {p1, v4}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 14
    iput-boolean v5, p0, Lcom/join/mgps/activity/ForumTopicActivity;->F:Z

    .line 15
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->t1()V

    .line 16
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/ForumTopicActivity;->c1(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 17
    :cond_6
    sget-object v2, Lcom/join/mgps/activity/ForumTopicActivity$MediaCmd;->CMD_PLAY_BACKGROUND:Lcom/join/mgps/activity/ForumTopicActivity$MediaCmd;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 18
    iget v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->B:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    return-void

    .line 19
    :cond_7
    aget-object p1, p1, v4

    check-cast p1, Ljava/lang/String;

    .line 20
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 21
    iget-object p1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->u:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 22
    iget-object p1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->w:Lcom/join/android/app/component/video/MyVideoView;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 23
    iput-boolean v4, p0, Lcom/join/mgps/activity/ForumTopicActivity;->F:Z

    .line 24
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->x1()V

    goto/16 :goto_4

    .line 25
    :cond_8
    iget p1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->B:I

    if-ne p1, v1, :cond_9

    return-void

    .line 26
    :cond_9
    iget-object p1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->u:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 27
    iget-object p1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->w:Lcom/join/android/app/component/video/MyVideoView;

    invoke-virtual {p1, v4}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 28
    iput-boolean v5, p0, Lcom/join/mgps/activity/ForumTopicActivity;->F:Z

    goto/16 :goto_4

    .line 29
    :cond_a
    sget-object v2, Lcom/join/mgps/activity/ForumTopicActivity$MediaCmd;->CMD_PAUSE:Lcom/join/mgps/activity/ForumTopicActivity$MediaCmd;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 30
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->b1()V

    goto/16 :goto_4

    .line 31
    :cond_b
    sget-object v2, Lcom/join/mgps/activity/ForumTopicActivity$MediaCmd;->CMD_STOP:Lcom/join/mgps/activity/ForumTopicActivity$MediaCmd;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 32
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->x1()V

    goto/16 :goto_4

    .line 33
    :cond_c
    sget-object v2, Lcom/join/mgps/activity/ForumTopicActivity$MediaCmd;->CMD_FULLSCREEN:Lcom/join/mgps/activity/ForumTopicActivity$MediaCmd;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const-string v0, "false"

    const/4 v1, 0x0

    .line 34
    :goto_2
    array-length v2, p1

    if-ge v1, v2, :cond_f

    if-nez v1, :cond_d

    .line 35
    aget-object v0, p1, v4

    check-cast v0, Ljava/lang/String;

    :cond_d
    if-ne v1, v5, :cond_e

    .line 36
    aget-object v2, p1, v5

    check-cast v2, Ljava/lang/String;

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 37
    :cond_f
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 38
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->J0()V

    goto :goto_4

    .line 39
    :cond_10
    sget-object v2, Lcom/join/mgps/activity/ForumTopicActivity$MediaCmd;->CMD_TRANSLATE_Y:Lcom/join/mgps/activity/ForumTopicActivity$MediaCmd;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "0"

    move-object v2, v0

    const/4 v3, 0x0

    .line 40
    :goto_3
    array-length v7, p1

    if-ge v3, v7, :cond_13

    if-nez v3, :cond_11

    .line 41
    aget-object v0, p1, v4

    check-cast v0, Ljava/lang/String;

    :cond_11
    if-ne v3, v5, :cond_12

    .line 42
    aget-object v2, p1, v5

    check-cast v2, Ljava/lang/String;

    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 43
    :cond_13
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 44
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "CMD_TRANSLATE_Y"

    aput-object v2, v1, v4

    .line 45
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

    .line 46
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/activity/ForumTopicActivity;->a1(II)V

    :cond_14
    :goto_4
    return-void
.end method

.method d1(Z)V
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
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumTopicActivity;->callbackPlayVideo(Landroid/os/Bundle;)V

    return-void
.end method

.method f1(I)V
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
    iget-object v1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->g:Lcom/join/mgps/rpc/h;

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
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumTopicActivity;->l1(I)V

    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->u1()V

    return-void

    .line 10
    :cond_2
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ForumData$ForumPostsPraiseData;

    .line 11
    invoke-static {v0, p1}, Lcom/join/mgps/Util/i0;->m1(Lcom/join/mgps/dto/ForumRequestBean$ForumPostsPraiseRequestBean;Lcom/join/mgps/dto/ForumData$ForumPostsPraiseData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method i1()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->o:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->y1()V

    return-void

    .line 3
    :cond_0
    iget v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->p:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumTopicActivity;->U0(I)V

    return-void
.end method

.method j1()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->F:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->u:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->u:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method k1()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->n:Lcom/join/mgps/dto/ForumBean$ForumTopicBean;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumTopicActivity;->U0(I)V

    return-void
.end method

.method l1(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->m:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 5
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 6
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_praise()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPraise()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPraise()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    :goto_0
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setPraise(I)V

    .line 7
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_praise()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setIs_praise(Z)V

    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->Y0()V

    :cond_2
    return-void
.end method

.method m1()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->n:Lcom/join/mgps/dto/ForumBean$ForumTopicBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumTopicBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->n:Lcom/join/mgps/dto/ForumBean$ForumTopicBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumTopicBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method n1()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->u:Landroid/widget/FrameLayout;

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
    iget-object v3, p0, Lcom/join/mgps/activity/ForumTopicActivity;->u:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2, v2, v2, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 5
    :cond_0
    iget-object v3, p0, Lcom/join/mgps/activity/ForumTopicActivity;->v:Landroid/widget/RelativeLayout;

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
    iget-object v1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->u:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setTop(I)V

    .line 9
    iget-object v1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->u:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->postInvalidate()V

    return-object v0
.end method

.method o1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->w:Lcom/join/android/app/component/video/MyVideoView;

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
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->z:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->x:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->y:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->w:Lcom/join/android/app/component/video/MyVideoView;

    invoke-virtual {v0}, Lcom/join/android/app/component/video/MyVideoView;->start()V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->A:Lcom/join/android/app/component/video/MediaController;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->setVisibility(I)V

    goto :goto_1

    .line 7
    :cond_1
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->e1()V

    :cond_2
    :goto_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumTopicActivity;->C1(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onDestroy()V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->H0()V

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->G0()V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->q:Lcom/join/android/app/component/video/c;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/join/android/app/component/video/c;->z()V

    :cond_0
    return-void
.end method

.method public onFavoriteChanged(IZ)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/BaseAppCompatActivity;->onFavoriteChanged(IZ)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->m:Ljava/util/List;

    invoke-static {p1, p2, v0}, Lcom/join/mgps/Util/i0;->j(IZLjava/util/List;)V

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->Y0()V

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
    iput-boolean p1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->E:Z

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->z1()V

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
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->x1()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->q:Lcom/join/android/app/component/video/c;

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
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->q:Lcom/join/android/app/component/video/c;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/join/android/app/component/video/c;->B()V

    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/join/mgps/activity/ForumTopicActivity;->D1(Landroid/widget/AbsListView;III)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->q:Lcom/join/android/app/component/video/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/join/android/app/component/video/c;->e(Landroid/widget/AbsListView;III)V

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/activity/ForumTopicActivity;->E1(Landroid/widget/AbsListView;I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->q:Lcom/join/android/app/component/video/c;

    invoke-virtual {v0, p1, p2}, Lcom/join/android/app/component/video/c;->i(Landroid/widget/AbsListView;I)V

    return-void
.end method

.method q1()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->m1()V

    .line 2
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    .line 3
    new-instance v0, Lcom/join/mgps/adapter/ForumTopicAdapter$t;

    sget-object v1, Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;->FORUM_TOPIC_TOP:Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;

    new-instance v2, Lcom/join/mgps/adapter/ForumTopicAdapter$t$a;

    iget-object v3, p0, Lcom/join/mgps/activity/ForumTopicActivity;->n:Lcom/join/mgps/dto/ForumBean$ForumTopicBean;

    .line 4
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumBean$ForumTopicBean;->getIcon_src()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/join/mgps/adapter/ForumTopicAdapter$t$a;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/ForumTopicAdapter$t;-><init>(Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;Ljava/lang/Object;)V

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->l:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method r1()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->m:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/join/mgps/activity/ForumTopicActivity;->p1(Ljava/util/List;)V

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

.method t1()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->v:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0, p0}, Lcom/join/mgps/activity/ForumTopicActivity;->M0(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->u:Landroid/widget/FrameLayout;

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
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->u:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2, v3, v2, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->v:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->postInvalidate()V

    return-void
.end method

.method u1()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/a0;->c0(Landroid/content/Context;)Lcom/join/mgps/Util/a0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/z;->m(Landroid/content/Context;)V

    return-void
.end method

.method v1(Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->s:Lcom/join/mgps/customview/e;

    if-nez v0, :cond_1

    .line 2
    invoke-static {p0}, Lcom/join/mgps/customview/f;->z(Landroid/content/Context;)Lcom/join/mgps/customview/f;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->s:Lcom/join/mgps/customview/e;

    .line 3
    new-instance v1, Lcom/join/mgps/activity/ForumTopicActivity$o;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumTopicActivity$o;-><init>(Lcom/join/mgps/activity/ForumTopicActivity;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/e;->m(Lcom/join/mgps/customview/e$d;)V

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->s:Lcom/join/mgps/customview/e;

    iget-object v1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->d:Landroid/view/View;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/customview/e;->p(Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method x1()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->w:Lcom/join/android/app/component/video/MyVideoView;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/video/MyVideoView;->seekTo(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->w:Lcom/join/android/app/component/video/MyVideoView;

    invoke-virtual {v0}, Lcom/join/android/app/component/video/MyVideoView;->I()V

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->B:I

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->w:Lcom/join/android/app/component/video/MyVideoView;

    invoke-virtual {v0}, Lcom/join/android/app/component/video/MyVideoView;->G()V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->z:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->A:Lcom/join/android/app/component/video/MediaController;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/widget/MediaController;->setVisibility(I)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->y:Landroid/widget/ImageView;

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
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->u:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 11
    iput-boolean v1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->F:Z

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->z1()V

    :cond_2
    :goto_0
    return-void
.end method

.method y1()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->r:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const-wide/16 v2, 0x7d0

    .line 2
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method z1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->w:Lcom/join/android/app/component/video/MyVideoView;

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->E:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/join/android/app/component/video/MyVideoView;->setFullScreen(Z)V

    :cond_0
    return-void
.end method
