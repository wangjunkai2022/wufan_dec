.class public Lcom/join/mgps/customview/g0;
.super Landroid/widget/PopupWindow;
.source "PopBattleArea.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/g0$e;,
        Lcom/join/mgps/customview/g0$f;
    }
.end annotation


# instance fields
.field a:Landroid/view/View;

.field b:Landroid/view/View;

.field c:Landroid/view/View;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/TextView;

.field g:Landroid/widget/ImageView;

.field h:Landroid/widget/ImageView;

.field i:Landroid/widget/ImageView;

.field j:Landroid/view/View;

.field k:Landroid/view/View;

.field l:Landroid/view/View;

.field m:Landroid/widget/TextView;

.field n:Landroid/view/View;

.field o:Landroid/widget/ListView;

.field p:Lcom/join/mgps/customview/g0$e;

.field q:Lcom/join/mgps/customview/g0$f;

.field r:Landroid/os/Handler;

.field s:Landroid/content/Context;

.field public t:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/join/mgps/customview/g0$e;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    .line 2
    new-instance v0, Lcom/join/mgps/customview/g0$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/customview/g0$a;-><init>(Lcom/join/mgps/customview/g0;)V

    iput-object v0, p0, Lcom/join/mgps/customview/g0;->r:Landroid/os/Handler;

    .line 3
    iput-object p1, p0, Lcom/join/mgps/customview/g0;->s:Landroid/content/Context;

    .line 4
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0535

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f091285

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/customview/g0;->a:Landroid/view/View;

    const v1, 0x7f09128a

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/customview/g0;->b:Landroid/view/View;

    const v1, 0x7f091286

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/customview/g0;->c:Landroid/view/View;

    const v1, 0x7f0910d7

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/join/mgps/customview/g0;->d:Landroid/widget/TextView;

    const v1, 0x7f091176

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/join/mgps/customview/g0;->e:Landroid/widget/TextView;

    const v1, 0x7f091111

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/join/mgps/customview/g0;->f:Landroid/widget/TextView;

    const v1, 0x7f0907fc

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/join/mgps/customview/g0;->i:Landroid/widget/ImageView;

    const v1, 0x7f090825

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/join/mgps/customview/g0;->h:Landroid/widget/ImageView;

    const v1, 0x7f0907e5

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/join/mgps/customview/g0;->g:Landroid/widget/ImageView;

    const v1, 0x7f090d75

    .line 14
    invoke-static {v0, v1}, Lcom/join/mgps/Util/p2;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/customview/g0;->j:Landroid/view/View;

    const v1, 0x7f090d52

    .line 15
    invoke-static {v0, v1}, Lcom/join/mgps/Util/p2;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/customview/g0;->k:Landroid/view/View;

    const v1, 0x7f090d5e

    .line 16
    invoke-static {v0, v1}, Lcom/join/mgps/Util/p2;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/customview/g0;->l:Landroid/view/View;

    const v1, 0x7f09010f

    .line 17
    invoke-static {v0, v1}, Lcom/join/mgps/Util/p2;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/join/mgps/customview/g0;->m:Landroid/widget/TextView;

    const v1, 0x7f0907dc

    .line 18
    invoke-static {v0, v1}, Lcom/join/mgps/Util/p2;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/customview/g0;->n:Landroid/view/View;

    const v1, 0x7f0908e7

    .line 19
    invoke-static {v0, v1}, Lcom/join/mgps/Util/p2;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/join/mgps/customview/g0;->o:Landroid/widget/ListView;

    .line 20
    iget-object v1, p0, Lcom/join/mgps/customview/g0;->j:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iput-object p2, p0, Lcom/join/mgps/customview/g0;->p:Lcom/join/mgps/customview/g0$e;

    const v1, 0x7f090d57

    .line 22
    invoke-static {v0, v1}, Lcom/join/mgps/Util/p2;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090d78

    .line 23
    invoke-static {v0, v1}, Lcom/join/mgps/Util/p2;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090d5f

    .line 24
    invoke-static {v0, v1}, Lcom/join/mgps/Util/p2;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090418

    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/join/mgps/customview/g0$b;

    invoke-direct {v2, p0}, Lcom/join/mgps/customview/g0$b;-><init>(Lcom/join/mgps/customview/g0;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 28
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setWidth(I)V

    const/4 p1, -0x2

    .line 29
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 30
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->update()V

    .line 31
    invoke-direct {p0}, Lcom/join/mgps/customview/g0;->e()V

    .line 32
    new-instance p1, Lcom/join/mgps/customview/g0$f;

    invoke-direct {p1, p0}, Lcom/join/mgps/customview/g0$f;-><init>(Lcom/join/mgps/customview/g0;)V

    iput-object p1, p0, Lcom/join/mgps/customview/g0;->q:Lcom/join/mgps/customview/g0$f;

    .line 33
    iget-object v0, p0, Lcom/join/mgps/customview/g0;->o:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 34
    iget-object p1, p0, Lcom/join/mgps/customview/g0;->o:Landroid/widget/ListView;

    new-instance v0, Lcom/join/mgps/customview/g0$c;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/customview/g0$c;-><init>(Lcom/join/mgps/customview/g0;Lcom/join/mgps/customview/g0$e;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private d(Landroid/view/View;ZLandroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    const p2, 0x7f0801a0

    goto :goto_0

    :cond_0
    const p2, 0x7f08019e

    .line 1
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    if-eqz p4, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    const/16 p1, 0x8

    .line 2
    :goto_1
    invoke-virtual {p3, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private e()V
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 5
    new-instance v0, Lcom/join/mgps/customview/g0$d;

    invoke-direct {v0, p0}, Lcom/join/mgps/customview/g0$d;-><init>(Lcom/join/mgps/customview/g0;)V

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/papa91/battle/protocol/BattleArea;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/join/mgps/customview/g0;->j:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p2, p0, Lcom/join/mgps/customview/g0;->j:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3
    :goto_0
    iget-object p2, p0, Lcom/join/mgps/customview/g0;->m:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/join/mgps/socket/fight/arena/c;->d(Lcom/papa91/battle/protocol/BattleArea;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public b(Ljava/util/concurrent/ConcurrentHashMap;Lapp/mgsim/arena/AreaInfo;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lapp/mgsim/arena/AreaInfo;",
            ">;",
            "Lapp/mgsim/arena/AreaInfo;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->elements()Ljava/util/Enumeration;

    move-result-object p1

    .line 2
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lapp/mgsim/arena/AreaInfo;

    .line 4
    invoke-virtual {v0}, Lapp/mgsim/arena/AreaInfo;->getArea()I

    move-result v1

    const/4 v2, 0x0

    const-string v3, "\u4eba"

    const-string v4, "\u5728\u7ebf\uff1a"

    const/4 v5, 0x1

    if-ne v1, v5, :cond_2

    .line 5
    iget-object v1, p0, Lcom/join/mgps/customview/g0;->d:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lapp/mgsim/arena/AreaInfo;->getOnLinePeopleCounts()I

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v1, p0, Lcom/join/mgps/customview/g0;->a:Landroid/view/View;

    invoke-virtual {v0}, Lapp/mgsim/arena/AreaInfo;->getPingTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/join/mgps/socket/fight/arena/c;->m(J)Z

    move-result v3

    iget-object v4, p0, Lcom/join/mgps/customview/g0;->g:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lapp/mgsim/arena/AreaInfo;->getArea()I

    move-result v6

    invoke-virtual {p2}, Lapp/mgsim/arena/AreaInfo;->getArea()I

    move-result v7

    if-ne v6, v7, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-direct {p0, v1, v3, v4, v2}, Lcom/join/mgps/customview/g0;->d(Landroid/view/View;ZLandroid/view/View;Z)V

    .line 7
    invoke-virtual {v0}, Lapp/mgsim/arena/AreaInfo;->getArea()I

    move-result v0

    invoke-virtual {p2}, Lapp/mgsim/arena/AreaInfo;->getArea()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 8
    iget-object v0, p0, Lcom/join/mgps/customview/g0;->m:Landroid/widget/TextView;

    const-string v1, "\u5317\u4eac\u533a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {v0}, Lapp/mgsim/arena/AreaInfo;->getArea()I

    move-result v1

    const/4 v6, 0x2

    if-ne v1, v6, :cond_4

    .line 10
    iget-object v1, p0, Lcom/join/mgps/customview/g0;->e:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lapp/mgsim/arena/AreaInfo;->getOnLinePeopleCounts()I

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v1, p0, Lcom/join/mgps/customview/g0;->b:Landroid/view/View;

    invoke-virtual {v0}, Lapp/mgsim/arena/AreaInfo;->getPingTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/join/mgps/socket/fight/arena/c;->m(J)Z

    move-result v3

    iget-object v4, p0, Lcom/join/mgps/customview/g0;->h:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lapp/mgsim/arena/AreaInfo;->getArea()I

    move-result v6

    invoke-virtual {p2}, Lapp/mgsim/arena/AreaInfo;->getArea()I

    move-result v7

    if-ne v6, v7, :cond_3

    const/4 v2, 0x1

    :cond_3
    invoke-direct {p0, v1, v3, v4, v2}, Lcom/join/mgps/customview/g0;->d(Landroid/view/View;ZLandroid/view/View;Z)V

    .line 12
    invoke-virtual {v0}, Lapp/mgsim/arena/AreaInfo;->getArea()I

    move-result v0

    invoke-virtual {p2}, Lapp/mgsim/arena/AreaInfo;->getArea()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 13
    iget-object v0, p0, Lcom/join/mgps/customview/g0;->m:Landroid/widget/TextView;

    const-string v1, "\u4e0a\u6d77\u533a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 14
    :cond_4
    invoke-virtual {v0}, Lapp/mgsim/arena/AreaInfo;->getArea()I

    move-result v1

    const/4 v6, 0x3

    if-ne v1, v6, :cond_0

    .line 15
    iget-object v1, p0, Lcom/join/mgps/customview/g0;->f:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lapp/mgsim/arena/AreaInfo;->getOnLinePeopleCounts()I

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object v1, p0, Lcom/join/mgps/customview/g0;->c:Landroid/view/View;

    invoke-virtual {v0}, Lapp/mgsim/arena/AreaInfo;->getPingTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/join/mgps/socket/fight/arena/c;->m(J)Z

    move-result v3

    iget-object v4, p0, Lcom/join/mgps/customview/g0;->i:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lapp/mgsim/arena/AreaInfo;->getArea()I

    move-result v6

    invoke-virtual {p2}, Lapp/mgsim/arena/AreaInfo;->getArea()I

    move-result v7

    if-ne v6, v7, :cond_5

    const/4 v2, 0x1

    :cond_5
    invoke-direct {p0, v1, v3, v4, v2}, Lcom/join/mgps/customview/g0;->d(Landroid/view/View;ZLandroid/view/View;Z)V

    .line 17
    invoke-virtual {v0}, Lapp/mgsim/arena/AreaInfo;->getArea()I

    move-result v0

    invoke-virtual {p2}, Lapp/mgsim/arena/AreaInfo;->getArea()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 18
    iget-object v0, p0, Lcom/join/mgps/customview/g0;->m:Landroid/widget/TextView;

    const-string v1, "\u5e7f\u4e1c\u533a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method public c(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameConfig;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/g0;->q:Lcom/join/mgps/customview/g0$f;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/join/mgps/customview/g0$f;

    invoke-direct {v0, p0}, Lcom/join/mgps/customview/g0$f;-><init>(Lcom/join/mgps/customview/g0;)V

    iput-object v0, p0, Lcom/join/mgps/customview/g0;->q:Lcom/join/mgps/customview/g0$f;

    .line 3
    iget-object v1, p0, Lcom/join/mgps/customview/g0;->o:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/g0;->q:Lcom/join/mgps/customview/g0$f;

    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/g0$f;->c(Ljava/util/List;)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/customview/g0;->q:Lcom/join/mgps/customview/g0$f;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/g0;->n:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/g0;->r:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/g0;->n:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/g0;->r:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method h()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/g0;->n:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/customview/g0;->f()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/customview/g0;->g()V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090d75

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/customview/g0;->h()V

    goto :goto_0

    :cond_0
    const v0, 0x7f090d57

    if-ne p1, v0, :cond_1

    .line 3
    iget-object p1, p0, Lcom/join/mgps/customview/g0;->p:Lcom/join/mgps/customview/g0$e;

    sget-object v0, Lcom/papa91/battle/protocol/BattleArea;->BJ:Lcom/papa91/battle/protocol/BattleArea;

    invoke-interface {p1, v0}, Lcom/join/mgps/customview/g0$e;->a(Lcom/papa91/battle/protocol/BattleArea;)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    :cond_1
    const v0, 0x7f090d78

    if-ne p1, v0, :cond_2

    .line 5
    iget-object p1, p0, Lcom/join/mgps/customview/g0;->p:Lcom/join/mgps/customview/g0$e;

    sget-object v0, Lcom/papa91/battle/protocol/BattleArea;->SH:Lcom/papa91/battle/protocol/BattleArea;

    invoke-interface {p1, v0}, Lcom/join/mgps/customview/g0$e;->a(Lcom/papa91/battle/protocol/BattleArea;)V

    .line 6
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    :cond_2
    const v0, 0x7f090d5f

    if-ne p1, v0, :cond_3

    .line 7
    iget-object p1, p0, Lcom/join/mgps/customview/g0;->p:Lcom/join/mgps/customview/g0$e;

    sget-object v0, Lcom/papa91/battle/protocol/BattleArea;->GZ:Lcom/papa91/battle/protocol/BattleArea;

    invoke-interface {p1, v0}, Lcom/join/mgps/customview/g0$e;->a(Lcom/papa91/battle/protocol/BattleArea;)V

    .line 8
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_3
    :goto_0
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/g0;->t:Landroid/view/View;

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ne v0, v1, :cond_0

    .line 3
    :try_start_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/customview/g0;->t:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 5
    iget-object v1, p0, Lcom/join/mgps/customview/g0;->t:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v0

    .line 6
    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 8
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    return-void
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/g0;->t:Landroid/view/View;

    .line 2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method
