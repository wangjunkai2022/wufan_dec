.class public final Lcom/join/mgps/fragment/l3;
.super Lcom/join/mgps/fragment/k3;
.source "MyShopFragment_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/fragment/l3$i;
    }
.end annotation


# instance fields
.field private final r:Li3/c;

.field private s:Landroid/view/View;

.field private final t:Ljava/util/Map;
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
    invoke-direct {p0}, Lcom/join/mgps/fragment/k3;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/l3;->r:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/l3;->t:Ljava/util/Map;

    return-void
.end method

.method public static a0()Lcom/join/mgps/fragment/l3$i;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/l3$i;

    invoke-direct {v0}, Lcom/join/mgps/fragment/l3$i;-><init>()V

    return-object v0
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    return-void
.end method


# virtual methods
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
    iget-object v0, p0, Lcom/join/mgps/fragment/l3;->t:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public internalFindViewById(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/l3;->s:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/l3;->r:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/l3;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/join/mgps/fragment/l3;->s:Landroid/view/View;

    if-nez p3, :cond_0

    const p3, 0x7f0c033b

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/fragment/l3;->s:Landroid/view/View;

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/l3;->s:Landroid/view/View;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/fragment/l3;->s:Landroid/view/View;

    .line 3
    iput-object v0, p0, Lcom/join/mgps/fragment/k3;->a:Landroid/widget/RadioButton;

    .line 4
    iput-object v0, p0, Lcom/join/mgps/fragment/k3;->b:Landroid/widget/RadioButton;

    .line 5
    iput-object v0, p0, Lcom/join/mgps/fragment/k3;->c:Landroid/widget/RadioButton;

    .line 6
    iput-object v0, p0, Lcom/join/mgps/fragment/k3;->d:Landroid/widget/RadioButton;

    .line 7
    iput-object v0, p0, Lcom/join/mgps/fragment/k3;->e:Landroid/widget/LinearLayout;

    .line 8
    iput-object v0, p0, Lcom/join/mgps/fragment/k3;->f:Landroid/widget/LinearLayout;

    .line 9
    iput-object v0, p0, Lcom/join/mgps/fragment/k3;->g:Landroid/widget/LinearLayout;

    .line 10
    iput-object v0, p0, Lcom/join/mgps/fragment/k3;->h:Landroid/widget/LinearLayout;

    .line 11
    iput-object v0, p0, Lcom/join/mgps/fragment/k3;->i:Landroid/widget/FrameLayout;

    .line 12
    iput-object v0, p0, Lcom/join/mgps/fragment/k3;->j:Landroid/widget/RelativeLayout;

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 1

    const v0, 0x7f090cca

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/join/mgps/fragment/k3;->a:Landroid/widget/RadioButton;

    const v0, 0x7f090cbf

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/join/mgps/fragment/k3;->b:Landroid/widget/RadioButton;

    const v0, 0x7f090cc2

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/join/mgps/fragment/k3;->c:Landroid/widget/RadioButton;

    const v0, 0x7f090cc1

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/join/mgps/fragment/k3;->d:Landroid/widget/RadioButton;

    const v0, 0x7f090979

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/fragment/k3;->e:Landroid/widget/LinearLayout;

    const v0, 0x7f09092f

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/fragment/k3;->f:Landroid/widget/LinearLayout;

    const v0, 0x7f090947

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/fragment/k3;->g:Landroid/widget/LinearLayout;

    const v0, 0x7f090944

    .line 8
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/fragment/k3;->h:Landroid/widget/LinearLayout;

    const v0, 0x7f090534

    .line 9
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/join/mgps/fragment/k3;->i:Landroid/widget/FrameLayout;

    const v0, 0x7f090d7f

    .line 10
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/join/mgps/fragment/k3;->j:Landroid/widget/RelativeLayout;

    .line 11
    iget-object p1, p0, Lcom/join/mgps/fragment/k3;->e:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    .line 12
    new-instance v0, Lcom/join/mgps/fragment/l3$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/l3$a;-><init>(Lcom/join/mgps/fragment/l3;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/k3;->a:Landroid/widget/RadioButton;

    if-eqz p1, :cond_1

    .line 14
    new-instance v0, Lcom/join/mgps/fragment/l3$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/l3$b;-><init>(Lcom/join/mgps/fragment/l3;)V

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/fragment/k3;->f:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_2

    .line 16
    new-instance v0, Lcom/join/mgps/fragment/l3$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/l3$c;-><init>(Lcom/join/mgps/fragment/l3;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/fragment/k3;->b:Landroid/widget/RadioButton;

    if-eqz p1, :cond_3

    .line 18
    new-instance v0, Lcom/join/mgps/fragment/l3$d;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/l3$d;-><init>(Lcom/join/mgps/fragment/l3;)V

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/fragment/k3;->g:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_4

    .line 20
    new-instance v0, Lcom/join/mgps/fragment/l3$e;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/l3$e;-><init>(Lcom/join/mgps/fragment/l3;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/fragment/k3;->c:Landroid/widget/RadioButton;

    if-eqz p1, :cond_5

    .line 22
    new-instance v0, Lcom/join/mgps/fragment/l3$f;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/l3$f;-><init>(Lcom/join/mgps/fragment/l3;)V

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/fragment/k3;->h:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_6

    .line 24
    new-instance v0, Lcom/join/mgps/fragment/l3$g;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/l3$g;-><init>(Lcom/join/mgps/fragment/l3;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/fragment/k3;->d:Landroid/widget/RadioButton;

    if-eqz p1, :cond_7

    .line 26
    new-instance v0, Lcom/join/mgps/fragment/l3$h;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/l3$h;-><init>(Lcom/join/mgps/fragment/l3;)V

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    :cond_7
    invoke-virtual {p0}, Lcom/join/mgps/fragment/k3;->afterView()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/fragment/l3;->r:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

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
    iget-object v0, p0, Lcom/join/mgps/fragment/l3;->t:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
