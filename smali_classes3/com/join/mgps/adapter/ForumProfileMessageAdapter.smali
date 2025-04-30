.class public Lcom/join/mgps/adapter/ForumProfileMessageAdapter;
.super Landroid/widget/BaseAdapter;
.source "ForumProfileMessageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/ForumProfileMessageAdapter$d;,
        Lcom/join/mgps/adapter/ForumProfileMessageAdapter$f;,
        Lcom/join/mgps/adapter/ForumProfileMessageAdapter$i;,
        Lcom/join/mgps/adapter/ForumProfileMessageAdapter$e;,
        Lcom/join/mgps/adapter/ForumProfileMessageAdapter$h;,
        Lcom/join/mgps/adapter/ForumProfileMessageAdapter$g;,
        Lcom/join/mgps/adapter/ForumProfileMessageAdapter$k;,
        Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j;,
        Lcom/join/mgps/adapter/ForumProfileMessageAdapter$ViewType;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/join/mgps/adapter/ForumProfileMessageAdapter$d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter;->a:Landroid/content/Context;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter;->b:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/adapter/ForumProfileMessageAdapter;)Lcom/join/mgps/adapter/ForumProfileMessageAdapter$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter;->c:Lcom/join/mgps/adapter/ForumProfileMessageAdapter$d;

    return-object p0
.end method

