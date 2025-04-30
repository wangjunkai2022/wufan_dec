.class public Lcom/join/mgps/adapter/c;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ChoiceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/c$b0;,
        Lcom/join/mgps/adapter/c$c0;,
        Lcom/join/mgps/adapter/c$n;,
        Lcom/join/mgps/adapter/c$x;,
        Lcom/join/mgps/adapter/c$m;,
        Lcom/join/mgps/adapter/c$a0;,
        Lcom/join/mgps/adapter/c$y;,
        Lcom/join/mgps/adapter/c$z;,
        Lcom/join/mgps/adapter/c$o;,
        Lcom/join/mgps/adapter/c$v;,
        Lcom/join/mgps/adapter/c$t;,
        Lcom/join/mgps/adapter/c$w;,
        Lcom/join/mgps/adapter/c$u;,
        Lcom/join/mgps/adapter/c$s;,
        Lcom/join/mgps/adapter/c$f0;,
        Lcom/join/mgps/adapter/c$e0;,
        Lcom/join/mgps/adapter/c$d0;,
        Lcom/join/mgps/adapter/c$g0;,
        Lcom/join/mgps/adapter/c$h0;,
        Lcom/join/mgps/adapter/c$i0;,
        Lcom/join/mgps/adapter/c$p;,
        Lcom/join/mgps/adapter/c$q;,
        Lcom/join/mgps/adapter/c$r;
    }
.end annotation


# static fields
.field public static final f:I = 0x0

.field public static final g:I = 0x1

.field public static final h:I = 0x2

.field public static final i:I = 0x3

.field public static final j:I = 0x4

.field public static final k:I = 0x5

.field public static final l:I = 0x6

.field public static final m:I = 0x7

.field public static final n:I = 0x8

.field public static final o:I = 0x9

.field public static final p:I = 0xa

.field public static final q:I = 0xb

.field public static final r:I = 0xc

.field public static final s:I = 0xd

.field public static final t:I = 0xe

.field public static final u:I = 0xf

.field public static final v:I = 0x10

.field public static final w:I = 0x11


# instance fields
.field private final a:Landroid/content/Context;

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/c$i0;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field d:Lcom/join/mgps/adapter/c$r;

.field private volatile e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/c$i0;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/16 v0, 0x12

    .line 2
    iput v0, p0, Lcom/join/mgps/adapter/c;->e:I

    .line 3
    iput-object p1, p0, Lcom/join/mgps/adapter/c;->a:Landroid/content/Context;

    .line 4
    invoke-virtual {p0, p2}, Lcom/join/mgps/adapter/c;->D(Ljava/util/List;)V

    return-void
.end method

.method private A(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0, p2}, Lcom/join/mgps/adapter/c;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/adapter/c$i0;

    .line 2
    check-cast p1, Lcom/join/mgps/adapter/c$g0;

    .line 3
    invoke-virtual {p2}, Lcom/join/mgps/adapter/c$i0;->d()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p1, Lcom/join/mgps/adapter/c$g0;->b:Landroid/widget/TextView;

    const-string v1, "\u6765\u81ea\u4f60\u7684\u6d4f\u89c8\u63a8\u8350"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p1, Lcom/join/mgps/adapter/c$g0;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 6
    :cond_1
    invoke-virtual {p2}, Lcom/join/mgps/adapter/c$i0;->d()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 7
    iget-object p2, p1, Lcom/join/mgps/adapter/c$g0;->b:Landroid/widget/TextView;

    const-string v0, "\u6765\u81ea\u5e7f\u544a\u8d5e\u52a9"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object p1, p1, Lcom/join/mgps/adapter/c$g0;->c:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object p2, p1, Lcom/join/mgps/adapter/c$g0;->b:Landroid/widget/TextView;

    const-string v0, "\u6765\u81ea\u7f16\u8f91\u63a8\u8350"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object p1, p1, Lcom/join/mgps/adapter/c$g0;->c:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/join/mgps/adapter/c;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/c;->a:Landroid/content/Context;

    return-object p0
.end method

.method private b(Landroid/content/Context;)Lcom/facebook/drawee/generic/RoundingParams;
    .locals 0

    .line 1
    new-instance p1, Lcom/facebook/drawee/generic/RoundingParams;

    invoke-direct {p1}, Lcom/facebook/drawee/generic/RoundingParams;-><init>()V

    return-object p1
.end method

.method private f(Landroid/content/Context;)Lcom/facebook/drawee/generic/RoundingParams;
    .locals 2

    .line 1
    new-instance v0, Lcom/facebook/drawee/generic/RoundingParams;

    invoke-direct {v0}, Lcom/facebook/drawee/generic/RoundingParams;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f070c7d

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, p1, p1, v1, v1}, Lcom/facebook/drawee/generic/RoundingParams;->q(FFFF)Lcom/facebook/drawee/generic/RoundingParams;

    return-object v0
