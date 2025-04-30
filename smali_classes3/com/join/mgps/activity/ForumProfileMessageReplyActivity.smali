.class public Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;
.super Lcom/BaseActivity;
.source "ForumProfileMessageReplyActivity.java"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c0433
.end annotation


# static fields
.field public static final Q0:Ljava/lang/String; = "key_forum_comment_bean"

.field public static final R0:Ljava/lang/String; = "key_forum_post_bean"

.field public static final S0:Ljava/lang/String; = "key_forum_reply_bean"

.field private static final T0:I = 0x9


# instance fields
.field private A:Z

.field private A0:I

.field private final B:I

.field B0:I

.field private final C:I

.field private C0:Landroid/widget/PopupWindow;

.field private final D:I

.field private D0:Landroid/widget/Button;

.field private final E:I

.field private E0:Landroid/widget/Button;

.field private final F:I

.field F0:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$o;

.field private final G:I

.field G0:Landroid/os/Handler;

.field private final H:I

.field private H0:Z

.field private I:I

.field I0:Z

.field private J:Lcom/join/mgps/dialog/p0;

.field J0:Z

.field private K:Lcom/join/mgps/dialog/q0;

.field K0:Z

.field L0:Z

.field M0:Z

.field N0:Lcom/join/mgps/customview/t;

.field private O0:Lcom/join/mgps/dialog/s1;

.field private final P0:Lcom/join/mgps/activity/posting/PostingActivity$m;

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

.field d:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Lcom/join/mgps/customview/ForumLoadingView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Lcom/join/android/app/common/view/ClearEditText;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h:Landroid/widget/Button;
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

.field k:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field l:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field m:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field n:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private final n0:I

.field o:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private final o0:I

.field p:Lit/sephiroth/android/library/widget/HListView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private final p0:I

.field q:Lcom/join/mgps/customview/XListView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private final q0:I

.field r:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;

.field private final r0:I

.field s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u;",
            ">;"
        }
    .end annotation
.end field

.field private final s0:I

.field t:Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

.field private final t0:I

.field u:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

.field private final u0:I

.field v:Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;

.field private final v0:I

.field w:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/res/StringRes;
        resName = "net_excption"
    .end annotation
.end field

.field private w0:I

.field x:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/res/StringRes;
        resName = "connect_server_excption"
    .end annotation
.end field

.field private x0:I

.field y:Lcom/join/mgps/rpc/h;

.field private y0:I

.field z:Lcom/join/mgps/rpc/b;

.field private z0:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->A:Z

    .line 3
    iput v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->B:I

    const/16 v1, 0x10

    .line 4
    iput v1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->C:I

    const/16 v1, 0x20

    .line 5
    iput v1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->D:I

    const/16 v1, 0x11

    .line 6
    iput v1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->E:I

    const/16 v2, 0x12

    .line 7
    iput v2, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->F:I

    const/16 v3, 0x14

    .line 8
    iput v3, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->G:I

    const/16 v4, 0x18

    .line 9
    iput v4, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->H:I

    .line 10
    iput v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->I:I

    const/4 v4, 0x1

    .line 11
    iput v4, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->n0:I

    const/4 v4, 0x2

    .line 12
    iput v4, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->o0:I

    const/4 v5, 0x4

    .line 13
    iput v5, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->p0:I

    .line 14
    iput v1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->q0:I

    .line 15
    iput v2, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->r0:I

    .line 16
    iput v3, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->s0:I

    const/16 v1, 0x21

    .line 17
    iput v1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->t0:I

    const/16 v1, 0x22

    .line 18
    iput v1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->u0:I

    const/16 v1, 0x24

    .line 19
    iput v1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->v0:I

    .line 20
    iput v4, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->A0:I

    .line 21
    iput v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->B0:I

    .line 22
    new-instance v1, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$i;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$i;-><init>(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;)V

    iput-object v1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->F0:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$o;

    .line 23
    new-instance v1, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$j;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$j;-><init>(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;)V

    iput-object v1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->G0:Landroid/os/Handler;

    .line 24
    iput-boolean v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->H0:Z

    .line 25
    iput-boolean v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->I0:Z

    .line 26
    iput-boolean v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->J0:Z

    .line 27
    iput-boolean v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->K0:Z

    .line 28
    iput-boolean v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->L0:Z

    .line 29
    iput-boolean v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->M0:Z

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->N0:Lcom/join/mgps/customview/t;

    .line 31
    new-instance v0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$h;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$h;-><init>(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;)V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->P0:Lcom/join/mgps/activity/posting/PostingActivity$m;

    return-void
.end method

