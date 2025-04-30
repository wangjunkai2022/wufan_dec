.class public Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
.super Ljava/lang/Object;
.source "UnifyUiConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private A:Z

.field private A0:F

.field private A1:Landroid/view/ViewGroup;

.field private B:I

.field private B0:F

.field private C:I

.field private C0:Ljava/lang/String;

.field private D:I

.field private D0:Ljava/lang/String;

.field private E:Landroid/graphics/Typeface;

.field private E0:Ljava/lang/String;

.field private F:I

.field private F0:Ljava/lang/String;

.field private G:I

.field private G0:Ljava/lang/String;

.field private H:I

.field private H0:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private I0:Ljava/lang/String;

.field private J:I

.field private J0:Ljava/lang/String;

.field private K:I

.field private K0:Ljava/lang/String;

.field private L:I

.field private L0:Ljava/lang/String;

.field private M:I

.field private M0:Ljava/lang/String;

.field private N:I

.field private N0:Ljava/lang/String;

.field private O:I

.field private O0:Ljava/lang/String;

.field private P:Ljava/lang/String;

.field private P0:Ljava/lang/String;

.field private Q:I

.field private Q0:Ljava/lang/String;

.field private R:I

.field private R0:I

.field private S:I

.field private S0:I

.field private T:I

.field private T0:I

.field private U:I

.field private U0:I

.field private V:Ljava/lang/String;

.field private V0:I

.field private W:Landroid/graphics/drawable/Drawable;

.field private W0:I

.field private X:I

.field private X0:Ljava/lang/String;

.field private Y:I

.field private Y0:Landroid/graphics/drawable/Drawable;

.field private Z:I

.field private Z0:I

.field private a:I

.field private a0:I

.field private a1:Z

.field private b:Z

.field private b0:I

.field private b1:I

.field private c:Ljava/lang/String;

.field private c0:I

.field private c1:I

.field private d:Landroid/graphics/drawable/Drawable;

.field private d0:I

.field private d1:I

.field private e:Z

.field private e0:I

.field private e1:I

.field private f:I

.field private f0:I

.field private f1:Z

.field private g:I

.field private g0:I

.field private g1:Z

.field private h:I

.field private h0:I

.field private h1:Ljava/lang/String;

.field private i:I

.field private i0:Z

.field private i1:Ljava/lang/String;

.field public isLandscape:Z

.field private j:I

.field private j0:Z

.field private j1:Landroid/graphics/drawable/Drawable;

.field private k:Ljava/lang/String;

.field private k0:Z

.field private k1:Ljava/lang/String;

.field private l:I

.field private l0:Z

.field private l1:Landroid/graphics/drawable/Drawable;

.field private m:I

.field private m0:I

.field private m1:Ljava/lang/String;

.field private n:I

.field private n0:I

.field private n1:Ljava/lang/String;

.field private o:I

.field private o0:I

.field private o1:Landroid/graphics/drawable/Drawable;

.field private p:Z

.field private p0:I

.field private p1:Ljava/lang/String;

.field private q:Z

.field private q0:I

.field private q1:Ljava/lang/String;

.field private r:Landroid/graphics/drawable/Drawable;

.field private r0:Ljava/lang/String;

.field private r1:Lcom/netease/nis/quicklogin/listener/MaskNumberListener;

.field private s:I

.field private s0:Landroid/graphics/drawable/Drawable;

.field private s1:Lcom/netease/nis/quicklogin/listener/LoginListener;

.field private t:Ljava/lang/String;

.field private t0:Ljava/lang/String;

.field private t1:Lcom/netease/nis/quicklogin/listener/ClickEventListener;

.field private u:Landroid/graphics/drawable/Drawable;

.field private u0:Landroid/graphics/drawable/Drawable;

.field private u1:Landroid/view/View;

.field private v:I

.field private v0:Ljava/lang/String;

.field private v1:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/netease/nis/quicklogin/utils/LoginUiHelper$g;",
            ">;"
        }
    .end annotation
.end field

.field private w:I

.field private w0:Z