.method private c(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    if-eqz p2, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$e;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$e;

    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$e;-><init>(Lcom/join/mgps/adapter/ForumProfileMessageAdapter;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c042f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f090c3d

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$e;->d:Landroid/widget/RelativeLayout;

    const v0, 0x7f090c3b

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$e;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f090c3c

    .line 6
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$e;->c:Landroid/widget/TextView;

    .line 7
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 8
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumProfileMessageAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$a;

    if-nez p1, :cond_1

    return-object p2

    .line 9
    :cond_1
    iget-object v0, p1, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$a;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$e;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 11
    :cond_2
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$e;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 12
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$e;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v1, p1, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 13
    :goto_1
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$e;->c:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$a;->c:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/join/mgps/Util/i0;->D1(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object p3, p3, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$e;->d:Landroid/widget/RelativeLayout;

    iget v0, p1, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$a;->a:I

    invoke-direct {p0, p3, v0}, Lcom/join/mgps/adapter/ForumProfileMessageAdapter;->f(Landroid/view/View;I)V

    .line 15
    iget-object v3, p1, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$a;->e:Ljava/lang/String;

    iget v4, p1, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$a;->a:I

    iget v5, p1, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$a;->d:I

    iget v6, p1, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$a;->g:I

    iget-object v7, p1, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$a;->f:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p2

    invoke-virtual/range {v1 .. v7}, Lcom/join/mgps/adapter/ForumProfileMessageAdapter;->i(Landroid/view/View;Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-object p2
.end method

.method private d(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 13

    move-object v8, p0

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$g;

    move-object v9, p2

    goto/16 :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$g;

    invoke-direct {v0, p0}, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$g;-><init>(Lcom/join/mgps/adapter/ForumProfileMessageAdapter;)V

    .line 3
    iget-object v1, v8, Lcom/join/mgps/adapter/ForumProfileMessageAdapter;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c0430

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090514

    .line 4
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$g;->e:Landroid/view/View;

    const v2, 0x7f090511

    .line 5
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v2, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$g;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v2, 0x7f09051b

    .line 6
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$g;->c:Landroid/widget/TextView;

    const v2, 0x7f090510

    .line 7
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$g;->d:Landroid/widget/TextView;

    const v2, 0x7f0904f6

    .line 8
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$g;->f:Landroid/widget/RelativeLayout;

    const v2, 0x7f090a7d

    .line 9
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$g;->g:Landroid/widget/ImageView;

    const v2, 0x7f090d18

    .line 10
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$g;->h:Landroid/widget/ImageView;

    const v2, 0x7f091298

    .line 11
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/customview/VipView;

    iput-object v2, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$g;->i:Lcom/join/mgps/customview/VipView;

    const v2, 0x7f090b5a

    .line 12
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$g;->j:Landroid/widget/ImageView;

    const v2, 0x7f090300

    .line 13
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$g;->k:Landroid/widget/TextView;

    .line 14
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v9, v1

    .line 15
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumProfileMessageAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$b;

    if-nez v10, :cond_1

    return-object v9

    .line 16
    :cond_1
    iget-object v1, v8, Lcom/join/mgps/adapter/ForumProfileMessageAdapter;->a:Landroid/content/Context;

    iget-object v2, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$g;->c:Landroid/widget/TextView;

    iget v3, v10, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$b;->m:I

    iget v4, v10, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$b;->n:I

    const v5, 0x7f06011d

    invoke-static {v1, v2, v3, v4, v5}, Lcom/join/mgps/Util/UtilsMy;->M2(Landroid/content/Context;Landroid/widget/TextView;III)Z

    .line 17
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$g;->i:Lcom/join/mgps/customview/VipView;

    iget v2, v10, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$b;->m:I

    iget v3, v10, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$b;->n:I

    invoke-virtual {v1, v2, v3}, Lcom/join/mgps/customview/VipView;->setVipData(II)V

    .line 18
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$g;->f:Landroid/widget/RelativeLayout;

    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 19
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$g;->g:Landroid/widget/ImageView;

    const/16 v12, 0x8

    invoke-virtual {v1, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 20
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$g;->h:Landroid/widget/ImageView;

    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 21
    iget-boolean v1, v10, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$b;->a:Z

    if-eqz v1, :cond_2

    .line 22
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$g;->e:Landroid/view/View;

    invoke-virtual {v1, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 23
    :cond_2
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$g;->e:Landroid/view/View;

    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 24
    :goto_1
    iget-boolean v1, v10, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$b;->h:Z

    if-eqz v1, :cond_3

    .line 25
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$g;->j:Landroid/widget/ImageView;

    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 26
    :cond_3
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$g;->j:Landroid/widget/ImageView;

    invoke-virtual {v1, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 27
    :goto_2
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$g;->c:Landroid/widget/TextView;

    iget-object v2, v10, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$b;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$g;->d:Landroid/widget/TextView;

    iget-wide v2, v10, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$b;->d:J

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    invoke-static {v2, v3}, Lcom/join/android/app/common/utils/c;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$g;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v2, v10, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$b;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/join/android/app/common/utils/MyImageLoader;->w(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 30
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$g;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    new-instance v2, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$a;

    invoke-direct {v2, p0, v10}, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$a;-><init>(Lcom/join/mgps/adapter/ForumProfileMessageAdapter;Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$b;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    iget-object v3, v10, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$b;->j:Ljava/lang/String;

    iget v4, v10, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$b;->f:I

    iget v5, v10, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$b;->i:I

    iget v6, v10, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$b;->k:I

    iget-object v7, v10, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$b;->c:Ljava/lang/String;

    move-object v1, p0

    move-object v2, v9

    invoke-virtual/range {v1 .. v7}, Lcom/join/mgps/adapter/ForumProfileMessageAdapter;->i(Landroid/view/View;Ljava/lang/String;IIILjava/lang/String;)V

    .line 32
    iget-object v2, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$g;->h:Landroid/widget/ImageView;

    iget-object v3, v10, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$b;->j:Ljava/lang/String;

    iget v4, v10, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$b;->f:I

    iget v5, v10, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$b;->i:I

    iget v6, v10, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$b;->k:I

    iget-object v7, v10, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$b;->c:Ljava/lang/String;

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/join/mgps/adapter/ForumProfileMessageAdapter;->i(Landroid/view/View;Ljava/lang/String;IIILjava/lang/String;)V

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/view/View;

    .line 33
    iget-object v2, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$g;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    aput-object v2, v1, v11

    iget-object v2, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$g;->c:Landroid/widget/TextView;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    iget-object v4, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$g;->d:Landroid/widget/TextView;

    aput-object v4, v1, v2

    invoke-static {v1}, Lcom/join/mgps/Util/i0;->S0([Landroid/view/View;)V

    new-array v1, v3, [Landroid/view/View;

    .line 34
    iget-object v2, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$g;->i:Lcom/join/mgps/customview/VipView;

    aput-object v2, v1, v11

    invoke-static {v1}, Lcom/join/mgps/Util/i0;->U0([Landroid/view/View;)V

    .line 35
    iget-object v1, v10, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$b;->o:Ljava/lang/String;

    .line 36
    iget-object v2, v10, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$b;->p:Ljava/lang/String;

    .line 37
    iget-object v3, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$g;->k:Landroid/widget/TextView;

    if-eqz v3, :cond_6

    .line 38
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 39
    iget-object v3, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$g;->k:Landroid/widget/TextView;

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 40
    iget-object v3, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$g;->k:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object v1, v8, Lcom/join/mgps/adapter/ForumProfileMessageAdapter;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f080436

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 42
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 43
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_4

    const-string v3, "#"

    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_3

    :cond_4
    const-string v2, "#2fccdf"

    .line 45
    :goto_3
    new-instance v3, Landroid/graphics/LightingColorFilter;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v3, v4, v2}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 46
    iget-object v0, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$g;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 47
    :cond_5
    iget-object v0, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$g;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 48
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_4
    return-object v9
.end method

.method private e(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    const-string p3, "#*#"

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$h;

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$h;

    invoke-direct {v0, p0}, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$h;-><init>(Lcom/join/mgps/adapter/ForumProfileMessageAdapter;)V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter;->a:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c0432

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v1, 0x7f090a4c

    .line 4
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$h;->b:Landroid/widget/TextView;

    const v1, 0x7f090a49

    .line 5
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$h;->c:Landroid/view/View;

    .line 6
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 7
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumProfileMessageAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$c;

    if-nez p1, :cond_1

    return-object p2

    .line 8
    :cond_1
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$h;->c:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 9
    iget-boolean v1, p1, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$c;->g:Z

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$c;->c:Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$c;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p1, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$c;->c:Ljava/lang/String;

    .line 11
    :cond_2
    iget-object p3, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$h;->b:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$c;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$c;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$c;->d:Ljava/lang/String;

    invoke-static {p3, v0, v1, v2}, Lcom/join/mgps/Util/i0;->B1(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object v4, p1, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$c;->b:Ljava/lang/String;

    iget v5, p1, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$c;->a:I

    iget v6, p1, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$c;->e:I

    iget v7, p1, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$c;->f:I

    iget-object v8, p1, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$c;->c:Ljava/lang/String;

    move-object v2, p0

    move-object v3, p2

    invoke-virtual/range {v2 .. v8}, Lcom/join/mgps/adapter/ForumProfileMessageAdapter;->i(Landroid/view/View;Ljava/lang/String;IIILjava/lang/String;)V
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

.method private f(Landroid/view/View;I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$b;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$b;-><init>(Lcom/join/mgps/adapter/ForumProfileMessageAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private g(Landroid/view/View;IIILjava/lang/String;)V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$c;

    move-object v0, v6

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$c;-><init>(Lcom/join/mgps/adapter/ForumProfileMessageAdapter;IIILjava/lang/String;)V

    invoke-virtual {p1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private k(Landroid/widget/LinearLayout;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/LinearLayout;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumProfileCommentBean;",
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

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 3
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 4
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    goto :goto_1

    .line 5
    :cond_1
    iget-object v3, p0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter;->a:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0c0432

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 6
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_1
    const v4, 0x7f090a4c

    .line 7
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f090a49

    .line 8
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 9
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v2, v5, :cond_2

    .line 10
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 11
    :cond_2
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    :goto_2
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/ForumBean$ForumProfileCommentBean;

    if-nez v3, :cond_3

    goto :goto_3

    .line 13
    :cond_3
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumBean$ForumProfileCommentBean;->getRnickname()Ljava/lang/String;

    move-result-object v5

    .line 14
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumBean$ForumProfileCommentBean;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumBean$ForumProfileCommentBean;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v6, v5, v3}, Lcom/join/mgps/Util/i0;->B1(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 15
    :cond_4
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_5

    .line 16
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr v1, p2

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->removeViews(II)V

    :cond_5
    return-void

    .line 17
    :cond_6
    :goto_4
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter;->b:Ljava/util/List;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter;->b:Ljava/util/List;

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
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j;

    invoke-virtual {p1}, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j;->a()Ljava/lang/Object;

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
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j;

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j;->b()Lcom/join/mgps/adapter/ForumProfileMessageAdapter$ViewType;

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
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumProfileMessageAdapter;->getItemViewType(I)I

    move-result v0

    .line 2
    sget-object v1, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$ViewType;->PROFILE_HEADER:Lcom/join/mgps/adapter/ForumProfileMessageAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumProfileMessageAdapter;->d(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 4
    :cond_0
    sget-object v1, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$ViewType;->PROFILE_MESSAGE_ITEM:Lcom/join/mgps/adapter/ForumProfileMessageAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumProfileMessageAdapter;->e(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 6
    :cond_1
    sget-object v1, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$ViewType;->PROFILE_FOOTER:Lcom/join/mgps/adapter/ForumProfileMessageAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumProfileMessageAdapter;->c(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_2
    :goto_0
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$ViewType;->values()[Lcom/join/mgps/adapter/ForumProfileMessageAdapter$ViewType;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public h(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter;->b:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter;->b:Ljava/util/List;

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method i(Landroid/view/View;Ljava/lang/String;IIILjava/lang/String;)V
    .locals 7

    const-string v0, "comment"

    .line 1
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move v4, p4

    move-object v6, p6

    .line 2
    invoke-direct/range {v1 .. v6}, Lcom/join/mgps/adapter/ForumProfileMessageAdapter;->g(Landroid/view/View;IIILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "reply"

    .line 3
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    .line 4
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/adapter/ForumProfileMessageAdapter;->g(Landroid/view/View;IIILjava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p4, "praise"

    .line 5
    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_2

    const-string p4, "best"

    .line 6
    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_2

    const-string p4, "bestanswer"

    .line 7
    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 8
    :cond_2
    invoke-direct {p0, p1, p3}, Lcom/join/mgps/adapter/ForumProfileMessageAdapter;->f(Landroid/view/View;I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public j(Lcom/join/mgps/adapter/ForumProfileMessageAdapter$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter;->c:Lcom/join/mgps/adapter/ForumProfileMessageAdapter$d;

    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