.method private D1()V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->isTourist()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->touristLogin()V

    goto :goto_0

    :cond_0
    const v0, 0x7f11010c

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showMessage(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic E0(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->G1()V

    return-void
.end method

.method private E1()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->t:Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getReply_list()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->t:Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getReply_list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->i:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5df2\u6709"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\u6761\u56de\u590d"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->i:Landroid/widget/TextView;

    const-string v1, "\u5df2\u67090\u6761\u56de\u590d"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method static synthetic F0(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->A0:I

    return p0
.end method

.method static synthetic G0(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->A0:I

    return p1
.end method

.method private G1()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->u:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_praise()Z

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->u:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPraise()I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->u:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    if-eqz v0, :cond_0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setPraise(I)V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->u:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setIs_praise(Z)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->u:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_praise()Z

    move-result v0

    iget-object v1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->u:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPraise()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->r1(ZI)V

    return-void
.end method

.method static synthetic H0(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->x0:I

    return p0
.end method

.method static synthetic I0(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->x0:I

    return p1
.end method

.method static synthetic J0(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->y0:I

    return p0
.end method

.method private J1()V
    .locals 7

    .line 1
    invoke-direct {p0, p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->isLogined(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f11010d

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showMessage(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->Z1()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->N1()V

    return-void

    .line 5
    :cond_1
    iget v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->x0:I

    iget-object v1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->z0:Ljava/lang/String;

    iget v2, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->y0:I

    invoke-static {p0, v0, v1, v2}, Lcom/join/mgps/Util/i0;->Y(Landroid/content/Context;ILjava/lang/String;I)Lcom/join/mgps/dto/ForumRequestBean$ForumCommentReplyRequestBean;

    move-result-object v0

    const-string v1, ""

    .line 6
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ForumRequestBean$ForumCommentReplyRequestBean;->setDevice_id(Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->y:Lcom/join/mgps/rpc/h;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumRequestBean$ForumCommentReplyRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/join/mgps/rpc/h;->J(Ljava/util/Map;)Lcom/join/mgps/dto/ForumResponse;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    .line 8
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->V1(I)V

    return-void

    .line 9
    :cond_2
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumResponse;->getError()I

    move-result v3

    const/16 v4, 0x2c2

    if-ne v3, v4, :cond_3

    const v0, 0x7f1103b4

    .line 10
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showToast(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->N1()V

    return-void

    .line 12
    :cond_3
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/ForumData$ForumCommentReplyReplyData;

    .line 13
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumCommentReplyReplyData;->isResult()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v2, 0x2

    .line 14
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->V1(I)V

    .line 15
    new-instance v2, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;

    invoke-direct {v2}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;-><init>()V

    .line 16
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->T(Landroid/content/Context;)Lcom/join/mgps/dto/AccountBean;

    move-result-object v3

    .line 17
    invoke-virtual {v3}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->setUid(I)V

    .line 18
    invoke-virtual {v3}, Lcom/join/mgps/dto/AccountBean;->getNickname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->setNickname(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumRequestBean$ForumCommentReplyRequestBean;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->setMessage(Ljava/lang/String;)V

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->setAdd_time(J)V

    .line 21
    iget v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->y0:I

    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->setRrid(I)V

    .line 22
    iget v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->y0:I

    if-eqz v0, :cond_7

    .line 23
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumCommentReplyReplyData;->getRid()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->setRid(I)V

    .line 24
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->y1(Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;)V

    .line 25
    sget-object v0, Lcom/join/mgps/customview/RewardType;->REPLY_POST:Lcom/join/mgps/customview/RewardType;

    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumCommentReplyReplyData;->getReward_money()I

    move-result v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumCommentReplyReplyData;->getReward_exp()I

    move-result v1

    invoke-virtual {p0, v0, v2, v1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->U1(Lcom/join/mgps/customview/RewardType;II)V

    goto :goto_0

    .line 26
    :cond_4
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumCommentReplyReplyData;->getError_type()I

    move-result v0

    if-ne v0, v2, :cond_5

    .line 27
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumCommentReplyReplyData;->getError_type()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->S1(I)V

    return-void

    .line 28
    :cond_5
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumCommentReplyReplyData;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumCommentReplyReplyData;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showToast(Ljava/lang/String;)V

    .line 29
    :cond_6
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->V1(I)V

    :cond_7
    :goto_0
    return-void
.end method

.method static synthetic K0(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->y0:I

    return p1
.end method

.method private K1()V
    .locals 7

    .line 1
    invoke-direct {p0, p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->isLogined(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f11010d

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showMessage(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->Z1()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->N1()V

    return-void

    .line 5
    :cond_1
    iget v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->x0:I

    iget-object v1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->z0:Ljava/lang/String;

    iget v2, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->y0:I

    invoke-static {p0, v0, v1, v2}, Lcom/join/mgps/Util/i0;->Y(Landroid/content/Context;ILjava/lang/String;I)Lcom/join/mgps/dto/ForumRequestBean$ForumCommentReplyRequestBean;

    move-result-object v0

    const-string v1, ""

    .line 6
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ForumRequestBean$ForumCommentReplyRequestBean;->setDevice_id(Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->y:Lcom/join/mgps/rpc/h;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumRequestBean$ForumCommentReplyRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/join/mgps/rpc/h;->l0(Ljava/util/Map;)Lcom/join/mgps/dto/ForumResponse;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    .line 8
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->V1(I)V

    return-void

    .line 9
    :cond_2
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumResponse;->getError()I

    move-result v3

    const/16 v4, 0x2c2

    if-ne v3, v4, :cond_3

    const v0, 0x7f1103b4

    .line 10
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showToast(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->N1()V

    return-void

    .line 12
    :cond_3
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/ForumData$ForumCommentReplyData;

    .line 13
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumCommentReplyData;->isResult()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v2, 0x2

    .line 14
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->V1(I)V

    .line 15
    new-instance v2, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;

    invoke-direct {v2}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;-><init>()V

    .line 16
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->T(Landroid/content/Context;)Lcom/join/mgps/dto/AccountBean;

    move-result-object v3

    .line 17
    invoke-virtual {v3}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->setUid(I)V

    .line 18
    invoke-virtual {v3}, Lcom/join/mgps/dto/AccountBean;->getNickname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->setNickname(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumRequestBean$ForumCommentReplyRequestBean;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->setMessage(Ljava/lang/String;)V

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->setAdd_time(J)V

    .line 21
    iget v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->y0:I

    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->setRrid(I)V

    .line 22
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumCommentReplyData;->getRid()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->setRid(I)V

    .line 23
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->x1(Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;)V

    .line 24
    sget-object v0, Lcom/join/mgps/customview/RewardType;->REPLY_POST:Lcom/join/mgps/customview/RewardType;

    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumCommentReplyData;->getReward_money()I

    move-result v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumCommentReplyData;->getReward_exp()I

    move-result v1

    invoke-virtual {p0, v0, v2, v1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->U1(Lcom/join/mgps/customview/RewardType;II)V

    goto :goto_0

    .line 25
    :cond_4
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumCommentReplyData;->getError_type()I

    move-result v0

    if-ne v0, v2, :cond_5

    .line 26
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumCommentReplyData;->getError_type()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->S1(I)V

    return-void

    .line 27
    :cond_5
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumCommentReplyData;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumCommentReplyData;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showToast(Ljava/lang/String;)V

    .line 28
    :cond_6
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->V1(I)V

    :goto_0
    return-void
.end method

.method static synthetic L0(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->q1()V

    return-void
.end method

.method static synthetic M0(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->b1()V

    return-void
.end method

.method static synthetic N0(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;)Landroid/widget/PopupWindow;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->C0:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static synthetic O0(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;)Lcom/join/mgps/dialog/p0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->J:Lcom/join/mgps/dialog/p0;

    return-object p0
.end method

.method private Z0(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_4

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

    if-ge v0, v1, :cond_3

    .line 3
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 6
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/join/mgps/Util/i0;->l0()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    invoke-static {v1}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8
    :cond_3
    invoke-static {}, Lnet/bither/util/b;->q()Lnet/bither/util/b;

    move-result-object p1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p1, Lnet/bither/util/b;->c:Ljava/util/Hashtable;

    .line 9
    invoke-static {}, Lnet/bither/util/b;->q()Lnet/bither/util/b;

    move-result-object p1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p1, Lnet/bither/util/b;->b:Ljava/util/Hashtable;

    :cond_4
    :goto_1
    return-void
.end method

.method private a1()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->N0:Lcom/join/mgps/customview/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->N0:Lcom/join/mgps/customview/t;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
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

.method private b1()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->C0:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->C0:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method private i1(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    .line 2
    aget v2, v0, v1

    const/4 v3, 0x1

    .line 3
    aget v0, v0, v3

    .line 4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    int-to-float v5, v2

    cmpg-float v4, v4, v5

    if-ltz v4, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v2, v5

    int-to-float v2, v2

    cmpl-float v2, v4, v2

    if-gtz v2, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    int-to-float v4, v0

    cmpg-float v2, v2, v4

    if-ltz v2, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v0, p1

    int-to-float p1, v0

    cmpl-float p1, p2, p1

    if-gtz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private isLogined(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->accountBean(Landroid/content/Context;)Lcom/join/mgps/dto/AccountBean;

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

.method private j1()V
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0412

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, -0x2

    invoke-direct {v1, v0, v2, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->C0:Landroid/widget/PopupWindow;

    const v1, 0x7f0901d7

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->E0:Landroid/widget/Button;

    const v1, 0x7f0901d9

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->D0:Landroid/widget/Button;

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->E0:Landroid/widget/Button;

    new-instance v1, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$b;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$b;-><init>(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->D0:Landroid/widget/Button;

    new-instance v1, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$c;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$c;-><init>(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->C0:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->C0:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->C0:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->C0:Landroid/widget/PopupWindow;

    new-instance v1, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$d;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$d;-><init>(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private k1()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->c:Landroid/widget/TextView;

    const-string v1, "\u6211\u7684\u6d88\u606f"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->d:Landroid/widget/TextView;

    const-string v1, "\u67e5\u770b\u4e3b\u8d34"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_forum_comment_bean"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "key_forum_post_bean"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "key_forum_reply_bean"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 6
    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 7
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v3

    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v5

    const-class v6, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

    new-array v7, v4, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Lcom/join/android/app/common/utils/JsonMapper;->createCollectionType(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->t:Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

    .line 8
    :cond_0
    invoke-static {v1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 9
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v3

    const-class v5, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    new-array v6, v4, [Ljava/lang/Class;

    invoke-virtual {v3, v5, v6}, Lcom/join/android/app/common/utils/JsonMapper;->createCollectionType(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->u:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 10
    :cond_1
    invoke-static {v2}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 11
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v1

    const-class v3, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Lcom/join/android/app/common/utils/JsonMapper;->createCollectionType(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->v:Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->t:Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->u:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    if-nez v1, :cond_3

    goto/16 :goto_1

    .line 13
    :cond_3
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getPid()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->x0:I

    .line 14
    new-instance v0, Lcom/join/mgps/dialog/q0;

    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/q0;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->K:Lcom/join/mgps/dialog/q0;

    .line 15
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->j1()V

    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->j:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 17
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->U0()V

    .line 18
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/KeyboardListenLayout;

    new-instance v2, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$k;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$k;-><init>(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;)V

    invoke-virtual {v0, v2}, Lcom/join/mgps/customview/KeyboardListenLayout;->setOnSoftKeyboardListener(Lcom/join/mgps/customview/KeyboardListenLayout$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 20
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->g:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->f:Lcom/join/android/app/common/view/ClearEditText;

    new-instance v1, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$l;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$l;-><init>(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 22
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->q:Lcom/join/mgps/customview/XListView;

    sget v1, Lcom/join/mgps/Util/i0;->e:I

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView;->setPreLoadCount(I)V

    .line 23
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->q:Lcom/join/mgps/customview/XListView;

    new-instance v1, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$m;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$m;-><init>(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView;->setPullLoadEnable(Lcom/join/mgps/customview/i;)V

    .line 24
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->q:Lcom/join/mgps/customview/XListView;

    new-instance v1, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$n;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$n;-><init>(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView;->setPullRefreshEnable(Lcom/join/mgps/customview/j;)V

    .line 25
    new-instance v0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;

    invoke-direct {v0, p0}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->r:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->s:Ljava/util/List;

    .line 27
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->r:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;

    iget-object v1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->F0:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$o;

    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->C(Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$o;)V

    .line 28
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->q:Lcom/join/mgps/customview/XListView;

    iget-object v1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->r:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 29
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->t:Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getPid()I

    move-result v0

    if-eqz v0, :cond_4

    .line 30
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->t:Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getPid()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->x0:I

    .line 31
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->u:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v0

    if-eqz v0, :cond_5

    .line 32
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->u:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->w0:I

    .line 33
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->v:Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->getRid()I

    move-result v0

    if-eqz v0, :cond_6

    .line 34
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->v:Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->getRid()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->y0:I

    :cond_6
    return-void

    .line 35
    :cond_7
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private o1()V
    .locals 1

    const/16 v0, 0x12

    .line 1
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->R0(I)V

    return-void
.end method

.method private q1()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->R0(I)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->o1()V

    .line 3
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->p1()V

    goto :goto_0

    :cond_0
    const v0, 0x7f110206

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showToast(Ljava/lang/String;)V

    const/16 v0, 0x11

    .line 6
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->R0(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method A1(I)V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->t:Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getReply_list()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getReply_list()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getReply_list()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 4
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;

    .line 6
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->getRid()I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getReply_list()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->t1()V

    :cond_2
    :goto_0
    return-void
.end method

.method B1(Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;Lcom/join/mgps/dto/ForumResponse;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$ForumPostsCommentData;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p2, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->V1(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->U0()V

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->g1()V

    return-void

    .line 4
    :cond_0
    :try_start_1
    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/dto/ForumData$ForumPostsCommentData;

    .line 5
    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumData$ForumPostsCommentData;->isResult()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    .line 6
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->V1(I)V

    .line 7
    new-instance v1, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

    invoke-direct {v1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;-><init>()V

    .line 8
    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumData$ForumPostsCommentData;->getPid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->setPid(I)V

    .line 9
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->T(Landroid/content/Context;)Lcom/join/mgps/dto/AccountBean;

    move-result-object v2

    .line 10
    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->setUid(I)V

    .line 11
    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getNickname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->setNickname(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getAvatarSrc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->setAvatar_src(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->setMessage(Ljava/lang/String;)V

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->setAdd_time(J)V

    .line 15
    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumData$ForumPostsCommentData;->getPic_list()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->setPic_list(Ljava/util/List;)V

    .line 16
    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumData$ForumPostsCommentData;->getRaw_pic_list()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->setRaw_pic_list(Ljava/util/List;)V

    .line 17
    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumData$ForumPostsCommentData;->getFloor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->setFloor(I)V

    .line 18
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->z1(Lcom/join/mgps/dto/ForumBean$ForumCommentBean;)V

    .line 19
    sget-object v1, Lcom/join/mgps/customview/RewardType;->COMMENT_POST:Lcom/join/mgps/customview/RewardType;

    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumData$ForumPostsCommentData;->getReward_money()I

    move-result v2

    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumData$ForumPostsCommentData;->getReward_exp()I

    move-result p2

    invoke-virtual {p0, v1, v2, p2}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->U1(Lcom/join/mgps/customview/RewardType;II)V

    .line 20
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->C1(I)V

    .line 21
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;->getImages()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->Z0(Ljava/util/List;)V

    goto :goto_1

    .line 22
    :cond_1
    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumData$ForumPostsCommentData;->getError_type()I

    move-result p1

    if-ne p1, v0, :cond_2

    .line 23
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->c1()V

    .line 24
    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumData$ForumPostsCommentData;->getError_type()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->S1(I)V

    goto/16 :goto_0

    .line 25
    :cond_2
    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumData$ForumPostsCommentData;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 26
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->c1()V

    .line 27
    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumData$ForumPostsCommentData;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showToast(Ljava/lang/String;)V

    goto :goto_1

    .line 28
    :cond_3
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->V1(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 29
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 30
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->V1(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 31
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->U0()V

    .line 32
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->g1()V

    return-void

    .line 33
    :goto_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->U0()V

    .line 34
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->g1()V

    .line 35
    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method C1(I)V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->t1()V

    return-void
.end method

.method F1(IILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->h1(Z)V

    const/4 v0, 0x4

    .line 2
    iput v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->A0:I

    .line 3
    iput p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->x0:I

    .line 4
    iput p2, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->y0:I

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->f:Lcom/join/android/app/common/view/ClearEditText;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->f:Lcom/join/android/app/common/view/ClearEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->f:Lcom/join/android/app/common/view/ClearEditText;

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showSystemKeyBoard(Landroid/view/View;)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->f:Lcom/join/android/app/common/view/ClearEditText;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u56de\u590d"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ":"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method H1()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->Y0(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->L0(Landroid/content/Context;)V

    .line 4
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v1

    const-string v2, "\u5c1a\u672a\u767b\u5f55\uff0c\u8bf7\u5148\u767b\u5f55\uff01"

    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->V1(I)V

    const/4 v1, 0x1

    .line 6
    iput v1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->B0:I

    .line 7
    invoke-static {}, Lnet/bither/util/b;->q()Lnet/bither/util/b;

    move-result-object v1

    invoke-virtual {v1}, Lnet/bither/util/b;->y()V

    goto :goto_0

    .line 8
    :cond_1
    iput v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->B0:I

    const v1, 0x7f110206

    .line 9
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showToast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 10
    :try_start_1
    iput v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->B0:I

    .line 11
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    return-void

    .line 12
    :goto_1
    throw v0
.end method

.method I1()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->Y0(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->L0(Landroid/content/Context;)V

    const-string v0, "\u5c1a\u672a\u767b\u5f55\uff0c\u8bf7\u5148\u767b\u5f55\uff01"

    .line 3
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showToast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->U0()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 5
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->V1(I)V

    .line 6
    iget v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->y0:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    monitor-enter v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 7
    :try_start_2
    iget v1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->y0:I

    if-nez v1, :cond_1

    .line 8
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->K1()V

    goto :goto_0

    .line 9
    :cond_1
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->J1()V

    .line 10
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 11
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x1

    .line 12
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->V1(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 13
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->U0()V

    return-void

    :goto_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->U0()V

    .line 14
    throw v0
.end method

.method L1(ZZ)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->C0:Landroid/widget/PopupWindow;

    if-nez p2, :cond_0

    invoke-direct {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->j1()V

    .line 2
    :cond_0
    iget-object p2, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->C0:Landroid/widget/PopupWindow;

    invoke-virtual {p2}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0901d7

    .line 3
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f0901d9

    .line 4
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f090394

    .line 5
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-nez p1, :cond_1

    const/16 p1, 0x8

    .line 6
    invoke-virtual {v1, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 7
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 8
    invoke-virtual {v1, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 9
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method M1(Lcom/join/mgps/dto/ForumBean$ForumCommentBean;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    if-nez v0, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v2

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getForum_auth()I

    move-result v3

    const/4 v4, 0x1

    .line 3
    iget-object v3, v1, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->u:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp()I

    move-result v3

    .line 4
    iget-object v3, v1, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->u:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSolve_flg()I

    move-result v3

    .line 5
    iget-object v3, v1, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->u:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getAuth()I

    move-result v3

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v4

    iget-object v5, v1, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->u:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getUid()I

    move-result v5

    :cond_1
    if-eqz v2, :cond_2

    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getUid()I

    move-result v4

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v2

    .line 8
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getUid()I

    move-result v2

    iget-object v4, v1, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->u:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getUid()I

    move-result v4

    .line 9
    new-instance v2, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u;

    sget-object v4, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$ViewType;->PROFILE_HEADER:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$ViewType;

    new-instance v15, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$b;

    const/4 v6, 0x1

    .line 10
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getAvatar_src()Ljava/lang/String;

    move-result-object v7

    .line 11
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getNickname()Ljava/lang/String;

    move-result-object v8

    .line 12
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getAdd_time()J

    move-result-wide v9

    .line 13
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getPid()I

    move-result v11

    const/4 v12, 0x0

    .line 14
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getVip_level()I

    move-result v13

    .line 15
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getSvip_level()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getUid()I

    move-result v16

    move-object v5, v15

    move-object v0, v15

    move/from16 v15, v16

    invoke-direct/range {v5 .. v15}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$b;-><init>(ZLjava/lang/String;Ljava/lang/String;JIZIII)V

    invoke-direct {v2, v4, v0}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u;-><init>(Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$ViewType;Ljava/lang/Object;)V

    .line 16
    iget-object v0, v1, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->s:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    new-instance v0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u;

    sget-object v2, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$ViewType;->PROFILE_MESSAGE_ITEM:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$ViewType;

    new-instance v4, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$c;

    .line 18
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getPid()I

    move-result v5

    .line 19
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$c;-><init>(ILjava/lang/String;)V

    invoke-direct {v0, v2, v4}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u;-><init>(Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$ViewType;Ljava/lang/Object;)V

    .line 20
    iget-object v2, v1, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->s:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 21
    :goto_0
    iget-object v2, v1, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->t:Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getPic_list()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, v1, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->t:Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getPic_list()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 22
    new-instance v2, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u;

    sget-object v4, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$ViewType;->PROFILE_COMMENT_IMAGE:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$ViewType;

    new-instance v5, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$a;

    iget-object v6, v1, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->t:Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

    .line 23
    invoke-virtual {v6}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getPic_list()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, v1, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->t:Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

    .line 24
    invoke-virtual {v7}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getRaw_pic_list()Ljava/util/List;

    move-result-object v7

    invoke-direct {v5, v6, v0, v7}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$a;-><init>(Ljava/lang/String;ILjava/util/List;)V

    invoke-direct {v2, v4, v5}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u;-><init>(Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$ViewType;Ljava/lang/Object;)V

    .line 25
    iget-object v4, v1, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->s:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 26
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getReply_list()Ljava/util/List;

    .line 27
    new-instance v0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u;

    sget-object v2, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$ViewType;->PROFILE_MESSAGE_REPLY_ITEM:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$ViewType;

    new-instance v4, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$d;

    .line 28
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getPid()I

    move-result v5

    move-object/from16 v6, p1

    invoke-direct {v4, v5, v6, v3}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$d;-><init>(ILcom/join/mgps/dto/ForumBean$ForumCommentBean;I)V

    invoke-direct {v0, v2, v4}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u;-><init>(Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$ViewType;Ljava/lang/Object;)V

    .line 29
    iget-object v2, v1, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->s:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 30
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method N1()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/a0;->c0(Landroid/content/Context;)Lcom/join/mgps/Util/a0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/z;->m(Landroid/content/Context;)V

    return-void
.end method

.method O1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->m:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->n:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->o:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->o:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->hideSystemKeyBoard(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->J0:Z

    return-void
.end method

.method P0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->Y0(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u7528\u6237\u672a\u767b\u5f55\uff0c\u8bf7\u767b\u5f55"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    .line 3
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->L0(Landroid/content/Context;)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->Z1()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->N1()V

    return-void

    :cond_1
    const v0, 0x7f010051

    .line 6
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->g:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 8
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->G1()V

    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->v1()V

    return-void
.end method

.method P1()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->m:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->n:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->o:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->hideSystemKeyBoard(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->J0:Z

    return-void
.end method

.method Q0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->f:Lcom/join/android/app/common/view/ClearEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->z0:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u56de\u590d\u5185\u5bb9\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    iget v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->A0:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->H1()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->I1()V

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->I1()V

    :cond_3
    :goto_0
    return-void
.end method

.method Q1()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->q:Lcom/join/mgps/customview/XListView;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView;->q()V

    return-void
.end method

.method R0(I)V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->I:I

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    if-ne p1, v1, :cond_1

    .line 2
    iput v1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->I:I

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->e:Lcom/join/mgps/customview/ForumLoadingView;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    goto/16 :goto_1

    :cond_1
    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->I:I

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->e:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {p1}, Lcom/join/mgps/customview/ForumLoadingView;->m()V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->e:Lcom/join/mgps/customview/ForumLoadingView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    goto/16 :goto_1

    :cond_2
    or-int/2addr p1, v0

    .line 7
    iput p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->I:I

    const/16 p1, 0x1f

    const/16 v0, 0x1a

    const/16 v1, 0x16

    const/16 v2, -0xb

    .line 8
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->S0(I)Z

    move-result v2

    const/16 v3, 0x9

    const/16 v4, 0x10

    if-eqz v2, :cond_3

    .line 9
    iput v4, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->I:I

    .line 10
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->e:Lcom/join/mgps/customview/ForumLoadingView;

    new-instance v0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$o;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$o;-><init>(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;Lcom/join/mgps/customview/ForumLoadingView;)V

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->e:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {p1, v3}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    goto :goto_1

    .line 12
    :cond_3
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->S0(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 13
    iput v4, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->I:I

    .line 14
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->e:Lcom/join/mgps/customview/ForumLoadingView;

    const-string v0, "\u8be5\u8bc4\u8bba\u5df2\u7ecf\u5220\u9664~"

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedMsg(Ljava/lang/String;)V

    .line 15
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->e:Lcom/join/mgps/customview/ForumLoadingView;

    new-instance v0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$p;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$p;-><init>(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;Lcom/join/mgps/customview/ForumLoadingView;)V

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 16
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->e:Lcom/join/mgps/customview/ForumLoadingView;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    goto :goto_1

    .line 17
    :cond_4
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->S0(I)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->S0(I)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    const/16 p1, 0x11

    .line 18
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->S0(I)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 19
    iput v4, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->I:I

    .line 20
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->e:Lcom/join/mgps/customview/ForumLoadingView;

    new-instance v0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$a;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$a;-><init>(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;Lcom/join/mgps/customview/ForumLoadingView;)V

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 21
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->e:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {p1, v3}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    goto :goto_1

    .line 22
    :cond_6
    :goto_0
    iput v4, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->I:I

    .line 23
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->e:Lcom/join/mgps/customview/ForumLoadingView;

    const-string v0, "\u52a0\u8f7d\u5931\u8d25\uff0c\u518d\u8bd5\u8bd5\u5427~"

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedMsg(Ljava/lang/String;)V

    .line 24
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->e:Lcom/join/mgps/customview/ForumLoadingView;

    new-instance v0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$q;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$q;-><init>(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;Lcom/join/mgps/customview/ForumLoadingView;)V

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 25
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->e:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {p1, v4}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    :cond_7
    :goto_1
    return-void
.end method

.method R1(Landroid/view/View;I)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    mul-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    const/high16 v2, 0x42200000    # 40.0f

    mul-float v0, v0, v2

    sub-float/2addr v1, v0

    float-to-int v0, v1

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->C0:Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 5
    iput p2, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->A0:I

    const/4 p1, 0x2

    if-ne p2, p1, :cond_0

    .line 6
    iput v2, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->y0:I

    :cond_0
    return-void
.end method

.method S0(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->I:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method S1(I)V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    return-void
.end method

.method T0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->x0:I

    if-eqz v0, :cond_1

    .line 2
    iget v1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->y0:I

    if-eqz v1, :cond_0

    .line 3
    iget-object v2, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->v:Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->F1(IILjava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->t:Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->V0(ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method T1(II)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->J:Lcom/join/mgps/dialog/p0;

    const-string v1, "\u786e\u5b9a\u8981\u5220\u9664\u8be5\u8bc4\u8bba\u5417\uff1f"

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/join/mgps/dialog/p0;

    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/p0;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->J:Lcom/join/mgps/dialog/p0;

    const-string v2, "\u786e\u5b9a"

    .line 3
    invoke-virtual {v0, v2}, Lcom/join/mgps/dialog/p0;->f(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->J:Lcom/join/mgps/dialog/p0;

    const-string v2, "\u53d6\u6d88"

    invoke-virtual {v0, v2}, Lcom/join/mgps/dialog/p0;->d(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->J:Lcom/join/mgps/dialog/p0;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/join/mgps/dialog/p0;->b(I)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->J:Lcom/join/mgps/dialog/p0;

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/p0;->g(Ljava/lang/String;)Lcom/join/mgps/dialog/p0;

    move-result-object v0

    new-instance v2, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$e;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$e;-><init>(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;)V

    invoke-virtual {v0, v2}, Lcom/join/mgps/dialog/p0;->c(Landroid/view/View$OnClickListener;)Lcom/join/mgps/dialog/p0;

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->J:Lcom/join/mgps/dialog/p0;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->J:Lcom/join/mgps/dialog/p0;

    new-instance v2, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$f;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$f;-><init>(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 9
    :cond_0
    iget v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->A0:I

    const/16 v2, 0x11

    if-ne v0, v2, :cond_1

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->J:Lcom/join/mgps/dialog/p0;

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/p0;->g(Ljava/lang/String;)Lcom/join/mgps/dialog/p0;

    goto :goto_0

    :cond_1
    const/16 v1, 0x12

    if-eq v0, v1, :cond_2

    const/16 v1, 0x14

    if-ne v0, v1, :cond_3

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->J:Lcom/join/mgps/dialog/p0;

    const-string v1, "\u786e\u5b9a\u8981\u5220\u9664\u8be5\u56de\u590d\u5417\uff1f"

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/p0;->g(Ljava/lang/String;)Lcom/join/mgps/dialog/p0;

    .line 12
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->J:Lcom/join/mgps/dialog/p0;

    new-instance v1, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$g;

    invoke-direct {v1, p0, p1, p2}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$g;-><init>(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;II)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/p0;->e(Landroid/view/View$OnClickListener;)Lcom/join/mgps/dialog/p0;

    .line 13
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->J:Lcom/join/mgps/dialog/p0;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_4

    .line 14
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->J:Lcom/join/mgps/dialog/p0;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_4
    return-void
.end method

.method U0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->l:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->A0:I

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->i:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->g:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->h:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->f:Lcom/join/android/app/common/view/ClearEditText;

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->hideSystemKeyBoard(Landroid/view/View;)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->f:Lcom/join/android/app/common/view/ClearEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->f:Lcom/join/android/app/common/view/ClearEditText;

    const-string v1, "\u6dfb\u52a0\u56de\u590d"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->f:Lcom/join/android/app/common/view/ClearEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    return-void
.end method

.method U1(Lcom/join/mgps/customview/RewardType;II)V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    return-void
.end method

.method V0(ILjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " cNickname="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->A0:I

    .line 3
    iput p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->x0:I

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->y0:I

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->f:Lcom/join/android/app/common/view/ClearEditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->f:Lcom/join/android/app/common/view/ClearEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    const/4 p1, 0x1

    .line 7
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->h1(Z)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->f:Lcom/join/android/app/common/view/ClearEditText;

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showSystemKeyBoard(Landroid/view/View;)V

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->f:Lcom/join/android/app/common/view/ClearEditText;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u56de\u590d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method V1(I)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->K:Lcom/join/mgps/dialog/q0;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/join/mgps/dialog/q0;

    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/q0;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->K:Lcom/join/mgps/dialog/q0;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->K:Lcom/join/mgps/dialog/q0;

    invoke-virtual {v0, p1}, Lcom/join/mgps/dialog/q0;->c(I)V

    return-void
.end method

.method W0(I)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const-string v0, "\u8bc4\u8bba\u5220\u9664\u5931\u8d25"

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2
    invoke-static {p0, p1}, Lcom/join/mgps/Util/i0;->W(Landroid/content/Context;I)Lcom/join/mgps/dto/ForumRequestBean$ForumCommentDeleteRequestBean;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v2, ""

    .line 3
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ForumRequestBean$ForumCommentDeleteRequestBean;->setDevice_id(Ljava/lang/String;)V

    .line 4
    iget-object v2, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->y:Lcom/join/mgps/rpc/h;

    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumRequestBean$ForumCommentDeleteRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/join/mgps/rpc/h;->d0(Ljava/util/Map;)Lcom/join/mgps/dto/ForumResponse;

    move-result-object v2

    :cond_0
    if-nez v2, :cond_2

    .line 5
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->Y0(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 6
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->L0(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->U0()V

    return-void

    .line 8
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/ForumData$ForumCommentDeleteData;

    .line 9
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumCommentDeleteData;->isResult()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "\u8bc4\u8bba\u5df2\u5220\u9664"

    .line 10
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showToast(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->w1(I)V

    goto :goto_0

    .line 12
    :cond_3
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const p1, 0x7f110206

    .line 13
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showToast(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->U0()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 15
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 16
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showToast(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 17
    :goto_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->U0()V

    .line 18
    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method W1()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->q:Lcom/join/mgps/customview/XListView;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView;->g()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->G0:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->G0:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method

.method X0(I)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const-string v0, "\u56de\u590d\u5220\u9664\u5931\u8d25"

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Lcom/join/mgps/Util/i0;->X(Landroid/content/Context;I)Lcom/join/mgps/dto/ForumRequestBean$ForumCommentReplyDeleteRequestBean;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const-string v2, ""

    .line 2
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ForumRequestBean$ForumCommentReplyDeleteRequestBean;->setDevice_id(Ljava/lang/String;)V

    .line 3
    iget-object v2, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->y:Lcom/join/mgps/rpc/h;

    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumRequestBean$ForumCommentReplyDeleteRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/join/mgps/rpc/h;->A(Ljava/util/Map;)Lcom/join/mgps/dto/ForumResponse;

    move-result-object v2

    :cond_1
    if-nez v2, :cond_3

    .line 4
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->Y0(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 5
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->L0(Landroid/content/Context;)V

    :cond_2
    return-void

    .line 6
    :cond_3
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/ForumData$ForumCommentReplyDeleteData;

    .line 7
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumCommentReplyDeleteData;->isResult()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 8
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->A1(I)V

    const-string p1, "\u56de\u590d\u5df2\u5220\u9664"

    .line 9
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_4
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showToast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showToast(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method X1(Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-direct {p0, p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->isLogined(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const p1, 0x7f11010d

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showMessage(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->Z1()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->N1()V

    return-void

    :cond_1
    if-eqz p1, :cond_4

    const-string v0, ""

    .line 5
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;->setDevice_id(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->y:Lcom/join/mgps/rpc/h;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;->getParams1()Lorg/springframework/util/LinkedMultiValueMap;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/h;->z0(Ljava/util/Map;)Lcom/join/mgps/dto/ForumResponse;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponse;->getError()I

    move-result v1

    const/16 v2, 0x2c2

    if-ne v1, v2, :cond_2

    const p1, 0x7f1103b4

    .line 8
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showToast(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->N1()V

    return-void

    :cond_2
    const/16 v2, 0x2bd

    if-ne v1, v2, :cond_3

    .line 10
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->D1()V

    .line 11
    :cond_3
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->B1(Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;Lcom/join/mgps/dto/ForumResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x1

    .line 13
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->V1(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method Y0()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 2
    iget-boolean v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->M0:Z

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return-void

    .line 3
    :cond_0
    iput-boolean v2, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->M0:Z

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->u:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v0

    .line 5
    :try_start_0
    invoke-static {p0, v0}, Lcom/join/mgps/Util/i0;->c0(Landroid/content/Context;I)Lcom/join/mgps/dto/ForumRequestBean$ForumPostsDeleteRequestBean;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 6
    iget-object v3, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->y:Lcom/join/mgps/rpc/h;

    invoke-static {p0, v0}, Lcom/join/mgps/Util/i0;->c0(Landroid/content/Context;I)Lcom/join/mgps/dto/ForumRequestBean$ForumPostsDeleteRequestBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsDeleteRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/join/mgps/rpc/h;->q0(Ljava/util/Map;)Lcom/join/mgps/dto/ForumResponse;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponse;->getError()I

    move-result v3

    if-nez v3, :cond_1

    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/ForumData$ForumPostsDeleteData;

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumData$ForumPostsDeleteData;->isResult()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    const-string v0, "\u5e16\u5b50\u5220\u9664\u6210\u529f"

    .line 10
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showToast(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    :cond_2
    const-string v0, "\u5e16\u5b50\u5220\u9664\u5931\u8d25"

    .line 12
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showToast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :cond_3
    :goto_1
    iput-boolean v1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->M0:Z

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 14
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 15
    :goto_2
    iput-boolean v1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->M0:Z

    .line 16
    throw v0

    :cond_4
    const v0, 0x7f110206

    .line 17
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showToast(Ljava/lang/String;)V

    .line 18
    iput-boolean v1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->M0:Z

    :goto_3
    return-void
.end method

.method Y1(Lcom/join/mgps/dto/ForumBean$ForumCommentBean;)V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->t:Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->E1()V

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->W1()V

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->t1()V

    return-void
.end method

.method Z1()Z
    .locals 1

    .line 1
    invoke-direct {p0, p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->accountBean(Landroid/content/Context;)Lcom/join/mgps/dto/AccountBean;

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

.method afterViews()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/f;->A0()Lcom/join/mgps/rpc/impl/f;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->y:Lcom/join/mgps/rpc/h;

    .line 2
    invoke-static {}, Lcom/join/mgps/rpc/impl/a;->b0()Lcom/join/mgps/rpc/b;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->z:Lcom/join/mgps/rpc/b;

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->k1()V

    .line 4
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->q1()V

    .line 5
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->Y0(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u7528\u6237\u672a\u767b\u5f55\uff0c\u8bf7\u767b\u5f55\uff01"

    .line 6
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showToast(Ljava/lang/String;)V

    .line 7
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->L0(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method back_image()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->J0:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->H0:Z

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->U0()V

    return-void

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method c1()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->K:Lcom/join/mgps/dialog/q0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->K:Lcom/join/mgps/dialog/q0;

    invoke-virtual {v0}, Lcom/join/mgps/dialog/q0;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method d1()V
    .locals 7
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->K0:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->K0:Z

    .line 3
    new-instance v0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;-><init>()V

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->u:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 6
    invoke-virtual {v1}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    .line 7
    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    const v1, 0x7f110106

    .line 8
    :try_start_1
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->Y0(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 9
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->L0(Landroid/content/Context;)V

    const v0, 0x7f11010d

    .line 10
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showToast(Ljava/lang/String;)V

    .line 11
    iput-boolean v2, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->K0:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    iput-boolean v2, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->K0:Z

    return-void

    .line 13
    :cond_2
    :try_start_2
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->T(Landroid/content/Context;)Lcom/join/mgps/dto/AccountBean;

    move-result-object v3

    .line 14
    new-instance v4, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsReportRequestBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v5

    invoke-virtual {v3}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v0

    const-string v6, ""

    invoke-direct {v4, v5, v3, v0, v6}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsReportRequestBean;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->y:Lcom/join/mgps/rpc/h;

    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsReportRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/join/mgps/rpc/h;->c(Ljava/util/Map;)Lcom/join/mgps/dto/ForumResponse;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 16
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponse;->getError()I

    move-result v3

    if-eqz v3, :cond_4

    const/16 v0, 0x2bd

    if-eq v3, v0, :cond_3

    goto :goto_1

    :cond_3
    const v0, 0x7f11010c

    .line 17
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showToast(Ljava/lang/String;)V

    goto :goto_1

    .line 18
    :cond_4
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/ForumData$ForumPostsReportData;

    if-eqz v0, :cond_6

    .line 19
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumData$ForumPostsReportData;->isResult()Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f110107

    .line 20
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showToast(Ljava/lang/String;)V

    goto :goto_1

    .line 21
    :cond_5
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showToast(Ljava/lang/String;)V

    goto :goto_1

    .line 22
    :cond_6
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showToast(Ljava/lang/String;)V

    goto :goto_1

    .line 23
    :cond_7
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showToast(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    .line 24
    :try_start_3
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showToast(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 26
    :goto_1
    iput-boolean v2, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->K0:Z

    goto :goto_3

    :goto_2
    iput-boolean v2, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->K0:Z

    .line 27
    throw v0

    :cond_8
    const v0, 0x7f110206

    .line 28
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showToast(Ljava/lang/String;)V

    .line 29
    iput-boolean v2, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->K0:Z

    :goto_3
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 3
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->l1(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->m1(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "input_method"

    .line 4
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 6
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 7
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    return p1

    .line 8
    :cond_2
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method e1(II)V
    .locals 12
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    if-eqz p1, :cond_0

    const-string v0, "\u8bc4\u8bba\u4e3e\u62a5\u6210\u529f"

    goto :goto_0

    :cond_0
    const-string v0, "\u56de\u590d\u4e3e\u62a5\u6210\u529f"

    :goto_0
    if-eqz p1, :cond_1

    const-string v1, "\u8bc4\u8bba\u4e3e\u62a5\u5931\u8d25"

    goto :goto_1

    :cond_1
    const-string v1, "\u56de\u590d\u4e3e\u62a5\u5931\u8d25"

    .line 1
    :goto_1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_9

    .line 2
    iget-boolean v2, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->L0:Z

    if-eqz v2, :cond_2

    return-void

    :cond_2
    const/4 v2, 0x1

    .line 3
    iput-boolean v2, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->L0:Z

    .line 4
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 5
    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, p2}, Ljava/lang/Integer;-><init>(I)V

    .line 6
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->Y0(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 7
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->L0(Landroid/content/Context;)V

    const p1, 0x7f11010d

    .line 8
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showToast(Ljava/lang/String;)V

    .line 9
    iput-boolean v3, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->L0:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    iput-boolean v3, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->L0:Z

    return-void

    .line 11
    :cond_3
    :try_start_1
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->T(Landroid/content/Context;)Lcom/join/mgps/dto/AccountBean;

    move-result-object p2

    .line 12
    new-instance v11, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsReportRequestBean;

    invoke-virtual {p2}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v5

    invoke-virtual {p2}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const-string v10, ""

    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsReportRequestBean;-><init>(ILjava/lang/String;IIILjava/lang/String;)V

    .line 13
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->y:Lcom/join/mgps/rpc/h;

    invoke-virtual {v11}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsReportRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/join/mgps/rpc/h;->c(Ljava/util/Map;)Lcom/join/mgps/dto/ForumResponse;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 14
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumResponse;->getError()I

    move-result p2

    if-eqz p2, :cond_5

    const/16 p1, 0x2bd

    if-eq p2, p1, :cond_4

    goto :goto_2

    :cond_4
    const p1, 0x7f11010c

    .line 15
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showToast(Ljava/lang/String;)V

    goto :goto_2

    .line 16
    :cond_5
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ForumData$ForumPostsReportData;

    if-eqz p1, :cond_7

    .line 17
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumData$ForumPostsReportData;->isResult()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 18
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showToast(Ljava/lang/String;)V

    goto :goto_2

    .line 19
    :cond_6
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showToast(Ljava/lang/String;)V

    goto :goto_2

    .line 20
    :cond_7
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showToast(Ljava/lang/String;)V

    goto :goto_2

    .line 21
    :cond_8
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showToast(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 22
    :try_start_2
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showToast(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 24
    :goto_2
    iput-boolean v3, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->L0:Z

    goto :goto_4

    :goto_3
    iput-boolean v3, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->L0:Z

    .line 25
    throw p1

    :cond_9
    const p1, 0x7f110206

    .line 26
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showToast(Ljava/lang/String;)V

    .line 27
    iput-boolean v3, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->L0:Z

    :goto_4
    return-void
.end method

.method error(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method

.method f1()V
    .locals 8
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->A:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->A:Z

    .line 3
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x18

    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->T(Landroid/content/Context;)Lcom/join/mgps/dto/AccountBean;

    move-result-object v2

    .line 5
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->Y0(Landroid/content/Context;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 6
    iget-object v3, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->y:Lcom/join/mgps/rpc/h;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v5

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->t:Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

    invoke-virtual {v6}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getPid()I

    move-result v6

    const-string v7, ""

    invoke-interface {v3, v5, v2, v6, v7}, Lcom/join/mgps/rpc/h;->c0(ILjava/lang/String;ILjava/lang/String;)Lcom/join/mgps/dto/ForumResponse;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v4

    .line 7
    :goto_0
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumResponse;->getError()I

    move-result v3

    const/16 v5, 0x2bd

    const/16 v6, 0x14

    if-ne v3, v5, :cond_2

    const v2, 0x7f11010d

    .line 8
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showToast(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0, v6}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->R0(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :goto_1
    iput-boolean v1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->A:Z

    .line 11
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->W1()V

    return-void

    .line 12
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/ForumData$ForumProfileMessageReplyData;

    if-eqz v2, :cond_3

    .line 13
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumData$ForumProfileMessageReplyData;->getComment()Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

    move-result-object v4

    goto :goto_2

    .line 14
    :cond_3
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->R0(I)V

    :goto_2
    if-eqz v4, :cond_4

    .line 15
    invoke-virtual {p0, v4}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->Y1(Lcom/join/mgps/dto/ForumBean$ForumCommentBean;)V

    :cond_4
    if-eqz v4, :cond_6

    .line 16
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getPid()I

    move-result v2

    if-nez v2, :cond_5

    goto :goto_3

    :cond_5
    const/16 v2, 0x20

    .line 17
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->R0(I)V

    .line 18
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->T0()V

    goto :goto_4

    .line 19
    :cond_6
    :goto_3
    invoke-virtual {p0, v6}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->R0(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_0
    move-exception v2

    .line 20
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->R0(I)V

    .line 21
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 22
    :goto_4
    iput-boolean v1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->A:Z

    .line 23
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->W1()V

    goto :goto_6

    .line 24
    :goto_5
    iput-boolean v1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->A:Z

    .line 25
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->W1()V

    .line 26
    throw v0

    :cond_7
    const v0, 0x7f110206

    .line 27
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showToast(Ljava/lang/String;)V

    const/16 v0, 0x11

    .line 28
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->R0(I)V

    :goto_6
    return-void
.end method

.method g1()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->m:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->n:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->J0:Z

    return-void
.end method

.method h1(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->g1()V

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->l:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->l:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 4
    :goto_0
    iput-boolean p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->I0:Z

    return-void
.end method

.method public hideSystemKeyBoard(Landroid/view/View;)V
    .locals 2

    const-string v0, "input_method"

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 3
    iput-boolean v1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->H0:Z

    return-void
.end method

.method public l1(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x7f09088d

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1
    aget v4, v1, v2

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4, p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->i1(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public m1(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1
    instance-of v1, p1, Landroid/widget/EditText;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 2
    fill-array-data v1, :array_0

    .line 3
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 4
    aget v2, v1, v0

    const/4 v3, 0x1

    .line 5
    aget v1, v1, v3

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v4, v1

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    add-int/2addr p1, v2

    .line 8
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    int-to-float v2, v2

    cmpl-float v2, v5, v2

    if-lez v2, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    int-to-float p1, p1

    cmpg-float p1, v2, p1

    if-gez p1, :cond_0

    .line 9
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    int-to-float p2, v4

    cmpg-float p1, p1, p2

    if-ltz p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method n1()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->u:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    if-nez v0, :cond_0

    new-instance v0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->u:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->u:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-static {p0, v0}, Lcom/join/mgps/Util/i0;->v0(Landroid/content/Context;Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->J0:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->H0:Z

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->U0()V

    return-void

    .line 4
    :cond_1
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onResume()V

    .line 2
    iget v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->I:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->q1()V

    :cond_0
    return-void
.end method

.method p1()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->f1()V

    return-void
.end method

.method r1(ZI)V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->g:Landroid/widget/Button;

    const p2, 0x7f08075e

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->g:Landroid/widget/Button;

    const p2, 0x7f080c9c

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->t1()V

    return-void
.end method

.method s1()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->r:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;

    iget-object v1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->s:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->u(Ljava/util/List;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->r:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;

    invoke-virtual {v0}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->notifyDataSetChanged()V

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

.method public showSystemKeyBoard(Landroid/view/View;)V
    .locals 2

    const-string v0, "input_method"

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->H0:Z

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

.method declared-synchronized t1()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->t:Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->M1(Lcom/join/mgps/dto/ForumBean$ForumCommentBean;)V

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->s1()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method touristLogin()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const-string v0, ""

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2
    invoke-direct {p0, p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->isLogined(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    :try_start_0
    new-instance v1, Lcom/join/mgps/dto/TouristLoginRequestBean;

    invoke-direct {v1}, Lcom/join/mgps/dto/TouristLoginRequestBean;-><init>()V

    const-string v2, "2"

    .line 4
    invoke-static {p0}, Lcom/join/android/app/common/utils/j;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/j;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/android/app/common/utils/j;->z()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/TouristLoginRequestBean;->setVersion(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/TouristLoginRequestBean;->setDevice_id(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/TouristLoginRequestBean;->setMac(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/TouristLoginRequestBean;->setSource(Ljava/lang/String;)V

    .line 9
    new-instance v0, Lcom/join/mgps/pref/PrefDef_;

    invoke-direct {v0, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->touriseTUID()Lorg/androidannotations/api/sharedpreferences/k;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/join/mgps/dto/TouristLoginRequestBean;->setTuid(J)V

    .line 10
    invoke-static {v1}, Lcom/join/mgps/Util/u1;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/TouristLoginRequestBean;->setSign(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->z:Lcom/join/mgps/rpc/b;

    invoke-virtual {v1}, Lcom/join/mgps/dto/TouristLoginRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/b;->s(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getError()I

    move-result v1

    if-nez v1, :cond_2

    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/AccountTokenSuccess;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountTokenSuccess;->is_success()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 14
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/AccountTokenSuccess;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountTokenSuccess;->getUser_info()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    .line 15
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lcom/join/mgps/Util/b;->saveAccountData(Lcom/join/mgps/dto/AccountBean;Landroid/content/Context;)V

    .line 16
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->u1()V

    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/AccountTokenSuccess;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountTokenSuccess;->getError_msg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method u1()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    return-void
.end method

.method v1()V
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

    move-result-object v0

    const-string v1, "\u5c1a\u672a\u767b\u5f55\uff0c\u8bf7\u5148\u767b\u5f55\uff01"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    iget v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->w0:I

    invoke-static {p0, v0}, Lcom/join/mgps/Util/i0;->e0(Landroid/content/Context;I)Lcom/join/mgps/dto/ForumRequestBean$ForumPostsPraiseRequestBean;

    move-result-object v0

    const-string v1, ""

    .line 5
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsPraiseRequestBean;->setDevice_id(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->y:Lcom/join/mgps/rpc/h;

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
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->G1()V

    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->N1()V

    return-void

    .line 10
    :cond_2
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/ForumData$ForumPostsPraiseData;

    .line 11
    iget-object v2, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->u:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_praise()Z

    move-result v2

    .line 12
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumPostsPraiseData;->isResult()Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v2, :cond_3

    const-string v2, "\u70b9\u8d5e\u6210\u529f"

    .line 13
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v2, "\u53d6\u6d88\u70b9\u8d5e\u6210\u529f"

    .line 14
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_5

    const-string v2, "\u70b9\u8d5e\u5931\u8d25"

    .line 15
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v2, "\u53d6\u6d88\u70b9\u8d5e\u5931\u8d25"

    .line 16
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showToast(Ljava/lang/String;)V

    .line 17
    :goto_0
    invoke-static {v0, v1}, Lcom/join/mgps/Util/i0;->m1(Lcom/join/mgps/dto/ForumRequestBean$ForumPostsPraiseRequestBean;Lcom/join/mgps/dto/ForumData$ForumPostsPraiseData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method w1(I)V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->E1()V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->t1()V

    return-void
.end method

.method x1(Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->t:Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->getRrid()I

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->x0:I

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getPid()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getReply_list()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->setReply_list(Ljava/util/List;)V

    .line 9
    :cond_1
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->E1()V

    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->t1()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method y1(Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;)V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->t:Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getReply_list()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v2, 0x0

    .line 6
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 7
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;

    .line 8
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->getRid()I

    move-result v4

    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->getRrid()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 9
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->getUid()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->setRuid(I)V

    .line 10
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->setRnickname(Ljava/lang/String;)V

    .line 11
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 12
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 14
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->r:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;

    invoke-virtual {p1}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->notifyDataSetChanged()V

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 15
    :cond_2
    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getUid()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->setRuid(I)V

    .line 17
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->setRnickname(Ljava/lang/String;)V

    .line 18
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->setReply_list(Ljava/util/List;)V

    .line 20
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->r:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;

    invoke-virtual {p1}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->notifyDataSetChanged()V

    .line 21
    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->E1()V

    .line 22
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->t1()V

    return-void
.end method

.method z1(Lcom/join/mgps/dto/ForumBean$ForumCommentBean;)V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->t1()V

    return-void
.end method
