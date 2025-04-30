.class public Lcom/join/mgps/activity/CommentDetailActivity;
.super Lcom/BaseAppCompatActivity;
.source "CommentDetailActivity.java"

# interfaces
.implements Lcom/join/mgps/adapter/CommentDetailAdapter$h;


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c00fd
.end annotation

.annotation build Lorg/androidannotations/annotations/WindowFeature;
    value = {
        0xa
    }
.end annotation


# instance fields
.field private A:I

.field private A0:Landroid/widget/TextView;

.field private B:Z

.field private B0:Landroid/widget/TextView;

.field private C:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/CommentDetailAdapter$j;",
            ">;"
        }
    .end annotation
.end field

.field private C0:Landroid/widget/TextView;

.field private D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;",
            ">;"
        }
    .end annotation
.end field

.field private D0:Landroid/widget/ImageView;

.field private E:I

.field private E0:Landroid/widget/TextView;

.field private F:Lcom/join/mgps/dto/AccountBean;

.field private F0:Landroid/widget/ImageView;

.field private G:Landroid/view/View;

.field private G0:Landroid/widget/TextView;

.field private H:Landroid/widget/LinearLayout;

.field private H0:Landroid/widget/ImageView;

.field private I:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private I0:Landroid/widget/TextView;

.field private J:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private J0:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

.field private K:Landroid/widget/TextView;

.field private K0:Landroid/content/Context;

.field private L0:Ljava/lang/String;

.field private M0:Ljava/lang/String;

.field private N0:Ljava/lang/String;

.field private O0:Ljava/lang/String;

.field private P0:Ljava/lang/String;

.field private Q0:I

.field private R0:Ljava/lang/String;

.field private S0:Ljava/lang/String;

.field T0:Lcom/join/mgps/dialog/x0;

.field private U0:Ljava/lang/String;

.field a:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field b:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field c:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Lcom/join/mgps/ptr/PtrClassicFrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Lcom/join/mgps/customview/XListView2;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field i:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field j:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field k:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field l:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field m:Lcom/join/android/app/common/view/ClearEditText;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field n:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private n0:Landroid/widget/TextView;

.field o:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private o0:Lcom/join/mgps/customview/VipView;

.field p:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private p0:Landroid/widget/TextView;

.field q:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private q0:Landroid/widget/TextView;

.field r:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private r0:Landroid/widget/TextView;

.field s:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private s0:Landroid/widget/TextView;

.field t:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private t0:Landroid/widget/TextView;

.field u:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private u0:Lcom/join/mgps/customview/CopyTextViewNew;

.field v:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private v0:Landroid/widget/TextView;

.field w:Lcom/join/mgps/rpc/e;

.field private w0:Landroid/widget/ImageView;

.field x:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field private x0:Landroid/widget/ImageView;

.field private y:Landroid/content/Context;

.field private y0:Lcom/join/mgps/customview/MStarBar;

.field private z:Lcom/join/mgps/adapter/CommentDetailAdapter;

.field private z0:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/BaseAppCompatActivity;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->A:I

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->B:Z

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->C:Ljava/util/List;

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->D:Ljava/util/List;

    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->J0:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    .line 7
    iput-object p0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->K0:Landroid/content/Context;

    .line 8
    iput v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->Q0:I

    const-string v0, ""

    .line 9
    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->S0:Ljava/lang/String;

    .line 10
    iput-object v1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->T0:Lcom/join/mgps/dialog/x0;

    const-string v0, "desc"

    .line 11
    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->U0:Ljava/lang/String;

    return-void
.end method

