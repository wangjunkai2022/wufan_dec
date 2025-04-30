.class public Lcom/join/mgps/activity/ForumSearchHintActivity;
.super Lcom/BaseFragmentActivity;
.source "ForumSearchHintActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/ForumSearchHintActivity$i;,
        Lcom/join/mgps/activity/ForumSearchHintActivity$j;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c01ef
.end annotation


# instance fields
.field A:Lcom/join/mgps/customview/NoScrollListView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private A0:Lcom/join/mgps/adapter/n5;

.field B:Lcom/join/mgps/customview/XListView2;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field B0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumSearchIndexBean;",
            ">;"
        }
    .end annotation
.end field

.field C:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field C0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;",
            ">;"
        }
    .end annotation
.end field

.field D:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private D0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/ForumSearchHintAdapter$f;",
            ">;"
        }
    .end annotation
.end field

.field E:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private E0:Lcom/join/mgps/adapter/ForumSearchHintAdapter;

.field F:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private F0:Lcom/join/mgps/adapter/ForumSearchHintAdapter$b;

.field G:Lcom/join/mgps/customview/LoadingImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private G0:I

.field H:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field H0:Landroid/os/Handler;

.field I:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field J:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field K:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field public a:Landroid/content/Context;

.field b:Landroid/widget/EditText;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field c:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Landroid/widget/GridView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field i:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field j:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field k:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field l:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field m:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field n:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field n0:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field o:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field o0:Lcom/join/mgps/customview/WrapContentGridView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field p:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private p0:Lcom/join/mgps/activity/ForumSearchHintActivity$i;

.field q:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field q0:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field r:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field r0:Lcom/join/mgps/rpc/h;

.field s:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field s0:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/res/StringRes;
        resName = "net_excption"
    .end annotation
.end field

.field t:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field t0:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/res/StringRes;
        resName = "connect_server_excption"
    .end annotation
.end field

.field u:Lcom/join/mgps/customview/MarqueeTextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field u0:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field v:Lcom/join/mgps/customview/MarqueeTextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field v0:Lcom/join/mgps/customview/j;

.field w:Lcom/join/mgps/customview/MarqueeTextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private w0:I

.field x:Lcom/join/mgps/customview/MarqueeTextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private x0:I

.field y:Lcom/join/mgps/customview/MarqueeTextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private y0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SearchAutoDataBean;",
            ">;"
        }
    .end annotation
.end field

.field z:Lcom/join/mgps/customview/MarqueeTextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private z0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseFragmentActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->w0:I

    .line 3
    iput v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->x0:I

    .line 4
    new-instance v0, Lcom/join/mgps/activity/ForumSearchHintActivity$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumSearchHintActivity$a;-><init>(Lcom/join/mgps/activity/ForumSearchHintActivity;)V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->F0:Lcom/join/mgps/adapter/ForumSearchHintAdapter$b;

    .line 5
    new-instance v0, Lcom/join/mgps/activity/ForumSearchHintActivity$f;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumSearchHintActivity$f;-><init>(Lcom/join/mgps/activity/ForumSearchHintActivity;)V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->H0:Landroid/os/Handler;

    return-void
.end method

