.class public Lcom/join/mgps/adapter/ForumPostsAdapter;
.super Landroid/widget/BaseAdapter;
.source "ForumPostsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/ForumPostsAdapter$e0;,
        Lcom/join/mgps/adapter/ForumPostsAdapter$j0;,
        Lcom/join/mgps/adapter/ForumPostsAdapter$f0;,
        Lcom/join/mgps/adapter/ForumPostsAdapter$i0;,
        Lcom/join/mgps/adapter/ForumPostsAdapter$h0;,
        Lcom/join/mgps/adapter/ForumPostsAdapter$d0;,
        Lcom/join/mgps/adapter/ForumPostsAdapter$k0;,
        Lcom/join/mgps/adapter/ForumPostsAdapter$b0;,
        Lcom/join/mgps/adapter/ForumPostsAdapter$a0;,
        Lcom/join/mgps/adapter/ForumPostsAdapter$c0;,
        Lcom/join/mgps/adapter/ForumPostsAdapter$z;,
        Lcom/join/mgps/adapter/ForumPostsAdapter$g0;,
        Lcom/join/mgps/adapter/ForumPostsAdapter$l0;,
        Lcom/join/mgps/adapter/ForumPostsAdapter$p0;,
        Lcom/join/mgps/adapter/ForumPostsAdapter$t0;,
        Lcom/join/mgps/adapter/ForumPostsAdapter$q0;,
        Lcom/join/mgps/adapter/ForumPostsAdapter$r0;,
        Lcom/join/mgps/adapter/ForumPostsAdapter$s0;,
        Lcom/join/mgps/adapter/ForumPostsAdapter$n0;,
        Lcom/join/mgps/adapter/ForumPostsAdapter$o0;,
        Lcom/join/mgps/adapter/ForumPostsAdapter$m0;,
        Lcom/join/mgps/adapter/ForumPostsAdapter$v0;,
        Lcom/join/mgps/adapter/ForumPostsAdapter$u0;,
        Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field b:Lcom/danikula/videocache/i;

.field private c:Ljava/lang/String;

.field private d:Landroid/content/Context;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/ForumPostsAdapter$u0;",
            ">;"
        }
    .end annotation
.end field

.field f:Lcom/join/mgps/adapter/ForumPostsAdapter$j0;

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field h:Landroid/widget/LinearLayout$LayoutParams;

.field i:I

.field j:I

.field k:Landroid/widget/LinearLayout$LayoutParams;

.field l:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/join/mgps/adapter/ForumPostsAdapter$k0;",
            ">;"
        }
    .end annotation
.end field

.field m:Lcom/join/mgps/adapter/ForumPostsAdapter$d0;

.field n:Z

.field o:Lcom/join/mgps/adapter/ForumPostsAdapter$h0;

