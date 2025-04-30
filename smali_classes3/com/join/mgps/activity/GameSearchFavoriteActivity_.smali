.class public final Lcom/join/mgps/activity/GameSearchFavoriteActivity_;
.super Lcom/join/mgps/activity/GameSearchFavoriteActivity;
.source "GameSearchFavoriteActivity_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/GameSearchFavoriteActivity_$j;
    }
.end annotation


# static fields
.field public static final x:Ljava/lang/String; = "type"


# instance fields
.field private final v:Li3/c;

.field private final w:Ljava/util/Map;
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
    invoke-direct {p0}, Lcom/join/mgps/activity/GameSearchFavoriteActivity;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity_;->v:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity_;->w:Ljava/util/Map;

    return-void
.end method

.method static synthetic p(Lcom/join/mgps/activity/GameSearchFavoriteActivity_;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->o(Ljava/util/List;)V

    return-void
.end method

.method static synthetic q(Lcom/join/mgps/activity/GameSearchFavoriteActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->m()V

    return-void
.end method

.method static synthetic r(Lcom/join/mgps/activity/GameSearchFavoriteActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->l()V

    return-void
.end method

.method static synthetic s(Lcom/join/mgps/activity/GameSearchFavoriteActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->h()V

    return-void
.end method

.method static synthetic t(Lcom/join/mgps/activity/GameSearchFavoriteActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->n(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic u(Lcom/join/mgps/activity/GameSearchFavoriteActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->e()V

    return-void
.end method

.method private v(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    .line 2
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->l:Lcom/join/mgps/Util/b;

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/activity/GameSearchFavoriteActivity_;->w()V

    return-void
.end method

.method private w()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "type"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->a:I

    :cond_0
    return-void
.end method

.method public static x(Landroid/content/Context;)Lcom/join/mgps/activity/GameSearchFavoriteActivity_$j;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameSearchFavoriteActivity_$j;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameSearchFavoriteActivity_$j;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static y(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/GameSearchFavoriteActivity_$j;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameSearchFavoriteActivity_$j;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameSearchFavoriteActivity_$j;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method


# virtual methods
.method e()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/GameSearchFavoriteActivity_$i;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/GameSearchFavoriteActivity_$i;-><init>(Lcom/join/mgps/activity/GameSearchFavoriteActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity_;->w:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method h()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameSearchFavoriteActivity_$g;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameSearchFavoriteActivity_$g;-><init>(Lcom/join/mgps/activity/GameSearchFavoriteActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
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

.method l()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameSearchFavoriteActivity_$f;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameSearchFavoriteActivity_$f;-><init>(Lcom/join/mgps/activity/GameSearchFavoriteActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method m()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameSearchFavoriteActivity_$e;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameSearchFavoriteActivity_$e;-><init>(Lcom/join/mgps/activity/GameSearchFavoriteActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method n(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameSearchFavoriteActivity_$h;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/GameSearchFavoriteActivity_$h;-><init>(Lcom/join/mgps/activity/GameSearchFavoriteActivity_;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method o(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameSearchFavoriteActivity_$d;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/GameSearchFavoriteActivity_$d;-><init>(Lcom/join/mgps/activity/GameSearchFavoriteActivity_;Ljava/util/List;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity_;->v:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/GameSearchFavoriteActivity_;->v(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c0043

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameSearchFavoriteActivity_;->setContentView(I)V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 3

    const v0, 0x7f090432

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->b:Landroid/widget/EditText;

    const v0, 0x7f090d6d

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->c:Landroid/widget/RelativeLayout;

    const v0, 0x7f090d74

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->d:Landroid/widget/RelativeLayout;

    const v0, 0x7f09013e

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->e:Landroid/widget/ImageView;

    const v0, 0x7f091033

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->f:Landroid/widget/TextView;

    const v0, 0x7f0909b5

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->g:Landroid/widget/LinearLayout;

    const v0, 0x7f0909b0

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->h:Landroid/widget/LinearLayout;

    const v0, 0x7f0909dc

    .line 8
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/XListView2;

    iput-object v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->i:Lcom/join/mgps/customview/XListView2;

    const v0, 0x7f090d11

    .line 9
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090e21

    .line 10
    invoke-interface {p1, v1}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->e:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 12
    new-instance v2, Lcom/join/mgps/activity/GameSearchFavoriteActivity_$a;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/GameSearchFavoriteActivity_$a;-><init>(Lcom/join/mgps/activity/GameSearchFavoriteActivity_;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    if-eqz v0, :cond_1

    .line 13
    new-instance v1, Lcom/join/mgps/activity/GameSearchFavoriteActivity_$b;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GameSearchFavoriteActivity_$b;-><init>(Lcom/join/mgps/activity/GameSearchFavoriteActivity_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 14
    new-instance v0, Lcom/join/mgps/activity/GameSearchFavoriteActivity_$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameSearchFavoriteActivity_$c;-><init>(Lcom/join/mgps/activity/GameSearchFavoriteActivity_;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->c()V

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity_;->w:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity_;->v:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity_;->v:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity_;->v:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/GameSearchFavoriteActivity_;->w()V

    return-void
.end method
