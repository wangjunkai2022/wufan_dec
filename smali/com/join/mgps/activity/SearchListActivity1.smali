.class public Lcom/join/mgps/activity/SearchListActivity1;
.super Lcom/BaseAppCompatActivity;
.source "SearchListActivity1.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/SearchListActivity1$i;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c0573
.end annotation


# instance fields
.field A:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private B:I

.field private C:I

.field private D:Lcom/join/mgps/dto/SearchAutoBean;

.field E:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/business/CollectionBeanSubBusiness;",
            ">;"
        }
    .end annotation
.end field

.field private F:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field a:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field b:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field c:Lcom/zhy/view/flowlayout/TagFlowLayout3;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Lcom/zhy/view/flowlayout/TagFlowLayout3;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Landroid/widget/EditText;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Lcom/google/android/material/tabs/TabLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Landroidx/viewpager/widget/ViewPager;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h:Landroid/widget/ListView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field i:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field j:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field k:Lcom/join/mgps/rpc/d;

.field l:Lcom/join/mgps/customview/d0;

.field m:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field n:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field o:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field p:Z
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ClassifyGameTagBean;",
            ">;"
        }
    .end annotation
.end field

.field r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field s:I

.field t:I

.field private u:Landroid/content/Context;

.field private v:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field x:Z

.field y:Lcom/join/mgps/activity/SearchListActivity1$i;

.field z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseAppCompatActivity;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->o:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->q:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->r:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->v:Ljava/util/ArrayList;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->w:Ljava/util/List;

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->x:Z

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->z:Ljava/util/List;

    .line 9
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->A:Ljava/util/Map;

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->B:I

    .line 11
    iput v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->C:I

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->E:Ljava/util/List;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->F:Ljava/util/List;

    return-void
.end method