.method static synthetic D0(Lcom/join/mgps/activity/CommentDetailActivity;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->K0:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic E0(Lcom/join/mgps/activity/CommentDetailActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->R0:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic F0(Lcom/join/mgps/activity/CommentDetailActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->A:I

    return p1
.end method

.method private F1()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->m:Lcom/join/android/app/common/view/ClearEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->m:Lcom/join/android/app/common/view/ClearEditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->m:Lcom/join/android/app/common/view/ClearEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 4
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/join/mgps/activity/CommentDetailActivity$j;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/CommentDetailActivity$j;-><init>(Lcom/join/mgps/activity/CommentDetailActivity;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic G0(Lcom/join/mgps/activity/CommentDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->R0:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic H0(Lcom/join/mgps/activity/CommentDetailActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->E:I

    return p0
.end method

.method static synthetic I0(Lcom/join/mgps/activity/CommentDetailActivity;)Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->J0:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    return-object p0
.end method

.method static synthetic J0(Lcom/join/mgps/activity/CommentDetailActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->E0:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic K0(Lcom/join/mgps/activity/CommentDetailActivity;Landroid/view/View;Landroid/widget/TextView;Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/activity/CommentDetailActivity;->u1(Landroid/view/View;Landroid/widget/TextView;Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;)V

    return-void
.end method

.method static synthetic L0(Lcom/join/mgps/activity/CommentDetailActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->G0:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic M0(Lcom/join/mgps/activity/CommentDetailActivity;Landroid/view/View;Landroid/widget/TextView;Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/activity/CommentDetailActivity;->M1(Landroid/view/View;Landroid/widget/TextView;Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;)V

    return-void
.end method

.method private M1(Landroid/view/View;Landroid/widget/TextView;Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;)V
    .locals 2

    if-nez p3, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p3}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getIs_despise()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/CommentDetailActivity;->I1()V

    .line 3
    check-cast p1, Landroid/widget/ImageView;

    const p2, 0x7f08038d

    .line 4
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 p1, 0x2

    .line 5
    invoke-virtual {p0, p3, p1}, Lcom/join/mgps/activity/CommentDetailActivity;->t1(Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;I)V

    return-void

    .line 6
    :cond_1
    invoke-virtual {p3, v1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setIs_despise(I)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->K0:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 8
    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f08038f

    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->K0:Landroid/content/Context;

    const v1, 0x7f010051

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 12
    new-instance p1, Lcom/join/mgps/activity/CommentDetailActivity$c;

    invoke-direct {p1, p0, p2, p3}, Lcom/join/mgps/activity/CommentDetailActivity$c;-><init>(Lcom/join/mgps/activity/CommentDetailActivity;Landroid/widget/TextView;Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;)V

    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    .line 13
    :cond_2
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    iget-object p2, p0, Lcom/join/mgps/activity/CommentDetailActivity;->K0:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/IntentUtil;->goLoginInteractive(Landroid/content/Context;)Z

    :goto_0
    return-void
.end method

.method static synthetic N0(Lcom/join/mgps/activity/CommentDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->S0:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic O0(Lcom/join/mgps/activity/CommentDetailActivity;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->D:Ljava/util/List;

    return-object p0
.end method

.method static synthetic P0(Lcom/join/mgps/activity/CommentDetailActivity;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->C:Ljava/util/List;

    return-object p0
.end method

.method static synthetic Q0(Lcom/join/mgps/activity/CommentDetailActivity;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->y:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic R0(Lcom/join/mgps/activity/CommentDetailActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/CommentDetailActivity;->F1()V

    return-void
.end method

.method static synthetic S0(Lcom/join/mgps/activity/CommentDetailActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->M0:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic T0(Lcom/join/mgps/activity/CommentDetailActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->P0:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic U0(Lcom/join/mgps/activity/CommentDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->P0:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic V0(Lcom/join/mgps/activity/CommentDetailActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->O0:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic W0(Lcom/join/mgps/activity/CommentDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->O0:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic X0(Lcom/join/mgps/activity/CommentDetailActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->N0:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic Y0(Lcom/join/mgps/activity/CommentDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->N0:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic Z0(Lcom/join/mgps/activity/CommentDetailActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->Q0:I

    return p0
.end method

.method static synthetic a1(Lcom/join/mgps/activity/CommentDetailActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->Q0:I

    return p1
.end method

.method static synthetic b1(Lcom/join/mgps/activity/CommentDetailActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->B:Z

    return p0
.end method

.method static synthetic c1(Lcom/join/mgps/activity/CommentDetailActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->U0:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d1(Lcom/join/mgps/activity/CommentDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->U0:Ljava/lang/String;

    return-object p1
.end method

.method private g1(Ljava/util/List;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 2
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    .line 3
    new-instance v3, Lcom/join/mgps/adapter/CommentDetailAdapter$j;

    sget-object v4, Lcom/join/mgps/adapter/CommentDetailAdapter$ViewType;->COMMENT:Lcom/join/mgps/adapter/CommentDetailAdapter$ViewType;

    new-instance v5, Lcom/join/mgps/adapter/CommentDetailAdapter$j$a;

    invoke-direct {v5, v2}, Lcom/join/mgps/adapter/CommentDetailAdapter$j$a;-><init>(Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;)V

    invoke-direct {v3, v4, v5}, Lcom/join/mgps/adapter/CommentDetailAdapter$j;-><init>(Lcom/join/mgps/adapter/CommentDetailAdapter$ViewType;Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    .line 4
    iget-object v4, p0, Lcom/join/mgps/activity/CommentDetailActivity;->C:Ljava/util/List;

    invoke-interface {v4, v0, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 5
    :cond_0
    iget-object v4, p0, Lcom/join/mgps/activity/CommentDetailActivity;->C:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    :goto_1
    invoke-virtual {v2}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getSub_comment()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 7
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 8
    new-instance v3, Lcom/join/mgps/adapter/CommentDetailAdapter$j;

    sget-object v4, Lcom/join/mgps/adapter/CommentDetailAdapter$ViewType;->REPLY:Lcom/join/mgps/adapter/CommentDetailAdapter$ViewType;

    new-instance v5, Lcom/join/mgps/adapter/CommentDetailAdapter$j$b;

    .line 9
    invoke-virtual {v2}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getId()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-direct {v5, v6, v2, v0, v7}, Lcom/join/mgps/adapter/CommentDetailAdapter$j$b;-><init>(Ljava/lang/String;Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;IZ)V

    invoke-direct {v3, v4, v5}, Lcom/join/mgps/adapter/CommentDetailAdapter$j;-><init>(Lcom/join/mgps/adapter/CommentDetailAdapter$ViewType;Ljava/lang/Object;)V

    if-eqz p2, :cond_1

    .line 10
    iget-object v2, p0, Lcom/join/mgps/activity/CommentDetailActivity;->C:Ljava/util/List;

    invoke-interface {v2, v0, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 11
    :cond_1
    iget-object v2, p0, Lcom/join/mgps/activity/CommentDetailActivity;->C:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private l1(Ljava/lang/String;)Lcom/join/mgps/dto/RequestCommentDetailArgs;
    .locals 9

    .line 1
    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->x:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->commentToken()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->L0:Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->y:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->F:Lcom/join/mgps/dto/AccountBean;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->E:I

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->y:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v0

    iget-object v2, p0, Lcom/join/mgps/activity/CommentDetailActivity;->o:Ljava/lang/String;

    iget-object v3, p0, Lcom/join/mgps/activity/CommentDetailActivity;->p:Ljava/lang/String;

    iget v4, p0, Lcom/join/mgps/activity/CommentDetailActivity;->E:I

    iget v5, p0, Lcom/join/mgps/activity/CommentDetailActivity;->A:I

    const/16 v6, 0xa

    iget-object v8, p0, Lcom/join/mgps/activity/CommentDetailActivity;->L0:Ljava/lang/String;

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Lcom/join/mgps/Util/RequestBeanUtil;->getCommentDetailList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/RequestCommentDetailArgs;

    move-result-object p1

    return-object p1
.end method

.method private s1()V
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00fe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->G:Landroid/view/View;

    const v1, 0x7f0902a1

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->H:Landroid/widget/LinearLayout;

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->G:Landroid/view/View;

    const v1, 0x7f0900d9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->I:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->G:Landroid/view/View;

    const v1, 0x7f091245

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->J:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->G:Landroid/view/View;

    const v1, 0x7f09057f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->K:Landroid/widget/TextView;

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->G:Landroid/view/View;

    const v1, 0x7f091237

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->n0:Landroid/widget/TextView;

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->G:Landroid/view/View;

    const v1, 0x7f0908b8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/VipView;

    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->o0:Lcom/join/mgps/customview/VipView;

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->G:Landroid/view/View;

    const v1, 0x7f090789

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->p0:Landroid/widget/TextView;

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->G:Landroid/view/View;

    const v1, 0x7f090781

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->q0:Landroid/widget/TextView;

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->G:Landroid/view/View;

    const v1, 0x7f0902ae

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->r0:Landroid/widget/TextView;

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->G:Landroid/view/View;

    const v1, 0x7f090ff4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->s0:Landroid/widget/TextView;

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->G:Landroid/view/View;

    const v1, 0x7f0902eb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->t0:Landroid/widget/TextView;

    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->G:Landroid/view/View;

    const v1, 0x7f0902f1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/CopyTextViewNew;

    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->u0:Lcom/join/mgps/customview/CopyTextViewNew;

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->G:Landroid/view/View;

    const v1, 0x7f090a7b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->v0:Landroid/widget/TextView;

    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->G:Landroid/view/View;

    const v1, 0x7f090780

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->w0:Landroid/widget/ImageView;

    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->G:Landroid/view/View;

    const v1, 0x7f090788

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->x0:Landroid/widget/ImageView;

    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->G:Landroid/view/View;

    const v1, 0x7f0902ac

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/MStarBar;

    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->y0:Lcom/join/mgps/customview/MStarBar;

    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/MStarBar;->setIntegerMark(Z)V

    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->y0:Lcom/join/mgps/customview/MStarBar;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->G:Landroid/view/View;

    const v2, 0x7f0903f9

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->z0:Landroid/widget/LinearLayout;

    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->G:Landroid/view/View;

    const v2, 0x7f090400

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->A0:Landroid/widget/TextView;

    .line 22
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->G:Landroid/view/View;

    const v2, 0x7f09033b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->B0:Landroid/widget/TextView;

    .line 23
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->G:Landroid/view/View;

    const v2, 0x7f090c0a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->C0:Landroid/widget/TextView;

    .line 24
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->G:Landroid/view/View;

    const v2, 0x7f090bdf

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->D0:Landroid/widget/ImageView;

    .line 25
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->G:Landroid/view/View;

    const v2, 0x7f090be0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->E0:Landroid/widget/TextView;

    .line 26
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->G:Landroid/view/View;

    const v2, 0x7f09039c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->F0:Landroid/widget/ImageView;

    .line 27
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->G:Landroid/view/View;

    const v2, 0x7f0903b0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->G0:Landroid/widget/TextView;

    .line 28
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->G:Landroid/view/View;

    const v2, 0x7f090a26

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->H0:Landroid/widget/ImageView;

    .line 29
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->G:Landroid/view/View;

    const v2, 0x7f090a31

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->I0:Landroid/widget/TextView;

    .line 30
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->v0:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 31
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->t0:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 32
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->u0:Lcom/join/mgps/customview/CopyTextViewNew;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 33
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->u0:Lcom/join/mgps/customview/CopyTextViewNew;

    new-instance v1, Lcom/join/mgps/activity/CommentDetailActivity$o;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/CommentDetailActivity$o;-><init>(Lcom/join/mgps/activity/CommentDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 34
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->H:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/join/mgps/activity/CommentDetailActivity$p;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/CommentDetailActivity$p;-><init>(Lcom/join/mgps/activity/CommentDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->A0:Landroid/widget/TextView;

    new-instance v1, Lcom/join/mgps/activity/CommentDetailActivity$q;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/CommentDetailActivity$q;-><init>(Lcom/join/mgps/activity/CommentDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->B0:Landroid/widget/TextView;

    new-instance v1, Lcom/join/mgps/activity/CommentDetailActivity$r;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/CommentDetailActivity$r;-><init>(Lcom/join/mgps/activity/CommentDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->D0:Landroid/widget/ImageView;

    new-instance v1, Lcom/join/mgps/activity/CommentDetailActivity$s;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/CommentDetailActivity$s;-><init>(Lcom/join/mgps/activity/CommentDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->F0:Landroid/widget/ImageView;

    new-instance v1, Lcom/join/mgps/activity/CommentDetailActivity$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/CommentDetailActivity$a;-><init>(Lcom/join/mgps/activity/CommentDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->H0:Landroid/widget/ImageView;

    new-instance v1, Lcom/join/mgps/activity/CommentDetailActivity$b;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/CommentDetailActivity$b;-><init>(Lcom/join/mgps/activity/CommentDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private u1(Landroid/view/View;Landroid/widget/TextView;Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;)V
    .locals 2

    if-nez p3, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p3}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getIs_praise()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/CommentDetailActivity;->J1()V

    .line 3
    check-cast p1, Landroid/widget/ImageView;

    const p2, 0x7f080ca0

    .line 4
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 p1, 0x2

    .line 5
    invoke-virtual {p0, p3, p1}, Lcom/join/mgps/activity/CommentDetailActivity;->L1(Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;I)V

    return-void

    .line 6
    :cond_1
    invoke-virtual {p3, v1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setIs_praise(I)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->K0:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 8
    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f080ca5

    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->K0:Landroid/content/Context;

    const v1, 0x7f010051

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 12
    new-instance p1, Lcom/join/mgps/activity/CommentDetailActivity$d;

    invoke-direct {p1, p0, p2, p3}, Lcom/join/mgps/activity/CommentDetailActivity$d;-><init>(Lcom/join/mgps/activity/CommentDetailActivity;Landroid/widget/TextView;Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;)V

    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    .line 13
    :cond_2
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    iget-object p2, p0, Lcom/join/mgps/activity/CommentDetailActivity;->K0:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/IntentUtil;->goLoginInteractive(Landroid/content/Context;)Z

    :goto_0
    return-void
.end method


# virtual methods
.method A1(Ljava/lang/String;ZII)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->y:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    if-ne p4, p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->z:Lcom/join/mgps/adapter/CommentDetailAdapter;

    invoke-virtual {p1, p3}, Lcom/join/mgps/adapter/CommentDetailAdapter;->j(I)V

    :cond_0
    return-void
.end method

.method B1(Ljava/lang/String;Lcom/join/mgps/dto/CommentCreateBean$InfoBean;Z)V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/CommentDetailActivity;->k1()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->y:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    if-eqz p3, :cond_6

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object p3, p0, Lcom/join/mgps/activity/CommentDetailActivity;->N0:Ljava/lang/String;

    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->o:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p3, v0, :cond_0

    .line 5
    new-instance p3, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    invoke-direct {p3}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;-><init>()V

    .line 6
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setId(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setUid(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->getUser_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setUser_name(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->getRank()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setRank(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->getHead_portrait()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setHead_portrait(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->getGame_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setGame_id(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setContent(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->getMobile_phone_model()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setMobile_phone_model(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->getPraise_count()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setPraise_count(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->getDespise_count()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setDespise_count(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->getStart_game_count()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setStart_game_count(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->getStars_score()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setStars_score(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->getApproval_rate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setApproval_rate(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->getAdd_times()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setAdd_times(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->getIs_despise()I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setIs_belong_to(I)V

    .line 21
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->getReply_count()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setReply_count(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->getIs_praise()I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setIs_praise(I)V

    .line 23
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->getIs_despise()I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setIs_despise(I)V

    .line 24
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->getIs_old()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setIs_old(Ljava/lang/String;)V

    .line 25
    iget v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->Q0:I

    invoke-virtual {p3, v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setPn(I)V

    .line 26
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->getVip_level()I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setVip_level(I)V

    .line 27
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->getSvip_level()I

    move-result p2

    invoke-virtual {p3, p2}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setSvip_level(I)V

    .line 28
    invoke-interface {p1, v2, p3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 29
    iget-object p2, p0, Lcom/join/mgps/activity/CommentDetailActivity;->D:Ljava/util/List;

    invoke-interface {p2, v2, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 30
    invoke-direct {p0, p1, v1}, Lcom/join/mgps/activity/CommentDetailActivity;->g1(Ljava/util/List;Z)V

    goto/16 :goto_3

    :cond_0
    const/4 p1, -0x1

    const/4 p3, 0x0

    const/4 v0, -0x1

    .line 31
    :goto_0
    iget-object v3, p0, Lcom/join/mgps/activity/CommentDetailActivity;->D:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge p3, v3, :cond_2

    .line 32
    iget-object v3, p0, Lcom/join/mgps/activity/CommentDetailActivity;->D:Ljava/util/List;

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/join/mgps/activity/CommentDetailActivity;->S0:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, p3

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    if-ne v0, p1, :cond_3

    return-void

    .line 33
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->D:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    .line 34
    iget-object p3, p0, Lcom/join/mgps/activity/CommentDetailActivity;->N0:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getId()Ljava/lang/String;

    move-result-object v3

    if-eq p3, v3, :cond_4

    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getSub_comment()Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 35
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getSub_comment()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    const/4 v3, 0x0

    :goto_1
    if-ge v3, p3, :cond_4

    .line 36
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getSub_comment()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean$SubCommentBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean$SubCommentBean;->getId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/join/mgps/activity/CommentDetailActivity;->N0:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 37
    :cond_4
    new-instance p3, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean$SubCommentBean;

    invoke-direct {p3}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean$SubCommentBean;-><init>()V

    .line 38
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean$SubCommentBean;->setId(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean$SubCommentBean;->setUid(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->getUser_name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean$SubCommentBean;->setUser_name(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->getGame_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean$SubCommentBean;->setGame_id(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean$SubCommentBean;->setContent(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->getVip_level()I

    move-result v3

    invoke-virtual {p3, v3}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean$SubCommentBean;->setVip_level(I)V

    .line 44
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->getSvip_level()I

    move-result v3

    invoke-virtual {p3, v3}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean$SubCommentBean;->setSvip_level(I)V

    .line 45
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->getReply_vip_level()I

    move-result v3

    invoke-virtual {p3, v3}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean$SubCommentBean;->setReply_vip_level(I)V

    .line 46
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->getReply_svip_level()I

    move-result p2

    invoke-virtual {p3, p2}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean$SubCommentBean;->setReply_svip_level(I)V

    .line 47
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getSub_comment()Ljava/util/List;

    move-result-object p2

    if-nez p2, :cond_5

    .line 48
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 49
    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setSub_comment(Ljava/util/List;)V

    goto :goto_2

    .line 51
    :cond_5
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getSub_comment()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v2, p3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 52
    :goto_2
    iget-object p2, p0, Lcom/join/mgps/activity/CommentDetailActivity;->D:Ljava/util/List;

    invoke-interface {p2, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->C:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 54
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->D:Ljava/util/List;

    invoke-direct {p0, p1, v2}, Lcom/join/mgps/activity/CommentDetailActivity;->g1(Ljava/util/List;Z)V

    .line 55
    :goto_3
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->z:Lcom/join/mgps/adapter/CommentDetailAdapter;

    invoke-virtual {p1}, Lcom/join/mgps/adapter/CommentDetailAdapter;->notifyDataSetChanged()V

    .line 56
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->m:Lcom/join/android/app/common/view/ClearEditText;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->m:Lcom/join/android/app/common/view/ClearEditText;

    const-string p3, "\u6dfb\u52a0\u8bc4\u8bba"

    invoke-virtual {p1, p3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 58
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->o:Ljava/lang/String;

    iput-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->N0:Ljava/lang/String;

    .line 59
    iput v1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->Q0:I

    .line 60
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->J0:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getUser_name()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->O0:Ljava/lang/String;

    .line 61
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->J0:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getUid()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->P0:Ljava/lang/String;

    .line 62
    iput-object p2, p0, Lcom/join/mgps/activity/CommentDetailActivity;->S0:Ljava/lang/String;

    :cond_6
    return-void
.end method

.method C1(Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;)V
    .locals 7
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    if-eqz p1, :cond_c

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getUser_name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->O0:Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getUid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->P0:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getHead_portrait()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->J:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {p0, v0, v1}, Lcom/join/mgps/Util/UtilsMy;->E2(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/drawee/view/SimpleDraweeView;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->J:Lcom/facebook/drawee/view/SimpleDraweeView;

    new-instance v1, Lcom/join/mgps/activity/CommentDetailActivity$n;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/CommentDetailActivity$n;-><init>(Lcom/join/mgps/activity/CommentDetailActivity;Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->n0:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getUser_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->n0:Landroid/widget/TextView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getVip_level()I

    move-result v0

    if-lez v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->n0:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0603cf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getSvip_level()I

    move-result v0

    if-lez v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->n0:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0603d0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->o0:Lcom/join/mgps/customview/VipView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getVip_level()I

    move-result v1

    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getSvip_level()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/customview/VipView;->setVipData(II)V

    .line 12
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getUid()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/join/mgps/activity/CommentDetailActivity;->E:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "1"

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eqz v0, :cond_3

    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->p0:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getIs_old()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->z0:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 16
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->z0:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 17
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->p0:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->z0:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 19
    :goto_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getRank()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->w0:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 21
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->w0:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 22
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->q0:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getRank()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->u0:Lcom/join/mgps/customview/CopyTextViewNew;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getContent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/join/mgps/customview/CopyTextViewNew;->setTextHeader(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getIs_old()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getMobile_phone_model()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 25
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getMobile_phone_model()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    .line 26
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->C0:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 27
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->C0:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getMobile_phone_model()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 28
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->C0:Landroid/widget/TextView;

    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 29
    :goto_3
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->E0:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getPraise_count()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->G0:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getDespise_count()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->I0:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getReply_count()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getAdd_times()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "000"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 33
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->s0:Landroid/widget/TextView;

    invoke-static {v5, v6}, Lcom/join/android/app/common/utils/c;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getIs_old()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getStars_score()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->q:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_4

    .line 36
    :cond_7
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->y0:Lcom/join/mgps/customview/MStarBar;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 37
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->y0:Lcom/join/mgps/customview/MStarBar;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getStars_score()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/MStarBar;->setStarCount(I)V

    .line 38
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->y0:Lcom/join/mgps/customview/MStarBar;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getStars_score()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/customview/MStarBar;->setStarMark(D)V

    goto :goto_5

    .line 39
    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->y0:Lcom/join/mgps/customview/MStarBar;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 40
    :goto_5
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->r0:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 41
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getApproval_rate()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 42
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getApproval_rate()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide v5, 0x4051800000000000L    # 70.0

    cmpl-double v2, v0, v5

    if-lez v2, :cond_9

    .line 43
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->x0:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6

    .line 44
    :cond_9
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->x0:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 45
    :goto_6
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getIs_praise()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 46
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->D0:Landroid/widget/ImageView;

    const v2, 0x7f080ca5

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_7

    .line 47
    :cond_a
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->D0:Landroid/widget/ImageView;

    const v2, 0x7f080ca0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 48
    :goto_7
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getIs_despise()I

    move-result p1

    if-ne p1, v1, :cond_b

    .line 49
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->F0:Landroid/widget/ImageView;

    const v0, 0x7f08038f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_8

    .line 50
    :cond_b
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->F0:Landroid/widget/ImageView;

    const v0, 0x7f08038d

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_c
    :goto_8
    return-void
.end method

.method D1(Lcom/join/mgps/dto/CommentDetailBean$GameInfoBean;)V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$GameInfoBean;->getGame_ico()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$GameInfoBean;->getGame_ico()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->I:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {p0, v0, v1}, Lcom/join/mgps/Util/UtilsMy;->H2(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/drawee/view/SimpleDraweeView;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->K:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$GameInfoBean;->getGame_name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method E1()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->e:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->d:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method G1()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->T0:Lcom/join/mgps/dialog/x0;

    invoke-virtual {v0}, Lcom/join/mgps/dialog/x0;->b()V

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

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget p2, p0, Lcom/join/mgps/activity/CommentDetailActivity;->A:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    .line 2
    iget-object p2, p0, Lcom/join/mgps/activity/CommentDetailActivity;->f:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {p2, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/activity/CommentDetailActivity;->e:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4
    iget-object p2, p0, Lcom/join/mgps/activity/CommentDetailActivity;->i:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    iget-object p2, p0, Lcom/join/mgps/activity/CommentDetailActivity;->h:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6
    iget-object p2, p0, Lcom/join/mgps/activity/CommentDetailActivity;->g:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7
    iget-object p2, p0, Lcom/join/mgps/activity/CommentDetailActivity;->D:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 8
    iget-object p2, p0, Lcom/join/mgps/activity/CommentDetailActivity;->C:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    :cond_0
    if-nez p1, :cond_1

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->f:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {p1}, Lcom/join/mgps/customview/XListView2;->setNoMore()V

    return-void

    .line 10
    :cond_1
    iget p2, p0, Lcom/join/mgps/activity/CommentDetailActivity;->A:I

    add-int/2addr p2, v0

    iput p2, p0, Lcom/join/mgps/activity/CommentDetailActivity;->A:I

    .line 11
    iget-object p2, p0, Lcom/join/mgps/activity/CommentDetailActivity;->D:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 12
    invoke-direct {p0, p1, v1}, Lcom/join/mgps/activity/CommentDetailActivity;->g1(Ljava/util/List;Z)V

    .line 13
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_2

    .line 14
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->f:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {p1}, Lcom/join/mgps/customview/XListView2;->setNoMore()V

    .line 15
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->z:Lcom/join/mgps/adapter/CommentDetailAdapter;

    invoke-virtual {p1}, Lcom/join/mgps/adapter/CommentDetailAdapter;->notifyDataSetChanged()V

    .line 16
    invoke-virtual {p0}, Lcom/join/mgps/activity/CommentDetailActivity;->N1()V

    return-void
.end method

.method public I1()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->J0:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getDespise_count()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lcom/join/mgps/activity/CommentDetailActivity;->J0:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setIs_despise(I)V

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->J0:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setDespise_count(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/activity/CommentDetailActivity;->J0:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setDespise_count(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public J1()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->J0:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getPraise_count()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lcom/join/mgps/activity/CommentDetailActivity;->J0:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setIs_praise(I)V

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->J0:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setPraise_count(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/activity/CommentDetailActivity;->J0:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setPraise_count(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method K1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->y:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/CommentDetailActivity;->G1()V

    .line 3
    :try_start_0
    invoke-virtual/range {p0 .. p7}, Lcom/join/mgps/activity/CommentDetailActivity;->o1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/join/mgps/dto/CommentCreateArgs;

    move-result-object p1

    .line 4
    iget-object p2, p0, Lcom/join/mgps/activity/CommentDetailActivity;->w:Lcom/join/mgps/rpc/e;

    invoke-interface {p2, p1}, Lcom/join/mgps/rpc/e;->d(Lcom/join/mgps/dto/CommentCreateArgs;)Lcom/join/mgps/dto/CommentResponse;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getCode()I

    move-result p2

    if-eqz p2, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getCode()I

    move-result p2

    const/16 p3, 0x321

    if-ne p2, p3, :cond_0

    .line 7
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/CommentDetailActivity;->y1(Lcom/join/mgps/dto/CommentResponse;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v2, v1}, Lcom/join/mgps/activity/CommentDetailActivity;->B1(Ljava/lang/String;Lcom/join/mgps/dto/CommentCreateBean$InfoBean;Z)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getData_info()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/dto/CommentCreateBean;

    invoke-virtual {p2}, Lcom/join/mgps/dto/CommentCreateBean;->getInfo()Lcom/join/mgps/dto/CommentCreateBean$InfoBean;

    move-result-object p2

    if-eqz p2, :cond_4

    const-string p2, "\u5185\u5bb9\u5c06\u5728\u5ba1\u6838\u540e\u663e\u793a\uff01"

    .line 10
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getData_info()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/CommentCreateBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentCreateBean;->getInfo()Lcom/join/mgps/dto/CommentCreateBean$InfoBean;

    move-result-object p1

    const/4 p3, 0x1

    invoke-virtual {p0, p2, p1, p3}, Lcom/join/mgps/activity/CommentDetailActivity;->B1(Ljava/lang/String;Lcom/join/mgps/dto/CommentCreateBean$InfoBean;Z)V

    goto :goto_0

    :cond_2
    const-string p1, "\u56de\u590d\u5931\u8d25\uff0c\u8bf7\u7a0d\u5019\u518d\u8bd5~"

    .line 11
    invoke-virtual {p0, p1, v2, v1}, Lcom/join/mgps/activity/CommentDetailActivity;->B1(Ljava/lang/String;Lcom/join/mgps/dto/CommentCreateBean$InfoBean;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, v2, v1}, Lcom/join/mgps/activity/CommentDetailActivity;->B1(Ljava/lang/String;Lcom/join/mgps/dto/CommentCreateBean$InfoBean;Z)V

    .line 13
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_3
    const-string p1, "\u7f51\u7edc\u8fde\u63a5\u5931\u8d25\uff0c\u518d\u8bd5\u8bd5\u5427~"

    .line 14
    invoke-virtual {p0, p1, v2, v1}, Lcom/join/mgps/activity/CommentDetailActivity;->B1(Ljava/lang/String;Lcom/join/mgps/dto/CommentCreateBean$InfoBean;Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method L1(Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;I)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const-string v0, "\u64cd\u4f5c\u5931\u8d25\uff0c\u8bf7\u7a0d\u5019\u518d\u8bd5~"

    .line 1
    iget-object v1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->y:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getPn()I

    move-result p1

    invoke-virtual {p0, v1, p2, p1}, Lcom/join/mgps/activity/CommentDetailActivity;->n1(Ljava/lang/String;II)Lcom/join/mgps/dto/RequestCommentpraiseArgs;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lcom/join/mgps/activity/CommentDetailActivity;->w:Lcom/join/mgps/rpc/e;

    invoke-interface {p2, p1}, Lcom/join/mgps/rpc/e;->h(Lcom/join/mgps/dto/RequestCommentpraiseArgs;)Lcom/join/mgps/dto/CommentResponse;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getSucc()I

    move-result p2

    if-eq p2, v2, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getCode()I

    move-result p2

    const/16 v1, 0x321

    if-ne p2, v1, :cond_0

    .line 6
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/CommentDetailActivity;->y1(Lcom/join/mgps/dto/CommentResponse;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v2, v2}, Lcom/join/mgps/activity/CommentDetailActivity;->x1(Ljava/lang/String;ZI)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/CommentDetailActivity;->i1(I)V

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p0, v0, v2, v2}, Lcom/join/mgps/activity/CommentDetailActivity;->x1(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p0, v0, v2, v2}, Lcom/join/mgps/activity/CommentDetailActivity;->x1(Ljava/lang/String;ZI)V

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_3
    const-string p1, "\u7f51\u7edc\u8fde\u63a5\u5931\u8d25\uff0c\u518d\u8bd5\u8bd5\u5427~"

    .line 12
    invoke-virtual {p0, p1, v2, v2}, Lcom/join/mgps/activity/CommentDetailActivity;->x1(Ljava/lang/String;ZI)V

    :goto_0
    return-void
.end method

.method N1()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->f:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->t()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->f:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->u()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->B:Z

    return-void
.end method

.method afterView()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/d;->m()Lcom/join/mgps/rpc/impl/d;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->w:Lcom/join/mgps/rpc/e;

    .line 2
    iput-object p0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->y:Landroid/content/Context;

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->b:Landroid/widget/TextView;

    const-string v1, "\u70b9\u8bc4\u8be6\u60c5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->t(Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->x:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->commentToken()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->L0:Ljava/lang/String;

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->o:Ljava/lang/String;

    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->M0:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->N0:Ljava/lang/String;

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->y:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/a0;->c0(Landroid/content/Context;)Lcom/join/mgps/Util/a0;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->y:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/z;->x(Landroid/content/Context;)Lcom/join/mgps/dialog/x0;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->T0:Lcom/join/mgps/dialog/x0;

    .line 9
    invoke-direct {p0}, Lcom/join/mgps/activity/CommentDetailActivity;->s1()V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->m:Lcom/join/android/app/common/view/ClearEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/join/android/app/common/view/ClearEditText;->setShowDeleteIcon(Z)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->j:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->k:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->n:Landroid/widget/Button;

    new-instance v2, Lcom/join/mgps/activity/CommentDetailActivity$k;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/CommentDetailActivity$k;-><init>(Lcom/join/mgps/activity/CommentDetailActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    invoke-virtual {p0}, Lcom/join/mgps/activity/CommentDetailActivity;->showLoding()V

    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->U0:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/CommentDetailActivity;->m1(Ljava/lang/String;)V

    .line 17
    new-instance v0, Lcom/join/mgps/adapter/CommentDetailAdapter;

    iget-object v2, p0, Lcom/join/mgps/activity/CommentDetailActivity;->y:Landroid/content/Context;

    iget-object v3, p0, Lcom/join/mgps/activity/CommentDetailActivity;->C:Ljava/util/List;

    invoke-direct {v0, v2, v3, p0}, Lcom/join/mgps/adapter/CommentDetailAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/join/mgps/adapter/CommentDetailAdapter$h;)V

    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->z:Lcom/join/mgps/adapter/CommentDetailAdapter;

    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->f:Lcom/join/mgps/customview/XListView2;

    iget-object v2, p0, Lcom/join/mgps/activity/CommentDetailActivity;->G:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->f:Lcom/join/mgps/customview/XListView2;

    iget-object v2, p0, Lcom/join/mgps/activity/CommentDetailActivity;->z:Lcom/join/mgps/adapter/CommentDetailAdapter;

    invoke-virtual {v0, v2}, Lcom/join/mgps/customview/XListView2;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->f:Lcom/join/mgps/customview/XListView2;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Lcom/join/mgps/customview/XListView2;->setPreLoadCount(I)V

    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->f:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 22
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->f:Lcom/join/mgps/customview/XListView2;

    new-instance v1, Lcom/join/mgps/activity/CommentDetailActivity$l;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/CommentDetailActivity$l;-><init>(Lcom/join/mgps/activity/CommentDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullLoadEnable(Lcom/join/mgps/customview/i;)V

    .line 23
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->f:Lcom/join/mgps/customview/XListView2;

    new-instance v1, Lcom/join/mgps/activity/CommentDetailActivity$m;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/CommentDetailActivity$m;-><init>(Lcom/join/mgps/activity/CommentDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullRefreshEnable(Lcom/join/mgps/customview/j;)V

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

.method public e1()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->J0:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getDespise_count()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lcom/join/mgps/activity/CommentDetailActivity;->J0:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setIs_despise(I)V

    .line 3
    iget-object v2, p0, Lcom/join/mgps/activity/CommentDetailActivity;->J0:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setDespise_count(Ljava/lang/String;)V

    return-void
.end method

.method public f1()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->J0:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getPraise_count()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lcom/join/mgps/activity/CommentDetailActivity;->J0:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setIs_praise(I)V

    .line 3
    iget-object v2, p0, Lcom/join/mgps/activity/CommentDetailActivity;->J0:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setPraise_count(Ljava/lang/String;)V

    return-void
.end method

.method h1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 14

    move-object v8, p0

    .line 1
    new-instance v9, Lcom/join/mgps/customview/t;

    iget-object v0, v8, Lcom/join/mgps/activity/CommentDetailActivity;->y:Landroid/content/Context;

    const v1, 0x7f120176

    invoke-direct {v9, v0, v1}, Lcom/join/mgps/customview/t;-><init>(Landroid/content/Context;I)V

    const v0, 0x7f0c0108

    .line 2
    invoke-virtual {v9, v0}, Landroid/app/Dialog;->setContentView(I)V

    const v0, 0x7f090d19

    .line 3
    invoke-virtual {v9, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/widget/TextView;

    const v0, 0x7f090d1c

    .line 4
    invoke-virtual {v9, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/widget/TextView;

    const v0, 0x7f090212

    .line 5
    invoke-virtual {v9, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/widget/TextView;

    .line 6
    new-instance v13, Lcom/join/mgps/activity/CommentDetailActivity$g;

    move-object v0, v13

    move-object v1, p0

    move-object v2, v9

    move-object/from16 v3, p2

    move-object v4, p1

    move/from16 v5, p5

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/activity/CommentDetailActivity$g;-><init>(Lcom/join/mgps/activity/CommentDetailActivity;Lcom/join/mgps/customview/t;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    new-instance v0, Lcom/join/mgps/activity/CommentDetailActivity$h;

    move-object v1, p1

    invoke-direct {v0, p0, v9, p1}, Lcom/join/mgps/activity/CommentDetailActivity$h;-><init>(Lcom/join/mgps/activity/CommentDetailActivity;Lcom/join/mgps/customview/t;Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    new-instance v0, Lcom/join/mgps/activity/CommentDetailActivity$i;

    invoke-direct {v0, p0, v9}, Lcom/join/mgps/activity/CommentDetailActivity$i;-><init>(Lcom/join/mgps/activity/CommentDetailActivity;Lcom/join/mgps/customview/t;)V

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    invoke-virtual {v9}, Landroid/app/Dialog;->show()V

    .line 10
    invoke-virtual {v9}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x50

    .line 11
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v1, -0x1

    .line 12
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, -0x2

    .line 13
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 14
    invoke-virtual {v9}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 15
    invoke-virtual {v9}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public i1(I)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/CommentDetailActivity;->v1(I)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/CommentDetailActivity;->w1(I)V

    :goto_0
    return-void
.end method

.method j1()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const-string v0, "\u5220\u9664\u5931\u8d25\uff0c\u8bf7\u7a0d\u5019\u518d\u8bd5~"

    .line 1
    iget-object v1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->y:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->J0:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/join/mgps/activity/CommentDetailActivity;->J0:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getPn()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Lcom/join/mgps/activity/CommentDetailActivity;->p1(Ljava/lang/String;I)Lcom/join/mgps/dto/DeleteCommentArgs;

    move-result-object v1

    .line 3
    iget-object v3, p0, Lcom/join/mgps/activity/CommentDetailActivity;->w:Lcom/join/mgps/rpc/e;

    invoke-interface {v3, v1}, Lcom/join/mgps/rpc/e;->k(Lcom/join/mgps/dto/DeleteCommentArgs;)Lcom/join/mgps/dto/CommentResponse;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 4
    invoke-virtual {v1}, Lcom/join/mgps/dto/CommentResponse;->getSucc()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 5
    invoke-virtual {v1}, Lcom/join/mgps/dto/CommentResponse;->getCode()I

    move-result v3

    const/16 v4, 0x321

    if-ne v3, v4, :cond_0

    .line 6
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/CommentDetailActivity;->y1(Lcom/join/mgps/dto/CommentResponse;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v1}, Lcom/join/mgps/dto/CommentResponse;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Lcom/join/mgps/activity/CommentDetailActivity;->z1(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    const-string v1, ""

    .line 8
    invoke-virtual {p0, v1, v4}, Lcom/join/mgps/activity/CommentDetailActivity;->z1(Ljava/lang/String;Z)V

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/CommentDetailActivity;->z1(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 10
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/CommentDetailActivity;->z1(Ljava/lang/String;Z)V

    .line 11
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_3
    const-string v0, "\u7f51\u7edc\u8fde\u63a5\u5931\u8d25\uff0c\u518d\u8bd5\u8bd5\u5427~"

    .line 12
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/CommentDetailActivity;->z1(Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method k1()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->T0:Lcom/join/mgps/dialog/x0;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public m(Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean$SubCommentBean;ILjava/lang/String;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean$SubCommentBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean$SubCommentBean;->getUser_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean$SubCommentBean;->getUid()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v4, p3

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/join/mgps/activity/CommentDetailActivity;->h1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method m1(Ljava/lang/String;)V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->y:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->B:Z

    .line 3
    :try_start_0
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/CommentDetailActivity;->l1(Ljava/lang/String;)Lcom/join/mgps/dto/RequestCommentDetailArgs;

    move-result-object p1

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->w:Lcom/join/mgps/rpc/e;

    invoke-interface {v1, p1}, Lcom/join/mgps/rpc/e;->e(Lcom/join/mgps/dto/RequestCommentDetailArgs;)Lcom/join/mgps/dto/CommentResponse;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getCode()I

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/CommentDetailActivity;->y1(Lcom/join/mgps/dto/CommentResponse;)V

    .line 7
    :cond_0
    iget v1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->A:I

    if-ne v1, v0, :cond_2

    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getData_info()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/CommentDetailBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CommentDetailBean;->getMain_comment()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getData_info()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/CommentDetailBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CommentDetailBean;->getMain_comment()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_2

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/CommentDetailActivity;->E1()V

    return-void

    .line 9
    :cond_2
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getData_info()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/CommentDetailBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CommentDetailBean;->getGame_info()Lcom/join/mgps/dto/CommentDetailBean$GameInfoBean;

    move-result-object v1

    .line 10
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getData_info()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/CommentDetailBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean;->getMain_comment()Ljava/util/List;

    move-result-object p1

    .line 11
    iget v2, p0, Lcom/join/mgps/activity/CommentDetailActivity;->A:I

    if-ne v2, v0, :cond_3

    if-eqz v1, :cond_3

    .line 12
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/CommentDetailActivity;->D1(Lcom/join/mgps/dto/CommentDetailBean$GameInfoBean;)V

    :cond_3
    const/16 v1, 0xa

    .line 13
    iget v2, p0, Lcom/join/mgps/activity/CommentDetailActivity;->A:I

    const/4 v3, 0x0

    if-ne v2, v0, :cond_4

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 14
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->J0:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    .line 15
    iget v1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->A:I

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setPn(I)V

    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->J0:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/CommentDetailActivity;->C1(Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;)V

    .line 17
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/16 v1, 0x9

    :cond_4
    if-eqz p1, :cond_5

    .line 18
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_5

    .line 19
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    iget v2, p0, Lcom/join/mgps/activity/CommentDetailActivity;->A:I

    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setPn(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 20
    :cond_5
    invoke-virtual {p0, p1, v1}, Lcom/join/mgps/activity/CommentDetailActivity;->H1(Ljava/util/List;I)V

    goto :goto_1

    .line 21
    :cond_6
    invoke-virtual {p0}, Lcom/join/mgps/activity/CommentDetailActivity;->showLodingFailed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 22
    invoke-virtual {p0}, Lcom/join/mgps/activity/CommentDetailActivity;->showLodingFailed()V

    .line 23
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 24
    :cond_7
    invoke-virtual {p0}, Lcom/join/mgps/activity/CommentDetailActivity;->showLodingFailed()V

    :goto_1
    return-void
.end method

.method public n1(Ljava/lang/String;II)Lcom/join/mgps/dto/RequestCommentpraiseArgs;
    .locals 9

    .line 1
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->x:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->commentToken()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->L0:Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->y:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->F:Lcom/join/mgps/dto/AccountBean;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->E:I

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->F:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    move-object v5, v0

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->y:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->p:Ljava/lang/String;

    iget-object v2, p0, Lcom/join/mgps/activity/CommentDetailActivity;->L0:Ljava/lang/String;

    iget v6, p0, Lcom/join/mgps/activity/CommentDetailActivity;->E:I

    move-object v4, p1

    move v7, p2

    move v8, p3

    invoke-virtual/range {v0 .. v8}, Lcom/join/mgps/Util/RequestBeanUtil;->getPraiseComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Lcom/join/mgps/dto/RequestCommentpraiseArgs;

    move-result-object p1

    return-object p1
.end method

.method public o1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/join/mgps/dto/CommentCreateArgs;
    .locals 18

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/join/mgps/activity/CommentDetailActivity;->x:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->commentToken()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v1

    invoke-virtual {v1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    .line 2
    iget-object v1, v0, Lcom/join/mgps/activity/CommentDetailActivity;->y:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v1

    iput-object v1, v0, Lcom/join/mgps/activity/CommentDetailActivity;->F:Lcom/join/mgps/dto/AccountBean;

    const-string v2, ""

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v1

    .line 4
    iget-object v2, v0, Lcom/join/mgps/activity/CommentDetailActivity;->F:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getNickname()Ljava/lang/String;

    move-result-object v2

    .line 5
    iget-object v3, v0, Lcom/join/mgps/activity/CommentDetailActivity;->F:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/AccountBean;->getAvatarSrc()Ljava/lang/String;

    move-result-object v3

    .line 6
    iget-object v4, v0, Lcom/join/mgps/activity/CommentDetailActivity;->F:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v4

    move v13, v1

    move-object v10, v2

    move-object v11, v3

    move-object v12, v4

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    move-object v10, v2

    move-object v11, v10

    move-object v12, v11

    const/4 v13, -0x1

    .line 7
    :goto_0
    iget-object v1, v0, Lcom/join/mgps/activity/CommentDetailActivity;->y:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v2

    iget-object v3, v0, Lcom/join/mgps/activity/CommentDetailActivity;->p:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v8, 0x2

    move-object/from16 v5, p2

    move-object/from16 v7, p3

    move-object/from16 v9, p1

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    move-object/from16 v16, p6

    move/from16 v17, p7

    invoke-virtual/range {v2 .. v17}, Lcom/join/mgps/Util/RequestBeanUtil;->getReplyCreateCommentBean(Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/join/mgps/dto/CommentCreateArgs;

    move-result-object v1

    return-object v1
.end method

.method public onChangeComment(Lcom/join/mgps/event/h;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/event/h;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->y0:Lcom/join/mgps/customview/MStarBar;

    invoke-virtual {p1}, Lcom/join/mgps/event/h;->c()D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/MStarBar;->setStarCount(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->y0:Lcom/join/mgps/customview/MStarBar;

    invoke-virtual {p1}, Lcom/join/mgps/event/h;->c()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/customview/MStarBar;->setStarMark(D)V

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/event/h;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/join/mgps/event/h;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->C0:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->C0:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/event/h;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 7
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->C0:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->J0:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setMobile_phone_model(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onDestroy()V

    .line 2
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->y(Ljava/lang/Object;)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onResume()V

    return-void
.end method

.method public p1(Ljava/lang/String;I)Lcom/join/mgps/dto/DeleteCommentArgs;
    .locals 8

    .line 1
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->x:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->commentToken()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->L0:Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->y:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->F:Lcom/join/mgps/dto/AccountBean;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->E:I

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->F:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    move-object v5, v0

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->y:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->p:Ljava/lang/String;

    iget-object v2, p0, Lcom/join/mgps/activity/CommentDetailActivity;->L0:Ljava/lang/String;

    iget v6, p0, Lcom/join/mgps/activity/CommentDetailActivity;->E:I

    move-object v4, p1

    move v7, p2

    invoke-virtual/range {v0 .. v7}, Lcom/join/mgps/Util/RequestBeanUtil;->getDeleteComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lcom/join/mgps/dto/DeleteCommentArgs;

    move-result-object p1

    return-object p1
.end method

.method q1()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->y:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {p0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Lcom/join/mgps/Util/RequestBeanUtil;->getTokenRequestBean(Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/CommentRequest;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->w:Lcom/join/mgps/rpc/e;

    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/e;->c(Lcom/join/mgps/dto/CommentRequest;)Lcom/join/mgps/dto/CommentResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentResponse;->getCode()I

    move-result v1

    if-nez v1, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentResponse;->getData_info()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentResponse;->getData_info()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/CommentTokenBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CommentTokenBean;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentResponse;->getData_info()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/CommentTokenBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/CommentTokenBean;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentResponse;->getData_info()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/CommentTokenBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentTokenBean;->getTimes()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/AESUtils;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->x:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->commentToken()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->x:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->lastCheckInTime()Lorg/androidannotations/api/sharedpreferences/k;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public r(Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;I)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getUser_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getPn()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/join/mgps/activity/CommentDetailActivity;->h1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method r1()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00ff

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090c2f

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f090c30

    .line 3
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 4
    new-instance v3, Landroid/widget/PopupWindow;

    const/4 v4, -0x2

    invoke-direct {v3, v0, v4, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 5
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const-string v4, "#00000000"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v0, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    .line 6
    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 7
    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 8
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->update()V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->c:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->U0:Ljava/lang/String;

    const-string v4, "desc"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u987a\u5e8f\u67e5\u770b"

    .line 11
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const-string v0, "\u5012\u5e8f\u67e5\u770b"

    .line 12
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    :goto_0
    new-instance v0, Lcom/join/mgps/activity/CommentDetailActivity$e;

    invoke-direct {v0, p0, v3}, Lcom/join/mgps/activity/CommentDetailActivity$e;-><init>(Lcom/join/mgps/activity/CommentDetailActivity;Landroid/widget/PopupWindow;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    new-instance v0, Lcom/join/mgps/activity/CommentDetailActivity$f;

    invoke-direct {v0, p0, v3}, Lcom/join/mgps/activity/CommentDetailActivity$f;-><init>(Lcom/join/mgps/activity/CommentDetailActivity;Landroid/widget/PopupWindow;)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method setNetwork()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->I2(Landroid/content/Context;)V

    return-void
.end method

.method showLoding()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->f:Lcom/join/mgps/customview/XListView2;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->e:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->g:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method showLodingFailed()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/CommentDetailActivity;->N1()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->D:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x7f110206

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->f:Lcom/join/mgps/customview/XListView2;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->e:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method t1(Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;I)V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const-string v0, "\u64cd\u4f5c\u5931\u8d25\uff0c\u8bf7\u7a0d\u5019\u518d\u8bd5~"

    .line 1
    iget-object v1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->y:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getPn()I

    move-result p1

    invoke-virtual {p0, v1, p2, p1}, Lcom/join/mgps/activity/CommentDetailActivity;->n1(Ljava/lang/String;II)Lcom/join/mgps/dto/RequestCommentpraiseArgs;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lcom/join/mgps/activity/CommentDetailActivity;->w:Lcom/join/mgps/rpc/e;

    invoke-interface {p2, p1}, Lcom/join/mgps/rpc/e;->l(Lcom/join/mgps/dto/RequestCommentpraiseArgs;)Lcom/join/mgps/dto/CommentResponse;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getSucc()I

    move-result p2

    if-eq p2, v3, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getCode()I

    move-result p2

    const/16 v1, 0x321

    if-ne p2, v1, :cond_0

    .line 6
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/CommentDetailActivity;->y1(Lcom/join/mgps/dto/CommentResponse;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v3, v2}, Lcom/join/mgps/activity/CommentDetailActivity;->x1(Ljava/lang/String;ZI)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/CommentDetailActivity;->i1(I)V

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p0, v0, v3, v2}, Lcom/join/mgps/activity/CommentDetailActivity;->x1(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p0, v0, v3, v2}, Lcom/join/mgps/activity/CommentDetailActivity;->x1(Ljava/lang/String;ZI)V

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_3
    const-string p1, "\u7f51\u7edc\u8fde\u63a5\u5931\u8d25\uff0c\u518d\u8bd5\u8bd5\u5427~"

    .line 12
    invoke-virtual {p0, p1, v3, v2}, Lcom/join/mgps/activity/CommentDetailActivity;->x1(Ljava/lang/String;ZI)V

    :goto_0
    return-void
.end method

.method public v1(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->J0:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getDespise_count()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lcom/join/mgps/activity/CommentDetailActivity;->J0:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getIs_despise()I

    move-result v2

    const-string v3, ""

    const-wide/16 v4, 0x1

    const/4 v6, 0x1

    if-ne v2, v6, :cond_1

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->J0:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setIs_despise(I)V

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long p1, v0, v4

    if-gez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->J0:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    const-string v0, "0"

    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setDespise_count(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->J0:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setDespise_count(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eq p1, v6, :cond_2

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->J0:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    invoke-virtual {p1, v6}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setIs_despise(I)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->J0:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-long/2addr v0, v4

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setDespise_count(Ljava/lang/String;)V

    .line 8
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->J0:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/CommentDetailActivity;->C1(Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;)V

    return-void
.end method

.method public w1(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->J0:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getPraise_count()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lcom/join/mgps/activity/CommentDetailActivity;->J0:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getIs_praise()I

    move-result v2

    const-string v3, ""

    const-wide/16 v4, 0x1

    const/4 v6, 0x1

    if-ne v2, v6, :cond_1

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->J0:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setIs_praise(I)V

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long p1, v0, v4

    if-gez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->J0:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    const-string v0, "0"

    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setPraise_count(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->J0:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setPraise_count(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eq p1, v6, :cond_2

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->J0:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    invoke-virtual {p1, v6}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setIs_praise(I)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->J0:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-long/2addr v0, v4

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setPraise_count(Ljava/lang/String;)V

    .line 8
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->J0:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/CommentDetailActivity;->C1(Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;)V

    return-void
.end method

.method public x0(Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;II)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const-string v0, "\u64cd\u4f5c\u5931\u8d25\uff0c\u8bf7\u7a0d\u5019\u518d\u8bd5~"

    .line 1
    iget-object v1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->y:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getPn()I

    move-result p1

    invoke-virtual {p0, v1, p3, p1}, Lcom/join/mgps/activity/CommentDetailActivity;->n1(Ljava/lang/String;II)Lcom/join/mgps/dto/RequestCommentpraiseArgs;

    move-result-object p1

    .line 3
    iget-object p3, p0, Lcom/join/mgps/activity/CommentDetailActivity;->w:Lcom/join/mgps/rpc/e;

    invoke-interface {p3, p1}, Lcom/join/mgps/rpc/e;->h(Lcom/join/mgps/dto/RequestCommentpraiseArgs;)Lcom/join/mgps/dto/CommentResponse;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getSucc()I

    move-result p3

    if-eq p3, v2, :cond_3

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getCode()I

    move-result p3

    const/16 v1, 0x321

    if-ne p3, v1, :cond_0

    .line 6
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/CommentDetailActivity;->y1(Lcom/join/mgps/dto/CommentResponse;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v2, p2, v2}, Lcom/join/mgps/activity/CommentDetailActivity;->A1(Ljava/lang/String;ZII)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0, v0, v2, p2, v2}, Lcom/join/mgps/activity/CommentDetailActivity;->A1(Ljava/lang/String;ZII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p0, v0, v2, p2, v2}, Lcom/join/mgps/activity/CommentDetailActivity;->A1(Ljava/lang/String;ZII)V

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    const-string p1, "\u7f51\u7edc\u8fde\u63a5\u5931\u8d25\uff0c\u518d\u8bd5\u8bd5\u5427~"

    .line 11
    invoke-virtual {p0, p1, v2, p2, v2}, Lcom/join/mgps/activity/CommentDetailActivity;->A1(Ljava/lang/String;ZII)V

    :cond_3
    :goto_0
    return-void
.end method

.method x1(Ljava/lang/String;ZI)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->y:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    const/4 p2, 0x0

    if-ne p3, p1, :cond_0

    .line 2
    invoke-virtual {p0, p2}, Lcom/join/mgps/activity/CommentDetailActivity;->w1(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p2}, Lcom/join/mgps/activity/CommentDetailActivity;->v1(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method y1(Lcom/join/mgps/dto/CommentResponse;)V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getCode()I

    move-result v0

    const/16 v1, 0x321

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/CommentDetailActivity;->q1()V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->y:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "\u6570\u636e\u8bbf\u95ee\u5931\u8d25\uff0c\u8bf7\u7a0d\u5019\u518d\u8bd5\uff01"

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->y:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method z1(Ljava/lang/String;Z)V
    .locals 8
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->y:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 3
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    new-instance p2, Lcom/join/mgps/event/h;

    const/4 v1, 0x1

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-string v2, ""

    const-string v7, ""

    move-object v0, p2

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/event/h;-><init>(ILjava/lang/String;DJLjava/lang/String;)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method
