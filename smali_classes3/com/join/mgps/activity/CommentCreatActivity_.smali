.class public final Lcom/join/mgps/activity/CommentCreatActivity_;
.super Lcom/join/mgps/activity/CommentCreatActivity;
.source "CommentCreatActivity_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/CommentCreatActivity_$i;
    }
.end annotation


# static fields
.field public static final B:Ljava/lang/String; = "commentId"

.field public static final C:Ljava/lang/String; = "commentContent"

.field public static final D:Ljava/lang/String; = "commentStars"

.field public static final E:Ljava/lang/String; = "gameId"

.field public static final F:Ljava/lang/String; = "gameType"

.field public static final G:Ljava/lang/String; = "gameIsStart"

.field public static final H:Ljava/lang/String; = "packageName"

.field public static final I:Ljava/lang/String; = "isEdit"

.field public static final J:Ljava/lang/String; = "phoneModel"

.field public static final K:Ljava/lang/String; = "commentScoreSwitch"

.field public static final n0:Ljava/lang/String; = "bespeakSwitch"


# instance fields
.field private final A:Ljava/util/Map;
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

.field private final z:Li3/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/CommentCreatActivity;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/CommentCreatActivity_;->z:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/CommentCreatActivity_;->A:Ljava/util/Map;

    return-void
.end method