.field private w1:Lcom/netease/nis/quicklogin/listener/ActivityLifecycleCallbacks;

.field private x:I

.field private x0:F

.field private x1:Lcom/netease/nis/quicklogin/listener/ActivityResultCallbacks;

.field private y:I

.field private y0:Ljava/lang/String;

.field private y1:Z

.field private z:I

.field private z0:F

.field private z1:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->a:I

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->b:Z

    const/16 v2, 0x19

    .line 4
    iput v2, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->f:I

    .line 5
    iput v2, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->g:I

    .line 6
    iput-boolean v1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->p:Z

    .line 7
    iput-boolean v1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->A:Z

    const v3, -0xffff01

    .line 8
    iput v3, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->L:I

    const-string v3, "\u672c\u673a\u53f7\u7801\u4e00\u952e\u767b\u5f55"

    .line 9
    iput-object v3, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->P:Ljava/lang/String;

    .line 10
    iput v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->S:I

    const/high16 v0, -0x1000000

    .line 11
    iput v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->a0:I

    const v0, -0x777778

    .line 12
    iput v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->b0:I

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->i0:Z

    .line 14
    iput-boolean v1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->j0:Z

    .line 15
    iput-boolean v1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->k0:Z

    .line 16
    iput-boolean v1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->l0:Z

    const-string v1, "yd_checkbox_checked"

    .line 17
    iput-object v1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->r0:Ljava/lang/String;

    const-string v1, "yd_checkbox_unchecked"

    .line 18
    iput-object v1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->t0:Ljava/lang/String;

    const/4 v1, 0x0

    .line 19
    iput v1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->x0:F

    const-string v3, "\u767b\u5f55\u5373\u540c\u610f"

    .line 20
    iput-object v3, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->y0:Ljava/lang/String;

    .line 21
    iput v1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->z0:F

    .line 22
    iput v1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->A0:F

    .line 23
    iput v1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->B0:F

    const-string v1, "\u548c"

    .line 24
    iput-object v1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->E0:Ljava/lang/String;

    const-string v1, "\u4e14\u6388\u6743\u4f7f\u7528\u672c\u673a\u53f7\u7801\u767b\u5f55"

    .line 25
    iput-object v1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->J0:Ljava/lang/String;

    .line 26
    iput v2, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->V0:I

    .line 27
    iput v2, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->W0:I

    .line 28
    iput-boolean v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->y1:Z

    .line 29
    iput-boolean v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->z1:Z

    return-void
.end method

