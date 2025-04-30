.class public Lcom/cmic/sso/sdk/view/AuthThemeConfig;
.super Ljava/lang/Object;
.source "AuthThemeConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;
    }
.end annotation


# static fields
.field public static final PLACEHOLDER:Ljava/lang/String; = "$$\u8fd0\u8425\u5546\u6761\u6b3e$$"


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

.field private ah:I

.field private ai:Z

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
.method private constructor <init>(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->u:Z

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->U:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->V:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->W:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->X:Ljava/lang/String;

    .line 8
    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->a(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->a:I

    .line 9
    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->b(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->b:Z

    .line 10
    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->c(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->c:Landroid/view/View;

    .line 11
    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->d(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->d:I

    .line 12
    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->e(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->e:I

    .line 13
    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->f(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->f:Ljava/lang/String;

    .line 14
    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->g(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->g:I

    .line 15
    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->h(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->h:I

    .line 16
    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->i(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->i:I

    .line 17
    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->j(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->j:Ljava/lang/String;

    .line 18
    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->k(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->k:I

    .line 19
    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->l(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->l:I

    .line 20
    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->m(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->m:Landroid/widget/ImageView$ScaleType;

    .line 21
    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->n(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->n:I

    .line 22
    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->o(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->o:Z

    .line 23
    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->p(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->p:I

    .line 24
    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->q(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->q:I

    .line 25
    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->r(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->r:I

    .line 26
    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->s(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->s:I

    .line 27
    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->t(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->t:Ljava/lang/String;

    .line 28
    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->u(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->u:Z

    .line 29
    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->v(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->v:I

    .line 30
    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->w(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->w:Z

    .line 31
    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->x(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->x:I

    .line 32
    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->y(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->y:Ljava/lang/String;

    .line 33
    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->z(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->z:I

    .line 34
    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->A(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->A:I

    .line 35
    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->B(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->B:I

    .line 36
    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->C(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->C:I

    .line 37
    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->D(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->D:I

    .line 38
    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->E(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->E:I

    .line 39
    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->F(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->F:Ljava/lang/String;

    .line 40
    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->G(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->G:Z

    .line 41
    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->H(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Lcom/cmic/sso/sdk/view/BackPressedListener;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->H:Lcom/cmic/sso/sdk/view/BackPressedListener;

    .line 42
    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->I(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Lcom/cmic/sso/sdk/view/LoginClickListener;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->I:Lcom/cmic/sso/sdk/view/LoginClickListener;

    .line 43
    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->J(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Lcom/cmic/sso/sdk/view/CheckBoxListener;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->J:Lcom/cmic/sso/sdk/view/CheckBoxListener;

    .line 44
    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->K(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->K:Ljava/lang/String;

    .line 45
    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->L(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->L:Ljava/lang/String;

    .line 46
    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->M(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->M:I

    .line 47
    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->N(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->N:I

    .line 48
    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->O(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->O:Z

    .line 49
    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->P(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->P:Ljava/lang/String;

    .line 50
    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->Q(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->Q:Ljava/lang/String;

    .line 51
    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->R(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->R:Ljava/lang/String;

    .line 52
    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->S(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->S:Ljava/lang/String;

    .line 53
    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->T(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->T:Ljava/lang/String;

    .line 54
    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->U(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->U:Ljava/lang/String;

    .line 55
    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->V(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->V:Ljava/lang/String;

    .line 56
    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->W(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->W:Ljava/lang/String;

    .line 57
    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->X(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->X:Ljava/lang/String;

    .line 58
    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->Y(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->Y:I

    .line 59
    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->Z(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->Z:Z

    .line 60
    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->aa(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->aa:I

    .line 61
    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->ab(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->ab:I

    .line 62
    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->ac(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->ac:Z

    .line 63
    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->ad(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->ae:I

    .line 64
    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->ae(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->af:I

    .line 65
    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->af(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->ag:I

    .line 66
    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->ag(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->ah:I

    .line 67
    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->ah(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->ai:Z

    .line 68
    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->ai(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->ad:I

    .line 69
    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->aj(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->aj:Ljava/lang/String;

    .line 70
    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->ak(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->ak:Ljava/lang/String;

    .line 71
    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->al(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->al:Ljava/lang/String;

    .line 72
    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->am(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->am:Ljava/lang/String;

    .line 73
    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->an(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->an:I

    .line 74
    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->ao(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->ao:I

    .line 75
    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->ap(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->ap:I

    .line 76
    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->aq(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->aq:I

    .line 77
    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->ar(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->ar:I

    .line 78
    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->as(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->as:I

    .line 79
    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->at(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->at:I

    .line 80
    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->au(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->au:Z

    .line 81
    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->av(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->av:Z

    .line 82
    invoke-static {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->aw(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->aw:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;Lcom/cmic/sso/sdk/view/AuthThemeConfig$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;-><init>(Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;)V

    return-void
.end method


# virtual methods
.method public getActivityIn()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->am:Ljava/lang/String;

    return-object v0
.end method

.method public getActivityOut()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->ak:Ljava/lang/String;

    return-object v0
.end method

.method public getAppLanguageType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->at:I

    return v0
.end method

.method public getAuthPageActIn()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->aj:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthPageActOut()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->al:Ljava/lang/String;

    return-object v0
.end method

.method public getBackPressedListener()Lcom/cmic/sso/sdk/view/BackPressedListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->H:Lcom/cmic/sso/sdk/view/BackPressedListener;

    return-object v0
.end method

.method public getCheckBoxListener()Lcom/cmic/sso/sdk/view/CheckBoxListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->J:Lcom/cmic/sso/sdk/view/CheckBoxListener;

    return-object v0
.end method

.method public getCheckBoxLocation()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->ad:I

    return v0
.end method

.method public getCheckTipText()Ljava/lang/String;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->G:Z

    if-eqz v0, :cond_2

    .line 2
    iget v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->at:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "\u8acb\u52fe\u9078\u540c\u610f\u670d\u52d9\u689d\u6b3e"

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const-string v0, "Please check to agree to the terms of service"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "\u8bf7\u52fe\u9009\u540c\u610f\u670d\u52a1\u6761\u6b3e"

    :goto_0
    iput-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->F:Ljava/lang/String;

    .line 3
    :cond_2
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->F:Ljava/lang/String;

    return-object v0
.end method

.method public getCheckedImgHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->N:I

    return v0
.end method

.method public getCheckedImgPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->K:Ljava/lang/String;

    return-object v0
.end method

.method public getCheckedImgWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->M:I

    return v0
.end method

.method public getClauseBaseColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->aa:I

    return v0
.end method

.method public getClauseColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->ab:I

    return v0
.end method

.method public getClauseLayoutResID()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->e:I

    return v0
.end method

.method public getClauseLayoutReturnID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getClauseName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->Q:Ljava/lang/String;

    return-object v0
.end method

.method public getClauseName2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->S:Ljava/lang/String;

    return-object v0
.end method

.method public getClauseName3()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->U:Ljava/lang/String;

    return-object v0
.end method

.method public getClauseName4()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->W:Ljava/lang/String;

    return-object v0
.end method

.method public getClauseUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->R:Ljava/lang/String;

    return-object v0
.end method

.method public getClauseUrl2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->T:Ljava/lang/String;

    return-object v0
.end method

.method public getClauseUrl3()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->V:Ljava/lang/String;

    return-object v0
.end method

.method public getClauseUrl4()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->X:Ljava/lang/String;

    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->c:Landroid/view/View;

    return-object v0
.end method

.method public getLayoutResID()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->d:I

    return v0
.end method

.method public getLogBtnBackgroundPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->y:Ljava/lang/String;

    return-object v0
.end method

.method public getLogBtnHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->A:I

    return v0
.end method

.method public getLogBtnMarginLeft()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->B:I

    return v0
.end method

.method public getLogBtnMarginRight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->C:I

    return v0
.end method

.method public getLogBtnOffsetY()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->D:I

    return v0
.end method

.method public getLogBtnOffsetY_B()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->E:I

    return v0
.end method

.method public getLogBtnText()Ljava/lang/String;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->u:Z

    if-eqz v0, :cond_2

    .line 2
    iget v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->at:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "\u672c\u6a5f\u865f\u78bc\u767b\u9304"

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const-string v0, "Login"

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->t:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->t:Ljava/lang/String;

    .line 3
    :cond_2
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->t:Ljava/lang/String;

    return-object v0
.end method

.method public getLogBtnTextColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->x:I

    return v0
.end method

.method public getLogBtnTextSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->v:I

    return v0
.end method

.method public getLogBtnWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->z:I

    return v0
.end method

.method public getLoginClickListener()Lcom/cmic/sso/sdk/view/LoginClickListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->I:Lcom/cmic/sso/sdk/view/LoginClickListener;

    return-object v0
.end method

.method public getNavColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->i:I

    return v0
.end method

.method public getNavReturnImgHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->l:I

    return v0
.end method

.method public getNavReturnImgPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getNavReturnImgScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->m:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public getNavReturnImgWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->k:I

    return v0
.end method

.method public getNavTextColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->h:I

    return v0
.end method

.method public getNavTextSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->g:I

    return v0
.end method

.method public getNumFieldOffsetY()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->r:I

    return v0
.end method

.method public getNumFieldOffsetY_B()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->s:I

    return v0
.end method

.method public getNumberColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->p:I

    return v0
.end method

.method public getNumberOffsetX()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->q:I

    return v0
.end method

.method public getNumberSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->n:I

    return v0
.end method

.method public getPrivacy()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->P:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivacyAnimation()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->aw:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivacyMarginLeft()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->ae:I

    return v0
.end method

.method public getPrivacyMarginRight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->af:I

    return v0
.end method

.method public getPrivacyOffsetY()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->ag:I

    return v0
.end method

.method public getPrivacyOffsetY_B()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->ah:I

    return v0
.end method

.method public getPrivacyTextSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->Y:I

    return v0
.end method

.method public getStatusBarColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->a:I

    return v0
.end method

.method public getThemeId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->as:I

    return v0
.end method

.method public getUncheckedImgPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->L:Ljava/lang/String;

    return-object v0
.end method

.method public getWindowBottom()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->ar:I

    return v0
.end method

.method public getWindowHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->ao:I

    return v0
.end method

.method public getWindowWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->an:I

    return v0
.end method

.method public getWindowX()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->ap:I

    return v0
.end method

.method public getWindowY()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->aq:I

    return v0
.end method

.method public isBackButton()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->av:Z

    return v0
.end method

.method public isFitsSystemWindows()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->au:Z

    return v0
.end method

.method public isLightColor()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->b:Z

    return v0
.end method

.method public isLogBtnTextBold()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->w:Z

    return v0
.end method

.method public isNumberBold()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->o:Z

    return v0
.end method

.method public isPrivacyBookSymbol()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->ai:Z

    return v0
.end method

.method public isPrivacyState()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->O:Z

    return v0
.end method

.method public isPrivacyTextBold()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->Z:Z

    return v0
.end method

.method public isPrivacyTextGravityCenter()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->ac:Z

    return v0
.end method