.method static synthetic O0(Lcom/join/mgps/activity/CommentCreatActivity_;IDLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Lcom/join/mgps/activity/CommentCreatActivity;->I0(IDLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic P0(Lcom/join/mgps/activity/CommentCreatActivity_;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/CommentCreatActivity;->J0(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic Q0(Lcom/join/mgps/activity/CommentCreatActivity_;Lcom/join/mgps/dto/CommentResponse;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/CommentCreatActivity;->K0(Lcom/join/mgps/dto/CommentResponse;)V

    return-void
.end method

.method static synthetic R0(Lcom/join/mgps/activity/CommentCreatActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/CommentCreatActivity;->showMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic S0(Lcom/join/mgps/activity/CommentCreatActivity_;FLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/join/mgps/activity/CommentCreatActivity;->N0(FLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic T0(Lcom/join/mgps/activity/CommentCreatActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/CommentCreatActivity;->H0()V

    return-void
.end method

.method public static U0(Landroid/content/Context;)Lcom/join/mgps/activity/CommentCreatActivity_$i;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CommentCreatActivity_$i;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CommentCreatActivity_$i;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static V0(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/CommentCreatActivity_$i;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CommentCreatActivity_$i;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CommentCreatActivity_$i;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    new-instance p1, Lcom/join/mgps/pref/PrefDef_;

    invoke-direct {p1, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/join/mgps/activity/CommentCreatActivity;->w:Lcom/join/mgps/pref/PrefDef_;

    .line 2
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/activity/CommentCreatActivity_;->injectExtras_()V

    return-void
.end method

.method private injectExtras_()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_a

    const-string v1, "commentId"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/CommentCreatActivity;->k:Ljava/lang/String;

    :cond_0
    const-string v1, "commentContent"

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/CommentCreatActivity;->l:Ljava/lang/String;

    :cond_1
    const-string v1, "commentStars"

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/join/mgps/activity/CommentCreatActivity;->m:F

    :cond_2
    const-string v1, "gameId"

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/CommentCreatActivity;->n:Ljava/lang/String;

    :cond_3
    const-string v1, "gameType"

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/CommentCreatActivity;->o:Ljava/lang/String;

    :cond_4
    const-string v1, "gameIsStart"

    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/join/mgps/activity/CommentCreatActivity;->p:I

    :cond_5
    const-string v1, "packageName"

    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/CommentCreatActivity;->q:Ljava/lang/String;

    :cond_6
    const-string v1, "isEdit"

    .line 16
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/join/mgps/activity/CommentCreatActivity;->r:Z

    :cond_7
    const-string v1, "phoneModel"

    .line 18
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 19
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/CommentCreatActivity;->s:Ljava/lang/String;

    :cond_8
    const-string v1, "commentScoreSwitch"

    .line 20
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 21
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/CommentCreatActivity;->t:Ljava/lang/String;

    :cond_9
    const-string v1, "bespeakSwitch"

    .line 22
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 23
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/join/mgps/activity/CommentCreatActivity;->u:I

    :cond_a
    return-void
.end method


# virtual methods
.method H0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/CommentCreatActivity_$h;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/CommentCreatActivity_$h;-><init>(Lcom/join/mgps/activity/CommentCreatActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method I0(IDLjava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/CommentCreatActivity_$c;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/CommentCreatActivity_$c;-><init>(Lcom/join/mgps/activity/CommentCreatActivity_;IDLjava/lang/String;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 p2, 0x0

    invoke-static {p1, v7, p2, p3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method J0(Ljava/lang/String;Z)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CommentCreatActivity_$d;

    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/CommentCreatActivity_$d;-><init>(Lcom/join/mgps/activity/CommentCreatActivity_;Ljava/lang/String;Z)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method K0(Lcom/join/mgps/dto/CommentResponse;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CommentCreatActivity_$e;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/CommentCreatActivity_$e;-><init>(Lcom/join/mgps/activity/CommentCreatActivity_;Lcom/join/mgps/dto/CommentResponse;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method N0(FLjava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 1
    new-instance v9, Lcom/join/mgps/activity/CommentCreatActivity_$g;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v9

    move-object v1, p0

    move v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/join/mgps/activity/CommentCreatActivity_$g;-><init>(Lcom/join/mgps/activity/CommentCreatActivity_;Ljava/lang/String;JLjava/lang/String;FLjava/lang/String;Ljava/lang/String;)V

    invoke-static {v9}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/CommentCreatActivity_;->A:Ljava/util/Map;

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
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentCreatActivity_;->z:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/CommentCreatActivity_;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c00fc

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/CommentCreatActivity_;->setContentView(I)V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 1

    const v0, 0x7f09013e

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/CommentCreatActivity;->b:Landroid/widget/ImageView;

    const v0, 0x7f091033

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/CommentCreatActivity;->c:Landroid/widget/TextView;

    const v0, 0x7f090f55

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/CommentCreatActivity;->d:Landroid/widget/TextView;

    const v0, 0x7f090a9b

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/MStarBar;

    iput-object v0, p0, Lcom/join/mgps/activity/CommentCreatActivity;->e:Lcom/join/mgps/customview/MStarBar;

    const v0, 0x7f090ece

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/CommentCreatActivity;->f:Landroid/widget/LinearLayout;

    const v0, 0x7f090a9c

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/CommentCreatActivity;->g:Landroid/widget/TextView;

    const v0, 0x7f0902c3

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/join/mgps/activity/CommentCreatActivity;->h:Landroid/widget/EditText;

    const v0, 0x7f090c0b

    .line 8
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/join/mgps/activity/CommentCreatActivity;->i:Landroid/widget/CheckBox;

    const v0, 0x7f0910bf

    .line 9
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/activity/CommentCreatActivity;->j:Landroid/widget/TextView;

    .line 10
    iget-object p1, p0, Lcom/join/mgps/activity/CommentCreatActivity;->b:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    .line 11
    new-instance v0, Lcom/join/mgps/activity/CommentCreatActivity_$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CommentCreatActivity_$a;-><init>(Lcom/join/mgps/activity/CommentCreatActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/CommentCreatActivity;->d:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 13
    new-instance v0, Lcom/join/mgps/activity/CommentCreatActivity_$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CommentCreatActivity_$b;-><init>(Lcom/join/mgps/activity/CommentCreatActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/CommentCreatActivity;->afterView()V

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
    iget-object v0, p0, Lcom/join/mgps/activity/CommentCreatActivity_;->A:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/CommentCreatActivity_;->z:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/CommentCreatActivity_;->z:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/CommentCreatActivity_;->z:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/CommentCreatActivity_;->injectExtras_()V

    return-void
.end method

.method showMessage(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CommentCreatActivity_$f;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/CommentCreatActivity_$f;-><init>(Lcom/join/mgps/activity/CommentCreatActivity_;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
