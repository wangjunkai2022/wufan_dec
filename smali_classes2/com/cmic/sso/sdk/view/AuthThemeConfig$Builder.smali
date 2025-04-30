.class public Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;
.super Ljava/lang/Object;
.source "AuthThemeConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmic/sso/sdk/view/AuthThemeConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:I

.field private E:I

.field private F:Ljava/lang/String;

.field private G:Z

.field private H:Lcom/cmic/sso/sdk/view/BackPressedListener;

.field private I:Lcom/cmic/sso/sdk/view/LoginClickListener;

.field private J:Lcom/cmic/sso/sdk/view/CheckBoxListener;

.field private K:Ljava/lang/String;

.field private L:Ljava/lang/String;

.field private M:I

.field private N:I

.field private O:Z

.field private P:Ljava/lang/String;

.field private Q:Ljava/lang/String;

.field private R:Ljava/lang/String;

.field private S:Ljava/lang/String;

.field private T:Ljava/lang/String;

.field private U:Ljava/lang/String;

.field private V:Ljava/lang/String;

.field private W:Ljava/lang/String;

.field private X:Ljava/lang/String;

.field private Y:I

.field private Z:Z

.field private a:I

.field private aa:I

.field private ab:I

.field private ac:Z

.field private ad:I

.field private ae:I

.field private af:I

.field private ag:I

.field private ah:Z

.field private ai:I

.field private aj:Ljava/lang/String;

.field private ak:Ljava/lang/String;

.field private al:Ljava/lang/String;

.field private am:Ljava/lang/String;

.field private an:I

.field private ao:I

.field private ap:I

.field private aq:I

.field private ar:I

.field private as:I

.field private at:I

.field private au:Z

.field private av:Z

.field private aw:Ljava/lang/String;

.field private b:Z

.field private c:Landroid/view/View;

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;

.field private g:I

.field private h:I

.field private i:I

.field private j:Ljava/lang/String;

.field private k:I

.field private l:I

.field private m:Landroid/widget/ImageView$ScaleType;

.field private n:I

.field private o:Z

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:Ljava/lang/String;

.field private u:Z

.field private v:I

.field private w:Z

.field private x:I

.field private y:Ljava/lang/String;

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->a:I

    .line 3
    iput-boolean v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->b:Z

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->c:Landroid/view/View;

    const/4 v2, -0x1

    .line 5
    iput v2, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->d:I

    .line 6
    iput v2, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->e:I

    const/16 v3, 0x11

    .line 7
    iput v3, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->g:I

    .line 8
    iput v2, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->h:I

    const v3, -0xff7930

    .line 9
    iput v3, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->i:I

    const-string v4, "return_bg"

    .line 10
    iput-object v4, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->j:Ljava/lang/String;

    const/4 v4, -0x2

    .line 11
    iput v4, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->k:I

    .line 12
    iput v4, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->l:I

    .line 13
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v4, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->m:Landroid/widget/ImageView$ScaleType;

    const/16 v4, 0x12

    .line 14
    iput v4, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->n:I

    .line 15
    iput-boolean v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->o:Z

    .line 16
    iput v3, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->p:I

    .line 17
    iput v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->q:I

    const/16 v3, 0xb8

    .line 18
    iput v3, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->r:I

    .line 19
    iput v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->s:I

    const-string/jumbo v3, "\u672c\u673a\u53f7\u7801\u4e00\u952e\u767b\u5f55"

    .line 20
    iput-object v3, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->t:Ljava/lang/String;

    const/4 v3, 0x1

    .line 21
    iput-boolean v3, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->u:Z

    const/16 v4, 0xf

    .line 22
    iput v4, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->v:I

    .line 23
    iput-boolean v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->w:Z

    .line 24
    iput v2, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->x:I

    const-string v4, "umcsdk_login_btn_bg"

    .line 25
    iput-object v4, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->y:Ljava/lang/String;

    .line 26
    iput v2, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->z:I

    const/16 v4, 0x24

    .line 27
    iput v4, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->A:I

    const/16 v4, 0x2e

    .line 28
    iput v4, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->B:I

    .line 29
    iput v4, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->C:I

    const/16 v4, 0xfe

    .line 30
    iput v4, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->D:I

    .line 31
    iput v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->E:I

    const-string v4, "umcsdk_check_image"

    .line 32
    iput-object v4, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->K:Ljava/lang/String;

    const-string v4, "umcsdk_uncheck_image"

    .line 33
    iput-object v4, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->L:Ljava/lang/String;

    const/16 v4, 0x9

    .line 34
    iput v4, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->M:I

    .line 35
    iput v4, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->N:I

    .line 36
    iput-boolean v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->O:Z

    const-string/jumbo v4, "\u767b\u5f55\u5373\u540c\u610f$$\u8fd0\u8425\u5546\u6761\u6b3e$$\u5e76\u4f7f\u7528\u672c\u673a\u53f7\u7801\u767b\u5f55"

    .line 37
    iput-object v4, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->P:Ljava/lang/String;

    .line 38
    iput-object v1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->Q:Ljava/lang/String;

    .line 39
    iput-object v1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->R:Ljava/lang/String;

    .line 40
    iput-object v1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->S:Ljava/lang/String;

    .line 41
    iput-object v1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->T:Ljava/lang/String;

    .line 42
    iput-object v1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->U:Ljava/lang/String;

    .line 43
    iput-object v1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->V:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->W:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->X:Ljava/lang/String;

    const/16 v1, 0xa

    .line 46
    iput v1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->Y:I

    .line 47
    iput-boolean v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->Z:Z

    const v1, -0x99999a

    .line 48
    iput v1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->aa:I

    const v1, -0xf441fa

    .line 49
    iput v1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->ab:I

    .line 50
    iput-boolean v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->ac:Z

    const/16 v1, 0x34

    .line 51
    iput v1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->ad:I

    .line 52
    iput v1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->ae:I

    .line 53
    iput v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->af:I

    const/16 v1, 0x1e

    .line 54
    iput v1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->ag:I

    .line 55
    iput-boolean v3, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->ah:Z

    .line 56
    iput v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->ar:I

    .line 57
    iput v2, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->as:I

    .line 58
    iput v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->at:I

    .line 59
    iput-boolean v3, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->au:Z

    .line 60
    iput-boolean v3, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->av:Z

    return-void