.method static synthetic D0(Lcom/join/mgps/activity/ForumSearchHintActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->w0:I

    return p0
.end method

.method static synthetic E0(Lcom/join/mgps/activity/ForumSearchHintActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->w0:I

    return p1
.end method

.method static synthetic F0(Lcom/join/mgps/activity/ForumSearchHintActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->x0:I

    return p0
.end method

.method static synthetic G0(Lcom/join/mgps/activity/ForumSearchHintActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->x0:I

    return p1
.end method

.method static synthetic H0(Lcom/join/mgps/activity/ForumSearchHintActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ForumSearchHintActivity;->c1(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic I0(Lcom/join/mgps/activity/ForumSearchHintActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->G0:I

    return p0
.end method

.method private c1(Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-static {}, Ln1/s;->n()Ln1/s;

    move-result-object v0

    invoke-virtual {v0}, Lg1/b;->d()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 3
    new-instance v0, Lcom/join/mgps/db/tables/ForumSearchRecordTable;

    invoke-direct {v0}, Lcom/join/mgps/db/tables/ForumSearchRecordTable;-><init>()V

    .line 4
    invoke-virtual {v0, p1}, Lcom/join/mgps/db/tables/ForumSearchRecordTable;->setName(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/db/tables/ForumSearchRecordTable;->setCreate_time(J)V

    .line 6
    invoke-static {}, Ln1/s;->n()Ln1/s;

    move-result-object p1

    invoke-virtual {p1, v0}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_1

    .line 8
    invoke-static {}, Ln1/s;->n()Ln1/s;

    move-result-object p1

    invoke-static {}, Ln1/s;->n()Ln1/s;

    move-result-object v1

    const-wide/16 v2, 0xa

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v4, v0

    const/4 v7, 0x0

    const-string v6, "create_time"

    invoke-virtual/range {v1 .. v7}, Lg1/b;->i(JJLjava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lg1/b;->delete(Ljava/util/Collection;)I

    goto :goto_1

    .line 9
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/db/tables/ForumSearchRecordTable;

    .line 10
    invoke-virtual {v1}, Lcom/join/mgps/db/tables/ForumSearchRecordTable;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 11
    invoke-static {}, Ln1/s;->n()Ln1/s;

    move-result-object v2

    invoke-virtual {v2, v1}, Lg1/b;->delete(Ljava/lang/Object;)I

    goto :goto_0

    .line 12
    :cond_3
    new-instance v0, Lcom/join/mgps/db/tables/ForumSearchRecordTable;

    invoke-direct {v0}, Lcom/join/mgps/db/tables/ForumSearchRecordTable;-><init>()V

    .line 13
    invoke-virtual {v0, p1}, Lcom/join/mgps/db/tables/ForumSearchRecordTable;->setName(Ljava/lang/String;)V

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/db/tables/ForumSearchRecordTable;->setCreate_time(J)V

    .line 15
    invoke-static {}, Ln1/s;->n()Ln1/s;

    move-result-object p1

    invoke-virtual {p1, v0}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void
.end method

.method private e1(Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->M0()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;->getSubject()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;->getSubject()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/join/mgps/adapter/ForumSearchHintAdapter$f;

    sget-object v2, Lcom/join/mgps/adapter/ForumSearchHintAdapter$ViewType;->POST_SUBJECT:Lcom/join/mgps/adapter/ForumSearchHintAdapter$ViewType;

    new-instance v3, Lcom/join/mgps/adapter/ForumSearchHintAdapter$f$c;

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;->getPid()Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;->getSubject()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v1, v4, v5}, Lcom/join/mgps/adapter/ForumSearchHintAdapter$f$c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v2, v3}, Lcom/join/mgps/adapter/ForumSearchHintAdapter$f;-><init>(Lcom/join/mgps/adapter/ForumSearchHintAdapter$ViewType;Ljava/lang/Object;)V

    .line 6
    iget-object v2, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->D0:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 7
    :goto_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 8
    new-instance v2, Lcom/join/mgps/adapter/ForumSearchHintAdapter$f$b;

    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;->getPid()Ljava/lang/String;

    move-result-object v3

    .line 10
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v1, v3, v4, v0}, Lcom/join/mgps/adapter/ForumSearchHintAdapter$f$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 11
    new-instance v0, Lcom/join/mgps/adapter/ForumSearchHintAdapter$f;

    sget-object v3, Lcom/join/mgps/adapter/ForumSearchHintAdapter$ViewType;->POST_MESSAGE:Lcom/join/mgps/adapter/ForumSearchHintAdapter$ViewType;

    invoke-direct {v0, v3, v2}, Lcom/join/mgps/adapter/ForumSearchHintAdapter$f;-><init>(Lcom/join/mgps/adapter/ForumSearchHintAdapter$ViewType;Ljava/lang/Object;)V

    .line 12
    iget-object v2, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->D0:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    :cond_1
    new-instance v6, Lcom/join/mgps/adapter/ForumSearchHintAdapter$f;

    sget-object v7, Lcom/join/mgps/adapter/ForumSearchHintAdapter$ViewType;->POST_FOOTER:Lcom/join/mgps/adapter/ForumSearchHintAdapter$ViewType;

    new-instance v8, Lcom/join/mgps/adapter/ForumSearchHintAdapter$f$a;

    .line 14
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;->getPid()Ljava/lang/String;

    move-result-object v2

    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;->getView()Ljava/lang/String;

    move-result-object v3

    .line 16
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;->getComment()Ljava/lang/String;

    move-result-object v4

    .line 17
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;->getPraise()Ljava/lang/String;

    move-result-object v5

    move-object v0, v8

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/adapter/ForumSearchHintAdapter$f$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v6, v7, v8}, Lcom/join/mgps/adapter/ForumSearchHintAdapter$f;-><init>(Lcom/join/mgps/adapter/ForumSearchHintAdapter$ViewType;Ljava/lang/Object;)V

    .line 18
    iget-object p1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->D0:Ljava/util/List;

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private q1(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->C0:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->C0:Ljava/util/List;

    :cond_0
    if-eqz p1, :cond_2

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 4
    iget-object p2, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->C0:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 5
    iput v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->w0:I

    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->p1()V

    .line 7
    :cond_1
    iget-object p2, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->C0:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->notifyUi()V

    return-void
.end method


# virtual methods
.method J0()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->X0()V

    return-void
.end method

.method K0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {}, Ln1/s;->n()Ln1/s;

    move-result-object v0

    invoke-virtual {v0}, Lg1/b;->a()I

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->y0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method L0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->K0()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->y0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->notifyUi()V

    return-void
.end method

.method M0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method N0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->B:Lcom/join/mgps/customview/XListView2;

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/ForumSearchHintActivity;->g1(Landroid/view/View;I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->h:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/ForumSearchHintActivity;->g1(Landroid/view/View;I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->f:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/ForumSearchHintActivity;->g1(Landroid/view/View;I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->D:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/ForumSearchHintActivity;->g1(Landroid/view/View;I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->E:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/ForumSearchHintActivity;->g1(Landroid/view/View;I)V

    return-void
.end method

.method O0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    const-string v0, "input_method"

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method P0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->B:Lcom/join/mgps/customview/XListView2;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->f()V

    :cond_0
    return-void
.end method

.method Q0(I)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/ItemClick;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->y0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->y0:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/SearchAutoDataBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/SearchAutoDataBean;->getGame_name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ForumSearchHintActivity;->c1(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->b:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->O0()V

    :cond_1
    :goto_0
    return-void
.end method

.method R0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    const-string v0, "input_method"

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->U0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->b:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->notifyUi()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method S0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/join/mgps/Util/d2;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->O0()V

    .line 5
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->c1(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/ForumSearchHintActivity;->Y0(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method T0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->b:Landroid/widget/EditText;

    new-instance v1, Lcom/join/mgps/activity/ForumSearchHintActivity$b;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumSearchHintActivity$b;-><init>(Lcom/join/mgps/activity/ForumSearchHintActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->b:Landroid/widget/EditText;

    new-instance v1, Lcom/join/mgps/activity/ForumSearchHintActivity$c;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumSearchHintActivity$c;-><init>(Lcom/join/mgps/activity/ForumSearchHintActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->q0:Ljava/lang/String;

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->b:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->q0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->b:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->q0:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 6
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->z0:Ljava/util/ArrayList;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->y0:Ljava/util/List;

    .line 8
    new-instance v0, Lcom/join/mgps/adapter/n5;

    iget-object v1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->y0:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/n5;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->A0:Lcom/join/mgps/adapter/n5;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->D0:Ljava/util/List;

    .line 10
    new-instance v0, Lcom/join/mgps/adapter/ForumSearchHintAdapter;

    iget-object v1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/join/mgps/adapter/ForumSearchHintAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->E0:Lcom/join/mgps/adapter/ForumSearchHintAdapter;

    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->F0:Lcom/join/mgps/adapter/ForumSearchHintAdapter$b;

    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/ForumSearchHintAdapter;->f(Lcom/join/mgps/adapter/ForumSearchHintAdapter$b;)V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->B:Lcom/join/mgps/customview/XListView2;

    sget v1, Lcom/join/mgps/Util/i0;->e:I

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPreLoadCount(I)V

    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->B:Lcom/join/mgps/customview/XListView2;

    iget-object v1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->E0:Lcom/join/mgps/adapter/ForumSearchHintAdapter;

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->B:Lcom/join/mgps/customview/XListView2;

    new-instance v1, Lcom/join/mgps/activity/ForumSearchHintActivity$d;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumSearchHintActivity$d;-><init>(Lcom/join/mgps/activity/ForumSearchHintActivity;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullLoadEnable(Lcom/join/mgps/customview/i;)V

    .line 15
    new-instance v0, Lcom/join/mgps/activity/ForumSearchHintActivity$e;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumSearchHintActivity$e;-><init>(Lcom/join/mgps/activity/ForumSearchHintActivity;)V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->v0:Lcom/join/mgps/customview/j;

    .line 16
    iget-object v1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->B:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v1, v0}, Lcom/join/mgps/customview/XListView2;->setPullRefreshEnable(Lcom/join/mgps/customview/j;)V

    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->B:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->e()V

    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->B:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0, p0}, Lcom/join/mgps/customview/XListView2;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 19
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->P0()V

    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->D:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/ForumSearchHintActivity;->g1(Landroid/view/View;I)V

    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->p0:Lcom/join/mgps/activity/ForumSearchHintActivity$i;

    if-nez v0, :cond_1

    .line 22
    new-instance v0, Lcom/join/mgps/activity/ForumSearchHintActivity$i;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumSearchHintActivity$i;-><init>(Lcom/join/mgps/activity/ForumSearchHintActivity;)V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->p0:Lcom/join/mgps/activity/ForumSearchHintActivity$i;

    .line 23
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->o0:Lcom/join/mgps/customview/WrapContentGridView;

    iget-object v1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->p0:Lcom/join/mgps/activity/ForumSearchHintActivity$i;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method U0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method V0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->W0()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->X0()V

    goto :goto_0

    :cond_0
    const v0, 0x7f110206

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->showToast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method W0()V
    .locals 8
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {}, Ln1/s;->n()Ln1/s;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xa

    const-string v6, "create_time"

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lg1/b;->i(JJLjava/lang/String;Z)Ljava/util/List;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->z0:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/db/tables/ForumSearchRecordTable;

    .line 5
    iget-object v3, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->z0:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/join/mgps/db/tables/ForumSearchRecordTable;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->z0:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 7
    :goto_1
    iget-object v2, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->z0:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 8
    new-instance v2, Lcom/join/mgps/dto/SearchAutoDataBean;

    invoke-direct {v2}, Lcom/join/mgps/dto/SearchAutoDataBean;-><init>()V

    const-string v3, ""

    .line 9
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/SearchAutoDataBean;->setCrc_sign_id(Ljava/lang/String;)V

    .line 10
    iget-object v3, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->z0:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/SearchAutoDataBean;->setGame_name(Ljava/lang/String;)V

    .line 11
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 12
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->y0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 13
    iget-object v1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->y0:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 14
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->notifyUi()V

    return-void
.end method

.method X0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    const-string v0, ""

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->r0:Lcom/join/mgps/rpc/h;

    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/h;->e(Ljava/lang/String;)Lcom/join/mgps/dto/ForumResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponse;->getError()I

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/ForumData$ForumSearchIndexData;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumData$ForumSearchIndexData;->getRecommend()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->B0:Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->B0:Ljava/util/List;

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->notifyUi()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->serverConnectionException()V

    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->notifyUi()V

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->notifyUi()V

    :goto_1
    return-void
.end method

.method Y0(Ljava/lang/String;I)V
    .locals 9
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2
    iget v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->x0:I

    if-ne p2, v0, :cond_0

    return-void

    :cond_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return-void

    .line 3
    :cond_1
    iput p2, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->x0:I

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-ne p2, v2, :cond_2

    .line 4
    :try_start_0
    iget-object v3, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->C0:Ljava/util/List;

    if-eqz v3, :cond_2

    .line 5
    invoke-interface {v3}, Ljava/util/List;->clear()V

    :cond_2
    const-string v7, ""

    .line 6
    iget v8, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->u0:I

    if-lez v8, :cond_3

    .line 7
    iget-object v3, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->r0:Lcom/join/mgps/rpc/h;

    sget v5, Lcom/join/mgps/Util/i0;->d:I

    move v4, p2

    move-object v6, p1

    invoke-interface/range {v3 .. v8}, Lcom/join/mgps/rpc/h;->N(IILjava/lang/String;Ljava/lang/String;I)Lcom/join/mgps/dto/ForumResponse;

    move-result-object p1

    goto :goto_0

    .line 8
    :cond_3
    iget-object v3, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->r0:Lcom/join/mgps/rpc/h;

    sget v4, Lcom/join/mgps/Util/i0;->d:I

    invoke-interface {v3, p2, v4, p1, v7}, Lcom/join/mgps/rpc/h;->l(IILjava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ForumResponse;

    move-result-object p1

    :goto_0
    const/4 v3, 0x0

    if-eqz p1, :cond_4

    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ForumData$ForumSearchQueryData;

    goto :goto_1

    .line 10
    :cond_4
    iput v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->x0:I

    move-object p1, v3

    :goto_1
    if-eqz p1, :cond_5

    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumData$ForumSearchQueryData;->getRes()Ljava/util/List;

    move-result-object v3

    :cond_5
    if-eqz v3, :cond_6

    .line 12
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_6

    .line 13
    iput p2, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->w0:I

    goto :goto_2

    .line 14
    :cond_6
    iput v1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->x0:I

    .line 15
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->h1()V

    .line 16
    :goto_2
    invoke-direct {p0, v3, p2}, Lcom/join/mgps/activity/ForumSearchHintActivity;->q1(Ljava/util/List;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    iget p1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->x0:I

    if-eq p1, v1, :cond_7

    .line 18
    iput v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->x0:I

    :cond_7
    if-ne p2, v2, :cond_9

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 19
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    iget p1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->x0:I

    if-eq p1, v1, :cond_8

    .line 21
    iput v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->x0:I

    :cond_8
    if-ne p2, v2, :cond_9

    .line 22
    :goto_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->m1()V

    .line 23
    :cond_9
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->p1()V

    goto :goto_5

    .line 24
    :goto_4
    iget v3, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->x0:I

    if-eq v3, v1, :cond_a

    .line 25
    iput v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->x0:I

    :cond_a
    if-ne p2, v2, :cond_b

    .line 26
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->m1()V

    .line 27
    :cond_b
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->p1()V

    .line 28
    throw p1

    :cond_c
    const p1, 0x7f110206

    .line 29
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumSearchHintActivity;->showToast(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->p1()V

    :goto_5
    return-void
.end method

.method Z0()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/android/app/common/manager/a;->h()Lcom/join/android/app/common/manager/a;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->s0:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/join/android/app/common/manager/a;->j(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method a1()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->N0()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->B0:Ljava/util/List;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/ForumSearchHintActivity;->r1(Ljava/util/List;Ljava/lang/Boolean;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->f:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->y0:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->C:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->A:Lcom/join/mgps/customview/NoScrollListView;

    iget-object v1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->A0:Lcom/join/mgps/adapter/n5;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->C:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->A0:Lcom/join/mgps/adapter/n5;

    invoke-virtual {v0}, Lcom/join/mgps/adapter/n5;->notifyDataSetChanged()V

    return-void
.end method

.method afterViews()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/f;->A0()Lcom/join/mgps/rpc/impl/f;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->r0:Lcom/join/mgps/rpc/h;

    .line 2
    iput-object p0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->a:Landroid/content/Context;

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->T0()V

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->V0()V

    return-void
.end method

.method b1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->C0:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->C0:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->D0:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->D0:Ljava/util/List;

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->D0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->C0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;

    .line 6
    invoke-direct {p0, v1}, Lcom/join/mgps/activity/ForumSearchHintActivity;->e1(Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->E0:Lcom/join/mgps/adapter/ForumSearchHintAdapter;

    iget-object v1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->D0:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/ForumSearchHintAdapter;->h(Ljava/util/List;)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->E0:Lcom/join/mgps/adapter/ForumSearchHintAdapter;

    invoke-virtual {v0}, Lcom/join/mgps/adapter/ForumSearchHintAdapter;->notifyDataSetChanged()V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->B:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestLayout()V

    return-void
.end method

.method d1(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0
    .annotation build Lorg/androidannotations/annotations/EditorAction;
    .end annotation

    const/4 p3, 0x6

    if-ne p2, p3, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "input_method"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    const/4 p2, 0x2

    const/4 p3, 0x1

    .line 2
    invoke-virtual {p1, p3, p2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->S0()V

    return p3

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method f1(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->N0()V

    if-eqz p1, :cond_3

    .line 2
    iget p1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->w0:I

    if-nez p1, :cond_0

    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->k1()V

    goto :goto_0

    .line 4
    :cond_0
    iget p1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->x0:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    iget p1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->w0:I

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->C0:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_2

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->l1()V

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->n1()V

    goto :goto_0

    .line 8
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->i1()V

    :goto_0
    return-void
.end method

.method g1(Landroid/view/View;I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq p2, v0, :cond_0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method h1()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->B:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->setNoMore()V

    return-void
.end method

.method i1()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->N0()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->h:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/ForumSearchHintActivity;->g1(Landroid/view/View;I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->f:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/ForumSearchHintActivity;->g1(Landroid/view/View;I)V

    return-void
.end method

.method j1()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->N0()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->D:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/ForumSearchHintActivity;->g1(Landroid/view/View;I)V

    return-void
.end method

.method k1()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->N0()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->E:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/ForumSearchHintActivity;->g1(Landroid/view/View;I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->F:Landroid/widget/ImageView;

    const v2, 0x7f080a83

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->J:Landroid/widget/TextView;

    const-string v2, "\u7f51\u7edc\u8fde\u63a5\u5931\u8d25\uff0c\u518d\u8bd5\u8bd5\u5427~"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->K:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->I:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->n0:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->I:Landroid/widget/Button;

    new-instance v1, Lcom/join/mgps/activity/ForumSearchHintActivity$g;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumSearchHintActivity$g;-><init>(Lcom/join/mgps/activity/ForumSearchHintActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->F:Landroid/widget/ImageView;

    new-instance v1, Lcom/join/mgps/activity/ForumSearchHintActivity$h;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumSearchHintActivity$h;-><init>(Lcom/join/mgps/activity/ForumSearchHintActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method l1()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->N0()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->E:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/ForumSearchHintActivity;->g1(Landroid/view/View;I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->F:Landroid/widget/ImageView;

    const v1, 0x7f0809bc

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->J:Landroid/widget/TextView;

    const-string v1, "\u672a\u641c\u7d22\u5230\u76f8\u5e94\u5e16\u5b50"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->K:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->I:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->n0:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method m1()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->B:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->p()V

    return-void
.end method

.method n1()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->N0()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->B:Lcom/join/mgps/customview/XListView2;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/ForumSearchHintActivity;->g1(Landroid/view/View;I)V

    return-void
.end method

.method notifyUi()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->U0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->f1(Z)V

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->b1()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->a1()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method o1()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->B:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->t()V

    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->G0:I

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method

.method p1()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->B:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->i()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->H0:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->H0:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method

.method r1(Ljava/util/List;Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumSearchIndexBean;",
            ">;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/16 v0, 0x8

    if-eqz p2, :cond_2

    if-eqz p1, :cond_1

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-eqz p2, :cond_1

    .line 3
    iget-object p2, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->h:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object p2, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->p0:Lcom/join/mgps/activity/ForumSearchHintActivity$i;

    if-eqz p2, :cond_3

    .line 5
    invoke-virtual {p2}, Lcom/join/mgps/activity/ForumSearchHintActivity$i;->c()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 6
    iget-object p2, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->p0:Lcom/join/mgps/activity/ForumSearchHintActivity$i;

    invoke-virtual {p2}, Lcom/join/mgps/activity/ForumSearchHintActivity$i;->c()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 7
    :cond_0
    iget-object p2, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->p0:Lcom/join/mgps/activity/ForumSearchHintActivity$i;

    invoke-virtual {p2, p1}, Lcom/join/mgps/activity/ForumSearchHintActivity$i;->b(Ljava/util/List;)Ljava/util/List;

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->p0:Lcom/join/mgps/activity/ForumSearchHintActivity$i;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->h:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->h:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method s1()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->f:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->C:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->A:Lcom/join/mgps/customview/NoScrollListView;

    iget-object v1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->A0:Lcom/join/mgps/adapter/n5;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->A0:Lcom/join/mgps/adapter/n5;

    invoke-virtual {v0}, Lcom/join/mgps/adapter/n5;->notifyDataSetChanged()V

    return-void
.end method

.method serverConnectionException()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/android/app/common/manager/a;->h()Lcom/join/android/app/common/manager/a;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->t0:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/join/android/app/common/manager/a;->j(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method showToast(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method