.method static synthetic A(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->g1:Z

    return p0
.end method

.method static synthetic A0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->Z:I

    return p0
.end method

.method static synthetic A1(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->K0:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic B(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Lcom/netease/nis/quicklogin/listener/MaskNumberListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->r1:Lcom/netease/nis/quicklogin/listener/MaskNumberListener;

    return-object p0
.end method

.method static synthetic B0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->a0:I

    return p0
.end method

.method static synthetic C(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Lcom/netease/nis/quicklogin/listener/LoginListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->s1:Lcom/netease/nis/quicklogin/listener/LoginListener;

    return-object p0
.end method

.method static synthetic C0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->b0:I

    return p0
.end method

.method static synthetic D(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Lcom/netease/nis/quicklogin/listener/ClickEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->t1:Lcom/netease/nis/quicklogin/listener/ClickEventListener;

    return-object p0
.end method

.method static synthetic D0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->c0:I

    return p0
.end method

.method static synthetic E(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->u1:Landroid/view/View;

    return-object p0
.end method

.method static synthetic E0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->d0:I

    return p0
.end method

.method static synthetic F(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Lcom/netease/nis/quicklogin/listener/ActivityLifecycleCallbacks;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->w1:Lcom/netease/nis/quicklogin/listener/ActivityLifecycleCallbacks;

    return-object p0
.end method

.method static synthetic F0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->e0:I

    return p0
.end method

.method static synthetic G(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Lcom/netease/nis/quicklogin/listener/ActivityResultCallbacks;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->x1:Lcom/netease/nis/quicklogin/listener/ActivityResultCallbacks;

    return-object p0
.end method

.method static synthetic G0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->f0:I

    return p0
.end method

.method static synthetic H(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->y1:Z

    return p0
.end method

.method static synthetic H0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->n0:I

    return p0
.end method

.method static synthetic I(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->z1:Z

    return p0
.end method

.method static synthetic I0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->g0:I

    return p0
.end method

.method static synthetic J(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->n:I

    return p0
.end method

.method static synthetic J0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->h:I

    return p0
.end method

.method static synthetic K(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Landroid/view/ViewGroup;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->A1:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic K0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->h0:I

    return p0
.end method

.method static synthetic L(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->o:I

    return p0
.end method

.method static synthetic L0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->i0:Z

    return p0
.end method

.method static synthetic M(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->p:Z

    return p0
.end method

.method static synthetic M0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->k0:Z

    return p0
.end method

.method static synthetic N(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->q:Z

    return p0
.end method

.method static synthetic N0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->j0:Z

    return p0
.end method

.method static synthetic O(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->r:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic O0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->l0:Z

    return p0
.end method

.method static synthetic P(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->s:I

    return p0
.end method

.method static synthetic P0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->m0:I

    return p0
.end method

.method static synthetic Q(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->t:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic Q0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->o0:I

    return p0
.end method

.method static synthetic R(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic R0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->p0:I

    return p0
.end method

.method static synthetic S(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->u:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic S0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->q0:I

    return p0
.end method

.method static synthetic T(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->v:I

    return p0
.end method

.method static synthetic T0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->r0:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic U(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->w:I

    return p0
.end method

.method static synthetic U0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->i:I

    return p0
.end method

.method static synthetic V(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->x:I

    return p0
.end method

.method static synthetic V0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->s0:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic W(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->y:I

    return p0
.end method

.method static synthetic W0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->t0:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic X(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->z:I

    return p0
.end method

.method static synthetic X0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->u0:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic Y(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->A:Z

    return p0
.end method

.method static synthetic Y0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->v0:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic Z(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->B:I

    return p0
.end method

.method static synthetic Z0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->w0:Z

    return p0
.end method

.method static synthetic a(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->a:I

    return p0
.end method

.method static synthetic a0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->C:I

    return p0
.end method

.method static synthetic a1(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->x0:F

    return p0
.end method

.method static synthetic b(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->b:Z

    return p0
.end method

.method static synthetic b0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Landroid/graphics/Typeface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->E:Landroid/graphics/Typeface;

    return-object p0
.end method

.method static synthetic b1(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->y0:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->k:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->d:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic c1(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->A0:F

    return p0
.end method

.method static synthetic d(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->L0:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->D:I

    return p0
.end method

.method static synthetic d1(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->B0:F

    return p0
.end method

.method static synthetic e(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->M0:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->F:I

    return p0
.end method

.method static synthetic e1(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->z0:F

    return p0
.end method

.method static synthetic f(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->N0:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->G:I

    return p0
.end method

.method static synthetic f1(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->e:Z

    return p0
.end method

.method static synthetic g(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->O0:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->H:I

    return p0
.end method

.method static synthetic g1(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->C0:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic h(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->P0:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic h0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->I:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic h1(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->D0:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic i(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->Q0:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic i0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->J:I

    return p0
.end method

.method static synthetic i1(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->E0:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic j(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->X0:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic j0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->K:I

    return p0
.end method

.method static synthetic j1(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->F0:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic k(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->Y0:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic k0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->L:I

    return p0
.end method

.method static synthetic k1(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->G0:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic l(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->Z0:I

    return p0
.end method

.method static synthetic l0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->M:I

    return p0
.end method

.method static synthetic l1(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->H0:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic m(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->R0:I

    return p0
.end method

.method static synthetic m0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->N:I

    return p0
.end method

.method static synthetic m1(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->I0:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic n(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->l:I

    return p0
.end method

.method static synthetic n0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->f:I

    return p0
.end method

.method static synthetic n1(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->J0:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic o(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->S0:I

    return p0
.end method

.method static synthetic o0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->O:I

    return p0
.end method

.method static synthetic o1(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->v1:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic p(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->T0:I

    return p0
.end method

.method static synthetic p0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->P:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic p1(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->h1:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic q(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->U0:I

    return p0
.end method

.method static synthetic q0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->Q:I

    return p0
.end method

.method static synthetic q1(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->j:I

    return p0
.end method

.method static synthetic r(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->V0:I

    return p0
.end method

.method static synthetic r0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->R:I

    return p0
.end method

.method static synthetic r1(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->i1:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic s(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->W0:I

    return p0
.end method

.method static synthetic s0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->S:I

    return p0
.end method

.method static synthetic s1(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->j1:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic t(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->a1:Z

    return p0
.end method

.method static synthetic t0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->T:I

    return p0
.end method

.method static synthetic t1(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->k1:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic u(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->b1:I

    return p0
.end method

.method static synthetic u0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->U:I

    return p0
.end method

.method static synthetic u1(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->l1:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic v(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->c1:I

    return p0
.end method

.method static synthetic v0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->V:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic v1(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->m1:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic w(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->d1:I

    return p0
.end method

.method static synthetic w0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->W:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic w1(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->n1:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic x(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->e1:I

    return p0
.end method

.method static synthetic x0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->X:I

    return p0
.end method

.method static synthetic x1(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->o1:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic y(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->m:I

    return p0
.end method

.method static synthetic y0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->g:I

    return p0
.end method

.method static synthetic y1(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->p1:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic z(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->f1:Z

    return p0
.end method

.method static synthetic z0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->Y:I

    return p0
.end method

.method static synthetic z1(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->q1:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public addCustomView(Landroid/view/View;Ljava/lang/String;ILcom/netease/nis/quicklogin/utils/LoginUiHelper$CustomViewListener;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    if-nez p1, :cond_0

    return-object p0

    .line 1
    :cond_0
    iget-object p2, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->v1:Ljava/util/ArrayList;

    if-nez p2, :cond_1

    .line 2
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->v1:Ljava/util/ArrayList;

    .line 3
    :cond_1
    new-instance p2, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$g;

    invoke-direct {p2}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$g;-><init>()V

    .line 4
    iput-object p1, p2, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$g;->a:Landroid/view/View;

    .line 5
    iput p3, p2, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$g;->b:I

    .line 6
    iput-object p4, p2, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$g;->c:Lcom/netease/nis/quicklogin/utils/LoginUiHelper$CustomViewListener;

    .line 7
    iget-object p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->v1:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build(Landroid/content/Context;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;
    .locals 2

    .line 1
    new-instance v0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;-><init>(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;Landroid/content/Context;Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$a;)V

    return-object v0
.end method

.method public setActivityLifecycleCallbacks(Lcom/netease/nis/quicklogin/listener/ActivityLifecycleCallbacks;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->w1:Lcom/netease/nis/quicklogin/listener/ActivityLifecycleCallbacks;

    return-object p0
.end method

.method public setActivityResultCallbacks(Lcom/netease/nis/quicklogin/listener/ActivityResultCallbacks;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->x1:Lcom/netease/nis/quicklogin/listener/ActivityResultCallbacks;

    return-object p0
.end method

.method public setActivityTranslateAnimation(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->p1:Ljava/lang/String;

    .line 2
    iput-object p2, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->q1:Ljava/lang/String;

    return-object p0
.end method

.method public setBackPressedAvailable(Z)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->y1:Z

    return-object p0
.end method

.method public setBackgroundGif(Ljava/lang/String;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->k1:Ljava/lang/String;

    return-object p0
.end method

.method public setBackgroundGifDrawable(Landroid/graphics/drawable/Drawable;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->l1:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setBackgroundImage(Ljava/lang/String;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->h1:Ljava/lang/String;

    return-object p0
.end method

.method public setBackgroundImageDrawable(Landroid/graphics/drawable/Drawable;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->j1:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setBackgroundShadowView(Landroid/view/View;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->u1:Landroid/view/View;

    return-object p0
.end method

.method public setBackgroundVideo(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->m1:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->o1:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setBackgroundVideo(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->m1:Ljava/lang/String;

    .line 2
    iput-object p2, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->n1:Ljava/lang/String;

    return-object p0
.end method

.method public setBottomDialog(Z)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->f1:Z

    return-object p0
.end method

.method public setCheckBoxGravity(I)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->o0:I

    return-object p0
.end method

.method public setCheckedImageDrawable(Landroid/graphics/drawable/Drawable;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->s0:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setCheckedImageName(Ljava/lang/String;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->r0:Ljava/lang/String;

    return-object p0
.end method

.method public setClickEventListener(Lcom/netease/nis/quicklogin/listener/ClickEventListener;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->t1:Lcom/netease/nis/quicklogin/listener/ClickEventListener;

    return-object p0
.end method

.method public setDialogHeight(I)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->c1:I

    return-object p0
.end method

.method public setDialogMode(Z)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->a1:Z

    return-object p0
.end method

.method public setDialogMode(ZIIIIZ)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->a1:Z

    .line 3
    iput p2, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->b1:I

    .line 4
    iput p3, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->c1:I

    .line 5
    iput p4, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->d1:I

    .line 6
    iput p5, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->e1:I

    .line 7
    iput-boolean p6, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->f1:Z

    return-object p0
.end method

.method public setDialogWidth(I)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->b1:I

    return-object p0
.end method

.method public setDialogX(I)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->d1:I

    return-object p0
.end method

.method public setDialogY(I)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->e1:I

    return-object p0
.end method

.method public setHideLogo(Z)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->A:Z

    return-object p0
.end method

.method public setHideNavigation(Z)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->p:Z

    return-object p0
.end method

.method public setHideNavigationBackIcon(Z)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->e:Z

    return-object p0
.end method

.method public setHidePrivacyCheckBox(Z)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->j0:Z

    return-object p0
.end method

.method public setHidePrivacySmh(Z)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->k0:Z

    return-object p0
.end method

.method public setLandscape(Z)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->isLandscape:Z

    return-object p0
.end method

.method public setLoadingView(Landroid/view/ViewGroup;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->A1:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public setLoadingVisible(Z)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->z1:Z

    return-object p0
.end method

.method public setLoginBtnBackgroundDrawable(Landroid/graphics/drawable/Drawable;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->W:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setLoginBtnBackgroundRes(Ljava/lang/String;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->V:Ljava/lang/String;

    return-object p0
.end method

.method public setLoginBtnBottomYOffset(I)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->Y:I

    return-object p0
.end method

.method public setLoginBtnHeight(I)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->U:I

    return-object p0
.end method

.method public setLoginBtnText(Ljava/lang/String;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->P:Ljava/lang/String;

    return-object p0
.end method

.method public setLoginBtnTextColor(I)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->S:I

    return-object p0
.end method

.method public setLoginBtnTextDpSize(I)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->R:I

    return-object p0
.end method

.method public setLoginBtnTextSize(I)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->Q:I

    return-object p0
.end method

.method public setLoginBtnTopYOffset(I)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->X:I

    return-object p0
.end method

.method public setLoginBtnWidth(I)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->T:I

    return-object p0
.end method

.method public setLoginBtnXOffset(I)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->Z:I

    return-object p0
.end method

.method public setLoginListener(Lcom/netease/nis/quicklogin/listener/LoginListener;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->s1:Lcom/netease/nis/quicklogin/listener/LoginListener;

    return-object p0
.end method

.method public setLogoBottomYOffset(I)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->y:I

    return-object p0
.end method

.method public setLogoHeight(I)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->w:I

    return-object p0
.end method

.method public setLogoIconDrawable(Landroid/graphics/drawable/Drawable;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->u:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setLogoIconName(Ljava/lang/String;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->t:Ljava/lang/String;

    return-object p0
.end method

.method public setLogoTopYOffset(I)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->x:I

    return-object p0
.end method

.method public setLogoWidth(I)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->v:I

    return-object p0
.end method

.method public setLogoXOffset(I)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->z:I

    return-object p0
.end method

.method public setMaskNumberBackgroundRes(Ljava/lang/String;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->I:Ljava/lang/String;

    return-object p0
.end method

.method public setMaskNumberBottomYOffset(I)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->G:I

    return-object p0
.end method

.method public setMaskNumberColor(I)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->B:I

    return-object p0
.end method

.method public setMaskNumberDpSize(I)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->D:I

    return-object p0
.end method

.method public setMaskNumberListener(Lcom/netease/nis/quicklogin/listener/MaskNumberListener;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->r1:Lcom/netease/nis/quicklogin/listener/MaskNumberListener;

    return-object p0
.end method

.method public setMaskNumberSize(I)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->C:I

    return-object p0
.end method

.method public setMaskNumberTopYOffset(I)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->F:I

    return-object p0
.end method

.method public setMaskNumberTypeface(Landroid/graphics/Typeface;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->E:Landroid/graphics/Typeface;

    return-object p0
.end method

.method public setMaskNumberXOffset(I)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->H:I

    return-object p0
.end method

.method public setNavTitleBold(Z)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->q:Z

    return-object p0
.end method

.method public setNavTitleDpSize(I)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->o:I

    return-object p0
.end method

.method public setNavTitleDrawable(Landroid/graphics/drawable/Drawable;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->r:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setNavTitleDrawablePadding(I)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->s:I

    return-object p0
.end method

.method public setNavTitleSize(I)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->n:I

    return-object p0
.end method

.method public setNavigationBackIconHeight(I)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->g:I

    return-object p0
.end method

.method public setNavigationBackIconWidth(I)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->f:I

    return-object p0
.end method

.method public setNavigationBackgroundColor(I)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->j:I

    return-object p0
.end method

.method public setNavigationHeight(I)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->l:I

    return-object p0
.end method

.method public setNavigationIcon(Ljava/lang/String;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->c:Ljava/lang/String;

    return-object p0
.end method

.method public setNavigationIconDrawable(Landroid/graphics/drawable/Drawable;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->d:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setNavigationIconGravity(I)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->h:I

    return-object p0
.end method

.method public setNavigationIconMargin(I)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->i:I

    return-object p0
.end method

.method public setNavigationTitle(Ljava/lang/String;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->k:Ljava/lang/String;

    return-object p0
.end method

.method public setNavigationTitleColor(I)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->m:I

    return-object p0
.end method

.method public setPrivacyBottomYOffset(I)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->f0:I

    return-object p0
.end method

.method public setPrivacyCheckBoxHeight(I)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->q0:I

    return-object p0
.end method

.method public setPrivacyCheckBoxWidth(I)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->p0:I

    return-object p0
.end method

.method public setPrivacyDialogAuto(Z)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->w0:Z

    return-object p0
.end method

.method public setPrivacyDialogText(Ljava/lang/String;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->v0:Ljava/lang/String;

    return-object p0
.end method

.method public setPrivacyDialogTextSize(F)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->x0:F

    return-object p0
.end method

.method public setPrivacyDpSize(I)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->d0:I

    return-object p0
.end method

.method public setPrivacyLineSpacing(FF)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->A0:F

    .line 2
    iput p2, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->B0:F

    return-object p0
.end method

.method public setPrivacyMarginLeft(I)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->g0:I

    return-object p0
.end method

.method public setPrivacyMarginRight(I)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->h0:I

    return-object p0
.end method

.method public setPrivacyProtocolColor(I)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->b0:I

    return-object p0
.end method

.method public setPrivacySize(I)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->c0:I

    return-object p0
.end method

.method public setPrivacyState(Z)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->i0:Z

    return-object p0
.end method

.method public setPrivacyTextColor(I)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->a0:I

    return-object p0
.end method

.method public setPrivacyTextEnd(Ljava/lang/String;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->J0:Ljava/lang/String;

    return-object p0
.end method

.method public setPrivacyTextGravityCenter(Z)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->l0:Z

    return-object p0
.end method

.method public setPrivacyTextLayoutGravity(I)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->m0:I

    return-object p0
.end method

.method public setPrivacyTextMarginLeft(I)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->n0:I

    return-object p0
.end method

.method public setPrivacyTextStart(Ljava/lang/String;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->y0:Ljava/lang/String;

    return-object p0
.end method

.method public setPrivacyTextStartSize(F)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->z0:F

    return-object p0
.end method

.method public setPrivacyTopYOffset(I)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->e0:I

    return-object p0
.end method

.method public setProtocol2Link(Ljava/lang/String;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->G0:Ljava/lang/String;

    return-object p0
.end method

.method public setProtocol2Text(Ljava/lang/String;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->F0:Ljava/lang/String;

    return-object p0
.end method

.method public setProtocol3Link(Ljava/lang/String;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->I0:Ljava/lang/String;

    return-object p0
.end method

.method public setProtocol3Text(Ljava/lang/String;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->H0:Ljava/lang/String;

    return-object p0
.end method

.method public setProtocolBackgroundImage(Ljava/lang/String;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->i1:Ljava/lang/String;

    return-object p0
.end method

.method public setProtocolConnect(Ljava/lang/String;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->E0:Ljava/lang/String;

    return-object p0
.end method

.method public setProtocolDialogMode(Z)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->g1:Z

    return-object p0
.end method

.method public setProtocolLink(Ljava/lang/String;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->D0:Ljava/lang/String;

    return-object p0
.end method

.method public setProtocolPageNavBackIcon(Ljava/lang/String;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->X0:Ljava/lang/String;

    return-object p0
.end method

.method public setProtocolPageNavBackIconDrawable(Landroid/graphics/drawable/Drawable;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->Y0:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setProtocolPageNavBackIconHeight(I)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->W0:I

    return-object p0
.end method

.method public setProtocolPageNavBackIconWidth(I)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->V0:I

    return-object p0
.end method

.method public setProtocolPageNavColor(I)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->Z0:I

    return-object p0
.end method

.method public setProtocolPageNavHeight(I)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->R0:I

    return-object p0
.end method

.method public setProtocolPageNavTitle(Ljava/lang/String;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->K0:Ljava/lang/String;

    return-object p0
.end method

.method public setProtocolPageNavTitle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->L0:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->N0:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->M0:Ljava/lang/String;

    return-object p0
.end method

.method public setProtocolPageNavTitle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->L0:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->N0:Ljava/lang/String;

    .line 7
    iput-object p3, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->M0:Ljava/lang/String;

    .line 8
    iput-object p4, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->O0:Ljava/lang/String;

    .line 9
    iput-object p5, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->P0:Ljava/lang/String;

    .line 10
    iput-object p6, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->Q0:Ljava/lang/String;

    return-object p0
.end method

.method public setProtocolPageNavTitleColor(I)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->S0:I

    return-object p0
.end method

.method public setProtocolPageNavTitleDpSize(I)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->U0:I

    return-object p0
.end method

.method public setProtocolPageNavTitleSize(I)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->T0:I

    return-object p0
.end method

.method public setProtocolText(Ljava/lang/String;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->C0:Ljava/lang/String;

    return-object p0
.end method

.method public setSloganBottomYOffset(I)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->N:I

    return-object p0
.end method

.method public setSloganColor(I)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->L:I

    return-object p0
.end method

.method public setSloganDpSize(I)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->K:I

    return-object p0
.end method

.method public setSloganSize(I)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->J:I

    return-object p0
.end method

.method public setSloganTopYOffset(I)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->M:I

    return-object p0
.end method

.method public setSloganXOffset(I)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->O:I

    return-object p0
.end method

.method public setStatusBarColor(I)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->a:I

    return-object p0
.end method

.method public setStatusBarDarkColor(Z)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->b:Z

    return-object p0
.end method

.method public setUnCheckedImageDrawable(Landroid/graphics/drawable/Drawable;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->u0:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setUnCheckedImageName(Ljava/lang/String;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->t0:Ljava/lang/String;

    return-object p0
.end method