.method public static synthetic D0(Landroid/view/View;ILandroid/view/ViewGroup;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/join/mgps/activity/SearchListActivity1;->T0(Landroid/view/View;ILandroid/view/ViewGroup;)V

    return-void
.end method

.method public static synthetic E0(Landroid/view/View;ILandroid/view/ViewGroup;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/join/mgps/activity/SearchListActivity1;->U0(Landroid/view/View;ILandroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic G0(Lcom/join/mgps/activity/SearchListActivity1;Lcom/google/android/material/tabs/TabLayout$g;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/SearchListActivity1;->d1(Lcom/google/android/material/tabs/TabLayout$g;)V

    return-void
.end method

.method static synthetic H0(Lcom/join/mgps/activity/SearchListActivity1;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/SearchListActivity1;->F:Ljava/util/List;

    return-object p0
.end method

.method static synthetic I0(Lcom/join/mgps/activity/SearchListActivity1;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/SearchListActivity1;->b1(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic J0(Lcom/join/mgps/activity/SearchListActivity1;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/SearchListActivity1;->u:Landroid/content/Context;

    return-object p0
.end method

.method private O0()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->f:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/activity/SearchListActivity1;->f:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result v2

    const v3, 0x7f091088

    if-ge v1, v2, :cond_1

    .line 3
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v4, 0x7f0c0579

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 4
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/join/mgps/activity/SearchListActivity1;->w:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v3, p0, Lcom/join/mgps/activity/SearchListActivity1;->f:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v3, v1}, Lcom/google/android/material/tabs/TabLayout;->z(I)Lcom/google/android/material/tabs/TabLayout$g;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/material/tabs/TabLayout$g;->v(Landroid/view/View;)Lcom/google/android/material/tabs/TabLayout$g;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/SearchListActivity1;->f:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v1, v0}, Lcom/google/android/material/tabs/TabLayout;->z(I)Lcom/google/android/material/tabs/TabLayout$g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout$g;->g()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/high16 v2, -0x1000000

    .line 7
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 8
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f071194

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 9
    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 10
    iget-object v1, p0, Lcom/join/mgps/activity/SearchListActivity1;->f:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v1, v0}, Lcom/google/android/material/tabs/TabLayout;->z(I)Lcom/google/android/material/tabs/TabLayout$g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout$g;->g()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0907c1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private static synthetic T0(Landroid/view/View;ILandroid/view/ViewGroup;)V
    .locals 0

    return-void
.end method

.method private static synthetic U0(Landroid/view/View;ILandroid/view/ViewGroup;)V
    .locals 0

    return-void
.end method

.method private b1(Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-static {}, Ln1/h0;->n()Ln1/h0;

    move-result-object v0

    invoke-virtual {v0}, Lg1/b;->d()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 3
    new-instance v0, Lcom/join/mgps/db/tables/SearchRecordTable;

    invoke-direct {v0}, Lcom/join/mgps/db/tables/SearchRecordTable;-><init>()V

    .line 4
    invoke-virtual {v0, p1}, Lcom/join/mgps/db/tables/SearchRecordTable;->setName(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/db/tables/SearchRecordTable;->setCreate_time(J)V

    .line 6
    invoke-static {}, Ln1/h0;->n()Ln1/h0;

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
    invoke-static {}, Ln1/h0;->n()Ln1/h0;

    move-result-object p1

    .line 9
    invoke-static {}, Ln1/h0;->n()Ln1/h0;

    move-result-object v1

    const-wide/16 v2, 0xa

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v4, v0

    const/4 v7, 0x0

    const-string v6, "create_time"

    invoke-virtual/range {v1 .. v7}, Lg1/b;->i(JJLjava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    .line 10
    invoke-virtual {p1, v0}, Lg1/b;->delete(Ljava/util/Collection;)I

    goto :goto_1

    .line 11
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

    check-cast v1, Lcom/join/mgps/db/tables/SearchRecordTable;

    .line 12
    invoke-virtual {v1}, Lcom/join/mgps/db/tables/SearchRecordTable;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 13
    invoke-static {}, Ln1/h0;->n()Ln1/h0;

    move-result-object v2

    invoke-virtual {v2, v1}, Lg1/b;->delete(Ljava/lang/Object;)I

    goto :goto_0

    .line 14
    :cond_3
    new-instance v0, Lcom/join/mgps/db/tables/SearchRecordTable;

    invoke-direct {v0}, Lcom/join/mgps/db/tables/SearchRecordTable;-><init>()V

    .line 15
    invoke-virtual {v0, p1}, Lcom/join/mgps/db/tables/SearchRecordTable;->setName(Ljava/lang/String;)V

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/db/tables/SearchRecordTable;->setCreate_time(J)V

    .line 17
    invoke-static {}, Ln1/h0;->n()Ln1/h0;

    move-result-object p1

    invoke-virtual {p1, v0}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void
.end method

.method private d1(Lcom/google/android/material/tabs/TabLayout$g;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->f:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/activity/SearchListActivity1;->f:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 3
    iget-object v2, p0, Lcom/join/mgps/activity/SearchListActivity1;->f:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v2, v1}, Lcom/google/android/material/tabs/TabLayout;->z(I)Lcom/google/android/material/tabs/TabLayout$g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayout$g;->g()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$g;->k()I

    move-result v3

    const v4, 0x7f091088

    const v5, 0x7f0907c1

    if-ne v1, v3, :cond_2

    .line 5
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 6
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/high16 v3, -0x1000000

    .line 7
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 8
    invoke-virtual {v2}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 9
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f071194

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    .line 10
    :cond_2
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 11
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v3, "#535353"

    .line 12
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 13
    invoke-virtual {v2}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 14
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f071167

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private i1(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/business/CollectionBeanSubBusiness;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->z:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/SearchListActivity1;->z:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v3

    .line 6
    iget-object v4, p0, Lcom/join/mgps/activity/SearchListActivity1;->A:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/join/mgps/dto/ModInfoBean;->getMain_game_id()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/4 v5, 0x1

    const/4 v6, 0x5

    const/4 v7, 0x0

    if-eqz v4, :cond_3

    .line 7
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v4

    if-ne v4, v6, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    .line 8
    :goto_1
    iget-object v8, p0, Lcom/join/mgps/activity/SearchListActivity1;->A:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v3, :cond_4

    .line 9
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v3

    if-ne v3, v6, :cond_4

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_5

    if-eqz v4, :cond_5

    .line 10
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 11
    invoke-virtual {v0, v2}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    :cond_5
    if-eqz v5, :cond_6

    .line 12
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 13
    invoke-virtual {v0, v2}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    :cond_6
    if-eqz v4, :cond_7

    .line 14
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 15
    invoke-virtual {v0, v2}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_0

    :cond_7
    const/4 v3, 0x0

    .line 16
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 17
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v3

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v3

    :cond_8
    if-nez v3, :cond_9

    .line 18
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v3

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v3

    :cond_9
    if-eqz v3, :cond_2

    .line 19
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 20
    invoke-virtual {v0, v2}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_0

    .line 21
    :cond_a
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 22
    invoke-virtual {v0, v2}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_0

    :cond_b
    return-void
.end method

.method private receiveDelete(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 4
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    iget-object v2, p0, Lcom/join/mgps/activity/SearchListActivity1;->A:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/SearchListActivity1;->E:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    .line 8
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    .line 9
    iget-object v3, p0, Lcom/join/mgps/activity/SearchListActivity1;->A:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 10
    iget-object v5, p0, Lcom/join/mgps/activity/SearchListActivity1;->A:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-nez v3, :cond_2

    if-nez v5, :cond_2

    .line 11
    invoke-virtual {v2, v4}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    .line 12
    invoke-virtual {v2, v3}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    :cond_3
    if-eqz v5, :cond_4

    .line 13
    invoke-virtual {v2, v5}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 14
    :cond_4
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 15
    invoke-virtual {v2, v4}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 16
    :cond_5
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 17
    invoke-virtual {v2, v4}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    :cond_6
    return-void
.end method

.method private receiveError(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->A:Ljava/util/Map;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 3
    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->C3(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/SearchListActivity1;->y:Lcom/join/mgps/activity/SearchListActivity1$i;

    invoke-virtual {p1}, Lcom/join/mgps/activity/SearchListActivity1$i;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private receiveStart(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->z:Ljava/util/List;

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->D3(Ljava/util/List;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->A:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->z:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->A:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_0
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/SearchListActivity1;->updateDowStateList(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/SearchListActivity1;->y:Lcom/join/mgps/activity/SearchListActivity1$i;

    invoke-virtual {p1}, Lcom/join/mgps/activity/SearchListActivity1$i;->notifyDataSetChanged()V

    return-void
.end method

.method private receiveSuccess(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->A:Ljava/util/Map;

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->z:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->A:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/SearchListActivity1;->updateDowStateList(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->A:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-nez v0, :cond_2

    return-void

    .line 7
    :cond_2
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 8
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCfg_ver()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSource_ver()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSource_ver(Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/SearchListActivity1;->y:Lcom/join/mgps/activity/SearchListActivity1$i;

    invoke-virtual {p1}, Lcom/join/mgps/activity/SearchListActivity1$i;->notifyDataSetChanged()V

    :cond_3
    :goto_0
    return-void
.end method

.method private updateDowStateList(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->E:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    .line 2
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 3
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v2

    .line 4
    iget-object v3, p0, Lcom/join/mgps/activity/SearchListActivity1;->A:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/join/mgps/dto/ModInfoBean;->getMain_game_id()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/4 v4, 0x1

    const/4 v5, 0x5

    const/4 v6, 0x0

    if-eqz v3, :cond_1

    .line 5
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v3

    if-ne v3, v5, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 6
    :goto_1
    iget-object v7, p0, Lcom/join/mgps/activity/SearchListActivity1;->A:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v2, :cond_2

    .line 7
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v2

    if-ne v2, v5, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_3

    if-eqz v3, :cond_3

    .line 8
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9
    invoke-virtual {v1, p1}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_4

    .line 10
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 11
    invoke-virtual {v1, p1}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    :cond_4
    if-eqz v3, :cond_5

    .line 12
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 13
    invoke-virtual {v1, p1}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_0

    :cond_5
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 15
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v2

    :cond_6
    if-nez v2, :cond_7

    .line 16
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v2

    :cond_7
    if-eqz v2, :cond_0

    .line 17
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 18
    invoke-virtual {v1, p1}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_0

    .line 19
    :cond_8
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 20
    invoke-virtual {v1, p1}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_0

    .line 21
    :cond_9
    iget-object p1, p0, Lcom/join/mgps/activity/SearchListActivity1;->y:Lcom/join/mgps/activity/SearchListActivity1$i;

    invoke-virtual {p1}, Lcom/join/mgps/activity/SearchListActivity1$i;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-void
.end method

.method private updateProgressPartly()V
    .locals 14

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-gt v0, v1, :cond_7

    .line 1
    iget-object v2, p0, Lcom/join/mgps/activity/SearchListActivity1;->h:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/join/mgps/dto/SearchAutoDataBean;

    if-eqz v2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/activity/SearchListActivity1;->h:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    if-nez v2, :cond_1

    goto/16 :goto_3

    .line 3
    :cond_1
    invoke-virtual {v2}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 4
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v3

    const/16 v4, 0xc

    if-eq v3, v1, :cond_2

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v3

    if-ne v3, v4, :cond_6

    .line 5
    :cond_2
    iget-object v3, p0, Lcom/join/mgps/activity/SearchListActivity1;->h:Landroid/widget/ListView;

    iget v5, p0, Lcom/join/mgps/activity/SearchListActivity1;->C:I

    sub-int v5, v0, v5

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 6
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/join/mgps/activity/SearchHintActivity$p;

    if-eqz v5, :cond_6

    .line 7
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/activity/SearchHintActivity$p;

    .line 8
    :try_start_0
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v5

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/join/android/app/common/servcie/a;->f(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v5

    if-nez v5, :cond_3

    return-void

    .line 9
    :cond_3
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    mul-double v6, v6, v8

    mul-double v6, v6, v8

    double-to-long v6, v6

    .line 10
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v10, 0x0

    const-string v12, "/"

    cmp-long v13, v8, v10

    if-nez v13, :cond_4

    .line 11
    :try_start_1
    iget-object v8, v3, Lcom/join/mgps/activity/SearchHintActivity$p;->j:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6, v7}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 12
    :cond_4
    iget-object v8, v3, Lcom/join/mgps/activity/SearchHintActivity$p;->j:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6, v7}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    :goto_1
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v6

    if-ne v6, v4, :cond_5

    .line 14
    iget-object v4, v3, Lcom/join/mgps/activity/SearchHintActivity$p;->n:Landroid/widget/ProgressBar;

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v6

    long-to-int v7, v6

    invoke-virtual {v4, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_2

    .line 15
    :cond_5
    iget-object v4, v3, Lcom/join/mgps/activity/SearchHintActivity$p;->m:Landroid/widget/ProgressBar;

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v6

    long-to-int v7, v6

    invoke-virtual {v4, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 16
    :goto_2
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v2

    if-ne v2, v1, :cond_6

    .line 17
    iget-object v1, v3, Lcom/join/mgps/activity/SearchHintActivity$p;->l:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/S"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    .line 18
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_7
    return-void
.end method


# virtual methods
.method F0(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method

.method public K0(Ljava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->u:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v1

    const-string v2, "searchAuto"

    const/4 v4, 0x1

    const/16 v5, 0x14

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    invoke-virtual/range {v1 .. v7}, Lcom/join/mgps/Util/RequestBeanUtil;->getSearchAutoRequestBean(Ljava/lang/String;Ljava/lang/String;IIII)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object p1

    return-object p1
.end method

.method public L0()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->m:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->c:Lcom/zhy/view/flowlayout/TagFlowLayout3;

    invoke-virtual {v0}, Lcom/zhy/view/flowlayout/TagFlowLayout3;->getSelectedPosition()I

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iput v1, p0, Lcom/join/mgps/activity/SearchListActivity1;->t:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->t:I

    .line 5
    :goto_0
    iget v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->t:I

    return v0
.end method

.method public M0()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->m:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->d:Lcom/zhy/view/flowlayout/TagFlowLayout3;

    invoke-virtual {v0}, Lcom/zhy/view/flowlayout/TagFlowLayout3;->getSelectedPosition()I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/SearchListActivity1;->q:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/SearchListActivity1;->q:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/ClassifyGameTagBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ClassifyGameTagBean;->getId()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->s:I

    .line 5
    :cond_1
    iget v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->s:I

    return v0
.end method

.method N0(Ljava/lang/String;)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/SearchListActivity1;->u:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/SearchListActivity1;->K0(Ljava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/join/mgps/activity/SearchListActivity1;->k:Lcom/join/mgps/rpc/d;

    invoke-interface {v2, v1}, Lcom/join/mgps/rpc/d;->e(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/SearchAutoBean;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/SearchListActivity1;->D:Lcom/join/mgps/dto/SearchAutoBean;

    .line 5
    invoke-virtual {v1}, Lcom/join/mgps/dto/SearchAutoBean;->getMessages()Lcom/join/mgps/dto/SearchAutoMessageBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/SearchAutoMessageBean;->getData()Lcom/join/mgps/dto/SearchAutoMessageBean$SearchAutoData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/SearchAutoMessageBean$SearchAutoData;->getSearch_list()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 6
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/SearchListActivity1;->j1(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/SearchListActivity1;->j1(Ljava/util/List;Ljava/lang/String;)V

    .line 8
    throw v1

    :cond_0
    :goto_2
    return-void
.end method

.method P0(Z)V
    .locals 7
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->j:Landroid/widget/LinearLayout;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const-string v3, "scaleY"

    invoke-static {v0, v3, v2}, Lcom/nineoldandroids/animation/l;->r0(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/l;

    move-result-object v0

    .line 2
    iget-object v2, p0, Lcom/join/mgps/activity/SearchListActivity1;->j:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setPivotY(F)V

    .line 3
    iget-object v2, p0, Lcom/join/mgps/activity/SearchListActivity1;->j:Landroid/widget/LinearLayout;

    new-array v3, v1, [F

    fill-array-data v3, :array_1

    const-string v4, "alpha"

    invoke-static {v2, v4, v3}, Lcom/nineoldandroids/animation/l;->r0(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/l;

    move-result-object v2

    .line 4
    iget-object v3, p0, Lcom/join/mgps/activity/SearchListActivity1;->b:Landroid/view/View;

    new-array v5, v1, [F

    fill-array-data v5, :array_2

    invoke-static {v3, v4, v5}, Lcom/nineoldandroids/animation/l;->r0(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/l;

    move-result-object v3

    .line 5
    new-instance v4, Lcom/nineoldandroids/animation/d;

    invoke-direct {v4}, Lcom/nineoldandroids/animation/d;-><init>()V

    const-wide/16 v5, 0xc8

    .line 6
    invoke-virtual {v4, v5, v6}, Lcom/nineoldandroids/animation/d;->D(J)Lcom/nineoldandroids/animation/d;

    .line 7
    new-instance v5, Lcom/join/mgps/activity/SearchListActivity1$h;

    invoke-direct {v5, p0, p1}, Lcom/join/mgps/activity/SearchListActivity1$h;-><init>(Lcom/join/mgps/activity/SearchListActivity1;Z)V

    invoke-virtual {v4, v5}, Lcom/nineoldandroids/animation/a;->a(Lcom/nineoldandroids/animation/a$a;)V

    const/4 p1, 0x3

    new-array p1, p1, [Lcom/nineoldandroids/animation/a;

    const/4 v5, 0x0

    aput-object v0, p1, v5

    const/4 v0, 0x1

    aput-object v2, p1, v0

    aput-object v3, p1, v1

    .line 8
    invoke-virtual {v4, p1}, Lcom/nineoldandroids/animation/d;->C([Lcom/nineoldandroids/animation/a;)V

    .line 9
    invoke-virtual {v4}, Lcom/nineoldandroids/animation/d;->q()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method Q0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->d:Lcom/zhy/view/flowlayout/TagFlowLayout3;

    sget-object v1, Lcom/join/mgps/activity/q2;->a:Lcom/join/mgps/activity/q2;

    invoke-virtual {v0, v1}, Lcom/zhy/view/flowlayout/TagFlowLayout3;->setListener(Lcom/zhy/view/flowlayout/TagFlowLayout3$b;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "\u5168\u90e8"

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "\u4e2d\u6587"

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/SearchListActivity1;->c:Lcom/zhy/view/flowlayout/TagFlowLayout3;

    invoke-virtual {v1, v0}, Lcom/zhy/view/flowlayout/TagFlowLayout3;->setData(Ljava/util/List;)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->c:Lcom/zhy/view/flowlayout/TagFlowLayout3;

    sget-object v1, Lcom/join/mgps/activity/r2;->a:Lcom/join/mgps/activity/r2;

    invoke-virtual {v0, v1}, Lcom/zhy/view/flowlayout/TagFlowLayout3;->setListener(Lcom/zhy/view/flowlayout/TagFlowLayout3$b;)V

    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/activity/SearchListActivity1;->W0()V

    return-void
.end method

.method public R0(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->o:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public S0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->e:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->o:Ljava/lang/String;

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->o:Ljava/lang/String;

    return-object v0
.end method

.method V0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/SearchListActivity1;->S0()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->o:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->l:Lcom/join/mgps/customview/d0;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/join/mgps/activity/SearchListActivity1;->g:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/d0;->getItem(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Ll1/i;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->l:Lcom/join/mgps/customview/d0;

    iget-object v1, p0, Lcom/join/mgps/activity/SearchListActivity1;->g:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/d0;->getItem(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Ll1/i;

    invoke-interface {v0}, Ll1/i;->J()V

    :cond_0
    return-void
.end method

.method W0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->k:Lcom/join/mgps/rpc/d;

    invoke-static {p0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v2}, Lcom/join/mgps/Util/RequestBeanUtil;->getClassifyGameBean(II)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/d;->M0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    move-result v1

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/ClassfyTypeBean;

    .line 5
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/SearchListActivity1;->c1(Lcom/join/mgps/dto/ClassfyTypeBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method X0()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Click;
        value = {
            0x7f0907f9
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/SearchListActivity1;->P0(Z)V

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0xc8

    .line 3
    iget-object v2, p0, Lcom/join/mgps/activity/SearchListActivity1;->j:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/join/mgps/activity/SearchListActivity1$f;

    invoke-direct {v3, p0}, Lcom/join/mgps/activity/SearchListActivity1$f;-><init>(Lcom/join/mgps/activity/SearchListActivity1;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method Y0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
        value = {
            0x7f0910fc
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/SearchListActivity1;->P0(Z)V

    return-void
.end method

.method Z0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
        value = {
            0x7f0910fd
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/SearchListActivity1;->P0(Z)V

    return-void
.end method

.method a1()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0}, Lg1/f;->d()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->z:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 4
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5
    iget-object v2, p0, Lcom/join/mgps/activity/SearchListActivity1;->A:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method afterViews()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iput-object p0, p0, Lcom/join/mgps/activity/SearchListActivity1;->u:Landroid/content/Context;

    .line 2
    invoke-static {}, Lcom/join/mgps/rpc/impl/c;->P1()Lcom/join/mgps/rpc/impl/c;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->k:Lcom/join/mgps/rpc/d;

    .line 3
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/c0;->d(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/SearchListActivity1;->Q0()V

    .line 5
    new-instance v0, Lcom/join/mgps/customview/d0;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/SearchListActivity1;->v:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/join/mgps/activity/SearchListActivity1;->w:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, Lcom/join/mgps/customview/d0;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/ArrayList;Ljava/util/List;)V

    iput-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->l:Lcom/join/mgps/customview/d0;

    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/SearchListActivity1;->g:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->g:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    const-string v0, "\u5168\u90e8"

    const-string v1, "\u6e38\u620f"

    const-string v2, "\u6e38\u620f\u5355"

    const-string v3, "\u5e16\u5b50"

    .line 8
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/join/mgps/activity/SearchListActivity1;->v:Ljava/util/ArrayList;

    invoke-static {}, Lcom/join/mgps/fragment/r4;->C0()Lcom/join/mgps/fragment/r4$n;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/join/mgps/fragment/r4$n;->b(I)Lcom/join/mgps/fragment/r4$n;

    move-result-object v2

    iget-object v4, p0, Lcom/join/mgps/activity/SearchListActivity1;->n:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/join/mgps/fragment/r4$n;->c(Ljava/lang/String;)Lcom/join/mgps/fragment/r4$n;

    move-result-object v2

    iget-object v4, p0, Lcom/join/mgps/activity/SearchListActivity1;->o:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/join/mgps/fragment/r4$n;->d(Ljava/lang/String;)Lcom/join/mgps/fragment/r4$n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/fragment/r4$n;->a()Lcom/join/mgps/fragment/q4;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object v1, p0, Lcom/join/mgps/activity/SearchListActivity1;->w:Ljava/util/List;

    aget-object v2, v0, v3

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/SearchListActivity1;->v:Ljava/util/ArrayList;

    invoke-static {}, Lcom/join/mgps/fragment/t4;->D0()Lcom/join/mgps/fragment/t4$p;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/join/mgps/fragment/t4$p;->b(I)Lcom/join/mgps/fragment/t4$p;

    move-result-object v2

    iget-object v4, p0, Lcom/join/mgps/activity/SearchListActivity1;->n:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/join/mgps/fragment/t4$p;->c(Ljava/lang/String;)Lcom/join/mgps/fragment/t4$p;

    move-result-object v2

    iget-object v4, p0, Lcom/join/mgps/activity/SearchListActivity1;->o:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/join/mgps/fragment/t4$p;->d(Ljava/lang/String;)Lcom/join/mgps/fragment/t4$p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/fragment/t4$p;->a()Lcom/join/mgps/fragment/s4;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object v1, p0, Lcom/join/mgps/activity/SearchListActivity1;->w:Ljava/util/List;

    aget-object v2, v0, v3

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object v1, p0, Lcom/join/mgps/activity/SearchListActivity1;->v:Ljava/util/ArrayList;

    invoke-static {}, Lcom/join/mgps/fragment/t4;->D0()Lcom/join/mgps/fragment/t4$p;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/join/mgps/fragment/t4$p;->b(I)Lcom/join/mgps/fragment/t4$p;

    move-result-object v2

    iget-object v4, p0, Lcom/join/mgps/activity/SearchListActivity1;->n:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/join/mgps/fragment/t4$p;->c(Ljava/lang/String;)Lcom/join/mgps/fragment/t4$p;

    move-result-object v2

    iget-object v4, p0, Lcom/join/mgps/activity/SearchListActivity1;->o:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/join/mgps/fragment/t4$p;->d(Ljava/lang/String;)Lcom/join/mgps/fragment/t4$p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/fragment/t4$p;->a()Lcom/join/mgps/fragment/s4;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object v1, p0, Lcom/join/mgps/activity/SearchListActivity1;->w:Ljava/util/List;

    aget-object v0, v0, v3

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->l:Lcom/join/mgps/customview/d0;

    iget-object v1, p0, Lcom/join/mgps/activity/SearchListActivity1;->v:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/join/mgps/activity/SearchListActivity1;->w:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/customview/d0;->d(Ljava/util/List;Ljava/util/List;)V

    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->l:Lcom/join/mgps/customview/d0;

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->f:Lcom/google/android/material/tabs/TabLayout;

    iget-object v1, p0, Lcom/join/mgps/activity/SearchListActivity1;->g:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 18
    invoke-direct {p0}, Lcom/join/mgps/activity/SearchListActivity1;->O0()V

    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->f:Lcom/google/android/material/tabs/TabLayout;

    new-instance v1, Lcom/join/mgps/activity/SearchListActivity1$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/SearchListActivity1$a;-><init>(Lcom/join/mgps/activity/SearchListActivity1;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->d(Lcom/google/android/material/tabs/TabLayout$d;)V

    .line 20
    invoke-virtual {p0}, Lcom/join/mgps/activity/SearchListActivity1;->a1()V

    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->e:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/join/mgps/activity/SearchListActivity1;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 22
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->e:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/join/mgps/activity/SearchListActivity1;->o:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->e:Landroid/widget/EditText;

    new-instance v1, Lcom/join/mgps/activity/SearchListActivity1$b;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/SearchListActivity1$b;-><init>(Lcom/join/mgps/activity/SearchListActivity1;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 25
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->e:Landroid/widget/EditText;

    new-instance v1, Lcom/join/mgps/activity/SearchListActivity1$c;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/SearchListActivity1$c;-><init>(Lcom/join/mgps/activity/SearchListActivity1;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 26
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->b:Landroid/view/View;

    new-instance v1, Lcom/join/mgps/activity/SearchListActivity1$d;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/SearchListActivity1$d;-><init>(Lcom/join/mgps/activity/SearchListActivity1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    iget v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->m:I

    if-eqz v0, :cond_1

    .line 28
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->i:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 29
    :cond_1
    iget v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->m:I

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/SearchListActivity1;->e1(I)V

    .line 30
    new-instance v0, Lcom/join/mgps/activity/SearchListActivity1$i;

    iget-object v1, p0, Lcom/join/mgps/activity/SearchListActivity1;->u:Landroid/content/Context;

    iget-object v2, p0, Lcom/join/mgps/activity/SearchListActivity1;->F:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2}, Lcom/join/mgps/activity/SearchListActivity1$i;-><init>(Lcom/join/mgps/activity/SearchListActivity1;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->y:Lcom/join/mgps/activity/SearchListActivity1$i;

    .line 31
    iget-object v1, p0, Lcom/join/mgps/activity/SearchListActivity1;->h:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 32
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->h:Landroid/widget/ListView;

    new-instance v1, Lcom/join/mgps/activity/SearchListActivity1$e;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/SearchListActivity1$e;-><init>(Lcom/join/mgps/activity/SearchListActivity1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method back()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method c1(Lcom/join/mgps/dto/ClassfyTypeBean;)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    new-instance v0, Lcom/join/mgps/dto/ClassifyGameTagBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/ClassifyGameTagBean;-><init>()V

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ClassifyGameTagBean;->setId(I)V

    const-string v2, "\u5168\u90e8"

    .line 5
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/ClassifyGameTagBean;->setTitle(Ljava/lang/String;)V

    .line 6
    iget-object v2, p0, Lcom/join/mgps/activity/SearchListActivity1;->q:Ljava/util/List;

    invoke-interface {v2, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->q:Ljava/util/List;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ClassfyTypeBean;->getGame_type()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/SearchListActivity1;->q:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/ClassifyGameTagBean;

    .line 9
    iget-object v1, p0, Lcom/join/mgps/activity/SearchListActivity1;->r:Ljava/util/List;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ClassifyGameTagBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/SearchListActivity1;->d:Lcom/zhy/view/flowlayout/TagFlowLayout3;

    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->r:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/zhy/view/flowlayout/TagFlowLayout3;->setData(Ljava/util/List;)V

    return-void
.end method

.method clear()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->e:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public e1(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->g:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :cond_0
    return-void
.end method

.method public f1(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/SearchListActivity1;->m:I

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/SearchListActivity1;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/SearchListActivity1;->P0(Z)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/SearchListActivity1;->i:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/SearchListActivity1;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/SearchListActivity1;->P0(Z)V

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/SearchListActivity1;->i:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public g1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->h:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public getGameId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->n:Ljava/lang/String;

    return-object v0
.end method

.method h1(I)V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/SearchListActivity1;->j:Landroid/widget/LinearLayout;

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    const-string v2, "scaleY"

    invoke-static {p1, v2, v1}, Lcom/nineoldandroids/animation/l;->r0(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/l;

    move-result-object p1

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/SearchListActivity1;->j:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setPivotY(F)V

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/SearchListActivity1;->j:Landroid/widget/LinearLayout;

    new-array v2, v0, [F

    fill-array-data v2, :array_1

    const-string v3, "alpha"

    invoke-static {v1, v3, v2}, Lcom/nineoldandroids/animation/l;->r0(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/l;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/join/mgps/activity/SearchListActivity1;->b:Landroid/view/View;

    new-array v4, v0, [F

    fill-array-data v4, :array_2

    invoke-static {v2, v3, v4}, Lcom/nineoldandroids/animation/l;->r0(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/l;

    move-result-object v2

    .line 5
    new-instance v3, Lcom/nineoldandroids/animation/d;

    invoke-direct {v3}, Lcom/nineoldandroids/animation/d;-><init>()V

    const-wide/16 v4, 0xc8

    .line 6
    invoke-virtual {v3, v4, v5}, Lcom/nineoldandroids/animation/d;->D(J)Lcom/nineoldandroids/animation/d;

    .line 7
    new-instance v4, Lcom/join/mgps/activity/SearchListActivity1$g;

    invoke-direct {v4, p0}, Lcom/join/mgps/activity/SearchListActivity1$g;-><init>(Lcom/join/mgps/activity/SearchListActivity1;)V

    invoke-virtual {v3, v4}, Lcom/nineoldandroids/animation/a;->a(Lcom/nineoldandroids/animation/a$a;)V

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/nineoldandroids/animation/a;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 p1, 0x1

    aput-object v1, v4, p1

    aput-object v2, v4, v0

    .line 8
    invoke-virtual {v3, v4}, Lcom/nineoldandroids/animation/d;->C([Lcom/nineoldandroids/animation/a;)V

    .line 9
    invoke-virtual {v3}, Lcom/nineoldandroids/animation/d;->q()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method j1(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SearchAutoDataBean;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/join/mgps/activity/SearchListActivity1;->F:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 2
    iget-object p2, p0, Lcom/join/mgps/activity/SearchListActivity1;->D:Lcom/join/mgps/dto/SearchAutoBean;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/join/mgps/dto/SearchAutoBean;->getMessages()Lcom/join/mgps/dto/SearchAutoMessageBean;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/join/mgps/activity/SearchListActivity1;->D:Lcom/join/mgps/dto/SearchAutoBean;

    invoke-virtual {p2}, Lcom/join/mgps/dto/SearchAutoBean;->getMessages()Lcom/join/mgps/dto/SearchAutoMessageBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/join/mgps/dto/SearchAutoMessageBean;->getData()Lcom/join/mgps/dto/SearchAutoMessageBean$SearchAutoData;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/join/mgps/activity/SearchListActivity1;->D:Lcom/join/mgps/dto/SearchAutoBean;

    invoke-virtual {p2}, Lcom/join/mgps/dto/SearchAutoBean;->getMessages()Lcom/join/mgps/dto/SearchAutoMessageBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/join/mgps/dto/SearchAutoMessageBean;->getData()Lcom/join/mgps/dto/SearchAutoMessageBean$SearchAutoData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/join/mgps/dto/SearchAutoMessageBean$SearchAutoData;->getGame_list()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 3
    iget-object p2, p0, Lcom/join/mgps/activity/SearchListActivity1;->E:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 4
    iget-object p2, p0, Lcom/join/mgps/activity/SearchListActivity1;->D:Lcom/join/mgps/dto/SearchAutoBean;

    invoke-virtual {p2}, Lcom/join/mgps/dto/SearchAutoBean;->getMessages()Lcom/join/mgps/dto/SearchAutoMessageBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/join/mgps/dto/SearchAutoMessageBean;->getData()Lcom/join/mgps/dto/SearchAutoMessageBean$SearchAutoData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/join/mgps/dto/SearchAutoMessageBean$SearchAutoData;->getGame_list()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/CollectionBeanSub;

    const/16 v1, 0x67

    .line 5
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    const/16 v1, 0x70

    .line 6
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    const-string v1, "0"

    .line 7
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/DownloadPointBase;->setReMarks(Ljava/lang/String;)V

    .line 8
    new-instance v1, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-direct {v1, v0}, Lcom/join/mgps/business/CollectionBeanSubBusiness;-><init>(Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->F:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->E:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_0
    iget-object p2, p0, Lcom/join/mgps/activity/SearchListActivity1;->E:Ljava/util/List;

    invoke-direct {p0, p2}, Lcom/join/mgps/activity/SearchListActivity1;->i1(Ljava/util/List;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 12
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_2

    .line 13
    iget-object p2, p0, Lcom/join/mgps/activity/SearchListActivity1;->F:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 14
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/SearchListActivity1;->F:Ljava/util/List;

    const/4 p2, 0x0

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 p1, 0x1

    :goto_2
    iput-boolean p1, p0, Lcom/join/mgps/activity/SearchListActivity1;->p:Z

    .line 15
    iget-object p1, p0, Lcom/join/mgps/activity/SearchListActivity1;->h:Landroid/widget/ListView;

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 16
    iget-object p1, p0, Lcom/join/mgps/activity/SearchListActivity1;->y:Lcom/join/mgps/activity/SearchListActivity1$i;

    invoke-virtual {p1}, Lcom/join/mgps/activity/SearchListActivity1$i;->notifyDataSetChanged()V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/SearchListActivity1;->P0(Z)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/c0;->e(Ljava/lang/Object;)V

    .line 2
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onEventMainThread(Lcom/join/mgps/event/l;)V
    .locals 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/event/l;->a()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/event/l;->c()I

    move-result p1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_6

    const/4 v2, 0x3

    if-eq p1, v2, :cond_5

    const/4 v1, 0x5

    if-eq p1, v1, :cond_4

    const/4 v3, 0x6

    if-eq p1, v3, :cond_3

    const/4 v3, 0x7

    if-eq p1, v3, :cond_2

    const/16 v2, 0x8

    if-eq p1, v2, :cond_1

    const/16 v4, 0x30

    if-eq p1, v4, :cond_4

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 p1, 0x9

    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/SearchListActivity1;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 4
    :pswitch_1
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/SearchListActivity1;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    :pswitch_2
    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-virtual {p0, v0, v3}, Lcom/join/mgps/activity/SearchListActivity1;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/SearchListActivity1;->A:Ljava/util/Map;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    .line 7
    invoke-direct {p0}, Lcom/join/mgps/activity/SearchListActivity1;->updateProgressPartly()V

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {v0, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 9
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/SearchListActivity1;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 10
    :cond_3
    invoke-virtual {p0, v0, v3}, Lcom/join/mgps/activity/SearchListActivity1;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 11
    :cond_4
    :pswitch_3
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/SearchListActivity1;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 12
    :cond_5
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/SearchListActivity1;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    :cond_6
    const/4 p1, 0x1

    .line 13
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/SearchListActivity1;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    :cond_7
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 3
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "keyword"

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->x:Z

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->e:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/activity/SearchListActivity1;->V0()V

    :cond_0
    return-void
.end method

.method search()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->h:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->n:Ljava/lang/String;

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/join/mgps/activity/SearchListActivity1;->b1(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/activity/SearchListActivity1;->V0()V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->e:Landroid/widget/EditText;

    invoke-static {v0}, Ly1/a;->b(Landroid/view/View;)V

    const-string v0, "input_method"

    .line 8
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 0

    if-eqz p1, :cond_0

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/SearchListActivity1;->receiveError(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 2
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/SearchListActivity1;->receiveSuccess(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 3
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/SearchListActivity1;->receiveDelete(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 4
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/SearchListActivity1;->receiveStart(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method
