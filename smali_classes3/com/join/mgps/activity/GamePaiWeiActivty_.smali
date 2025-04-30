.class public final Lcom/join/mgps/activity/GamePaiWeiActivty_;
.super Lcom/join/mgps/activity/GamePaiWeiActivty;
.source "GamePaiWeiActivty_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/GamePaiWeiActivty_$v;
    }
.end annotation


# static fields
.field public static final J0:Ljava/lang/String; = "gameId"

.field public static final K0:Ljava/lang/String; = "numPlayers"

.field public static final L0:Ljava/lang/String; = "rankAutoUpload"


# instance fields
.field private final H0:Li3/c;

.field private final I0:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/GamePaiWeiActivty;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty_;->H0:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty_;->I0:Ljava/util/Map;

    return-void
.end method

.method static synthetic V(Lcom/join/mgps/activity/GamePaiWeiActivty_;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/GamePaiWeiActivty;->y(Z)V

    return-void
.end method

.method static synthetic W(Lcom/join/mgps/activity/GamePaiWeiActivty_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/GamePaiWeiActivty;->M(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic X(Lcom/join/mgps/activity/GamePaiWeiActivty_;Lcom/join/mgps/dto/PaiWeiUploadFileNewBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/GamePaiWeiActivty;->T(Lcom/join/mgps/dto/PaiWeiUploadFileNewBean;)V

    return-void
.end method

.method static synthetic Y(Lcom/join/mgps/activity/GamePaiWeiActivty_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/GamePaiWeiActivty;->N(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic Z(Lcom/join/mgps/activity/GamePaiWeiActivty_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GamePaiWeiActivty;->R()V

    return-void
.end method

.method static synthetic a0(Lcom/join/mgps/activity/GamePaiWeiActivty_;Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/GamePaiWeiActivty;->Q(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b0(Lcom/join/mgps/activity/GamePaiWeiActivty_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/GamePaiWeiActivty;->v(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c0(Lcom/join/mgps/activity/GamePaiWeiActivty_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GamePaiWeiActivty;->w()V

    return-void
.end method

.method static synthetic d0(Lcom/join/mgps/activity/GamePaiWeiActivty_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/GamePaiWeiActivty;->o(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic e0(Lcom/join/mgps/activity/GamePaiWeiActivty_;Lcom/join/mgps/dto/PaiWeiUploadFileBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/GamePaiWeiActivty;->S(Lcom/join/mgps/dto/PaiWeiUploadFileBean;)V

    return-void
.end method

.method static synthetic f0(Lcom/join/mgps/activity/GamePaiWeiActivty_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/GamePaiWeiActivty;->O(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic g0(Lcom/join/mgps/activity/GamePaiWeiActivty_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GamePaiWeiActivty;->L()V

    return-void
.end method

.method static synthetic h0(Lcom/join/mgps/activity/GamePaiWeiActivty_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GamePaiWeiActivty;->s()V

    return-void
.end method

.method static synthetic i0(Lcom/join/mgps/activity/GamePaiWeiActivty_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GamePaiWeiActivty;->K()V

    return-void
.end method

.method static synthetic j0(Lcom/join/mgps/activity/GamePaiWeiActivty_;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/GamePaiWeiActivty;->I(Ljava/util/List;)V

    return-void
.end method

.method static synthetic k0(Lcom/join/mgps/activity/GamePaiWeiActivty_;Lcom/papa91/arc/bean/PaiWeiDataBean$MonthBestBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/GamePaiWeiActivty;->J(Lcom/papa91/arc/bean/PaiWeiDataBean$MonthBestBean;)V

    return-void
.end method

.method static synthetic l0(Lcom/join/mgps/activity/GamePaiWeiActivty_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GamePaiWeiActivty;->t()V

    return-void
.end method

.method private m0(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    .line 2
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->y:Lcom/join/mgps/Util/b;

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/activity/GamePaiWeiActivty_;->n0()V

    return-void
.end method

.method private n0()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "gameId"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->z:Ljava/lang/String;

    :cond_0
    const-string v1, "numPlayers"

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->A:I

    :cond_1
    const-string v1, "rankAutoUpload"

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->B:I

    :cond_2
    return-void
.end method

.method public static o0(Landroid/content/Context;)Lcom/join/mgps/activity/GamePaiWeiActivty_$v;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GamePaiWeiActivty_$v;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GamePaiWeiActivty_$v;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static p0(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/GamePaiWeiActivty_$v;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GamePaiWeiActivty_$v;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GamePaiWeiActivty_$v;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method


# virtual methods
.method I(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/papa91/arc/bean/PaiWeiDataBean$AdListBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GamePaiWeiActivty_$c;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/GamePaiWeiActivty_$c;-><init>(Lcom/join/mgps/activity/GamePaiWeiActivty_;Ljava/util/List;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method J(Lcom/papa91/arc/bean/PaiWeiDataBean$MonthBestBean;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GamePaiWeiActivty_$d;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/GamePaiWeiActivty_$d;-><init>(Lcom/join/mgps/activity/GamePaiWeiActivty_;Lcom/papa91/arc/bean/PaiWeiDataBean$MonthBestBean;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method K()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GamePaiWeiActivty_$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GamePaiWeiActivty_$b;-><init>(Lcom/join/mgps/activity/GamePaiWeiActivty_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method L()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GamePaiWeiActivty_$u;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GamePaiWeiActivty_$u;-><init>(Lcom/join/mgps/activity/GamePaiWeiActivty_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method M(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GamePaiWeiActivty_$f;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/GamePaiWeiActivty_$f;-><init>(Lcom/join/mgps/activity/GamePaiWeiActivty_;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method N(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GamePaiWeiActivty_$g;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/GamePaiWeiActivty_$g;-><init>(Lcom/join/mgps/activity/GamePaiWeiActivty_;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method O(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GamePaiWeiActivty_$t;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/GamePaiWeiActivty_$t;-><init>(Lcom/join/mgps/activity/GamePaiWeiActivty_;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method Q(Ljava/io/File;Ljava/lang/String;)V
    .locals 9

    .line 1
    new-instance v8, Lcom/join/mgps/activity/GamePaiWeiActivty_$i;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v8

    move-object v1, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/activity/GamePaiWeiActivty_$i;-><init>(Lcom/join/mgps/activity/GamePaiWeiActivty_;Ljava/lang/String;JLjava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v8}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method R()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/GamePaiWeiActivty_$h;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/GamePaiWeiActivty_$h;-><init>(Lcom/join/mgps/activity/GamePaiWeiActivty_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method S(Lcom/join/mgps/dto/PaiWeiUploadFileBean;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GamePaiWeiActivty_$s;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/GamePaiWeiActivty_$s;-><init>(Lcom/join/mgps/activity/GamePaiWeiActivty_;Lcom/join/mgps/dto/PaiWeiUploadFileBean;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method T(Lcom/join/mgps/dto/PaiWeiUploadFileNewBean;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GamePaiWeiActivty_$r;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/GamePaiWeiActivty_$r;-><init>(Lcom/join/mgps/activity/GamePaiWeiActivty_;Lcom/join/mgps/dto/PaiWeiUploadFileNewBean;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public getBean(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty_;->I0:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public internalFindViewById(I)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method o(Ljava/lang/String;)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/GamePaiWeiActivty_$m;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/GamePaiWeiActivty_$m;-><init>(Lcom/join/mgps/activity/GamePaiWeiActivty_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty_;->H0:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/GamePaiWeiActivty_;->m0(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c007c

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GamePaiWeiActivty_;->setContentView(I)V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 1

    const v0, 0x7f090e03

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->a:Landroid/widget/LinearLayout;

    const v0, 0x7f090ba9

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->b:Landroid/widget/ImageView;

    const v0, 0x7f090e01

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->c:Landroid/widget/ImageView;

    const v0, 0x7f090bac

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->d:Landroid/widget/ImageView;

    const v0, 0x7f090bb4

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->e:Landroid/widget/Button;

    const v0, 0x7f090bb7

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->f:Landroid/widget/TextView;

    const v0, 0x7f090bb6

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->g:Landroid/widget/TextView;

    const v0, 0x7f090bb5

    .line 8
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->h:Landroid/widget/TextView;

    const v0, 0x7f090bb2

    .line 9
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->i:Landroid/widget/TextView;

    const v0, 0x7f090bae

    .line 10
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->j:Landroid/widget/TextView;

    const v0, 0x7f090bb0

    .line 11
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->k:Landroid/widget/TextView;

    const v0, 0x7f090bab

    .line 12
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->l:Landroid/widget/TextView;

    const v0, 0x7f090e04

    .line 13
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->m:Landroid/widget/TextView;

    const v0, 0x7f090e02

    .line 14
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->n:Landroid/widget/ListView;

    const v0, 0x7f090bb1

    .line 15
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->o:Landroid/widget/ListView;

    const v0, 0x7f090760

    .line 16
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->p:Landroid/widget/RelativeLayout;

    const v0, 0x7f090ba8

    .line 17
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/AutoScrollViewPager;

    iput-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->q:Lcom/join/mgps/customview/AutoScrollViewPager;

    const v0, 0x7f090ba7

    .line 18
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->r:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 19
    iget-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->a:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    .line 20
    new-instance v0, Lcom/join/mgps/activity/GamePaiWeiActivty_$k;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GamePaiWeiActivty_$k;-><init>(Lcom/join/mgps/activity/GamePaiWeiActivty_;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->b:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    .line 22
    new-instance v0, Lcom/join/mgps/activity/GamePaiWeiActivty_$n;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GamePaiWeiActivty_$n;-><init>(Lcom/join/mgps/activity/GamePaiWeiActivty_;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->d:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    .line 24
    new-instance v0, Lcom/join/mgps/activity/GamePaiWeiActivty_$o;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GamePaiWeiActivty_$o;-><init>(Lcom/join/mgps/activity/GamePaiWeiActivty_;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty;->e:Landroid/widget/Button;

    if-eqz p1, :cond_3

    .line 26
    new-instance v0, Lcom/join/mgps/activity/GamePaiWeiActivty_$p;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GamePaiWeiActivty_$p;-><init>(Lcom/join/mgps/activity/GamePaiWeiActivty_;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/GamePaiWeiActivty;->p()V

    return-void
.end method

.method public putBean(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty_;->I0:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method s()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GamePaiWeiActivty_$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GamePaiWeiActivty_$a;-><init>(Lcom/join/mgps/activity/GamePaiWeiActivty_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty_;->H0:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty_;->H0:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty_;->H0:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/GamePaiWeiActivty_;->n0()V

    return-void
.end method

.method t()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GamePaiWeiActivty_$e;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GamePaiWeiActivty_$e;-><init>(Lcom/join/mgps/activity/GamePaiWeiActivty_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method v(Ljava/lang/String;)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/GamePaiWeiActivty_$j;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/GamePaiWeiActivty_$j;-><init>(Lcom/join/mgps/activity/GamePaiWeiActivty_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method w()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/GamePaiWeiActivty_$l;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/GamePaiWeiActivty_$l;-><init>(Lcom/join/mgps/activity/GamePaiWeiActivty_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method y(Z)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GamePaiWeiActivty_$q;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/GamePaiWeiActivty_$q;-><init>(Lcom/join/mgps/activity/GamePaiWeiActivty_;Z)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