.end method

.method static synthetic A(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->A:I

    return p0
.end method

.method static synthetic B(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->B:I

    return p0
.end method

.method static synthetic C(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->C:I

    return p0
.end method

.method static synthetic D(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->D:I

    return p0
.end method

.method static synthetic E(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->E:I

    return p0
.end method

.method static synthetic F(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->F:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic G(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->G:Z

    return p0
.end method

.method static synthetic H(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Lcom/cmic/sso/sdk/view/BackPressedListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->H:Lcom/cmic/sso/sdk/view/BackPressedListener;

    return-object p0
.end method

.method static synthetic I(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Lcom/cmic/sso/sdk/view/LoginClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->I:Lcom/cmic/sso/sdk/view/LoginClickListener;

    return-object p0
.end method

.method static synthetic J(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Lcom/cmic/sso/sdk/view/CheckBoxListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->J:Lcom/cmic/sso/sdk/view/CheckBoxListener;

    return-object p0
.end method

.method static synthetic K(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->K:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic L(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->L:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic M(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->M:I

    return p0
.end method

.method static synthetic N(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->N:I

    return p0
.end method

.method static synthetic O(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->O:Z

    return p0
.end method

.method static synthetic P(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->P:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic Q(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->Q:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic R(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->R:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic S(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->S:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic T(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->T:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic U(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->U:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic V(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->V:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic W(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->W:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic X(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->X:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic Y(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->Y:I

    return p0
.end method

.method static synthetic Z(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->Z:Z

    return p0
.end method

.method static synthetic a(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->a:I

    return p0
.end method

.method static synthetic aa(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->aa:I

    return p0
.end method

.method static synthetic ab(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->ab:I

    return p0
.end method

.method static synthetic ac(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->ac:Z

    return p0
.end method

.method static synthetic ad(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->ad:I

    return p0
.end method

.method static synthetic ae(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->ae:I

    return p0
.end method

.method static synthetic af(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->af:I

    return p0
.end method

.method static synthetic ag(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->ag:I

    return p0
.end method

.method static synthetic ah(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->ah:Z

    return p0
.end method

.method static synthetic ai(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->ai:I

    return p0
.end method

.method static synthetic aj(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->aj:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic ak(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->ak:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic al(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->al:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic am(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->am:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic an(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->an:I

    return p0
.end method

.method static synthetic ao(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->ao:I

    return p0
.end method

.method static synthetic ap(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->ap:I

    return p0
.end method

.method static synthetic aq(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->aq:I

    return p0
.end method

.method static synthetic ar(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->ar:I

    return p0
.end method

.method static synthetic as(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->as:I

    return p0
.end method

.method static synthetic at(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->at:I

    return p0
.end method

.method static synthetic au(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->au:Z

    return p0
.end method

.method static synthetic av(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->av:Z

    return p0
.end method

.method static synthetic aw(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->aw:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->b:Z

    return p0
.end method

.method static synthetic c(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->c:Landroid/view/View;

    return-object p0
.end method

.method static synthetic d(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->d:I

    return p0
.end method

.method static synthetic e(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->e:I

    return p0
.end method

.method static synthetic f(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->g:I

    return p0
.end method

.method static synthetic h(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->h:I

    return p0
.end method

.method static synthetic i(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->i:I

    return p0
.end method

.method static synthetic j(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->j:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic k(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->k:I

    return p0
.end method

.method static synthetic l(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->l:I

    return p0
.end method

.method static synthetic m(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Landroid/widget/ImageView$ScaleType;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->m:Landroid/widget/ImageView$ScaleType;

    return-object p0
.end method

.method static synthetic n(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->n:I

    return p0
.end method

.method static synthetic o(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->o:Z

    return p0
.end method

.method static synthetic p(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->p:I

    return p0
.end method

.method static synthetic q(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->q:I

    return p0
.end method

.method static synthetic r(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->r:I

    return p0
.end method

.method static synthetic s(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->s:I

    return p0
.end method

.method static synthetic t(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->t:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic u(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->u:Z

    return p0
.end method

.method static synthetic v(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->v:I

    return p0
.end method

.method static synthetic w(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->w:Z

    return p0
.end method

.method static synthetic x(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->x:I

    return p0
.end method

.method static synthetic y(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->y:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic z(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->z:I

    return p0
.end method


# virtual methods
.method public build()Lcom/cmic/sso/sdk/view/AuthThemeConfig;
    .locals 2

    .line 1
    new-instance v0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;-><init>(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;Lcom/cmic/sso/sdk/view/AuthThemeConfig$1;)V

    return-object v0
.end method

.method public setAppLanguageType(I)Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->at:I

    return-object p0
.end method

.method public setAuthContentView(Landroid/view/View;)Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->c:Landroid/view/View;

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->d:I

    return-object p0
.end method

.method public setAuthLayoutResID(I)Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->d:I

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->c:Landroid/view/View;

    return-object p0
.end method

.method public setAuthPageActIn(Ljava/lang/String;Ljava/lang/String;)Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->aj:Ljava/lang/String;

    .line 2
    iput-object p2, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->ak:Ljava/lang/String;

    return-object p0
.end method

.method public setAuthPageActOut(Ljava/lang/String;Ljava/lang/String;)Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->al:Ljava/lang/String;

    .line 2
    iput-object p1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->am:Ljava/lang/String;

    return-object p0
.end method

.method public setAuthPageWindowMode(II)Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->an:I

    .line 2
    iput p2, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->ao:I

    return-object p0
.end method

.method public setAuthPageWindowOffset(II)Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->ap:I

    .line 2
    iput p2, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->aq:I

    return-object p0
.end method

.method public setBackButton(Z)Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->av:Z

    return-object p0
.end method

.method public setBackPressedListener(Lcom/cmic/sso/sdk/view/BackPressedListener;)Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->H:Lcom/cmic/sso/sdk/view/BackPressedListener;

    return-object p0
.end method

.method public setCheckBoxImgPath(Ljava/lang/String;Ljava/lang/String;II)Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->K:Ljava/lang/String;

    .line 2
    iput-object p2, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->L:Ljava/lang/String;

    .line 3
    iput p3, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->M:I

    .line 4
    iput p4, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->N:I

    return-object p0
.end method

.method public setCheckBoxListener(Lcom/cmic/sso/sdk/view/CheckBoxListener;)Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->J:Lcom/cmic/sso/sdk/view/CheckBoxListener;

    return-object p0
.end method

.method public setCheckBoxLocation(I)Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->ai:I

    return-object p0
.end method

.method public setCheckTipText(Ljava/lang/String;)Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->G:Z

    if-eqz v0, :cond_2

    const-string/jumbo p1, "\u8bf7\u52fe\u9009\u540c\u610f\u670d\u52a1\u6761\u6b3e"

    .line 2
    :cond_2
    iput-object p1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->F:Ljava/lang/String;

    return-object p0
.end method

.method public setCheckedImgPath(Ljava/lang/String;)Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->K:Ljava/lang/String;

    return-object p0
.end method

.method public setClauseColor(II)Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->aa:I

    .line 2
    iput p2, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->ab:I

    return-object p0
.end method

.method public setClauseLayoutResID(ILjava/lang/String;)Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->e:I

    .line 2
    iput-object p2, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->f:Ljava/lang/String;

    return-object p0
.end method

.method public setFitsSystemWindows(Z)Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->au:Z

    return-object p0
.end method

.method public setLogBtn(II)Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->z:I

    .line 2
    iput p2, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->A:I

    return-object p0
.end method

.method public setLogBtnClickListener(Lcom/cmic/sso/sdk/view/LoginClickListener;)Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->I:Lcom/cmic/sso/sdk/view/LoginClickListener;

    return-object p0
.end method

.method public setLogBtnImgPath(Ljava/lang/String;)Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->y:Ljava/lang/String;

    return-object p0
.end method

.method public setLogBtnMargin(II)Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->B:I

    .line 2
    iput p2, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->C:I

    return-object p0
.end method

.method public setLogBtnOffsetY(I)Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->D:I

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->E:I

    return-object p0
.end method

.method public setLogBtnOffsetY_B(I)Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->E:I

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->D:I

    return-object p0
.end method

.method public setLogBtnText(Ljava/lang/String;)Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "^\\s*\\n*$"

    .line 2
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iput-object p1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->t:Ljava/lang/String;

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->u:Z

    :cond_0
    return-object p0
.end method

.method public setLogBtnText(Ljava/lang/String;IIZ)Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;
    .locals 1

    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "^\\s*\\n*$"

    .line 8
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    .line 11
    iput-object p1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->t:Ljava/lang/String;

    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->u:Z

    .line 13
    :cond_0
    iput p2, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->x:I

    .line 14
    iput p3, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->v:I

    .line 15
    iput-boolean p4, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->w:Z

    return-object p0
.end method

.method public setLogBtnTextColor(I)Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->x:I

    return-object p0
.end method

.method public setNavColor(I)Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->i:I

    return-object p0
.end method

.method public setNavTextColor(I)Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->h:I

    return-object p0
.end method

.method public setNavTextSize(I)Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->g:I

    return-object p0
.end method

.method public setNumFieldOffsetY(I)Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->r:I

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->s:I

    return-object p0
.end method

.method public setNumFieldOffsetY_B(I)Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->s:I

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->r:I

    return-object p0
.end method

.method public setNumberColor(I)Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->p:I

    return-object p0
.end method

.method public setNumberOffsetX(I)Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->q:I

    return-object p0
.end method

.method public setNumberSize(IZ)Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;
    .locals 1

    const/16 v0, 0x8

    if-le p1, v0, :cond_0

    .line 1
    iput p1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->n:I

    .line 2
    iput-boolean p2, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->o:Z

    :cond_0
    return-object p0
.end method

.method public setPrivacyAlignment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;
    .locals 1

    const-string v0, "$$\u8fd0\u8425\u5546\u6761\u6b3e$$"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->P:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->Q:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->R:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->S:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->T:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->U:Ljava/lang/String;

    .line 8
    iput-object p7, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->V:Ljava/lang/String;

    .line 9
    iput-object p8, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->W:Ljava/lang/String;

    .line 10
    iput-object p9, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->X:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public setPrivacyAnimation(Ljava/lang/String;)Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->aw:Ljava/lang/String;

    return-object p0
.end method

.method public setPrivacyBookSymbol(Z)Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->ah:Z

    return-object p0
.end method

.method public setPrivacyMargin(II)Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->ad:I

    .line 2
    iput p2, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->ae:I

    return-object p0
.end method

.method public setPrivacyOffsetY(I)Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->af:I

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->ag:I

    return-object p0
.end method

.method public setPrivacyOffsetY_B(I)Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->ag:I

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->af:I

    return-object p0
.end method

.method public setPrivacyState(Z)Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->O:Z

    return-object p0
.end method

.method public setPrivacyText(IIIZZ)Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->Y:I

    .line 2
    iput p2, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->aa:I

    .line 3
    iput p3, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->ab:I

    .line 4
    iput-boolean p4, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->ac:Z

    .line 5
    iput-boolean p5, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->Z:Z

    return-object p0
.end method

.method public setStatusBar(IZ)Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->a:I

    .line 2
    iput-boolean p2, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->b:Z

    return-object p0
.end method

.method public setThemeId(I)Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->as:I

    return-object p0
.end method

.method public setUncheckedImgPath(Ljava/lang/String;)Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->L:Ljava/lang/String;

    return-object p0
.end method

.method public setWindowBottom(I)Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->ar:I

    return-object p0
.end method