.end method

.method private k(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    return-void
.end method

.method private l(Lcom/join/mgps/adapter/c$n;I)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0, p2}, Lcom/join/mgps/adapter/c;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/adapter/c$i0;

    .line 2
    iget-object v0, p1, Lcom/join/mgps/adapter/c$n;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p2}, Lcom/join/mgps/adapter/c$i0;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/BannerBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/BannerBean;->getPic_remote()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/adapter/c;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/join/android/app/common/utils/MyImageLoader;->z(Landroid/content/Context;)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/join/android/app/common/utils/MyImageLoader;->j(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 3
    iget-object p1, p1, Lcom/join/mgps/adapter/c$n;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    new-instance v0, Lcom/join/mgps/adapter/c$a;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/c$a;-><init>(Lcom/join/mgps/adapter/c;Lcom/join/mgps/adapter/c$i0;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private m(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    return-void
.end method

.method private n(Lcom/join/mgps/adapter/c$s;I)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0, p2}, Lcom/join/mgps/adapter/c;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/adapter/c$i0;

    .line 2
    iget-object v0, p1, Lcom/join/mgps/adapter/c$s;->b:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/join/mgps/adapter/c$i0;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "yyyy\u5e74MM\u6708dd\u65e5"

    invoke-static {v2, v1}, Lcom/join/android/app/common/utils/c;->h(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p1, Lcom/join/mgps/adapter/c$s;->c:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/join/mgps/adapter/c$i0;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    mul-long v0, v0, v3

    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/c;->f(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private o(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/join/mgps/adapter/c$t;

    .line 2
    invoke-virtual {p0, p2}, Lcom/join/mgps/adapter/c;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/adapter/c$i0;

    if-eqz p2, :cond_1

    .line 3
    invoke-virtual {p2}, Lcom/join/mgps/adapter/c$i0;->a()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    iget-object v0, v0, Lcom/join/mgps/adapter/c$t;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p2}, Lcom/join/mgps/adapter/c$i0;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/InformationListDataBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/InformationListDataBean;->getMaterial()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 5
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/join/mgps/adapter/c$k;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/c$k;-><init>(Lcom/join/mgps/adapter/c;Lcom/join/mgps/adapter/c$i0;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method private p(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/join/mgps/adapter/c$u;

    .line 2
    invoke-virtual {p0, p2}, Lcom/join/mgps/adapter/c;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/adapter/c$i0;

    if-eqz p2, :cond_1

    .line 3
    invoke-virtual {p2}, Lcom/join/mgps/adapter/c$i0;->a()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    iget-object v0, v0, Lcom/join/mgps/adapter/c$u;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p2}, Lcom/join/mgps/adapter/c$i0;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/TodayWufunBroadcast;

    invoke-virtual {v1}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getPic()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 5
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/join/mgps/adapter/c$i;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/c$i;-><init>(Lcom/join/mgps/adapter/c;Lcom/join/mgps/adapter/c$i0;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method private q(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/join/mgps/adapter/c$v;

    .line 2
    invoke-virtual {p0, p2}, Lcom/join/mgps/adapter/c;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/adapter/c$i0;

    if-eqz p2, :cond_2

    .line 3
    invoke-virtual {p2}, Lcom/join/mgps/adapter/c$i0;->a()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 4
    iget-object v1, v0, Lcom/join/mgps/adapter/c$v;->c:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/join/mgps/adapter/c$i0;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/InformationListDataBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/InformationListDataBean;->getGame_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v1, v0, Lcom/join/mgps/adapter/c$v;->g:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/join/mgps/adapter/c$i0;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/InformationListDataBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/InformationListDataBean;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    invoke-virtual {p2}, Lcom/join/mgps/adapter/c$i0;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/InformationListDataBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/InformationListDataBean;->getScore_count()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 7
    iget-object v1, v0, Lcom/join/mgps/adapter/c$v;->f:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    iget-object v0, v0, Lcom/join/mgps/adapter/c$v;->f:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/join/mgps/adapter/c$i0;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/InformationListDataBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/InformationListDataBean;->getScore_count()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, v0, Lcom/join/mgps/adapter/c$v;->f:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10
    :goto_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/join/mgps/adapter/c$l;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/c$l;-><init>(Lcom/join/mgps/adapter/c;Lcom/join/mgps/adapter/c$i0;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method private r(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/join/mgps/adapter/c$w;

    .line 2
    invoke-virtual {p0, p2}, Lcom/join/mgps/adapter/c;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/adapter/c$i0;

    if-eqz p2, :cond_2

    .line 3
    invoke-virtual {p2}, Lcom/join/mgps/adapter/c$i0;->a()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 4
    iget-object v1, v0, Lcom/join/mgps/adapter/c$w;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p2}, Lcom/join/mgps/adapter/c$i0;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/TodayWufunBroadcast;

    invoke-virtual {v2}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getIco_remote()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/join/mgps/adapter/c;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/join/android/app/common/utils/MyImageLoader;->z(Landroid/content/Context;)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/join/android/app/common/utils/MyImageLoader;->j(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 5
    iget-object v1, v0, Lcom/join/mgps/adapter/c$w;->c:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/join/mgps/adapter/c$i0;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/TodayWufunBroadcast;

    invoke-virtual {v2}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getGame_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v1, v0, Lcom/join/mgps/adapter/c$w;->g:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/join/mgps/adapter/c$i0;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/TodayWufunBroadcast;

    invoke-virtual {v2}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    invoke-virtual {p2}, Lcom/join/mgps/adapter/c$i0;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/TodayWufunBroadcast;

    invoke-virtual {v1}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getScore_count()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 8
    iget-object v1, v0, Lcom/join/mgps/adapter/c$w;->f:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9
    iget-object v0, v0, Lcom/join/mgps/adapter/c$w;->f:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/join/mgps/adapter/c$i0;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/TodayWufunBroadcast;

    invoke-virtual {v2}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getScore_count()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, v0, Lcom/join/mgps/adapter/c$w;->f:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11
    :goto_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/join/mgps/adapter/c$j;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/c$j;-><init>(Lcom/join/mgps/adapter/c;Lcom/join/mgps/adapter/c$i0;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method private s(Lcom/join/mgps/adapter/c$y;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0, p2}, Lcom/join/mgps/adapter/c;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/adapter/c$i0;

    .line 2
    invoke-virtual {p2}, Lcom/join/mgps/adapter/c$i0;->a()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p1, Lcom/join/mgps/adapter/c$y;->b:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_3

    .line 4
    iget-object v0, p0, Lcom/join/mgps/adapter/c;->d:Lcom/join/mgps/adapter/c$r;

    if-nez v0, :cond_2

    .line 5
    new-instance v0, Lcom/join/mgps/adapter/c$r;

    iget-object v1, p0, Lcom/join/mgps/adapter/c;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/join/mgps/adapter/c$r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/adapter/c;->d:Lcom/join/mgps/adapter/c$r;

    .line 6
    :cond_2
    iget-object p1, p1, Lcom/join/mgps/adapter/c$y;->b:Landroid/widget/GridView;

    iget-object v0, p0, Lcom/join/mgps/adapter/c;->d:Lcom/join/mgps/adapter/c$r;

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 7
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/adapter/c;->d:Lcom/join/mgps/adapter/c$r;

    invoke-virtual {p2}, Lcom/join/mgps/adapter/c$i0;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/dto/TodayWufunEmuClassify;

    invoke-virtual {p1, p2}, Lcom/join/mgps/adapter/c$r;->e(Lcom/join/mgps/dto/TodayWufunEmuClassify;)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/adapter/c;->d:Lcom/join/mgps/adapter/c$r;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private t(Lcom/join/mgps/adapter/c$z;I)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0, p2}, Lcom/join/mgps/adapter/c;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/adapter/c$i0;

    .line 2
    invoke-virtual {p2}, Lcom/join/mgps/adapter/c$i0;->a()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/join/mgps/adapter/c;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 4
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/join/mgps/adapter/c;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07110e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/join/mgps/adapter/c;->a:Landroid/content/Context;

    .line 5
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07113b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const v2, 0x7f080b25

    .line 6
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 7
    iget-object v0, p1, Lcom/join/mgps/adapter/c$z;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v0, 0x0

    .line 8
    :goto_0
    invoke-virtual {p2}, Lcom/join/mgps/adapter/c$i0;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 9
    iget-object v3, p0, Lcom/join/mgps/adapter/c;->a:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0c00ca

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 10
    invoke-virtual {p2}, Lcom/join/mgps/adapter/c$i0;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/TodayWufunEmuClassify;

    invoke-virtual {v4}, Lcom/join/mgps/dto/TodayWufunEmuClassify;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-lez v0, :cond_2

    .line 11
    new-instance v4, Landroid/view/View;

    iget-object v5, p0, Lcom/join/mgps/adapter/c;->a:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 12
    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    invoke-virtual {v4, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 14
    iget-object v5, p1, Lcom/join/mgps/adapter/c$z;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 15
    :cond_2
    iget v4, p0, Lcom/join/mgps/adapter/c;->c:I

    invoke-virtual {p2}, Lcom/join/mgps/adapter/c$i0;->a()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/dto/TodayWufunEmuClassify;

    invoke-virtual {v5}, Lcom/join/mgps/dto/TodayWufunEmuClassify;->getId()I

    move-result v5

    if-ne v4, v5, :cond_3

    const/4 v4, 0x1

    .line 16
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 17
    invoke-virtual {p2}, Lcom/join/mgps/adapter/c$i0;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/TodayWufunEmuClassify;

    invoke-virtual {p0, v4}, Lcom/join/mgps/adapter/c;->B(Lcom/join/mgps/dto/TodayWufunEmuClassify;)V

    .line 18
    :cond_3
    iget-object v4, p1, Lcom/join/mgps/adapter/c$z;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 19
    iget-object v4, p1, Lcom/join/mgps/adapter/c$z;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Lcom/join/mgps/adapter/c$i0;->a()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/dto/TodayWufunEmuClassify;

    invoke-virtual {p0, v4, v3, v5}, Lcom/join/mgps/adapter/c;->E(Landroid/view/ViewGroup;Landroid/view/View;Lcom/join/mgps/dto/TodayWufunEmuClassify;)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method private u(Lcom/join/mgps/adapter/c$a0;I)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0, p2}, Lcom/join/mgps/adapter/c;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/adapter/c$i0;

    .line 2
    invoke-virtual {p2}, Lcom/join/mgps/adapter/c$i0;->a()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-virtual {p2}, Lcom/join/mgps/adapter/c$i0;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    const/4 v1, 0x3

    if-ge v0, v1, :cond_2

    .line 4
    invoke-virtual {p2}, Lcom/join/mgps/adapter/c$i0;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/BannerBean;

    .line 5
    iget-object v2, p1, Lcom/join/mgps/adapter/c$a0;->d:[Landroid/widget/TextView;

    aget-object v2, v2, v0

    invoke-virtual {v1}, Lcom/join/mgps/dto/BannerBean;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v2, p1, Lcom/join/mgps/adapter/c$a0;->e:[Landroid/widget/TextView;

    aget-object v2, v2, v0

    invoke-virtual {v1}, Lcom/join/mgps/dto/BannerBean;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v2, p1, Lcom/join/mgps/adapter/c$a0;->c:[Lcom/facebook/drawee/view/SimpleDraweeView;

    aget-object v2, v2, v0

    invoke-virtual {v1}, Lcom/join/mgps/dto/BannerBean;->getPic_remote()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/join/mgps/adapter/c;->a:Landroid/content/Context;

    invoke-direct {p0, v4}, Lcom/join/mgps/adapter/c;->f(Landroid/content/Context;)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/join/android/app/common/utils/MyImageLoader;->j(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 8
    iget-object v2, p1, Lcom/join/mgps/adapter/c$a0;->b:[Landroid/view/View;

    aget-object v2, v2, v0

    new-instance v3, Lcom/join/mgps/adapter/c$e;

    invoke-direct {v3, p0, v1}, Lcom/join/mgps/adapter/c$e;-><init>(Lcom/join/mgps/adapter/c;Lcom/join/mgps/dto/BannerBean;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private v(Lcom/join/mgps/adapter/c$b0;I)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0, p2}, Lcom/join/mgps/adapter/c;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/adapter/c$i0;

    .line 2
    iget-object v0, p1, Lcom/join/mgps/adapter/c$b0;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p2}, Lcom/join/mgps/adapter/c$i0;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/TodayWufunBroadcast;

    invoke-virtual {v1}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getGame_img()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/adapter/c;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/join/android/app/common/utils/MyImageLoader;->z(Landroid/content/Context;)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/join/android/app/common/utils/MyImageLoader;->j(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 3
    iget-object v0, p1, Lcom/join/mgps/adapter/c$b0;->c:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/join/mgps/adapter/c$i0;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/TodayWufunBroadcast;

    invoke-virtual {v1}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getGame_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p1, Lcom/join/mgps/adapter/c$b0;->d:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/join/mgps/adapter/c$i0;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/TodayWufunBroadcast;

    invoke-virtual {v1}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getGame_desc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p1, Lcom/join/mgps/adapter/c$b0;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/adapter/c;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110083

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p2}, Lcom/join/mgps/adapter/c$i0;->a()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/dto/TodayWufunBroadcast;

    invoke-virtual {v5}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getOnline_time()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/join/mgps/adapter/c$b;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/c$b;-><init>(Lcom/join/mgps/adapter/c;Lcom/join/mgps/adapter/c$i0;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private w(Lcom/join/mgps/adapter/c$c0;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0, p2}, Lcom/join/mgps/adapter/c;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/adapter/c$i0;

    .line 2
    invoke-virtual {p2}, Lcom/join/mgps/adapter/c$i0;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object p1, p1, Lcom/join/mgps/adapter/c$c0;->b:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p1, Lcom/join/mgps/adapter/c$c0;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object p1, p1, Lcom/join/mgps/adapter/c$c0;->b:Landroid/view/View;

    new-instance v0, Lcom/join/mgps/adapter/c$c;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/c$c;-><init>(Lcom/join/mgps/adapter/c;Lcom/join/mgps/adapter/c$i0;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method private x(Lcom/join/mgps/adapter/c$d0;I)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0, p2}, Lcom/join/mgps/adapter/c;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/adapter/c$i0;

    .line 2
    invoke-virtual {p2}, Lcom/join/mgps/adapter/c$i0;->a()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p1, Lcom/join/mgps/adapter/c$d0;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v1, 0x7f060094

    invoke-virtual {p2}, Lcom/join/mgps/adapter/c$i0;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/TodayWufunBroadcast;

    invoke-virtual {v2}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getGame_img()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 4
    iget-object v0, p1, Lcom/join/mgps/adapter/c$d0;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p2}, Lcom/join/mgps/adapter/c$i0;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/TodayWufunBroadcast;

    invoke-virtual {v1}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getIco_remote()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/adapter/c;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/join/android/app/common/utils/MyImageLoader;->z(Landroid/content/Context;)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/join/android/app/common/utils/MyImageLoader;->j(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 5
    iget-object v0, p1, Lcom/join/mgps/adapter/c$d0;->e:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/join/mgps/adapter/c$i0;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/TodayWufunBroadcast;

    invoke-virtual {v1}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getGame_desc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p1, Lcom/join/mgps/adapter/c$d0;->d:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/join/mgps/adapter/c$i0;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/TodayWufunBroadcast;

    invoke-virtual {v1}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getGame_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    invoke-virtual {p2}, Lcom/join/mgps/adapter/c$i0;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/TodayWufunBroadcast;

    invoke-virtual {v0}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getScore_count()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 8
    iget-object v0, p1, Lcom/join/mgps/adapter/c$d0;->f:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9
    iget-object v0, p1, Lcom/join/mgps/adapter/c$d0;->f:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/join/mgps/adapter/c$i0;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/TodayWufunBroadcast;

    invoke-virtual {v2}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getScore_count()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 10
    :cond_2
    iget-object v0, p1, Lcom/join/mgps/adapter/c$d0;->f:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11
    :goto_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/join/mgps/adapter/c$f;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/c$f;-><init>(Lcom/join/mgps/adapter/c;Lcom/join/mgps/adapter/c$i0;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private y(Lcom/join/mgps/adapter/c$e0;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0, p2}, Lcom/join/mgps/adapter/c;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/adapter/c$i0;

    .line 2
    invoke-virtual {p2}, Lcom/join/mgps/adapter/c$i0;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p1, Lcom/join/mgps/adapter/c$e0;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p2}, Lcom/join/mgps/adapter/c$i0;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/TodayWufunBroadcast;

    invoke-virtual {v1}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getGame_img()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 4
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/join/mgps/adapter/c$g;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/c$g;-><init>(Lcom/join/mgps/adapter/c;Lcom/join/mgps/adapter/c$i0;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method private z(Lcom/join/mgps/adapter/c$f0;I)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0, p2}, Lcom/join/mgps/adapter/c;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/adapter/c$i0;

    .line 2
    invoke-virtual {p2}, Lcom/join/mgps/adapter/c$i0;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p1, Lcom/join/mgps/adapter/c$f0;->c:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/join/mgps/adapter/c$i0;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/TodayWufunBroadcast;

    invoke-virtual {v1}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getGame_desc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p1, Lcom/join/mgps/adapter/c$f0;->b:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/join/mgps/adapter/c$i0;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/TodayWufunBroadcast;

    invoke-virtual {v1}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getGame_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {p2}, Lcom/join/mgps/adapter/c$i0;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/TodayWufunBroadcast;

    invoke-virtual {v0}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getScore_count()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 6
    iget-object v0, p1, Lcom/join/mgps/adapter/c$f0;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    iget-object v0, p1, Lcom/join/mgps/adapter/c$f0;->d:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/join/mgps/adapter/c$i0;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/TodayWufunBroadcast;

    invoke-virtual {v2}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getScore_count()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p1, Lcom/join/mgps/adapter/c$f0;->d:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9
    :goto_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/join/mgps/adapter/c$h;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/c$h;-><init>(Lcom/join/mgps/adapter/c;Lcom/join/mgps/adapter/c$i0;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public B(Lcom/join/mgps/dto/TodayWufunEmuClassify;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/TodayWufunEmuClassify;->getId()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/adapter/c;->c:I

    .line 2
    iget-object v0, p0, Lcom/join/mgps/adapter/c;->d:Lcom/join/mgps/adapter/c$r;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/adapter/c;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/join/mgps/adapter/c$r;

    iget-object v1, p0, Lcom/join/mgps/adapter/c;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/join/mgps/adapter/c$r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/adapter/c;->d:Lcom/join/mgps/adapter/c$r;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/c;->d:Lcom/join/mgps/adapter/c$r;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, p1}, Lcom/join/mgps/adapter/c$r;->e(Lcom/join/mgps/dto/TodayWufunEmuClassify;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/adapter/c;->d:Lcom/join/mgps/adapter/c$r;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public C(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/adapter/c;->c:I

    return-void
.end method

.method public D(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/c$i0;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/c;->b:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/adapter/c;->b:Ljava/util/List;

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/adapter/c;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public E(Landroid/view/ViewGroup;Landroid/view/View;Lcom/join/mgps/dto/TodayWufunEmuClassify;)V
    .locals 1

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/c$d;

    invoke-direct {v0, p0, p1, p3}, Lcom/join/mgps/adapter/c$d;-><init>(Lcom/join/mgps/adapter/c;Landroid/view/ViewGroup;Lcom/join/mgps/dto/TodayWufunEmuClassify;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public c()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/c;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/adapter/c;->c:I

    return v0
.end method

.method public e(Landroid/widget/TextView;Ljava/lang/String;I)Ljava/lang/String;
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/adapter/c;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 3
    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v0, p1

    float-to-double v1, v0

    int-to-double v3, p3

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    .line 4
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v3, v5

    cmpl-double p1, v1, v3

    if-lez p1, :cond_0

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 p3, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v3

    double-to-int v0, v0

    invoke-virtual {p2, p3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "..."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p2
.end method

.method public g()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/adapter/c;->e:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/c;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/adapter/c;->c()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/c;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/adapter/c;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/c$i0;

    invoke-virtual {p1}, Lcom/join/mgps/adapter/c$i0;->g()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 3
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/IntentDateBean;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p2}, Lcom/join/mgps/Util/IntentDateBean;->setTpl_type(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, p3}, Lcom/join/mgps/Util/IntentDateBean;->setJump_type(I)V

    .line 6
    new-instance p1, Lcom/join/mgps/dto/ExtBean;

    invoke-direct {p1}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 7
    invoke-virtual {p1, p4}, Lcom/join/mgps/dto/ExtBean;->set_from_type(I)Lcom/join/mgps/dto/ExtBean;

    .line 8
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/IntentDateBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    .line 9
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    iget-object p2, p0, Lcom/join/mgps/adapter/c;->a:Landroid/content/Context;

    invoke-virtual {p1, p2, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    const/4 v1, 0x6

    .line 2
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 3
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    iget-object v1, p0, Lcom/join/mgps/adapter/c;->a:Landroid/content/Context;

    invoke-virtual {p1, v1, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    return-void
.end method

.method j(Lcom/join/mgps/dto/BannerBean;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/BannerBean;->getLink_type()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/BannerBean;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/BannerBean;->getTpl_type()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setTpl_type(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/BannerBean;->getJump_type()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setJump_type(I)V

    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/dto/BannerBean;->getLink_type_val()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    iget-object v1, p0, Lcom/join/mgps/adapter/c;->a:Landroid/content/Context;

    invoke-virtual {p1, v1, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0, p2}, Lcom/join/mgps/adapter/c;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/c;->A(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    goto/16 :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 3
    check-cast p1, Lcom/join/mgps/adapter/c$d0;

    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/c;->x(Lcom/join/mgps/adapter/c$d0;I)V

    goto/16 :goto_0

    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 4
    check-cast p1, Lcom/join/mgps/adapter/c$e0;

    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/c;->y(Lcom/join/mgps/adapter/c$e0;I)V

    goto/16 :goto_0

    :cond_3
    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 5
    check-cast p1, Lcom/join/mgps/adapter/c$f0;

    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/c;->z(Lcom/join/mgps/adapter/c$f0;I)V

    goto/16 :goto_0

    :cond_4
    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    .line 6
    check-cast p1, Lcom/join/mgps/adapter/c$s;

    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/c;->n(Lcom/join/mgps/adapter/c$s;I)V

    goto/16 :goto_0

    :cond_5
    const/4 v1, 0x6

    if-ne v0, v1, :cond_6

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/c;->p(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    goto/16 :goto_0

    :cond_6
    const/4 v1, 0x7

    if-ne v0, v1, :cond_7

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/c;->r(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    goto :goto_0

    :cond_7
    const/16 v1, 0xd

    if-ne v0, v1, :cond_8

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/c;->o(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    goto :goto_0

    :cond_8
    const/16 v1, 0xe

    if-ne v0, v1, :cond_9

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/c;->q(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    goto :goto_0

    :cond_9
    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/c;->m(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    goto :goto_0

    :cond_a
    const/16 v1, 0x9

    if-ne v0, v1, :cond_b

    .line 12
    check-cast p1, Lcom/join/mgps/adapter/c$n;

    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/c;->l(Lcom/join/mgps/adapter/c$n;I)V

    goto :goto_0

    :cond_b
    const/16 v1, 0xa

    if-ne v0, v1, :cond_c

    .line 13
    check-cast p1, Lcom/join/mgps/adapter/c$c0;

    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/c;->w(Lcom/join/mgps/adapter/c$c0;I)V

    goto :goto_0

    :cond_c
    const/16 v1, 0xb

    if-ne v0, v1, :cond_d

    .line 14
    check-cast p1, Lcom/join/mgps/adapter/c$b0;

    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/c;->v(Lcom/join/mgps/adapter/c$b0;I)V

    goto :goto_0

    :cond_d
    const/16 v1, 0xc

    if-ne v0, v1, :cond_e

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/c;->k(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    goto :goto_0

    :cond_e
    const/16 v1, 0xf

    if-ne v0, v1, :cond_f

    .line 16
    check-cast p1, Lcom/join/mgps/adapter/c$a0;

    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/c;->u(Lcom/join/mgps/adapter/c$a0;I)V

    goto :goto_0

    :cond_f
    const/16 v1, 0x10

    if-ne v0, v1, :cond_10

    .line 17
    check-cast p1, Lcom/join/mgps/adapter/c$z;

    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/c;->t(Lcom/join/mgps/adapter/c$z;I)V

    goto :goto_0

    :cond_10
    const/16 v1, 0x11

    if-ne v0, v1, :cond_11

    .line 18
    check-cast p1, Lcom/join/mgps/adapter/c$y;

    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/c;->s(Lcom/join/mgps/adapter/c$y;I)V

    :cond_11
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 1
    new-instance p2, Lcom/join/mgps/adapter/c$g0;

    iget-object v1, p0, Lcom/join/mgps/adapter/c;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c00c4

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/c$g0;-><init>(Lcom/join/mgps/adapter/c;Landroid/view/View;)V

    goto/16 :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    .line 2
    new-instance p2, Lcom/join/mgps/adapter/c$d0;

    iget-object v1, p0, Lcom/join/mgps/adapter/c;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c00c1

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/c$d0;-><init>(Lcom/join/mgps/adapter/c;Landroid/view/View;)V

    goto/16 :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne p2, v1, :cond_2

    .line 3
    new-instance p2, Lcom/join/mgps/adapter/c$e0;

    iget-object v1, p0, Lcom/join/mgps/adapter/c;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c00c2

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/c$e0;-><init>(Lcom/join/mgps/adapter/c;Landroid/view/View;)V

    goto/16 :goto_0

    :cond_2
    const/4 v1, 0x4

    if-ne p2, v1, :cond_3

    .line 4
    new-instance p2, Lcom/join/mgps/adapter/c$f0;

    iget-object v1, p0, Lcom/join/mgps/adapter/c;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c00c3

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/c$f0;-><init>(Lcom/join/mgps/adapter/c;Landroid/view/View;)V

    goto/16 :goto_0

    :cond_3
    const/4 v1, 0x5

    if-ne p2, v1, :cond_4

    .line 5
    new-instance p2, Lcom/join/mgps/adapter/c$s;

    iget-object v1, p0, Lcom/join/mgps/adapter/c;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c00b6

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/c$s;-><init>(Lcom/join/mgps/adapter/c;Landroid/view/View;)V

    goto/16 :goto_0

    :cond_4
    const/4 v1, 0x6

    if-ne p2, v1, :cond_5

    .line 6
    new-instance p2, Lcom/join/mgps/adapter/c$u;

    iget-object v1, p0, Lcom/join/mgps/adapter/c;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c00b7

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/c$u;-><init>(Lcom/join/mgps/adapter/c;Landroid/view/View;)V

    goto/16 :goto_0

    :cond_5
    const/4 v1, 0x7

    if-ne p2, v1, :cond_6

    .line 7
    new-instance p2, Lcom/join/mgps/adapter/c$w;

    iget-object v1, p0, Lcom/join/mgps/adapter/c;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c00b9

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/c$w;-><init>(Lcom/join/mgps/adapter/c;Landroid/view/View;)V

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0xd

    if-ne p2, v1, :cond_7

    .line 8
    new-instance p2, Lcom/join/mgps/adapter/c$t;

    iget-object v1, p0, Lcom/join/mgps/adapter/c;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c00b8

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/c$t;-><init>(Lcom/join/mgps/adapter/c;Landroid/view/View;)V

    goto/16 :goto_0

    :cond_7
    const/16 v1, 0xe

    if-ne p2, v1, :cond_8

    .line 9
    new-instance p2, Lcom/join/mgps/adapter/c$v;

    iget-object v1, p0, Lcom/join/mgps/adapter/c;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c00ba

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/c$v;-><init>(Lcom/join/mgps/adapter/c;Landroid/view/View;)V

    goto/16 :goto_0

    :cond_8
    const/16 v1, 0x8

    if-ne p2, v1, :cond_9

    .line 10
    new-instance p2, Lcom/join/mgps/adapter/c$o;

    iget-object v1, p0, Lcom/join/mgps/adapter/c;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c00b5

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/c$o;-><init>(Lcom/join/mgps/adapter/c;Landroid/view/View;)V

    goto/16 :goto_0

    :cond_9
    const/16 v1, 0x9

    if-ne p2, v1, :cond_a

    .line 11
    new-instance p2, Lcom/join/mgps/adapter/c$n;

    iget-object v1, p0, Lcom/join/mgps/adapter/c;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c00b4

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/c$n;-><init>(Lcom/join/mgps/adapter/c;Landroid/view/View;)V

    goto/16 :goto_0

    :cond_a
    const/16 v1, 0xa

    if-ne p2, v1, :cond_b

    .line 12
    new-instance p2, Lcom/join/mgps/adapter/c$c0;

    iget-object v1, p0, Lcom/join/mgps/adapter/c;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c00c0

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/c$c0;-><init>(Lcom/join/mgps/adapter/c;Landroid/view/View;)V

    goto/16 :goto_0

    :cond_b
    const/16 v1, 0xb

    if-ne p2, v1, :cond_c

    .line 13
    new-instance p2, Lcom/join/mgps/adapter/c$b0;

    iget-object v1, p0, Lcom/join/mgps/adapter/c;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c00bf

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/c$b0;-><init>(Lcom/join/mgps/adapter/c;Landroid/view/View;)V

    goto/16 :goto_0

    :cond_c
    const/16 v1, 0xc

    if-ne p2, v1, :cond_d

    .line 14
    new-instance p2, Lcom/join/mgps/adapter/c$m;

    iget-object v1, p0, Lcom/join/mgps/adapter/c;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c00b3

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/c$m;-><init>(Lcom/join/mgps/adapter/c;Landroid/view/View;)V

    goto :goto_0

    :cond_d
    if-nez p2, :cond_e

    .line 15
    new-instance p2, Lcom/join/mgps/adapter/c$x;

    iget-object v1, p0, Lcom/join/mgps/adapter/c;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c00bb

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/c$x;-><init>(Lcom/join/mgps/adapter/c;Landroid/view/View;)V

    goto :goto_0

    :cond_e
    const/16 v1, 0xf

    if-ne p2, v1, :cond_f

    .line 16
    new-instance p2, Lcom/join/mgps/adapter/c$a0;

    iget-object v1, p0, Lcom/join/mgps/adapter/c;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c00bc

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/c$a0;-><init>(Lcom/join/mgps/adapter/c;Landroid/view/View;)V

    goto :goto_0

    :cond_f
    const/16 v1, 0x10

    if-ne p2, v1, :cond_10

    .line 17
    new-instance p2, Lcom/join/mgps/adapter/c$z;

    iget-object v1, p0, Lcom/join/mgps/adapter/c;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c00be

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/c$z;-><init>(Lcom/join/mgps/adapter/c;Landroid/view/View;)V

    goto :goto_0

    :cond_10
    const/16 v1, 0x11

    if-ne p2, v1, :cond_11

    .line 18
    new-instance p2, Lcom/join/mgps/adapter/c$y;

    iget-object v1, p0, Lcom/join/mgps/adapter/c;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c00bd

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/c$y;-><init>(Lcom/join/mgps/adapter/c;Landroid/view/View;)V

    goto :goto_0

    :cond_11
    const/4 p2, 0x0

    :goto_0
    return-object p2
.end method