.field private p:Lcom/join/mgps/adapter/ForumPostsAdapter$i0;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->a:Ljava/lang/String;

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->c:Ljava/lang/String;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->g:Ljava/util/Map;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->i:I

    .line 6
    iput v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->j:I

    .line 7
    iput-boolean v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->n:Z

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->p:Lcom/join/mgps/adapter/ForumPostsAdapter$i0;

    .line 9
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->d:Landroid/content/Context;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->e:Ljava/util/List;

    .line 11
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumPostsAdapter;->P(Landroid/content/Context;)Lcom/danikula/videocache/i;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->b:Lcom/danikula/videocache/i;

    .line 12
    invoke-direct {p0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->R()V

    return-void
.end method

.method private A0(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Landroid/widget/TextView;

    .line 3
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 4
    :cond_1
    instance-of v0, p1, Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 5
    check-cast p1, Landroid/widget/Button;

    .line 6
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private B0(Landroid/view/View;I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Landroid/widget/TextView;

    .line 3
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 4
    :cond_1
    instance-of v0, p1, Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 5
    check-cast p1, Landroid/widget/Button;

    .line 6
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setTextColor(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private C(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/ForumPostsAdapter$l0;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Lcom/join/mgps/adapter/ForumPostsAdapter$l0;

    invoke-direct {p1, p0}, Lcom/join/mgps/adapter/ForumPostsAdapter$l0;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter;)V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->d:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0c041a

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    return-object p2
.end method

.method private D(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const-string p3, "0"

    const-string v0, ""

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/adapter/ForumPostsAdapter$l0;

    goto :goto_0

    .line 2
    :cond_0
    new-instance v1, Lcom/join/mgps/adapter/ForumPostsAdapter$l0;

    invoke-direct {v1, p0}, Lcom/join/mgps/adapter/ForumPostsAdapter$l0;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter;)V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->d:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v2, 0x7f0c0419

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v2, 0x7f09050d

    .line 4
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/join/mgps/adapter/ForumPostsAdapter$l0;->b:Landroid/widget/TextView;

    const v2, 0x7f090524

    .line 5
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/join/mgps/adapter/ForumPostsAdapter$l0;->c:Landroid/widget/TextView;

    const v2, 0x7f090513

    .line 6
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/join/mgps/adapter/ForumPostsAdapter$l0;->d:Landroid/widget/TextView;

    const v2, 0x7f09051d

    .line 7
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/join/mgps/adapter/ForumPostsAdapter$l0;->e:Landroid/widget/TextView;

    .line 8
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 9
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumPostsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$f;

    if-nez p1, :cond_1

    return-object p2

    .line 10
    :cond_1
    iget-boolean v2, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$f;->h:Z

    const/4 v3, 0x0

    const/16 v4, 0x8

    const v5, 0x7f090c3a

    if-eqz v2, :cond_2

    .line 11
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 12
    :cond_2
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 13
    :goto_1
    iget-object v2, v1, Lcom/join/mgps/adapter/ForumPostsAdapter$l0;->b:Landroid/widget/TextView;

    iget-object v5, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$f;->b:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v2, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$f;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 15
    iget-object v2, v1, Lcom/join/mgps/adapter/ForumPostsAdapter$l0;->b:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_2

    .line 16
    :cond_3
    iget-object v2, v1, Lcom/join/mgps/adapter/ForumPostsAdapter$l0;->b:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 17
    :goto_2
    iget-object v2, v1, Lcom/join/mgps/adapter/ForumPostsAdapter$l0;->c:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$f;->c:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p3}, Lcom/join/mgps/Util/i0;->D1(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-object v2, v1, Lcom/join/mgps/adapter/ForumPostsAdapter$l0;->d:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$f;->d:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, p3}, Lcom/join/mgps/Util/i0;->D1(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iget-boolean p3, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$f;->g:Z

    iget v0, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$f;->e:I

    invoke-direct {p0, p2, p3, v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->W(Landroid/view/View;ZI)V

    .line 20
    iget p1, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$f;->a:I

    .line 21
    iget-object p3, v1, Lcom/join/mgps/adapter/ForumPostsAdapter$l0;->e:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    new-instance v0, Lcom/join/mgps/adapter/ForumPostsAdapter$u;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/adapter/ForumPostsAdapter$u;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter;I)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-object p2
.end method

.method private D0(Landroid/view/View;Lcom/join/mgps/adapter/ForumPostsAdapter$u0$a;)V
    .locals 7

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->m:Lcom/join/mgps/adapter/ForumPostsAdapter$d0;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->m:Lcom/join/mgps/adapter/ForumPostsAdapter$d0;

    invoke-virtual {v0}, Lcom/join/mgps/adapter/ForumPostsAdapter$d0;->dismiss()V

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->m:Lcom/join/mgps/adapter/ForumPostsAdapter$d0;

    if-nez v0, :cond_2

    .line 4
    new-instance v0, Lcom/join/mgps/adapter/ForumPostsAdapter$d0;

    iget-object v1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->d:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/join/mgps/adapter/ForumPostsAdapter$d0;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->m:Lcom/join/mgps/adapter/ForumPostsAdapter$d0;

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->m:Lcom/join/mgps/adapter/ForumPostsAdapter$d0;

    iget v1, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$a;->c:I

    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/ForumPostsAdapter$d0;->f(I)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->m:Lcom/join/mgps/adapter/ForumPostsAdapter$d0;

    iget-object v1, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/ForumPostsAdapter$d0;->h(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070c8d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 8
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070c8b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 9
    iget-object v2, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070c8a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->d:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070c8c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 10
    iget-boolean v3, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$a;->l:Z

    const v4, 0x7f090d23

    const/4 v5, 0x0

    const/16 v6, 0x8

    if-eqz v3, :cond_3

    .line 11
    iget-object v3, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->m:Lcom/join/mgps/adapter/ForumPostsAdapter$d0;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 12
    :cond_3
    iget-object v3, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->m:Lcom/join/mgps/adapter/ForumPostsAdapter$d0;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    sub-int/2addr v0, v2

    .line 13
    :goto_0
    iget-boolean v3, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$a;->m:Z

    const v4, 0x7f090d1b

    if-eqz v3, :cond_4

    .line 14
    iget-object v3, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->m:Lcom/join/mgps/adapter/ForumPostsAdapter$d0;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 15
    :cond_4
    iget-object v3, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->m:Lcom/join/mgps/adapter/ForumPostsAdapter$d0;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    sub-int/2addr v0, v2

    .line 16
    :goto_1
    iget-boolean p2, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$a;->n:Z

    const v3, 0x7f090337

    if-eqz p2, :cond_5

    .line 17
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->m:Lcom/join/mgps/adapter/ForumPostsAdapter$d0;

    invoke-virtual {p2}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 18
    :cond_5
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->m:Lcom/join/mgps/adapter/ForumPostsAdapter$d0;

    invoke-virtual {p2}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v6}, Landroid/view/View;->setVisibility(I)V

    sub-int/2addr v0, v2

    .line 19
    :goto_2
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->m:Lcom/join/mgps/adapter/ForumPostsAdapter$d0;

    invoke-virtual {p2, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 20
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->m:Lcom/join/mgps/adapter/ForumPostsAdapter$d0;

    invoke-virtual {p2}, Landroid/widget/PopupWindow;->getWidth()I

    move-result p2

    .line 21
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->m:Lcom/join/mgps/adapter/ForumPostsAdapter$d0;

    invoke-virtual {v0}, Lcom/join/mgps/customview/h;->getHeight()I

    move-result v0

    neg-int p2, p2

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    move v1, v0

    .line 22
    :goto_3
    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    neg-int v0, v1

    .line 23
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->m:Lcom/join/mgps/adapter/ForumPostsAdapter$d0;

    invoke-virtual {v1, p1, p2, v0}, Lcom/join/mgps/adapter/ForumPostsAdapter$d0;->showAsDropDown(Landroid/view/View;II)V

    .line 24
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->m:Lcom/join/mgps/adapter/ForumPostsAdapter$d0;

    new-instance v0, Lcom/join/mgps/adapter/ForumPostsAdapter$e;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/adapter/ForumPostsAdapter$e;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter;Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private E(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/join/mgps/adapter/ForumPostsAdapter$m0;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/ForumPostsAdapter$m0;

    goto/16 :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/ForumPostsAdapter$m0;

    invoke-direct {v0, p0}, Lcom/join/mgps/adapter/ForumPostsAdapter$m0;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter;)V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->d:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c041c

    invoke-virtual {v1, v2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f090a39

    .line 5
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object p3, v0, Lcom/join/mgps/adapter/ForumPostsAdapter$m0;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    const p3, 0x7f090a37

    .line 6
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, v0, Lcom/join/mgps/adapter/ForumPostsAdapter$m0;->c:Landroid/widget/TextView;

    const p3, 0x7f090a3a

    .line 7
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    iput-object p3, v0, Lcom/join/mgps/adapter/ForumPostsAdapter$m0;->d:Landroid/widget/Button;

    const p3, 0x7f090a3b

    .line 8
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, v0, Lcom/join/mgps/adapter/ForumPostsAdapter$m0;->e:Landroid/widget/TextView;

    const p3, 0x7f090a38

    .line 9
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, v0, Lcom/join/mgps/adapter/ForumPostsAdapter$m0;->f:Landroid/widget/TextView;

    const p3, 0x7f0908cd

    .line 10
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    iput-object p3, v0, Lcom/join/mgps/adapter/ForumPostsAdapter$m0;->g:Landroid/widget/LinearLayout;

    const p3, 0x7f09100c

    .line 11
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    iput-object p3, v0, Lcom/join/mgps/adapter/ForumPostsAdapter$m0;->h:Landroid/widget/LinearLayout;

    const p3, 0x7f0900ea

    .line 12
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, v0, Lcom/join/mgps/adapter/ForumPostsAdapter$m0;->i:Landroid/widget/TextView;

    const p3, 0x7f0909b2

    .line 13
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, v0, Lcom/join/mgps/adapter/ForumPostsAdapter$m0;->j:Landroid/widget/TextView;

    const p3, 0x7f090c59

    .line 14
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ProgressBar;

    iput-object p3, v0, Lcom/join/mgps/adapter/ForumPostsAdapter$m0;->k:Landroid/widget/ProgressBar;

    const p3, 0x7f090c60

    .line 15
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ProgressBar;

    iput-object p3, v0, Lcom/join/mgps/adapter/ForumPostsAdapter$m0;->l:Landroid/widget/ProgressBar;

    const p3, 0x7f0908be

    .line 16
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, v0, Lcom/join/mgps/adapter/ForumPostsAdapter$m0;->m:Landroid/view/View;

    const p3, 0x7f090d07

    .line 17
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, v0, Lcom/join/mgps/adapter/ForumPostsAdapter$m0;->n:Landroid/view/View;

    .line 18
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object p3, v0

    .line 19
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumPostsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$g;

    if-eqz p1, :cond_3

    if-nez p3, :cond_2

    goto :goto_1

    .line 20
    :cond_2
    iget-object v0, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$g;->b:Lcom/join/mgps/dto/ForumBean$GameInfo;

    .line 21
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_id()Ljava/lang/String;

    .line 22
    iget-object v1, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$m0;->d:Landroid/widget/Button;

    const v2, 0x7f08032f

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 23
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070b2a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 24
    iget-object v2, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$m0;->d:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 25
    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 26
    iget-object v1, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$m0;->d:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 27
    iget-object v1, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$m0;->d:Landroid/widget/Button;

    const-string v2, "\u6253\u5f00"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 28
    iget-object v1, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$m0;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    iget-object v1, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$m0;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_ico_remote()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/join/android/app/common/utils/MyImageLoader;->z(Landroid/content/Context;)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/join/android/app/common/utils/MyImageLoader;->j(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 30
    new-instance v0, Lcom/join/mgps/adapter/w;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/adapter/w;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter;Lcom/join/mgps/adapter/ForumPostsAdapter$u0$g;)V

    .line 31
    iget-object p1, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$m0;->d:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    iget-object p1, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$m0;->n:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_3
    :goto_1
    return-object p2

    :catch_0
    move-exception p1

    .line 33
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-object p2
.end method

.method private E0(Lcom/join/mgps/adapter/ForumPostsAdapter$m0;I)V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$m0;->g:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object p2, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$m0;->k:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3
    iget-object p2, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$m0;->l:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 4
    iget-object p2, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$m0;->h:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    iget-object p1, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$m0;->f:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 6
    :cond_0
    iget-object v2, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$m0;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/16 v2, 0x11

    if-ne p2, v2, :cond_1

    .line 7
    iget-object p2, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$m0;->k:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 8
    iget-object p2, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$m0;->l:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p2, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$m0;->l:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 10
    iget-object p2, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$m0;->k:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 11
    :goto_0
    iget-object p2, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$m0;->h:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 12
    iget-object p1, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$m0;->f:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private F(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 19

    move-object/from16 v7, p0

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/ForumPostsAdapter$m0;

    move-object/from16 v8, p2

    goto/16 :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/ForumPostsAdapter$m0;

    invoke-direct {v0, v7}, Lcom/join/mgps/adapter/ForumPostsAdapter$m0;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter;)V

    .line 3
    iget-object v1, v7, Lcom/join/mgps/adapter/ForumPostsAdapter;->d:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c041b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090a39

    .line 4
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v2, v0, Lcom/join/mgps/adapter/ForumPostsAdapter$m0;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v2, 0x7f090a37

    .line 5
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/join/mgps/adapter/ForumPostsAdapter$m0;->c:Landroid/widget/TextView;

    const v2, 0x7f090a3a

    .line 6
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, v0, Lcom/join/mgps/adapter/ForumPostsAdapter$m0;->d:Landroid/widget/Button;

    const v2, 0x7f090a3b

    .line 7
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/join/mgps/adapter/ForumPostsAdapter$m0;->e:Landroid/widget/TextView;

    const v2, 0x7f090a38

    .line 8
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/join/mgps/adapter/ForumPostsAdapter$m0;->f:Landroid/widget/TextView;

    const v2, 0x7f0908cd

    .line 9
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v0, Lcom/join/mgps/adapter/ForumPostsAdapter$m0;->g:Landroid/widget/LinearLayout;

    const v2, 0x7f09100c

    .line 10
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v0, Lcom/join/mgps/adapter/ForumPostsAdapter$m0;->h:Landroid/widget/LinearLayout;

    const v2, 0x7f0900ea

    .line 11
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/join/mgps/adapter/ForumPostsAdapter$m0;->i:Landroid/widget/TextView;

    const v2, 0x7f0909b2

    .line 12
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/join/mgps/adapter/ForumPostsAdapter$m0;->j:Landroid/widget/TextView;

    const v2, 0x7f090c59

    .line 13
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, v0, Lcom/join/mgps/adapter/ForumPostsAdapter$m0;->k:Landroid/widget/ProgressBar;

    const v2, 0x7f090c60

    .line 14
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, v0, Lcom/join/mgps/adapter/ForumPostsAdapter$m0;->l:Landroid/widget/ProgressBar;

    const v2, 0x7f0908be

    .line 15
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/join/mgps/adapter/ForumPostsAdapter$m0;->m:Landroid/view/View;

    const v2, 0x7f090d07

    .line 16
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/join/mgps/adapter/ForumPostsAdapter$m0;->n:Landroid/view/View;

    .line 17
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v8, v1

    .line 18
    :goto_0
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/join/mgps/adapter/ForumPostsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$g;

    if-nez v1, :cond_1

    return-object v8

    .line 19
    :cond_1
    iget-object v9, v1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$g;->b:Lcom/join/mgps/dto/ForumBean$GameInfo;

    .line 20
    iget-object v10, v1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$g;->a:Ljava/lang/String;

    .line 21
    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_id()Ljava/lang/String;

    move-result-object v11

    .line 22
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumPostsAdapter$m0;->d:Landroid/widget/Button;

    const v2, 0x7f08032f

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 23
    iget-object v1, v7, Lcom/join/mgps/adapter/ForumPostsAdapter;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070b2a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 24
    iget-object v2, v0, Lcom/join/mgps/adapter/ForumPostsAdapter$m0;->d:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 25
    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 26
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumPostsAdapter$m0;->d:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 27
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumPostsAdapter$m0;->c:Landroid/widget/TextView;

    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumPostsAdapter$m0;->f:Landroid/widget/TextView;

    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_desc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_size()Ljava/lang/String;

    move-result-object v14

    .line 30
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumPostsAdapter$m0;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_ico_remote()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v7, Lcom/join/mgps/adapter/ForumPostsAdapter;->d:Landroid/content/Context;

    invoke-static {v3}, Lcom/join/android/app/common/utils/MyImageLoader;->z(Landroid/content/Context;)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/join/android/app/common/utils/MyImageLoader;->j(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 31
    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_tag_info()Ljava/util/List;

    move-result-object v12

    const/4 v13, 0x0

    .line 32
    invoke-direct {v7, v0, v13}, Lcom/join/mgps/adapter/ForumPostsAdapter;->E0(Lcom/join/mgps/adapter/ForumPostsAdapter$m0;I)V

    .line 33
    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 34
    invoke-virtual {v7, v0, v4}, Lcom/join/mgps/adapter/ForumPostsAdapter;->l0(Lcom/join/mgps/adapter/ForumPostsAdapter$m0;Ljava/lang/Object;)V

    goto :goto_2

    .line 35
    :cond_2
    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/PayTagInfo;->getPay_game_amount()I

    move-result v1

    if-lez v1, :cond_3

    .line 36
    invoke-static {}, Ln1/e0;->o()Ln1/e0;

    move-result-object v1

    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ln1/e0;->p(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 37
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumPostsAdapter$m0;->d:Landroid/widget/Button;

    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/PayTagInfo;->getPay_game_amount()I

    move-result v2

    invoke-virtual {v7, v1, v2}, Lcom/join/mgps/adapter/ForumPostsAdapter;->k0(Landroid/widget/TextView;I)V

    goto :goto_1

    .line 38
    :cond_3
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumPostsAdapter$m0;->d:Landroid/widget/Button;

    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getDown_status()I

    move-result v2

    invoke-virtual {v7, v1, v2}, Lcom/join/mgps/adapter/ForumPostsAdapter;->j0(Landroid/view/View;I)V

    .line 39
    :goto_1
    iget-object v15, v0, Lcom/join/mgps/adapter/ForumPostsAdapter$m0;->d:Landroid/widget/Button;

    new-instance v6, Lcom/join/mgps/adapter/ForumPostsAdapter$k;

    move-object v1, v6

    move-object/from16 v2, p0

    move-object v3, v9

    move-object v5, v10

    move-object v13, v6

    move-object v6, v11

    invoke-direct/range {v1 .. v6}, Lcom/join/mgps/adapter/ForumPostsAdapter$k;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter;Lcom/join/mgps/dto/ForumBean$GameInfo;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15, v13}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v2}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getPlugin_num()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 41
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumPostsAdapter$m0;->h:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 42
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumPostsAdapter$m0;->d:Landroid/widget/Button;

    const v2, 0x7f080a62

    .line 43
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 44
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumPostsAdapter$m0;->d:Landroid/widget/Button;

    const-string v2, "\u5f00\u59cb"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumPostsAdapter$m0;->d:Landroid/widget/Button;

    iget-object v2, v7, Lcom/join/mgps/adapter/ForumPostsAdapter;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06002a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_3

    .line 46
    :cond_4
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumPostsAdapter$m0;->h:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 47
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumPostsAdapter$m0;->h:Landroid/widget/LinearLayout;

    iget-object v2, v7, Lcom/join/mgps/adapter/ForumPostsAdapter;->d:Landroid/content/Context;

    invoke-static {v12, v1, v2}, Lcom/join/mgps/Util/i0;->c(Ljava/util/List;Landroid/widget/LinearLayout;Landroid/content/Context;)V

    .line 48
    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getScore()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getDown_count()I

    move-result v13

    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v15

    const/16 v16, 0x0

    iget-object v1, v0, Lcom/join/mgps/adapter/ForumPostsAdapter$m0;->h:Landroid/widget/LinearLayout;

    iget-object v2, v7, Lcom/join/mgps/adapter/ForumPostsAdapter;->d:Landroid/content/Context;

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    invoke-static/range {v12 .. v18}, Lcom/join/mgps/Util/UtilsMy;->C(Ljava/lang/String;ILjava/lang/String;Lcom/join/mgps/dto/TipNew;Ljava/util/List;Landroid/widget/LinearLayout;Landroid/content/Context;)V

    .line 49
    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v1

    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v2

    invoke-static {v1, v8, v2}, Lcom/join/mgps/Util/UtilsMy;->v2(Lcom/join/mgps/dto/TipNew;Landroid/view/View;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 50
    :goto_3
    iget-object v0, v0, Lcom/join/mgps/adapter/ForumPostsAdapter$m0;->n:Landroid/view/View;

    new-instance v1, Lcom/join/mgps/adapter/ForumPostsAdapter$r;

    invoke-direct {v1, v7, v10, v11, v9}, Lcom/join/mgps/adapter/ForumPostsAdapter$r;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/ForumBean$GameInfo;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 51
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    return-object v8
.end method

.method private G(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/ForumPostsAdapter$n0;

    goto/16 :goto_0

    .line 2
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/ForumPostsAdapter$n0;

    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/ForumPostsAdapter$n0;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter;)V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->d:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c041e

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f090514

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$n0;->g:Landroid/view/View;

    const v0, 0x7f090511

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$n0;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f09051b

    .line 6
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$n0;->c:Landroid/widget/TextView;

    const v0, 0x7f090510

    .line 7
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$n0;->d:Landroid/widget/TextView;

    const v0, 0x7f091059

    .line 8
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$n0;->e:Landroid/widget/TextView;

    const v0, 0x7f090521

    .line 9
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$n0;->f:Landroid/widget/TextView;

    const v0, 0x7f09051a

    .line 10
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$n0;->i:Landroid/widget/ImageView;

    const v0, 0x7f090b5a

    .line 11
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$n0;->m:Landroid/widget/ImageView;

    const v0, 0x7f0904f6

    .line 12
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$n0;->j:Landroid/widget/RelativeLayout;

    const v0, 0x7f090516

    .line 13
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$n0;->h:Landroid/widget/Button;

    const v0, 0x7f0904dc

    .line 14
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$n0;->k:Landroid/widget/ImageView;

    const v0, 0x7f091298

    .line 15
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/VipView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$n0;->l:Lcom/join/mgps/customview/VipView;

    const v0, 0x7f090300

    .line 16
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$n0;->n:Landroid/widget/TextView;

    const v0, 0x7f090625

    .line 17
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$n0;->o:Landroid/widget/TextView;

    const v0, 0x7f090a66

    .line 18
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$n0;->p:Landroid/widget/TextView;

    const v0, 0x7f090a22

    .line 19
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$n0;->q:Landroid/widget/TextView;

    const v0, 0x7f090626

    .line 20
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$n0;->r:Landroid/view/View;

    .line 21
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 22
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumPostsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$h;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p1, :cond_1

    return-object p2

    .line 23
    :cond_1
    :try_start_1
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$n0;->l:Lcom/join/mgps/customview/VipView;

    iget v1, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$h;->k:I

    iget v2, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$h;->l:I

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/customview/VipView;->setVipData(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 24
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 25
    :goto_1
    iget v0, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$h;->j:I

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eq v0, v1, :cond_2

    .line 26
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$n0;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 27
    :cond_2
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$n0;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 28
    :goto_2
    iget-boolean v0, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$h;->a:Z

    if-eqz v0, :cond_3

    .line 29
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$n0;->g:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 30
    :cond_3
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$n0;->g:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 31
    :goto_3
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$n0;->h:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 32
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$n0;->c:Landroid/widget/TextView;

    iget-object v4, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$h;->d:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$n0;->d:Landroid/widget/TextView;

    iget-wide v4, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$h;->e:J

    const-wide/16 v6, 0x3e8

    mul-long v4, v4, v6

    invoke-static {v4, v5}, Lcom/join/android/app/common/utils/c;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    iget-boolean v0, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$h;->f:Z

    if-eqz v0, :cond_4

    .line 35
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$n0;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 36
    :cond_4
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$n0;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 37
    :goto_4
    iget-boolean v0, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$h;->i:Z

    if-eqz v0, :cond_5

    .line 38
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$n0;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    .line 39
    :cond_5
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$n0;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 40
    :goto_5
    iget-boolean v0, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$h;->h:Z

    if-eqz v0, :cond_6

    .line 41
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$n0;->c:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->d:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06002a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 42
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$n0;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6

    .line 43
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->d:Landroid/content/Context;

    iget-object v4, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$n0;->c:Landroid/widget/TextView;

    iget v5, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$h;->k:I

    iget v6, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$h;->l:I

    const v7, 0x7f06011d

    invoke-static {v0, v4, v5, v6, v7}, Lcom/join/mgps/Util/UtilsMy;->M2(Landroid/content/Context;Landroid/widget/TextView;III)Z

    .line 44
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$n0;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 45
    :goto_6
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$n0;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v4, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$h;->c:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/join/android/app/common/utils/MyImageLoader;->w(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 46
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$n0;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    new-instance v4, Lcom/join/mgps/adapter/ForumPostsAdapter$t;

    invoke-direct {v4, p0, p1}, Lcom/join/mgps/adapter/ForumPostsAdapter$t;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter;Lcom/join/mgps/adapter/ForumPostsAdapter$u0$h;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    iget-boolean v0, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$h;->o:Z

    if-eqz v0, :cond_7

    .line 48
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$n0;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_7

    .line 49
    :cond_7
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$n0;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 50
    :goto_7
    iget-object v0, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$h;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 51
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$n0;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 52
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$n0;->q:Landroid/widget/TextView;

    iget-object v4, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$h;->p:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 53
    :cond_8
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$n0;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 54
    :goto_8
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$n0;->o:Landroid/widget/TextView;

    iget-object v4, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$h;->q:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$n0;->r:Landroid/view/View;

    iget v4, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$h;->r:I

    invoke-direct {p0, v0, v4}, Lcom/join/mgps/adapter/ForumPostsAdapter;->v0(Landroid/view/View;I)V

    .line 56
    invoke-virtual {p0, p2}, Lcom/join/mgps/adapter/ForumPostsAdapter;->q0(Landroid/view/View;)V

    .line 57
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$n0;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 58
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$n0;->j:Landroid/widget/RelativeLayout;

    iget v4, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$h;->g:I

    invoke-virtual {p0, v0, v4}, Lcom/join/mgps/adapter/ForumPostsAdapter;->t0(Landroid/view/View;I)V

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/view/View;

    .line 59
    iget-object v4, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$n0;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    aput-object v4, v0, v3

    iget-object v4, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$n0;->c:Landroid/widget/TextView;

    aput-object v4, v0, v1

    const/4 v4, 0x2

    iget-object v5, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$n0;->d:Landroid/widget/TextView;

    aput-object v5, v0, v4

    invoke-static {v0}, Lcom/join/mgps/Util/i0;->S0([Landroid/view/View;)V

    new-array v0, v1, [Landroid/view/View;

    .line 60
    iget-object v1, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$n0;->l:Lcom/join/mgps/customview/VipView;

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/join/mgps/Util/i0;->U0([Landroid/view/View;)V

    .line 61
    iget-object v0, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$h;->m:Ljava/lang/String;

    .line 62
    iget-object v1, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$h;->n:Ljava/lang/String;

    .line 63
    iget-object v4, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$n0;->n:Landroid/widget/TextView;

    if-eqz v4, :cond_b

    .line 64
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 65
    iget-object v4, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$n0;->n:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 66
    iget-object v4, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$n0;->n:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f080436

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 68
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 69
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x7

    if-ne v4, v5, :cond_9

    const-string v4, "#"

    .line 70
    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_9

    :cond_9
    const-string v1, "#2fccdf"

    .line 71
    :goto_9
    new-instance v4, Landroid/graphics/LightingColorFilter;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v4, v5, v1}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 72
    iget-object v1, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$n0;->n:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_a

    .line 73
    :cond_a
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$n0;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74
    :cond_b
    :goto_a
    iget-boolean v0, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$h;->s:Z

    if-eqz v0, :cond_c

    .line 75
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$n0;->e:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8d4f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$h;->t:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u94dc\u677f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$n0;->e:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 77
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$n0;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_b

    .line 78
    :cond_c
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$n0;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 79
    :goto_b
    iget-object p3, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$n0;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget p1, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$h;->b:I

    invoke-direct {p0, p3, p1}, Lcom/join/mgps/adapter/ForumPostsAdapter;->y0(Landroid/view/View;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_c

    :catch_1
    move-exception p1

    .line 80
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_c
    return-object p2
.end method

.method private H(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/ForumPostsAdapter$o0;

    goto/16 :goto_0

    .line 2
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/ForumPostsAdapter$o0;

    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/ForumPostsAdapter$o0;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter;)V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->d:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c041d

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f090514

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$o0;->f:Landroid/view/View;

    const v0, 0x7f090511

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$o0;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f09051b

    .line 6
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$o0;->c:Landroid/widget/TextView;

    const v0, 0x7f090510

    .line 7
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$o0;->d:Landroid/widget/TextView;

    const v0, 0x7f090521

    .line 8
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$o0;->e:Landroid/widget/TextView;

    const v0, 0x7f09051a

    .line 9
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$o0;->h:Landroid/widget/ImageView;

    const v0, 0x7f090b5a

    .line 10
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$o0;->l:Landroid/widget/ImageView;

    const v0, 0x7f0904f6

    .line 11
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$o0;->i:Landroid/widget/RelativeLayout;

    const v0, 0x7f090516

    .line 12
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$o0;->g:Landroid/widget/Button;

    const v0, 0x7f0904dc

    .line 13
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$o0;->j:Landroid/widget/ImageView;

    const v0, 0x7f091298

    .line 14
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/VipView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$o0;->k:Lcom/join/mgps/customview/VipView;

    const v0, 0x7f090300

    .line 15
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$o0;->m:Landroid/widget/TextView;

    .line 16
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 17
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumPostsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$i;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p1, :cond_1

    return-object p2

    .line 18
    :cond_1
    :try_start_1
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$o0;->k:Lcom/join/mgps/customview/VipView;

    iget v1, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$i;->j:I

    iget v2, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$i;->k:I

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/customview/VipView;->setVipData(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 19
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 20
    :goto_1
    iget v0, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$i;->i:I

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eq v0, v1, :cond_2

    .line 21
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$o0;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 22
    :cond_2
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$o0;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 23
    :goto_2
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$o0;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 24
    iget-boolean v0, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$i;->a:Z

    if-eqz v0, :cond_3

    .line 25
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$o0;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 26
    :cond_3
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$o0;->f:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 27
    :goto_3
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$o0;->g:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 28
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$o0;->c:Landroid/widget/TextView;

    iget-object v4, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$i;->c:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$o0;->d:Landroid/widget/TextView;

    iget-wide v4, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$i;->d:J

    const-wide/16 v6, 0x3e8

    mul-long v4, v4, v6

    invoke-static {v4, v5}, Lcom/join/android/app/common/utils/c;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    iget-boolean v0, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$i;->e:Z

    if-eqz v0, :cond_4

    .line 31
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$o0;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 32
    :cond_4
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$o0;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 33
    :goto_4
    iget-boolean v0, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$i;->h:Z

    if-eqz v0, :cond_5

    .line 34
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$o0;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    .line 35
    :cond_5
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$o0;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 36
    :goto_5
    iget-boolean v0, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$i;->g:Z

    if-eqz v0, :cond_6

    .line 37
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$o0;->c:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->d:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06002a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 38
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$o0;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6

    .line 39
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->d:Landroid/content/Context;

    iget-object v4, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$o0;->c:Landroid/widget/TextView;

    iget v5, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$i;->j:I

    iget v6, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$i;->k:I

    const v7, 0x7f06011d

    invoke-static {v0, v4, v5, v6, v7}, Lcom/join/mgps/Util/UtilsMy;->M2(Landroid/content/Context;Landroid/widget/TextView;III)Z

    .line 40
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$o0;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 41
    :goto_6
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$o0;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v4, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$i;->b:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/join/android/app/common/utils/MyImageLoader;->w(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 42
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$o0;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    new-instance v4, Lcom/join/mgps/adapter/ForumPostsAdapter$s;

    invoke-direct {v4, p0, p1}, Lcom/join/mgps/adapter/ForumPostsAdapter$s;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter;Lcom/join/mgps/adapter/ForumPostsAdapter$u0$i;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    invoke-virtual {p0, p2}, Lcom/join/mgps/adapter/ForumPostsAdapter;->q0(Landroid/view/View;)V

    .line 44
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$o0;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 45
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$o0;->i:Landroid/widget/RelativeLayout;

    iget v4, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$i;->f:I

    invoke-virtual {p0, v0, v4}, Lcom/join/mgps/adapter/ForumPostsAdapter;->t0(Landroid/view/View;I)V

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/view/View;

    .line 46
    iget-object v4, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$o0;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    aput-object v4, v0, v3

    iget-object v4, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$o0;->c:Landroid/widget/TextView;

    aput-object v4, v0, v1

    const/4 v4, 0x2

    iget-object v5, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$o0;->d:Landroid/widget/TextView;

    aput-object v5, v0, v4

    invoke-static {v0}, Lcom/join/mgps/Util/i0;->S0([Landroid/view/View;)V

    new-array v0, v1, [Landroid/view/View;

    .line 47
    iget-object v1, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$o0;->k:Lcom/join/mgps/customview/VipView;

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/join/mgps/Util/i0;->U0([Landroid/view/View;)V

    .line 48
    iget-object v0, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$i;->m:Ljava/lang/String;

    .line 49
    iget-object p1, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$i;->n:Ljava/lang/String;

    .line 50
    iget-object v1, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$o0;->m:Landroid/widget/TextView;

    if-eqz v1, :cond_9

    .line 51
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 52
    iget-object v1, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$o0;->m:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 53
    iget-object v1, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$o0;->m:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080436

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 55
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 56
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_7

    const-string v1, "#"

    .line 57
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_7

    :cond_7
    const-string p1, "#2fccdf"

    .line 58
    :goto_7
    new-instance v1, Landroid/graphics/LightingColorFilter;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-direct {v1, v2, p1}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 59
    iget-object p1, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$o0;->m:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_8

    .line 60
    :cond_8
    iget-object p1, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$o0;->m:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_8

    :catch_1
    move-exception p1

    .line 61
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9
    :goto_8
    return-object p2
.end method

.method private I(Landroid/content/Context;)I
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    iget v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->j:I

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v1, 0x3fc00000    # 1.5f

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
    iput p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->j:I

    .line 6
    :cond_1
    iget p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->j:I

    return p1
.end method

.method private J(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/ForumPostsAdapter$p0;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/ForumPostsAdapter$p0;

    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/ForumPostsAdapter$p0;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter;)V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->d:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0420

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f090517

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$p0;->c:Landroid/widget/RelativeLayout;

    const v0, 0x7f090708

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$p0;->b:Landroid/widget/TextView;

    .line 6
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 7
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumPostsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$k;

    if-nez p1, :cond_1

    return-object p2

    .line 8
    :cond_1
    iget-object p3, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$p0;->c:Landroid/widget/RelativeLayout;

    iget-object v0, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$k;->a:Ljava/util/List;

    iget-object p1, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$k;->b:Ljava/util/List;

    invoke-direct {p0, p3, v0, p1}, Lcom/join/mgps/adapter/ForumPostsAdapter;->b0(Landroid/widget/RelativeLayout;Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-object p2
.end method

.method private K(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/ForumPostsAdapter$q0;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/ForumPostsAdapter$q0;

    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/ForumPostsAdapter$q0;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter;)V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->d:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c041f

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f090709

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$q0;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f09074b

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$q0;->c:Landroid/widget/TextView;

    .line 6
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 7
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumPostsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$j;

    if-nez p1, :cond_1

    return-object p2

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->d:Landroid/content/Context;

    iget-object v1, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$j;->c:Ljava/util/List;

    iget v2, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$j;->b:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/adapter/ForumPostsAdapter;->Y(Landroid/content/Context;Ljava/lang/String;)V

    .line 9
    iget-object v0, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$j;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->B(Ljava/lang/String;)Lcom/join/mgps/adapter/ForumPostsAdapter$k0;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 10
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v0, Lcom/join/mgps/adapter/ForumPostsAdapter$k0;->a:I

    iget v0, v0, Lcom/join/mgps/adapter/ForumPostsAdapter$k0;->b:I

    invoke-direct {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 11
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$q0;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$q0;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v1, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$j;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    goto :goto_1

    .line 13
    :cond_2
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$q0;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v1, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$j;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/adapter/ForumPostsAdapter;->V(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 14
    :goto_1
    iget-object p3, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$q0;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget v0, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$j;->b:I

    iget-object p1, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$j;->c:Ljava/util/List;

    invoke-static {p3, v0, p1}, Lcom/join/mgps/Util/i0;->C1(Landroid/widget/ImageView;ILjava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-object p2
.end method

.method private L(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/ForumPostsAdapter$r0;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/ForumPostsAdapter$r0;

    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/ForumPostsAdapter$r0;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter;)V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->d:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0421

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f090519

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$r0;->b:Landroid/widget/TextView;

    .line 5
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 6
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumPostsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$l;

    if-nez p1, :cond_1

    return-object p2

    .line 7
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 8
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$r0;->b:Landroid/widget/TextView;

    const v1, 0x3ca3d70a    # 0.02f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 9
    :cond_2
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$r0;->b:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->S(Landroid/widget/TextView;)V

    .line 10
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$r0;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070b2b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 11
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$r0;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06011f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 12
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$r0;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    const v2, 0x3fb33333    # 1.4f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 13
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$r0;->b:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 14
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$r0;->b:Landroid/widget/TextView;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 15
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$r0;->b:Landroid/widget/TextView;

    new-instance v1, Lcom/join/mgps/adapter/ForumPostsAdapter$v;

    invoke-direct {v1, p0}, Lcom/join/mgps/adapter/ForumPostsAdapter$v;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iget-object v3, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$r0;->b:Landroid/widget/TextView;

    iget-object v4, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$l;->b:Landroid/text/SpannableStringBuilder;

    iget-boolean v5, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$l;->a:Z

    iget-boolean v6, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$l;->c:Z

    iget-object v7, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$l;->d:Ljava/lang/String;

    iget-object v8, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$l;->e:Ljava/util/List;

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/join/mgps/adapter/ForumPostsAdapter;->i0(Landroid/widget/TextView;Landroid/text/SpannableStringBuilder;ZZLjava/lang/String;Ljava/util/List;)V

    .line 17
    invoke-virtual {p0, p2}, Lcom/join/mgps/adapter/ForumPostsAdapter;->q0(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-object p2
.end method

.method private M(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/ForumPostsAdapter$s0;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/ForumPostsAdapter$s0;

    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/ForumPostsAdapter$s0;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter;)V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->d:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0424

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f090512

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$s0;->b:Landroid/widget/Button;

    const v0, 0x7f090522

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$s0;->c:Landroid/widget/TextView;

    .line 6
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 7
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumPostsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$n;

    if-nez p1, :cond_1

    return-object p2

    .line 8
    :cond_1
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$s0;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070b2c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 9
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$s0;->c:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 10
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$s0;->c:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 11
    iget-object v3, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$s0;->c:Landroid/widget/TextView;

    iget-object v4, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$n;->b:Ljava/lang/String;

    iget-boolean v5, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$n;->a:Z

    iget-boolean v6, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$n;->c:Z

    iget-object v7, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$n;->d:Ljava/lang/String;

    iget-object v8, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$n;->e:Ljava/util/List;

    iget-object v9, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$n;->f:Ljava/util/List;

    iget v10, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$n;->g:I

    iget-object v11, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$n;->h:Ljava/lang/String;

    move-object v2, p0

    invoke-direct/range {v2 .. v11}, Lcom/join/mgps/adapter/ForumPostsAdapter;->g0(Landroid/widget/TextView;Ljava/lang/String;ZZLjava/lang/String;Ljava/util/List;Ljava/util/List;ILjava/lang/String;)V

    .line 12
    invoke-virtual {p0, p2}, Lcom/join/mgps/adapter/ForumPostsAdapter;->q0(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-object p2
.end method

.method private N(Landroid/content/Context;)I
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    iget v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->i:I

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
    iput p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->i:I

    .line 6
    :cond_1
    iget p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->i:I

    return p1
.end method

.method private O(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/ForumPostsAdapter$t0;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/ForumPostsAdapter$t0;

    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/ForumPostsAdapter$t0;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter;)V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->d:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0427

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f09126a

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/android/app/component/video/StandardVideoViewJC;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$t0;->d:Lcom/join/android/app/component/video/StandardVideoViewJC;

    .line 5
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 6
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumPostsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$o;

    if-nez v0, :cond_1

    return-object p2

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->d:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/join/mgps/adapter/ForumPostsAdapter;->N(Landroid/content/Context;)I

    move-result v1

    .line 8
    iget-object v2, v0, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$o;->b:Ljava/lang/String;

    .line 9
    iget-object v0, v0, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$o;->a:Ljava/lang/String;

    .line 10
    iget-object v3, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$t0;->c:Lcom/facebook/drawee/view/SimpleDraweeView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, ""

    const/4 v5, -0x1

    if-eqz v3, :cond_2

    .line 11
    :try_start_1
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 12
    iget-object v6, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$t0;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    iget-object v3, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$t0;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 14
    iget-object v3, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$t0;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v3, v0}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 15
    iget-object v3, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$t0;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v3, v2, p1}, Lcom/join/mgps/adapter/ForumPostsAdapter;->x0(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    :cond_2
    iget-object p1, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$t0;->d:Lcom/join/android/app/component/video/StandardVideoViewJC;

    if-eqz p1, :cond_4

    const/4 v3, 0x0

    .line 17
    invoke-virtual {p1, v3}, Lcom/join/android/app/component/video/StandardVideoViewJC;->setMuteWhenPlay(Z)V

    .line 18
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 19
    iget-object v1, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$t0;->d:Lcom/join/android/app/component/video/StandardVideoViewJC;

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 20
    iget-object p1, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$t0;->d:Lcom/join/android/app/component/video/StandardVideoViewJC;

    iget-object p1, p1, Lcom/join/android/app/component/video/StandardVideoViewJC;->S0:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v1, 0x7f080cc9

    invoke-static {p1, v1, v0}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 21
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->b:Lcom/danikula/videocache/i;

    if-eqz p1, :cond_3

    .line 22
    invoke-virtual {p1, v2}, Lcom/danikula/videocache/i;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 23
    :cond_3
    iget-object p1, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$t0;->d:Lcom/join/android/app/component/video/StandardVideoViewJC;

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    aput-object v4, p3, v3

    const/4 v1, 0x1

    aput-object v0, p3, v1

    invoke-virtual {p1, v2, v1, p3}, Lcom/join/android/app/component/video/StandardVideoViewJC;->setUp(Ljava/lang/String;I[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 24
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_1
    return-object p2
.end method

.method private R()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->h:Landroid/widget/LinearLayout$LayoutParams;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->Q()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->h:Landroid/widget/LinearLayout$LayoutParams;

    :cond_0
    return-void
.end method

.method private S(Landroid/widget/TextView;)V
    .locals 9

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/w;->a()Lcom/join/mgps/Util/w;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 2
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 3
    instance-of v1, v0, Landroid/text/Spannable;

    if-eqz v1, :cond_4

    .line 4
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 5
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    .line 6
    const-class v3, Landroid/text/style/URLSpan;

    const/4 v4, 0x0

    invoke-interface {v2, v4, v1, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/URLSpan;

    .line 7
    array-length v3, v1

    if-nez v3, :cond_0

    return-void

    .line 8
    :cond_0
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 9
    array-length v0, v1

    :goto_0
    if-ge v4, v0, :cond_3

    aget-object v5, v1, v4

    .line 10
    invoke-virtual {v5}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v6

    const-string v7, "http://"

    .line 11
    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "https://"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_2

    .line 12
    :cond_1
    new-instance v7, Lcom/join/mgps/adapter/ForumPostsAdapter$e0;

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, p0, v8, v6}, Lcom/join/mgps/adapter/ForumPostsAdapter$e0;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter;Landroid/content/Context;Ljava/lang/String;)V

    .line 13
    invoke-interface {v2, v5}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {v2, v5}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    const/16 v8, 0x11

    invoke-virtual {v3, v7, v6, v5, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 14
    :cond_3
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method

.method private synthetic T(Lcom/join/mgps/adapter/ForumPostsAdapter$u0$g;Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p2, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$g;->c:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 2
    new-instance p2, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {p2}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    const/4 v0, 0x4

    .line 3
    invoke-virtual {p2, v0}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 4
    iget-object p1, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$g;->c:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->d:Landroid/content/Context;

    invoke-virtual {p1, v0, p2}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    :cond_0
    return-void
.end method

.method private W(Landroid/view/View;ZI)V
    .locals 2

    const v0, 0x7f09051d

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f09051e

    .line 2
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const-string v1, ""

    if-eqz p2, :cond_0

    const p2, 0x7f08075e

    .line 3
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const p2, 0x7f080c9c

    .line 5
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private Z(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-static {p2}, Lcom/join/mgps/Util/i0;->i0(Ljava/lang/String;)[Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/join/mgps/adapter/ForumPostsAdapter$k0;

    invoke-direct {v1, p0}, Lcom/join/mgps/adapter/ForumPostsAdapter$k0;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter;)V

    const/4 v2, 0x0

    .line 3
    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    .line 4
    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    const v4, 0x7f070ca1

    .line 7
    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x42200000    # 40.0f

    .line 8
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v4

    sub-float/2addr v3, p1

    float-to-int p1, v3

    int-to-float v3, p1

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float v3, v3, v4

    int-to-float v0, v0

    mul-float v0, v0, v4

    int-to-float v2, v2

    div-float/2addr v0, v2

    mul-float v3, v3, v0

    float-to-int v0, v3

    .line 9
    iput p1, v1, Lcom/join/mgps/adapter/ForumPostsAdapter$k0;->a:I

    .line 10
    iput v0, v1, Lcom/join/mgps/adapter/ForumPostsAdapter$k0;->b:I

    .line 11
    invoke-virtual {p0, p2, v1}, Lcom/join/mgps/adapter/ForumPostsAdapter;->l(Ljava/lang/String;Lcom/join/mgps/adapter/ForumPostsAdapter$k0;)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/join/mgps/adapter/ForumPostsAdapter;Lcom/join/mgps/adapter/ForumPostsAdapter$u0$g;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/ForumPostsAdapter;->T(Lcom/join/mgps/adapter/ForumPostsAdapter$u0$g;Landroid/view/View;)V

    return-void
.end method

.method private a0(Landroid/view/View;Lcom/join/mgps/adapter/ForumPostsAdapter$u0$d;ZI)V
    .locals 20

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    .line 1
    iget v10, v9, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$d;->a:I

    .line 2
    iget v11, v9, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$d;->f:I

    .line 3
    iget-boolean v12, v9, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$d;->g:Z

    .line 4
    iget-object v13, v9, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$d;->b:Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

    .line 5
    invoke-virtual {v13}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getReply_list()Ljava/util/List;

    move-result-object v14

    .line 6
    move-object/from16 v15, p1

    check-cast v15, Landroid/widget/LinearLayout;

    invoke-virtual {v15}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 7
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v7

    const/4 v6, 0x0

    const/4 v5, 0x0

    :goto_0
    add-int/lit8 v0, v7, 0x1

    if-ge v5, v0, :cond_e

    const/4 v0, 0x3

    if-le v5, v0, :cond_0

    if-eqz p3, :cond_0

    move/from16 v16, v11

    move/from16 v17, v12

    move-object/from16 v18, v13

    move-object v0, v15

    move v12, v5

    :goto_1
    move v13, v7

    goto/16 :goto_8

    .line 8
    :cond_0
    iget-object v1, v8, Lcom/join/mgps/adapter/ForumPostsAdapter;->d:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c0107

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 9
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 10
    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x7f0902c0

    .line 11
    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/customview/TextViewWithHyperlink;

    const v2, 0x7f0902c2

    .line 12
    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/16 v3, 0x8

    if-ne v5, v7, :cond_1

    if-gt v7, v0, :cond_2

    :cond_1
    if-lez v11, :cond_3

    if-eqz v12, :cond_3

    if-ne v5, v7, :cond_3

    .line 13
    :cond_2
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v0, "\u6536\u8d77"

    .line 15
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    new-instance v3, Lcom/join/mgps/adapter/ForumPostsAdapter$x;

    move-object v0, v3

    move-object/from16 v1, p0

    move v2, v11

    move-object v6, v3

    move/from16 v3, p4

    move/from16 v16, v11

    move-object v11, v4

    move v4, v10

    move/from16 v17, v12

    move v12, v5

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/adapter/ForumPostsAdapter$x;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter;IIILcom/join/mgps/adapter/ForumPostsAdapter$u0$d;)V

    invoke-virtual {v11, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v18, v13

    move-object v0, v15

    :goto_2
    move v13, v7

    goto/16 :goto_6

    :cond_3
    move/from16 v16, v11

    move/from16 v17, v12

    move-object v11, v4

    move v12, v5

    const/4 v4, 0x1

    if-ne v12, v0, :cond_4

    if-eqz p3, :cond_4

    if-le v7, v0, :cond_4

    .line 17
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v6, 0x0

    .line 18
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 19
    invoke-virtual {v2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110091

    new-array v3, v4, [Ljava/lang/Object;

    add-int/lit8 v4, v7, -0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    new-instance v5, Lcom/join/mgps/adapter/ForumPostsAdapter$y;

    move-object v0, v5

    move-object/from16 v1, p0

    move v2, v7

    move-object v3, v13

    move v4, v10

    move-object/from16 v18, v13

    move-object v13, v5

    move-object/from16 v5, p2

    move-object/from16 p1, v15

    const/4 v15, 0x0

    move/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/adapter/ForumPostsAdapter$y;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter;ILcom/join/mgps/dto/ForumBean$ForumCommentBean;ILcom/join/mgps/adapter/ForumPostsAdapter$u0$d;I)V

    invoke-virtual {v11, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p1

    goto :goto_2

    :cond_4
    move-object/from16 v18, v13

    move-object/from16 p1, v15

    const/4 v15, 0x0

    if-ge v12, v7, :cond_d

    if-lt v12, v0, :cond_5

    if-eqz p3, :cond_5

    goto/16 :goto_7

    .line 21
    :cond_5
    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;

    .line 22
    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->getNickname()Ljava/lang/String;

    move-result-object v6

    .line 23
    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->getRnickname()Ljava/lang/String;

    move-result-object v13

    .line 24
    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->getRrid()I

    move-result v19

    if-nez v19, :cond_6

    const-string v13, ""

    .line 25
    :cond_6
    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 26
    invoke-virtual {v1, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 27
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 28
    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->isOfficialAccount()Z

    move-result v2

    const-string v3, "#*#"

    if-eqz v2, :cond_7

    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 30
    :cond_7
    invoke-static {v13}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->isrOfficialAccount()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 32
    :cond_8
    invoke-static {v1, v6, v13, v4}, Lcom/join/mgps/Util/i0;->u1(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->getJump_info()Lcom/join/mgps/dto/BannerBean;

    move-result-object v2

    .line 34
    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->getRid()I

    move-result v6

    .line 35
    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->getUid()I

    move-result v3

    .line 36
    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->getNickname()Ljava/lang/String;

    move-result-object v13

    if-eqz v2, :cond_9

    .line 37
    iget-object v4, v8, Lcom/join/mgps/adapter/ForumPostsAdapter;->d:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/join/mgps/dto/BannerBean;->getTitle()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2}, Lcom/join/mgps/dto/BannerBean;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    move-result-object v2

    new-instance v0, Lcom/join/mgps/adapter/ForumPostsAdapter$a;

    invoke-direct {v0, v8, v10, v6, v13}, Lcom/join/mgps/adapter/ForumPostsAdapter$a;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter;IILjava/lang/String;)V

    invoke-virtual {v1, v4, v15, v2, v0}, Lcom/join/mgps/customview/TextViewWithHyperlink;->a(Landroid/content/Context;Ljava/lang/String;Lcom/join/mgps/Util/IntentDateBean;Lcom/join/mgps/customview/TextViewWithHyperlink$a;)I

    .line 38
    :cond_9
    invoke-virtual {v8, v11, v10, v6, v13}, Lcom/join/mgps/adapter/ForumPostsAdapter;->s0(Landroid/view/View;IILjava/lang/String;)V

    .line 39
    iget-object v0, v8, Lcom/join/mgps/adapter/ForumPostsAdapter;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    .line 40
    iget v1, v9, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$d;->c:I

    .line 41
    iget-boolean v2, v9, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$d;->e:Z

    if-eqz v0, :cond_a

    .line 42
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v0

    if-ne v3, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_3

    :cond_a
    const/4 v0, 0x0

    :goto_3
    const/4 v3, 0x3

    if-eq v1, v3, :cond_c

    const/16 v3, 0x63

    if-eq v1, v3, :cond_c

    if-nez v0, :cond_c

    if-eqz v2, :cond_b

    goto :goto_4

    :cond_b
    const/4 v2, 0x0

    goto :goto_5

    :cond_c
    :goto_4
    const/4 v2, 0x1

    :goto_5
    xor-int/lit8 v3, v0, 0x1

    .line 43
    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->getMessage()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    move-object v1, v11

    move v4, v10

    move v5, v6

    move-object v6, v13

    move v13, v7

    move-object v7, v15

    invoke-virtual/range {v0 .. v7}, Lcom/join/mgps/adapter/ForumPostsAdapter;->r0(Landroid/view/View;ZZIILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    .line 44
    :goto_6
    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_8

    :cond_d
    :goto_7
    move-object/from16 v0, p1

    goto/16 :goto_1

    :goto_8
    add-int/lit8 v5, v12, 0x1

    move-object v15, v0

    move v7, v13

    move/from16 v11, v16

    move/from16 v12, v17

    move-object/from16 v13, v18

    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_e
    return-void
.end method

.method static synthetic b(Lcom/join/mgps/adapter/ForumPostsAdapter;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->d:Landroid/content/Context;

    return-object p0
.end method

.method private b0(Landroid/widget/RelativeLayout;Ljava/util/List;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/RelativeLayout;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0x8

    if-eqz p2, :cond_6

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->h:Landroid/widget/LinearLayout$LayoutParams;

    if-nez v1, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->Q()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->h:Landroid/widget/LinearLayout$LayoutParams;

    :cond_1
    const v1, 0x7f090708

    .line 4
    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-le v2, v3, :cond_2

    .line 6
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5171"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "\u5f20"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 10
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x40c00000    # 6.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    new-array v2, v3, [I

    .line 11
    fill-array-data v2, :array_0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_5

    .line 12
    aget v6, v2, v5

    invoke-virtual {p1, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 13
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v8, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->h:Landroid/widget/LinearLayout$LayoutParams;

    iget v9, v8, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget v8, v8, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-direct {v7, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 14
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_4

    .line 15
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 16
    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    if-lez v5, :cond_3

    .line 17
    invoke-virtual {v7, v1, v4, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_2

    .line 18
    :cond_3
    invoke-virtual {v7, v4, v4, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 19
    :goto_2
    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 20
    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 21
    sget-object v7, Lcom/facebook/drawee/drawable/r$c;->g:Lcom/facebook/drawee/drawable/r$c;

    invoke-static {v6, v8, v7}, Lcom/join/android/app/common/utils/MyImageLoader;->i(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/drawable/r$c;)V

    .line 22
    new-instance v7, Lcom/join/mgps/adapter/ForumPostsAdapter$b;

    invoke-direct {v7, p0, p3, v5}, Lcom/join/mgps/adapter/ForumPostsAdapter$b;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter;Ljava/util/List;I)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 23
    :cond_4
    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    return-void

    .line 24
    :cond_6
    :goto_4
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void

    :array_0
    .array-data 4
        0x7f090745
        0x7f090746
        0x7f090747
    .end array-data
.end method

.method static synthetic c(Lcom/join/mgps/adapter/ForumPostsAdapter;)Lcom/join/mgps/adapter/ForumPostsAdapter$i0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->p:Lcom/join/mgps/adapter/ForumPostsAdapter$i0;

    return-object p0
.end method

.method static synthetic d(Lcom/join/mgps/adapter/ForumPostsAdapter;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/join/mgps/adapter/ForumPostsAdapter;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->e:Ljava/util/List;

    return-object p0
.end method

.method static synthetic f(Lcom/join/mgps/adapter/ForumPostsAdapter;Landroid/content/Context;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/ForumPostsAdapter;->I(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method private f0(Landroid/widget/TextView;Landroid/text/SpannableStringBuilder;ZZLjava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            "Landroid/text/SpannableStringBuilder;",
            "ZZ",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, p6}, Lcom/join/mgps/Util/i0;->h(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/util/List;)V

    .line 3
    invoke-static {p1, v0, p3, p4, p5}, Lcom/join/mgps/Util/i0;->g(Landroid/widget/TextView;Landroid/text/SpannableStringBuilder;ZZLjava/lang/String;)V

    .line 4
    invoke-virtual {v0, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 5
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "<br/>"

    const-string p4, ""

    invoke-virtual {p2, p3, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic g(Lcom/join/mgps/adapter/ForumPostsAdapter;Ljava/lang/String;Landroid/view/View;Lcom/facebook/imagepipeline/image/f;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumPostsAdapter;->z0(Ljava/lang/String;Landroid/view/View;Lcom/facebook/imagepipeline/image/f;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method private g0(Landroid/widget/TextView;Ljava/lang/String;ZZLjava/lang/String;Ljava/util/List;Ljava/util/List;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendLabelTag;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance p3, Landroid/text/SpannableStringBuilder;

    invoke-direct {p3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {p4, p3, p6}, Lcom/join/mgps/Util/i0;->h(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/util/List;)V

    .line 3
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {p4, p3, p7, p8, p9}, Lcom/join/mgps/Util/i0;->i(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/util/List;ILjava/lang/String;)V

    .line 4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_0

    const-string p2, ""

    :cond_0
    invoke-virtual {p3, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 5
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic h(Lcom/join/mgps/adapter/ForumPostsAdapter;Landroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/ForumPostsAdapter;->u(Landroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method private h0(Lcom/join/mgps/customview/CopyTextViewNew;Landroid/text/SpannableStringBuilder;ZZLjava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/customview/CopyTextViewNew;",
            "Landroid/text/SpannableStringBuilder;",
            "ZZ",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance p3, Landroid/text/SpannableStringBuilder;

    invoke-direct {p3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {p4, p3, p6}, Lcom/join/mgps/Util/i0;->h(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/util/List;)V

    .line 3
    invoke-virtual {p3, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 4
    invoke-virtual {p3}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/join/mgps/customview/CopyTextViewNew;->setTextForum(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic i(Lcom/join/mgps/adapter/ForumPostsAdapter;Landroid/widget/PopupWindow;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/ForumPostsAdapter;->m(Landroid/widget/PopupWindow;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private i0(Landroid/widget/TextView;Landroid/text/SpannableStringBuilder;ZZLjava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            "Landroid/text/SpannableStringBuilder;",
            "ZZ",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance p3, Landroid/text/SpannableStringBuilder;

    invoke-direct {p3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {p4, p3, p6}, Lcom/join/mgps/Util/i0;->h(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/util/List;)V

    .line 3
    invoke-virtual {p3, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 4
    invoke-virtual {p3}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "<br/>"

    const-string p4, ""

    invoke-virtual {p2, p3, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic j(Lcom/join/mgps/adapter/ForumPostsAdapter;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/ForumPostsAdapter;->n(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic k(Lcom/join/mgps/adapter/ForumPostsAdapter;Landroid/view/View;Lcom/join/mgps/adapter/ForumPostsAdapter$u0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/ForumPostsAdapter;->D0(Landroid/view/View;Lcom/join/mgps/adapter/ForumPostsAdapter$u0$a;)V

    return-void
.end method

.method private m(Landroid/widget/PopupWindow;Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    return v0

    .line 2
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/ForumPostsAdapter;->n(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method private n(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 1
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    .line 3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    float-to-int p2, p2

    .line 4
    aget v3, v1, v0

    const/4 v4, 0x1

    if-ge v3, v2, :cond_1

    aget v3, v1, v4

    if-ge v3, p2, :cond_1

    aget v3, v1, v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v3, v5

    if-ge v2, v3, :cond_1

    aget v1, v1, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v1, p1

    if-ge p2, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private s(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumPostsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method private t(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/ForumPostsAdapter$z;

    goto/16 :goto_0

    .line 2
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/ForumPostsAdapter$z;

    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/ForumPostsAdapter$z;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter;)V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->d:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0414

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0902a9

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$z;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f0902bc

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$z;->c:Landroid/widget/TextView;

    const v0, 0x7f0902a7

    .line 6
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$z;->d:Landroid/widget/TextView;

    const v0, 0x7f0902be

    .line 7
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$z;->e:Landroid/widget/ImageView;

    const v0, 0x7f0902ab

    .line 8
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$z;->f:Landroid/widget/TextView;

    const v0, 0x7f090516

    .line 9
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$z;->g:Landroid/widget/Button;

    const v0, 0x7f09051a

    .line 10
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$z;->h:Landroid/widget/ImageView;

    const v0, 0x7f09078a

    .line 11
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$z;->i:Landroid/widget/ImageView;

    const v0, 0x7f0904dc

    .line 12
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$z;->j:Landroid/widget/ImageView;

    const v0, 0x7f091298

    .line 13
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/VipView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$z;->k:Lcom/join/mgps/customview/VipView;

    const v0, 0x7f090a66

    .line 14
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$z;->l:Landroid/widget/TextView;

    const v0, 0x7f090a22

    .line 15
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$z;->m:Landroid/widget/TextView;

    const v0, 0x7f09038e

    .line 16
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$z;->n:Landroid/view/View;

    .line 17
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 18
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumPostsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$a;

    if-nez p1, :cond_1

    return-object p2

    .line 19
    :cond_1
    iget-boolean v0, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$a;->a:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 20
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$z;->n:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 21
    :cond_2
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$z;->n:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 22
    :goto_1
    :try_start_1
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$z;->k:Lcom/join/mgps/customview/VipView;

    iget v3, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$a;->o:I

    iget v4, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$a;->p:I

    invoke-virtual {v0, v3, v4}, Lcom/join/mgps/customview/VipView;->setVipData(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 23
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 24
    :goto_2
    iget v0, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$a;->k:I

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    .line 25
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$z;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 26
    :cond_3
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$z;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 27
    :goto_3
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$z;->c:Landroid/widget/TextView;

    iget-object v4, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$a;->e:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$z;->d:Landroid/widget/TextView;

    iget-wide v4, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$a;->f:J

    const-wide/16 v6, 0x3e8

    mul-long v4, v4, v6

    invoke-static {v4, v5}, Lcom/join/android/app/common/utils/c;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$z;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v4, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$a;->d:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/join/android/app/common/utils/MyImageLoader;->w(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 30
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$z;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    new-instance v4, Lcom/join/mgps/adapter/ForumPostsAdapter$w;

    invoke-direct {v4, p0, p1}, Lcom/join/mgps/adapter/ForumPostsAdapter$w;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter;Lcom/join/mgps/adapter/ForumPostsAdapter$u0$a;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    iget-boolean v0, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$a;->g:Z

    if-eqz v0, :cond_4

    .line 32
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$z;->g:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_4

    .line 33
    :cond_4
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$z;->g:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 34
    :goto_4
    iget-boolean v0, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$a;->j:Z

    if-eqz v0, :cond_5

    .line 35
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$z;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    .line 36
    :cond_5
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$z;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 37
    :goto_5
    iget-boolean v0, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$a;->i:Z

    if-eqz v0, :cond_6

    .line 38
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$z;->c:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->d:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06002a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 39
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$z;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6

    .line 40
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->d:Landroid/content/Context;

    iget-object v4, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$z;->c:Landroid/widget/TextView;

    iget v5, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$a;->o:I

    iget v6, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$a;->p:I

    const v7, 0x7f06011d

    invoke-static {v0, v4, v5, v6, v7}, Lcom/join/mgps/Util/UtilsMy;->M2(Landroid/content/Context;Landroid/widget/TextView;III)Z

    .line 41
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$z;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 42
    :goto_6
    iget-boolean v0, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$a;->q:Z

    if-eqz v0, :cond_7

    .line 43
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$z;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_7

    .line 44
    :cond_7
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$z;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 45
    :goto_7
    iget-object v0, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$a;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 46
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$z;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 47
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$z;->m:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$a;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 48
    :cond_8
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$z;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 49
    :goto_8
    iget v0, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$a;->h:I

    const/4 v1, 0x2

    if-ne v0, v3, :cond_9

    .line 50
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f110093

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_9
    if-ne v0, v1, :cond_a

    .line 51
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f110094

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 52
    :cond_a
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f110092

    new-array v5, v3, [Ljava/lang/Object;

    iget v6, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$a;->h:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v0, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 53
    :goto_9
    iget-object v4, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$z;->f:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    invoke-virtual {p0, p2}, Lcom/join/mgps/adapter/ForumPostsAdapter;->q0(Landroid/view/View;)V

    .line 55
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$z;->e:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/adapter/ForumPostsAdapter;->p0(Landroid/view/View;Lcom/join/mgps/adapter/ForumPostsAdapter$u0$a;)V

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/view/View;

    .line 56
    iget-object v4, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$z;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    aput-object v4, v0, v2

    iget-object v4, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$z;->c:Landroid/widget/TextView;

    aput-object v4, v0, v3

    iget-object v4, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$z;->d:Landroid/widget/TextView;

    aput-object v4, v0, v1

    invoke-static {v0}, Lcom/join/mgps/Util/i0;->S0([Landroid/view/View;)V

    new-array v0, v3, [Landroid/view/View;

    .line 57
    iget-object v1, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$z;->k:Lcom/join/mgps/customview/VipView;

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/join/mgps/Util/i0;->U0([Landroid/view/View;)V

    .line 58
    iget-object p3, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$z;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget p1, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$a;->b:I

    invoke-direct {p0, p3, p1}, Lcom/join/mgps/adapter/ForumPostsAdapter;->y0(Landroid/view/View;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_a

    :catch_1
    move-exception p1

    .line 59
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_a
    return-object p2
.end method

.method private u(Landroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 6

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->k:Landroid/widget/LinearLayout$LayoutParams;

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x3fc00000    # 1.5f

    const/16 v3, 0x1e

    const/4 v4, 0x4

    const v5, 0x7f070ca1

    .line 5
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sub-int/2addr v1, v0

    int-to-float v0, v1

    int-to-float v1, v3

    mul-float v1, v1, p1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    int-to-float v3, v0

    mul-float v3, v3, v1

    div-float/2addr v3, v2

    float-to-int v1, v3

    int-to-float v2, v4

    mul-float v2, v2, p1

    float-to-int p1, v2

    .line 6
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v0, 0x0

    .line 7
    invoke-virtual {v2, v0, p1, v0, p1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 8
    iput-object v2, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->k:Landroid/widget/LinearLayout$LayoutParams;

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->k:Landroid/widget/LinearLayout$LayoutParams;

    return-object p1
.end method

.method private u0(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/ForumPostsAdapter$n;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/ForumPostsAdapter$n;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private v(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/ForumPostsAdapter$a0;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/ForumPostsAdapter$a0;

    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/ForumPostsAdapter$a0;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter;)V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->d:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0415

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0902b1

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$a0;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 5
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 6
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumPostsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$b;

    if-nez p1, :cond_1

    return-object p2

    .line 7
    :cond_1
    iget-object p3, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$a0;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    if-eqz p3, :cond_3

    .line 8
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->d:Landroid/content/Context;

    iget-object v1, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$b;->c:Ljava/util/List;

    iget v2, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$b;->b:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/join/mgps/adapter/ForumPostsAdapter;->Z(Landroid/content/Context;Ljava/lang/String;)V

    .line 9
    iget-object v0, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$b;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->B(Ljava/lang/String;)Lcom/join/mgps/adapter/ForumPostsAdapter$k0;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 10
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, v0, Lcom/join/mgps/adapter/ForumPostsAdapter$k0;->a:I

    iget v0, v0, Lcom/join/mgps/adapter/ForumPostsAdapter$k0;->b:I

    invoke-direct {v1, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v0, 0x4

    int-to-float v0, v0

    .line 11
    iget-object v2, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v2

    float-to-int v0, v0

    const/4 v2, 0x0

    .line 12
    invoke-virtual {v1, v2, v0, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 13
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    iget-object v0, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$b;->a:Ljava/lang/String;

    invoke-static {p3, v0}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    goto :goto_1

    .line 15
    :cond_2
    iget-object v0, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$b;->a:Ljava/lang/String;

    invoke-virtual {p0, p3, v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->U(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 16
    :goto_1
    iget v0, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$b;->b:I

    iget-object p1, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$b;->c:Ljava/util/List;

    invoke-static {p3, v0, p1}, Lcom/join/mgps/Util/i0;->C1(Landroid/widget/ImageView;ILjava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_2
    return-object p2
.end method

.method private v0(Landroid/view/View;I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/ForumPostsAdapter$p;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/ForumPostsAdapter$p;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private w(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-eqz p2, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/ForumPostsAdapter$b0;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/ForumPostsAdapter$b0;

    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/ForumPostsAdapter$b0;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->d:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0417

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0902bf

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$b0;->b:Landroid/widget/LinearLayout;

    const v0, 0x7f0902c1

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$b0;->c:Landroid/view/View;

    const v0, 0x7f0902c0

    .line 6
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$b0;->d:Landroid/widget/TextView;

    const v0, 0x7f0902c2

    .line 7
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$b0;->e:Landroid/widget/TextView;

    const v0, 0x7f0908be

    .line 8
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$b0;->f:Landroid/view/View;

    const v0, 0x7f090169

    .line 9
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$b0;->g:Landroid/view/View;

    .line 10
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 11
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumPostsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$d;

    if-nez v0, :cond_1

    return-object p2

    .line 12
    :cond_1
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$d;->b:Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

    if-nez v1, :cond_2

    return-object p2

    .line 13
    :cond_2
    iget-boolean v1, v0, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$d;->d:Z

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_3

    .line 14
    iget-object v1, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$b0;->c:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 15
    :cond_3
    iget-object v1, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$b0;->c:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 16
    :goto_1
    iget-boolean v1, v0, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$d;->h:Z

    if-nez v1, :cond_4

    .line 17
    iget-object v1, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$b0;->f:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 18
    iget-object v1, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$b0;->g:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 19
    :cond_4
    iget-object v1, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$b0;->f:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 20
    iget-object v1, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$b0;->g:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 21
    :goto_2
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$d;->b:Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getReply_list()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 22
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_5

    .line 23
    iget-object p3, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$b0;->b:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-direct {p0, p3, v0, v1, p1}, Lcom/join/mgps/adapter/ForumPostsAdapter;->a0(Landroid/view/View;Lcom/join/mgps/adapter/ForumPostsAdapter$u0$d;ZI)V

    goto :goto_3

    .line 24
    :cond_5
    iget-object p1, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$b0;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 25
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-object p2
.end method

.method private w0(Landroid/view/View;Lcom/join/mgps/dto/ForumBean$GameInfo;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/ForumPostsAdapter$m;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/ForumPostsAdapter$m;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter;Lcom/join/mgps/dto/ForumBean$GameInfo;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private x(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/ForumPostsAdapter$c0;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/ForumPostsAdapter$c0;

    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/ForumPostsAdapter$c0;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter;)V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->d:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0416

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0902bb

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$c0;->b:Landroid/widget/TextView;

    .line 5
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 6
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumPostsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$c;

    if-nez p1, :cond_1

    return-object p2

    .line 7
    :cond_1
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$c0;->b:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$c0;->b:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->S(Landroid/widget/TextView;)V

    .line 9
    invoke-virtual {p0, p2}, Lcom/join/mgps/adapter/ForumPostsAdapter;->q0(Landroid/view/View;)V

    .line 10
    iget-object p3, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$c0;->b:Landroid/widget/TextView;

    invoke-virtual {p0, p3, p1}, Lcom/join/mgps/adapter/ForumPostsAdapter;->o0(Landroid/view/View;Lcom/join/mgps/adapter/ForumPostsAdapter$u0$c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-object p2
.end method

.method private y(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/ForumPostsAdapter$g0;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/ForumPostsAdapter$g0;

    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/ForumPostsAdapter$g0;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter;)V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->d:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0418

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0908de

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/HListView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$g0;->b:Lit/sephiroth/android/library/widget/HListView;

    .line 5
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 6
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumPostsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$e;

    if-nez p1, :cond_1

    return-object p2

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->f:Lcom/join/mgps/adapter/ForumPostsAdapter$j0;

    if-nez v0, :cond_2

    .line 8
    new-instance v0, Lcom/join/mgps/adapter/ForumPostsAdapter$j0;

    iget-object v1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/join/mgps/adapter/ForumPostsAdapter$j0;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->f:Lcom/join/mgps/adapter/ForumPostsAdapter$j0;

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->f:Lcom/join/mgps/adapter/ForumPostsAdapter$j0;

    iget v1, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$e;->b:I

    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/ForumPostsAdapter$j0;->d(I)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->f:Lcom/join/mgps/adapter/ForumPostsAdapter$j0;

    iget-object v1, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$e;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/ForumPostsAdapter$j0;->e(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->f:Lcom/join/mgps/adapter/ForumPostsAdapter$j0;

    invoke-virtual {v0}, Lcom/join/mgps/adapter/ForumPostsAdapter$j0;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->f:Lcom/join/mgps/adapter/ForumPostsAdapter$j0;

    invoke-virtual {v0}, Lcom/join/mgps/adapter/ForumPostsAdapter$j0;->c()Ljava/util/List;

    move-result-object v0

    iget-object p1, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$e;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 13
    iget-object p1, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$g0;->b:Lit/sephiroth/android/library/widget/HListView;

    iget-object p3, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->f:Lcom/join/mgps/adapter/ForumPostsAdapter$j0;

    invoke-virtual {p1, p3}, Lit/sephiroth/android/library/widget/HListView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-object p2
.end method

.method private y0(Landroid/view/View;I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/ForumPostsAdapter$q;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/ForumPostsAdapter$q;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private z0(Ljava/lang/String;Landroid/view/View;Lcom/facebook/imagepipeline/image/f;)Landroid/view/ViewGroup$LayoutParams;
    .locals 8

    if-eqz p3, :cond_0

    .line 1
    invoke-interface {p3}, Lcom/facebook/imagepipeline/image/f;->a()I

    move-result v0

    .line 2
    invoke-interface {p3}, Lcom/facebook/imagepipeline/image/f;->getHeight()I

    move-result p3

    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    const v3, 0x7f070ca1

    .line 6
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v2, v1

    int-to-float v1, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float v1, v1, v3

    int-to-float v4, p3

    mul-float v4, v4, v3

    int-to-float v3, v0

    div-float/2addr v4, v3

    mul-float v1, v1, v4

    float-to-int v1, v1

    .line 7
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 8
    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 9
    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 10
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "setPostImageParam-->rawHeight="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " rawWidth="

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " ratio="

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, " itemHeight="

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " itemWidth="

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "\n"

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    aput-object p1, v5, p3

    invoke-static {v5}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 11
    invoke-virtual {p2, p3}, Landroid/view/View;->setMinimumHeight(I)V

    .line 12
    invoke-virtual {p2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v3

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public A()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/ForumPostsAdapter$u0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->e:Ljava/util/List;

    return-object v0
.end method

.method B(Ljava/lang/String;)Lcom/join/mgps/adapter/ForumPostsAdapter$k0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->l:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/ForumPostsAdapter$k0;

    return-object p1
.end method

.method C0(Landroid/view/View;IZZIILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->o:Lcom/join/mgps/adapter/ForumPostsAdapter$h0;

    if-nez v0, :cond_0

    new-instance v0, Lcom/join/mgps/adapter/ForumPostsAdapter$h0;

    iget-object v1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->d:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/join/mgps/adapter/ForumPostsAdapter$h0;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->o:Lcom/join/mgps/adapter/ForumPostsAdapter$h0;

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->o:Lcom/join/mgps/adapter/ForumPostsAdapter$h0;

    invoke-virtual {v0, p5}, Lcom/join/mgps/adapter/ForumPostsAdapter$h0;->q(I)V

    .line 3
    iget-object p5, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->o:Lcom/join/mgps/adapter/ForumPostsAdapter$h0;

    invoke-virtual {p5, p6}, Lcom/join/mgps/adapter/ForumPostsAdapter$h0;->A(I)V

    .line 4
    iget-object p5, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->o:Lcom/join/mgps/adapter/ForumPostsAdapter$h0;

    invoke-virtual {p5, p8}, Lcom/join/mgps/adapter/ForumPostsAdapter$h0;->x(Ljava/lang/String;)V

    .line 5
    iget-object p5, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->o:Lcom/join/mgps/adapter/ForumPostsAdapter$h0;

    invoke-virtual {p5, p2}, Lcom/join/mgps/adapter/ForumPostsAdapter$h0;->w(I)V

    .line 6
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->o:Lcom/join/mgps/adapter/ForumPostsAdapter$h0;

    const/4 p5, 0x0

    invoke-virtual {p2, p5}, Lcom/join/mgps/adapter/ForumPostsAdapter$h0;->t(I)V

    const/16 p2, 0x8

    if-eqz p3, :cond_1

    .line 7
    iget-object p3, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->o:Lcom/join/mgps/adapter/ForumPostsAdapter$h0;

    invoke-virtual {p3, p5}, Lcom/join/mgps/adapter/ForumPostsAdapter$h0;->v(I)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object p3, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->o:Lcom/join/mgps/adapter/ForumPostsAdapter$h0;

    invoke-virtual {p3, p2}, Lcom/join/mgps/adapter/ForumPostsAdapter$h0;->v(I)V

    :goto_0
    if-eqz p4, :cond_2

    .line 9
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->o:Lcom/join/mgps/adapter/ForumPostsAdapter$h0;

    invoke-virtual {p2, p5}, Lcom/join/mgps/adapter/ForumPostsAdapter$h0;->z(I)V

    goto :goto_1

    .line 10
    :cond_2
    iget-object p3, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->o:Lcom/join/mgps/adapter/ForumPostsAdapter$h0;

    invoke-virtual {p3, p2}, Lcom/join/mgps/adapter/ForumPostsAdapter$h0;->z(I)V

    .line 11
    :goto_1
    invoke-static {p7}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p7, ""

    .line 12
    :cond_3
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->o:Lcom/join/mgps/adapter/ForumPostsAdapter$h0;

    invoke-virtual {p2, p7}, Lcom/join/mgps/adapter/ForumPostsAdapter$h0;->y(Ljava/lang/String;)V

    .line 13
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->o:Lcom/join/mgps/adapter/ForumPostsAdapter$h0;

    invoke-virtual {p2, p1}, Lcom/join/mgps/adapter/ForumPostsAdapter$h0;->showAsDropDown(Landroid/view/View;)V

    return-void
.end method

.method public P(Landroid/content/Context;)Lcom/danikula/videocache/i;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/MApplication;->p(Landroid/content/Context;)Lcom/danikula/videocache/i;

    move-result-object p1

    return-object p1
.end method

.method Q()Landroid/widget/LinearLayout$LayoutParams;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    .line 3
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v2, 0x43520000    # 210.0f

    mul-float v2, v2, v1

    float-to-int v2, v2

    const/high16 v3, 0x43200000    # 160.0f

    mul-float v3, v3, v1

    float-to-int v3, v3

    const/high16 v4, 0x40c00000    # 6.0f

    mul-float v4, v4, v1

    float-to-int v4, v4

    .line 4
    iget-object v5, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->d:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070c8f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v0, v5

    int-to-float v0, v0

    int-to-float v4, v4

    mul-float v4, v4, v1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v4, v4, v1

    sub-float/2addr v0, v4

    float-to-int v0, v0

    .line 5
    div-int/lit8 v0, v0, 0x3

    if-le v0, v2, :cond_0

    goto :goto_0

    :cond_0
    if-le v0, v3, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v0

    .line 6
    :goto_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public U(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Lk0/b;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/generic/a;

    const v1, 0x7f0807b1

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/generic/a;->H(I)V

    .line 2
    new-instance v0, Lcom/join/mgps/adapter/ForumPostsAdapter$d;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/adapter/ForumPostsAdapter$d;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter;Lcom/facebook/drawee/view/SimpleDraweeView;)V

    .line 3
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->newDraweeControllerBuilder()Lcom/facebook/drawee/backends/pipeline/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->H(Lcom/facebook/drawee/controller/c;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/backends/pipeline/e;

    .line 4
    invoke-static {p2}, Lcom/join/android/app/common/utils/MyImageLoader;->G(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/facebook/drawee/backends/pipeline/e;->c0(Landroid/net/Uri;)Lcom/facebook/drawee/backends/pipeline/e;

    move-result-object p2

    .line 5
    invoke-virtual {p2}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->d()Lcom/facebook/drawee/controller/a;

    move-result-object p2

    .line 6
    invoke-virtual {p1, p2}, Lcom/facebook/drawee/view/DraweeView;->setController(Lk0/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public V(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Lk0/b;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/generic/a;

    const v1, 0x7f0807b1

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/generic/a;->H(I)V

    .line 2
    new-instance v0, Lcom/join/mgps/adapter/ForumPostsAdapter$c;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/adapter/ForumPostsAdapter$c;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter;Lcom/facebook/drawee/view/SimpleDraweeView;)V

    .line 3
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->newDraweeControllerBuilder()Lcom/facebook/drawee/backends/pipeline/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->H(Lcom/facebook/drawee/controller/c;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/backends/pipeline/e;

    .line 4
    invoke-static {p2}, Lcom/join/android/app/common/utils/MyImageLoader;->G(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/facebook/drawee/backends/pipeline/e;->c0(Landroid/net/Uri;)Lcom/facebook/drawee/backends/pipeline/e;

    move-result-object p2

    .line 5
    invoke-virtual {p2}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->d()Lcom/facebook/drawee/controller/a;

    move-result-object p2

    .line 6
    invoke-virtual {p1, p2}, Lcom/facebook/drawee/view/DraweeView;->setController(Lk0/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public X(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 0

    return-void
.end method

.method Y(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-static {p2}, Lcom/join/mgps/Util/i0;->i0(Ljava/lang/String;)[Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/join/mgps/adapter/ForumPostsAdapter$k0;

    invoke-direct {v1, p0}, Lcom/join/mgps/adapter/ForumPostsAdapter$k0;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter;)V

    const/4 v2, 0x0

    .line 3
    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    .line 4
    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    const v4, 0x7f070ca1

    .line 7
    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    sub-int/2addr v3, p1

    int-to-float p1, v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float p1, p1, v4

    int-to-float v0, v0

    mul-float v0, v0, v4

    int-to-float v2, v2

    div-float/2addr v0, v2

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 8
    iput v3, v1, Lcom/join/mgps/adapter/ForumPostsAdapter$k0;->a:I

    .line 9
    iput p1, v1, Lcom/join/mgps/adapter/ForumPostsAdapter$k0;->b:I

    .line 10
    invoke-virtual {p0, p2, v1}, Lcom/join/mgps/adapter/ForumPostsAdapter;->l(Ljava/lang/String;Lcom/join/mgps/adapter/ForumPostsAdapter$k0;)V

    :cond_0
    return-void
.end method

.method public c0(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->c:Ljava/lang/String;

    return-void
.end method

.method d0(Ljava/lang/String;Landroid/view/View;Lcom/facebook/imagepipeline/image/f;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 8

    if-eqz p3, :cond_0

    .line 1
    invoke-interface {p3}, Lcom/facebook/imagepipeline/image/f;->a()I

    move-result v0

    .line 2
    invoke-interface {p3}, Lcom/facebook/imagepipeline/image/f;->getHeight()I

    move-result p3

    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 6
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/16 v4, 0x28

    const/4 v5, 0x4

    const v6, 0x7f070ca1

    .line 7
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v3, v2

    int-to-float v2, v3

    int-to-float v3, v4

    mul-float v3, v3, v1

    sub-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v3, v2

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float v3, v3, v4

    int-to-float v5, v5

    mul-float v5, v5, v1

    float-to-int v1, v5

    int-to-float v5, p3

    mul-float v5, v5, v4

    int-to-float v4, v0

    div-float/2addr v5, v4

    mul-float v3, v3, v5

    float-to-int v3, v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    .line 8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "setCommentImageItemParams-->rawHeight="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " rawWidth="

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " ratio="

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, " itemHeight="

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " itemWidth="

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "\n"

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    aput-object p1, v4, p3

    invoke-static {v4}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 9
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 10
    invoke-virtual {p1, p3, v1, p3, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 11
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method e0(Lcom/join/mgps/adapter/ForumPostsAdapter$u0;Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/join/mgps/adapter/ForumPostsAdapter$u0;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$d;

    .line 2
    iput-boolean p2, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$d;->h:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0;

    invoke-virtual {p1}, Lcom/join/mgps/adapter/ForumPostsAdapter$u0;->a()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0;

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/adapter/ForumPostsAdapter$u0;->b()Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumPostsAdapter;->getItemViewType(I)I

    move-result v0

    .line 2
    sget-object v1, Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;->POST_HEADER:Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumPostsAdapter;->H(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 4
    :cond_0
    sget-object v1, Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;->POST_HEADER1:Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumPostsAdapter;->G(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 6
    :cond_1
    sget-object v1, Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;->POST_FOOTER:Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumPostsAdapter;->D(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 8
    :cond_2
    sget-object v1, Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;->POST_FOOTER1:Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 9
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumPostsAdapter;->C(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 10
    :cond_3
    sget-object v1, Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;->POST_GAME_RES_LINK:Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 11
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumPostsAdapter;->E(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 12
    :cond_4
    sget-object v1, Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;->POST_GAME:Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumPostsAdapter;->F(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 14
    :cond_5
    sget-object v1, Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;->POST_IMAGE:Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 15
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumPostsAdapter;->K(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 16
    :cond_6
    sget-object v1, Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;->POST_VIDEO:Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_7

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumPostsAdapter;->O(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 18
    :cond_7
    sget-object v1, Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;->POST_IMAGE_THUMBNAIL:Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_8

    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumPostsAdapter;->J(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 20
    :cond_8
    sget-object v1, Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;->POST_MESSAGE:Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_9

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumPostsAdapter;->L(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 22
    :cond_9
    sget-object v1, Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;->POST_SUBJECT:Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_a

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumPostsAdapter;->M(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 24
    :cond_a
    sget-object v1, Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;->COMMENT_HEADER:Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_b

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumPostsAdapter;->t(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 26
    :cond_b
    sget-object v1, Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;->COMMENT_MESSAGE:Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_c

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumPostsAdapter;->x(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 28
    :cond_c
    sget-object v1, Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;->COMMENT_IMAGE:Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_d

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumPostsAdapter;->v(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 30
    :cond_d
    sget-object v1, Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;->COMMENT_MESSAGE_REPLY:Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_e

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumPostsAdapter;->w(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 32
    :cond_e
    sget-object v1, Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;->BAIDUADBANNER:Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_f

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumPostsAdapter;->s(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 34
    :cond_f
    sget-object v1, Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;->EMPLOYEE_TAGS:Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_10

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumPostsAdapter;->y(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_10
    :goto_0
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;->values()[Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method j0(Landroid/view/View;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x1

    .line 1
    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 2
    instance-of v3, v1, Landroid/widget/TextView;

    const v4, 0x7f080a6a

    const/4 v5, 0x0

    const v6, -0x767677

    const/high16 v7, 0x41300000    # 11.0f

    const-string v8, "\u5373\u5c06\u5f00\u653e"

    const v10, 0x7f1100d1

    const/high16 v11, 0x41400000    # 12.0f

    const v12, 0x7f1100d4

    const/4 v13, 0x3

    const v14, 0x7f080a62

    const v15, -0xc35b03

    const/4 v9, 0x2

    if-eqz v3, :cond_2

    .line 3
    check-cast v1, Landroid/widget/TextView;

    .line 4
    invoke-virtual {v1, v15}, Landroid/widget/TextView;->setTextColor(I)V

    if-ne v2, v13, :cond_0

    .line 5
    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    invoke-virtual {v1, v9, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 7
    invoke-virtual {v1, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 8
    invoke-virtual {v1, v14}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_0

    :cond_0
    if-ne v2, v9, :cond_1

    .line 9
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    invoke-virtual {v1, v9, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 11
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 12
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 13
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 14
    :cond_1
    iget-object v2, v0, Lcom/join/mgps/adapter/ForumPostsAdapter;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v2, 0x41500000    # 13.0f

    .line 15
    invoke-virtual {v1, v9, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 16
    invoke-virtual {v1, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 17
    invoke-virtual {v1, v14}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 18
    :cond_2
    instance-of v3, v1, Landroid/widget/Button;

    if-eqz v3, :cond_5

    .line 19
    check-cast v1, Landroid/widget/Button;

    .line 20
    invoke-virtual {v1, v15}, Landroid/widget/Button;->setTextColor(I)V

    if-ne v2, v13, :cond_3

    .line 21
    invoke-virtual {v1}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 22
    invoke-virtual {v1, v9, v11}, Landroid/widget/Button;->setTextSize(IF)V

    .line 23
    invoke-virtual {v1, v15}, Landroid/widget/Button;->setTextColor(I)V

    .line 24
    invoke-virtual {v1, v14}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    :cond_3
    if-ne v2, v9, :cond_4

    .line 25
    invoke-virtual {v1, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 26
    invoke-virtual {v1, v9, v7}, Landroid/widget/Button;->setTextSize(IF)V

    .line 27
    invoke-virtual {v1, v6}, Landroid/widget/Button;->setTextColor(I)V

    .line 28
    invoke-virtual {v1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 29
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 30
    :cond_4
    iget-object v2, v0, Lcom/join/mgps/adapter/ForumPostsAdapter;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/high16 v2, 0x41500000    # 13.0f

    .line 31
    invoke-virtual {v1, v9, v2}, Landroid/widget/Button;->setTextSize(IF)V

    .line 32
    invoke-virtual {v1, v15}, Landroid/widget/Button;->setTextColor(I)V

    .line 33
    invoke-virtual {v1, v14}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_5
    :goto_0
    return-void
.end method

.method k0(Landroid/widget/TextView;I)V
    .locals 7

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    const v1, -0xc35b03

    .line 2
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3
    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f110261

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    int-to-double v5, p2

    invoke-static {v5, v6}, Lcom/join/mgps/Util/d2;->l(D)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v4

    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x2

    const/high16 v0, 0x41500000    # 13.0f

    .line 4
    invoke-virtual {p1, p2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 5
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const p2, 0x7f080a62

    .line 6
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    return-void
.end method

.method l(Ljava/lang/String;Lcom/join/mgps/adapter/ForumPostsAdapter$k0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->l:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->l:Ljava/util/Hashtable;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->l:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method l0(Lcom/join/mgps/adapter/ForumPostsAdapter$m0;Ljava/lang/Object;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 1
    iget-object v4, v2, Lcom/join/mgps/adapter/ForumPostsAdapter$m0;->d:Landroid/widget/Button;

    if-eqz v4, :cond_19

    if-nez v3, :cond_0

    goto/16 :goto_c

    .line 2
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 4
    move-object v6, v3

    check-cast v6, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 5
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v7

    .line 6
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    move-result-object v8

    .line 7
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 8
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTipBeans()Ljava/util/ArrayList;

    move-result-object v10

    .line 9
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v11

    .line 10
    instance-of v13, v3, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    if-eqz v13, :cond_3

    .line 11
    move-object v6, v3

    check-cast v6, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    .line 12
    invoke-virtual {v6}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v8

    .line 13
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    move-result-object v13

    .line 14
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v15

    if-eqz v15, :cond_1

    .line 15
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v15

    invoke-virtual {v15}, Lcom/join/mgps/dto/PayTagInfo;->getPay_game_amount()I

    move-result v15

    goto :goto_0

    :cond_1
    const/4 v15, 0x0

    :goto_0
    if-lez v15, :cond_2

    .line 16
    invoke-static {}, Ln1/e0;->o()Ln1/e0;

    move-result-object v14

    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ln1/e0;->p(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v15, 0x0

    :cond_2
    move-object v6, v8

    move-object v8, v13

    goto :goto_3

    .line 17
    :cond_3
    instance-of v13, v3, Lcom/join/mgps/business/RecomDatabeanBusiness;

    if-eqz v13, :cond_6

    .line 18
    move-object v13, v3

    check-cast v13, Lcom/join/mgps/business/RecomDatabeanBusiness;

    .line 19
    invoke-virtual {v13}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object v13

    const/4 v14, 0x0

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/join/mgps/dto/AppBeanMain;

    invoke-virtual {v13}, Lcom/join/mgps/dto/AppBeanMain;->getGame_info()Lcom/join/mgps/dto/AppBean;

    move-result-object v13

    .line 20
    invoke-virtual {v13}, Lcom/join/mgps/dto/AppBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v14

    if-eqz v14, :cond_4

    .line 21
    invoke-virtual {v13}, Lcom/join/mgps/dto/AppBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v14

    invoke-virtual {v14}, Lcom/join/mgps/dto/PayTagInfo;->getPay_game_amount()I

    move-result v14

    goto :goto_1

    :cond_4
    const/4 v14, 0x0

    :goto_1
    if-lez v14, :cond_5

    .line 22
    invoke-static {}, Ln1/e0;->o()Ln1/e0;

    move-result-object v15

    invoke-virtual {v13}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v15, v13}, Ln1/e0;->p(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    goto :goto_2

    :cond_5
    move v15, v14

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v15, 0x0

    :goto_3
    const-string v13, "\u66f4\u65b0"

    const v14, 0x7f080a67

    if-nez v6, :cond_d

    .line 23
    invoke-static {v10}, Lcom/join/mgps/Util/UtilsMy;->e0(Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 24
    invoke-static {v0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v6

    invoke-virtual {v6, v0, v9}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-lez v15, :cond_7

    const/16 v16, 0x0

    goto :goto_4

    :cond_7
    move/from16 v16, v6

    :goto_4
    if-eqz v16, :cond_9

    .line 25
    invoke-static {v0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v2

    invoke-virtual {v2, v0, v9}, Lcom/join/android/app/common/utils/APKUtils;->k(Landroid/content/Context;Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$a;

    move-result-object v2

    .line 26
    invoke-static {v8}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v2}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    move-result v2

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-ge v2, v6, :cond_8

    .line 27
    invoke-virtual {v4, v14}, Landroid/view/View;->setBackgroundResource(I)V

    .line 28
    invoke-direct {v1, v4, v13}, Lcom/join/mgps/adapter/ForumPostsAdapter;->A0(Landroid/view/View;Ljava/lang/CharSequence;)V

    const v0, 0x7f060030

    .line 29
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->B0(Landroid/view/View;I)V

    goto/16 :goto_b

    :cond_8
    const v2, 0x7f080a6e

    .line 30
    invoke-virtual {v4, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 31
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1100d2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->A0(Landroid/view/View;Ljava/lang/CharSequence;)V

    const v0, 0x7f060033

    .line 32
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->B0(Landroid/view/View;I)V

    goto/16 :goto_b

    .line 33
    :cond_9
    invoke-virtual {v4, v14}, Landroid/view/View;->setBackgroundResource(I)V

    if-lez v15, :cond_a

    .line 34
    iget-object v0, v2, Lcom/join/mgps/adapter/ForumPostsAdapter$m0;->d:Landroid/widget/Button;

    invoke-virtual {v1, v0, v15}, Lcom/join/mgps/adapter/ForumPostsAdapter;->k0(Landroid/widget/TextView;I)V

    goto/16 :goto_b

    .line 35
    :cond_a
    invoke-virtual {v1, v4, v7}, Lcom/join/mgps/adapter/ForumPostsAdapter;->j0(Landroid/view/View;I)V

    goto/16 :goto_b

    .line 36
    :cond_b
    invoke-virtual {v4, v14}, Landroid/view/View;->setBackgroundResource(I)V

    if-lez v15, :cond_c

    .line 37
    iget-object v0, v2, Lcom/join/mgps/adapter/ForumPostsAdapter$m0;->d:Landroid/widget/Button;

    invoke-virtual {v1, v0, v15}, Lcom/join/mgps/adapter/ForumPostsAdapter;->k0(Landroid/widget/TextView;I)V

    goto/16 :goto_b

    .line 38
    :cond_c
    invoke-virtual {v1, v4, v7}, Lcom/join/mgps/adapter/ForumPostsAdapter;->j0(Landroid/view/View;I)V

    goto/16 :goto_b

    .line 39
    :cond_d
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v8

    if-lez v15, :cond_e

    const/16 v8, 0x2b

    :cond_e
    if-eqz v8, :cond_11

    const/16 v10, 0x1b

    const-string v14, "\u6682\u505c\u4e2d"

    if-eq v8, v10, :cond_16

    const/4 v10, 0x2

    const-wide/16 v17, 0x0

    const-string v9, "/"

    if-eq v8, v10, :cond_14

    const/4 v10, 0x3

    if-eq v8, v10, :cond_12

    const/4 v10, 0x5

    if-eq v8, v10, :cond_10

    const/4 v10, 0x6

    if-eq v8, v10, :cond_12

    const/4 v10, 0x7

    if-eq v8, v10, :cond_11

    const/16 v7, 0x2a

    if-eq v8, v7, :cond_10

    const/16 v7, 0x2b

    if-eq v8, v7, :cond_f

    const/16 v0, 0x11

    packed-switch v8, :pswitch_data_0

    goto/16 :goto_b

    .line 40
    :pswitch_0
    invoke-direct {v1, v2, v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->E0(Lcom/join/mgps/adapter/ForumPostsAdapter$m0;I)V

    .line 41
    iget-object v0, v2, Lcom/join/mgps/adapter/ForumPostsAdapter$m0;->i:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v11, v12}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11, v12}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object v0, v2, Lcom/join/mgps/adapter/ForumPostsAdapter$m0;->j:Landroid/widget/TextView;

    const-string v7, "\u70b9\u51fb\u91cd\u65b0\u89e3\u538b"

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v0, v2, Lcom/join/mgps/adapter/ForumPostsAdapter$m0;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v6

    long-to-int v2, v6

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    const v0, 0x7f080a7b

    .line 44
    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundResource(I)V

    const-string v0, "\u89e3\u538b"

    .line 45
    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->A0(Landroid/view/View;Ljava/lang/CharSequence;)V

    const v0, 0x7f06002a

    .line 46
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->B0(Landroid/view/View;I)V

    goto/16 :goto_b

    .line 47
    :pswitch_1
    invoke-direct {v1, v2, v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->E0(Lcom/join/mgps/adapter/ForumPostsAdapter$m0;I)V

    .line 48
    iget-object v0, v2, Lcom/join/mgps/adapter/ForumPostsAdapter$m0;->i:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v11, v12}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11, v12}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v0, v2, Lcom/join/mgps/adapter/ForumPostsAdapter$m0;->j:Landroid/widget/TextView;

    const-string v7, "\u89e3\u538b\u4e2d.."

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v0, v2, Lcom/join/mgps/adapter/ForumPostsAdapter$m0;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v6

    long-to-int v2, v6

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    const v0, 0x7f0803ca

    .line 51
    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundResource(I)V

    const-string v0, "\u89e3\u538b\u4e2d"

    .line 52
    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->A0(Landroid/view/View;Ljava/lang/CharSequence;)V

    const v0, 0x7f060031

    .line 53
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->B0(Landroid/view/View;I)V

    goto/16 :goto_b

    :pswitch_2
    const/4 v0, 0x0

    .line 54
    invoke-direct {v1, v2, v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->E0(Lcom/join/mgps/adapter/ForumPostsAdapter$m0;I)V

    const v0, 0x7f080a67

    .line 55
    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundResource(I)V

    const-string v0, "\u5b89\u88c5"

    .line 56
    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->A0(Landroid/view/View;Ljava/lang/CharSequence;)V

    const v0, 0x7f060030

    .line 57
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->B0(Landroid/view/View;I)V

    goto/16 :goto_b

    :pswitch_3
    const/16 v0, 0x10

    .line 58
    invoke-direct {v1, v2, v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->E0(Lcom/join/mgps/adapter/ForumPostsAdapter$m0;I)V

    const v0, 0x7f080a62

    .line 59
    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundResource(I)V

    const-string v0, "\u7b49\u5f85"

    .line 60
    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->A0(Landroid/view/View;Ljava/lang/CharSequence;)V

    const v0, 0x7f06002a

    .line 61
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->B0(Landroid/view/View;I)V

    goto/16 :goto_b

    :pswitch_4
    const/4 v8, 0x0

    .line 62
    invoke-direct {v1, v2, v8}, Lcom/join/mgps/adapter/ForumPostsAdapter;->E0(Lcom/join/mgps/adapter/ForumPostsAdapter$m0;I)V

    const v0, 0x7f080a67

    .line 63
    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 64
    invoke-direct {v1, v4, v13}, Lcom/join/mgps/adapter/ForumPostsAdapter;->A0(Landroid/view/View;Ljava/lang/CharSequence;)V

    const v0, 0x7f060030

    .line 65
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->B0(Landroid/view/View;I)V

    goto/16 :goto_b

    :cond_f
    const v0, 0x7f080a67

    const/4 v8, 0x0

    .line 66
    invoke-direct {v1, v2, v8}, Lcom/join/mgps/adapter/ForumPostsAdapter;->E0(Lcom/join/mgps/adapter/ForumPostsAdapter$m0;I)V

    .line 67
    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundResource(I)V

    if-lez v15, :cond_18

    .line 68
    iget-object v0, v2, Lcom/join/mgps/adapter/ForumPostsAdapter$m0;->d:Landroid/widget/Button;

    invoke-virtual {v1, v0, v15}, Lcom/join/mgps/adapter/ForumPostsAdapter;->k0(Landroid/widget/TextView;I)V

    goto/16 :goto_b

    :cond_10
    const/4 v8, 0x0

    goto :goto_5

    :cond_11
    const/4 v0, 0x0

    goto/16 :goto_a

    :cond_12
    const v0, 0x7f080a62

    goto :goto_6

    .line 69
    :goto_5
    invoke-direct {v1, v2, v8}, Lcom/join/mgps/adapter/ForumPostsAdapter;->E0(Lcom/join/mgps/adapter/ForumPostsAdapter$m0;I)V

    const v2, 0x7f080a6e

    .line 70
    invoke-virtual {v4, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 71
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1100d2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->A0(Landroid/view/View;Ljava/lang/CharSequence;)V

    const v0, 0x7f060033

    .line 72
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->B0(Landroid/view/View;I)V

    goto/16 :goto_b

    .line 73
    :goto_6
    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundResource(I)V

    const-string v0, "\u7ee7\u7eed"

    .line 74
    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->A0(Landroid/view/View;Ljava/lang/CharSequence;)V

    const v0, 0x7f06002a

    .line 75
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->B0(Landroid/view/View;I)V

    const/16 v0, 0x10

    .line 76
    invoke-direct {v1, v2, v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->E0(Lcom/join/mgps/adapter/ForumPostsAdapter$m0;I)V

    .line 77
    :try_start_0
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v7

    cmp-long v0, v7, v17

    if-nez v0, :cond_13

    .line 78
    iget-object v0, v2, Lcom/join/mgps/adapter/ForumPostsAdapter$m0;->i:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11, v12}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 79
    :cond_13
    iget-object v0, v2, Lcom/join/mgps/adapter/ForumPostsAdapter$m0;->i:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11, v12}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    :goto_7
    iget-object v0, v2, Lcom/join/mgps/adapter/ForumPostsAdapter$m0;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v5

    long-to-int v6, v5

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :catch_0
    move-exception v0

    .line 81
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 82
    :goto_8
    iget-object v0, v2, Lcom/join/mgps/adapter/ForumPostsAdapter$m0;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_b

    .line 83
    :cond_14
    invoke-static {v6}, Lcom/join/mgps/Util/UtilsMy;->C3(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    const v0, 0x7f080a62

    .line 84
    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundResource(I)V

    const-string v0, "\u6682\u505c"

    .line 85
    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->A0(Landroid/view/View;Ljava/lang/CharSequence;)V

    const v0, 0x7f06002a

    .line 86
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->B0(Landroid/view/View;I)V

    const/16 v0, 0x10

    .line 87
    invoke-direct {v1, v2, v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->E0(Lcom/join/mgps/adapter/ForumPostsAdapter$m0;I)V

    .line 88
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v7

    cmp-long v0, v7, v17

    if-nez v0, :cond_15

    .line 89
    iget-object v0, v2, Lcom/join/mgps/adapter/ForumPostsAdapter$m0;->i:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11, v12}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 90
    :cond_15
    iget-object v0, v2, Lcom/join/mgps/adapter/ForumPostsAdapter$m0;->i:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11, v12}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    :goto_9
    iget-object v0, v2, Lcom/join/mgps/adapter/ForumPostsAdapter$m0;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v7

    long-to-int v5, v7

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 92
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    move-result-object v0

    .line 93
    iget-object v2, v2, Lcom/join/mgps/adapter/ForumPostsAdapter$m0;->j:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/S"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b

    .line 94
    :cond_16
    invoke-direct {v1, v4, v14}, Lcom/join/mgps/adapter/ForumPostsAdapter;->A0(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_b

    .line 95
    :goto_a
    invoke-direct {v1, v2, v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->E0(Lcom/join/mgps/adapter/ForumPostsAdapter$m0;I)V

    const v0, 0x7f080a67

    .line 96
    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundResource(I)V

    if-lez v15, :cond_17

    .line 97
    iget-object v0, v2, Lcom/join/mgps/adapter/ForumPostsAdapter$m0;->d:Landroid/widget/Button;

    invoke-virtual {v1, v0, v15}, Lcom/join/mgps/adapter/ForumPostsAdapter;->k0(Landroid/widget/TextView;I)V

    goto :goto_b

    .line 98
    :cond_17
    invoke-virtual {v1, v4, v7}, Lcom/join/mgps/adapter/ForumPostsAdapter;->j0(Landroid/view/View;I)V

    .line 99
    :cond_18
    :goto_b
    new-instance v0, Lcom/join/mgps/adapter/ForumPostsAdapter$f0;

    invoke-direct {v0, v1, v3}, Lcom/join/mgps/adapter/ForumPostsAdapter$f0;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter;Ljava/lang/Object;)V

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_19
    :goto_c
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public m0(Lcom/join/mgps/adapter/ForumPostsAdapter$i0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->p:Lcom/join/mgps/adapter/ForumPostsAdapter$i0;

    return-void
.end method

.method public n0(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/ForumPostsAdapter$u0;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->e:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public o()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->l:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 3
    invoke-static {}, Ljava/lang/System;->gc()V

    :cond_0
    return-void
.end method

.method public o0(Landroid/view/View;Lcom/join/mgps/adapter/ForumPostsAdapter$u0$c;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/ForumPostsAdapter$i;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/ForumPostsAdapter$i;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter;Lcom/join/mgps/adapter/ForumPostsAdapter$u0$c;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public p()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public p0(Landroid/view/View;Lcom/join/mgps/adapter/ForumPostsAdapter$u0$a;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/ForumPostsAdapter$h;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/ForumPostsAdapter$h;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter;Lcom/join/mgps/adapter/ForumPostsAdapter$u0$a;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method q(ILcom/join/mgps/dto/ForumBean$ForumCommentBean;IZZ)Lcom/join/mgps/adapter/ForumPostsAdapter$u0;
    .locals 9

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/ForumPostsAdapter$u0;

    sget-object v1, Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;->COMMENT_MESSAGE_REPLY:Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;

    new-instance v8, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$d;

    move-object v2, v8

    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$d;-><init>(ILcom/join/mgps/dto/ForumBean$ForumCommentBean;IZZ)V

    invoke-direct {v0, v1, v8}, Lcom/join/mgps/adapter/ForumPostsAdapter$u0;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;Ljava/lang/Object;)V

    return-object v0
.end method

.method public q0(Landroid/view/View;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/ForumPostsAdapter$g;

    invoke-direct {v0, p0}, Lcom/join/mgps/adapter/ForumPostsAdapter$g;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public r()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->c:Ljava/lang/String;

    return-object v0
.end method

.method public r0(Landroid/view/View;ZZIILjava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1
    new-instance v8, Lcom/join/mgps/adapter/ForumPostsAdapter$l;

    move-object v0, v8

    move-object v1, p0

    move v2, p4

    move v3, p2

    move v4, p3

    move v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/adapter/ForumPostsAdapter$l;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter;IZZILjava/lang/String;Ljava/lang/String;)V

    move-object v0, p1

    invoke-virtual {p1, v8}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public s0(Landroid/view/View;IILjava/lang/String;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "setOnCommentReplyReply"

    aput-object v2, v0, v1

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " rid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " rNickname="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/join/mgps/adapter/ForumPostsAdapter$j;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/join/mgps/adapter/ForumPostsAdapter$j;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter;IILjava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public t0(Landroid/view/View;I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/ForumPostsAdapter$f;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/ForumPostsAdapter$f;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public x0(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p2, Lcom/join/mgps/adapter/ForumPostsAdapter$o;

    invoke-direct {p2, p0, p3}, Lcom/join/mgps/adapter/ForumPostsAdapter$o;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method z(Ljava/lang/String;)Landroid/graphics/BitmapFactory$Options;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
