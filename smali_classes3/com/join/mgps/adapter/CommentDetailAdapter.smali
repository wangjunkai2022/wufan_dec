.class public Lcom/join/mgps/adapter/CommentDetailAdapter;
.super Landroid/widget/BaseAdapter;
.source "CommentDetailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/CommentDetailAdapter$h;,
        Lcom/join/mgps/adapter/CommentDetailAdapter$i;,
        Lcom/join/mgps/adapter/CommentDetailAdapter$g;,
        Lcom/join/mgps/adapter/CommentDetailAdapter$k;,
        Lcom/join/mgps/adapter/CommentDetailAdapter$l;,
        Lcom/join/mgps/adapter/CommentDetailAdapter$j;,
        Lcom/join/mgps/adapter/CommentDetailAdapter$ViewType;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/CommentDetailAdapter$j;",
            ">;"
        }
    .end annotation
.end field

.field c:Lcom/join/mgps/adapter/CommentDetailAdapter$h;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/join/mgps/adapter/CommentDetailAdapter;->c:Lcom/join/mgps/adapter/CommentDetailAdapter$h;

    .line 8
    iput-object p1, p0, Lcom/join/mgps/adapter/CommentDetailAdapter;->a:Landroid/content/Context;

    .line 9
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/adapter/CommentDetailAdapter;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/join/mgps/adapter/CommentDetailAdapter$h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/CommentDetailAdapter$j;",
            ">;",
            "Lcom/join/mgps/adapter/CommentDetailAdapter$h;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/adapter/CommentDetailAdapter;->c:Lcom/join/mgps/adapter/CommentDetailAdapter$h;

    .line 3
    iput-object p1, p0, Lcom/join/mgps/adapter/CommentDetailAdapter;->a:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/join/mgps/adapter/CommentDetailAdapter;->b:Ljava/util/List;

    .line 5
    iput-object p3, p0, Lcom/join/mgps/adapter/CommentDetailAdapter;->c:Lcom/join/mgps/adapter/CommentDetailAdapter$h;

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/adapter/CommentDetailAdapter;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/CommentDetailAdapter;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/adapter/CommentDetailAdapter;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/CommentDetailAdapter;->b:Ljava/util/List;

    return-object p0
.end method

.method private g(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-eqz p2, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/CommentDetailAdapter$i;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/CommentDetailAdapter$i;

    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/CommentDetailAdapter$i;-><init>(Lcom/join/mgps/adapter/CommentDetailAdapter;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentDetailAdapter;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0131

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0902bf

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p3, Lcom/join/mgps/adapter/CommentDetailAdapter$i;->b:Landroid/widget/LinearLayout;

    const v0, 0x7f0902c1

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p3, Lcom/join/mgps/adapter/CommentDetailAdapter$i;->c:Landroid/view/View;

    const v0, 0x7f0902c0

    .line 6
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/CommentDetailAdapter$i;->d:Landroid/widget/TextView;

    const v0, 0x7f0902c2

    .line 7
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/CommentDetailAdapter$i;->e:Landroid/widget/TextView;

    const v0, 0x7f0908be

    .line 8
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p3, Lcom/join/mgps/adapter/CommentDetailAdapter$i;->f:Landroid/view/View;

    const v0, 0x7f090169

    .line 9
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p3, Lcom/join/mgps/adapter/CommentDetailAdapter$i;->g:Landroid/view/View;

    .line 10
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 11
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/CommentDetailAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/CommentDetailAdapter$j$b;

    if-nez v0, :cond_1

    return-object p2

    .line 12
    :cond_1
    iget-object v1, v0, Lcom/join/mgps/adapter/CommentDetailAdapter$j$b;->b:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    if-nez v1, :cond_2

    return-object p2

    .line 13
    :cond_2
    iget-boolean v1, v0, Lcom/join/mgps/adapter/CommentDetailAdapter$j$b;->d:Z

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_3

    .line 14
    iget-object v1, p3, Lcom/join/mgps/adapter/CommentDetailAdapter$i;->c:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 15
    :cond_3
    iget-object v1, p3, Lcom/join/mgps/adapter/CommentDetailAdapter$i;->c:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 16
    :goto_1
    iget-boolean v1, v0, Lcom/join/mgps/adapter/CommentDetailAdapter$j$b;->g:Z

    if-nez v1, :cond_4

    .line 17
    iget-object v1, p3, Lcom/join/mgps/adapter/CommentDetailAdapter$i;->f:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 18
    iget-object v1, p3, Lcom/join/mgps/adapter/CommentDetailAdapter$i;->g:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 19
    :cond_4
    iget-object v1, p3, Lcom/join/mgps/adapter/CommentDetailAdapter$i;->f:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 20
    iget-object v1, p3, Lcom/join/mgps/adapter/CommentDetailAdapter$i;->g:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 21
    :goto_2
    iget-object v1, v0, Lcom/join/mgps/adapter/CommentDetailAdapter$j$b;->b:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getSub_comment()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 22
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_5

    .line 23
    iget-object p3, p3, Lcom/join/mgps/adapter/CommentDetailAdapter$i;->b:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-direct {p0, p3, v0, v1, p1}, Lcom/join/mgps/adapter/CommentDetailAdapter;->i(Landroid/view/View;Lcom/join/mgps/adapter/CommentDetailAdapter$j$b;ZI)V

    goto :goto_3

    .line 24
    :cond_5
    iget-object p1, p3, Lcom/join/mgps/adapter/CommentDetailAdapter$i;->b:Landroid/widget/LinearLayout;

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

.method private i(Landroid/view/View;Lcom/join/mgps/adapter/CommentDetailAdapter$j$b;ZI)V
    .locals 28

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    const-string v10, "@"

    const-string v11, ":"

    const-string v12, " "

    .line 1
    iget-object v13, v9, Lcom/join/mgps/adapter/CommentDetailAdapter$j$b;->a:Ljava/lang/String;

    .line 2
    iget v14, v9, Lcom/join/mgps/adapter/CommentDetailAdapter$j$b;->e:I

    .line 3
    iget-boolean v15, v9, Lcom/join/mgps/adapter/CommentDetailAdapter$j$b;->f:Z

    .line 4
    iget-object v7, v9, Lcom/join/mgps/adapter/CommentDetailAdapter$j$b;->b:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    .line 5
    invoke-virtual {v7}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getSub_comment()Ljava/util/List;

    move-result-object v6

    .line 6
    move-object/from16 v5, p1

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 7
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v0, v4, 0x1

    if-ge v2, v0, :cond_a

    const/4 v0, 0x3

    if-le v2, v0, :cond_0

    if-eqz p3, :cond_0

    move/from16 v3, p4

    move v9, v2

    move-object v1, v5

    move-object/from16 v27, v7

    move-object v2, v8

    move/from16 v26, v14

    move/from16 v25, v15

    const/4 v5, 0x0

    move v15, v4

    move-object v4, v6

    goto/16 :goto_b

    .line 8
    :cond_0
    iget-object v1, v8, Lcom/join/mgps/adapter/CommentDetailAdapter;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f0c0107

    const/4 v0, 0x0

    invoke-virtual {v1, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 9
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    move-object/from16 v16, v5

    const/4 v5, -0x2

    invoke-direct {v0, v1, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 10
    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f0902c0

    .line 11
    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0902c2

    .line 12
    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-ne v2, v4, :cond_2

    const/4 v5, 0x3

    if-gt v4, v5, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    const/16 v5, 0x8

    goto :goto_3

    :cond_2
    :goto_2
    if-lez v14, :cond_3

    if-eqz v15, :cond_3

    if-ne v2, v4, :cond_3

    goto :goto_1

    .line 13
    :goto_3
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v5, 0x0

    .line 14
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v0, "\u6536\u8d77"

    .line 15
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    new-instance v0, Lcom/join/mgps/adapter/CommentDetailAdapter$e;

    move-object v1, v0

    move v9, v2

    move-object/from16 v2, p0

    move-object v5, v3

    move/from16 v25, v15

    const/4 v15, 0x0

    move v3, v14

    move v15, v4

    move/from16 v4, p4

    move/from16 v26, v14

    move-object v14, v5

    move-object v5, v13

    move-object v8, v6

    move-object/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/join/mgps/adapter/CommentDetailAdapter$e;-><init>(Lcom/join/mgps/adapter/CommentDetailAdapter;IILjava/lang/String;Lcom/join/mgps/adapter/CommentDetailAdapter$j$b;)V

    invoke-virtual {v14, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move/from16 v3, p4

    move-object/from16 v27, v7

    :goto_4
    move-object v4, v8

    move-object/from16 v1, v16

    const/4 v5, 0x0

    goto/16 :goto_9

    :cond_3
    move v9, v2

    move-object v8, v6

    move/from16 v26, v14

    move/from16 v25, v15

    move-object v14, v3

    move v15, v4

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-ne v9, v3, :cond_4

    if-eqz p3, :cond_4

    if-le v15, v3, :cond_4

    const/16 v3, 0x8

    .line 17
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v3, 0x0

    .line 18
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 19
    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f110091

    new-array v2, v2, [Ljava/lang/Object;

    add-int/lit8 v5, v15, -0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-virtual {v0, v4, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    new-instance v0, Lcom/join/mgps/adapter/CommentDetailAdapter$f;

    move-object v1, v0

    move-object/from16 v2, p0

    move v3, v15

    move-object v4, v7

    move-object v5, v13

    move-object/from16 v6, p2

    move-object/from16 v27, v7

    move/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/join/mgps/adapter/CommentDetailAdapter$f;-><init>(Lcom/join/mgps/adapter/CommentDetailAdapter;ILcom/join/mgps/dto/CommentDetailBean$MainCommentBean;Ljava/lang/String;Lcom/join/mgps/adapter/CommentDetailAdapter$j$b;I)V

    invoke-virtual {v14, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move/from16 v3, p4

    goto :goto_4

    :cond_4
    move-object/from16 v27, v7

    if-ge v9, v15, :cond_9

    const/4 v3, 0x3

    if-lt v9, v3, :cond_5

    if-eqz p3, :cond_5

    goto/16 :goto_a

    :cond_5
    const/4 v3, 0x0

    .line 21
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v3, 0x8

    .line 22
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 23
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean$SubCommentBean;

    .line 24
    invoke-virtual {v1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean$SubCommentBean;->getContent()Ljava/lang/String;

    move-result-object v3

    .line 25
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean$SubCommentBean;->getUser_name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const-string v21, ""

    .line 26
    invoke-virtual {v3, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 27
    invoke-virtual {v3, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 28
    array-length v5, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_7

    const/4 v5, 0x0

    .line 29
    :try_start_1
    aget-object v3, v4, v5

    invoke-virtual {v3, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 30
    aget-object v3, v4, v5

    invoke-virtual {v3, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 31
    aget-object v6, v3, v2

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 32
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v3, v2

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v21, v3

    .line 33
    :cond_6
    invoke-virtual {v1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean$SubCommentBean;->getVip_level()I

    move-result v19

    .line 34
    invoke-virtual {v1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean$SubCommentBean;->getSvip_level()I

    move-result v20

    invoke-virtual {v1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean$SubCommentBean;->getReply_vip_level()I

    move-result v22

    .line 35
    invoke-virtual {v1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean$SubCommentBean;->getReply_svip_level()I

    move-result v23

    aget-object v24, v4, v2

    move-object/from16 v17, v0

    .line 36
    invoke-static/range {v17 .. v24}, Lcom/join/mgps/Util/i0;->v1(Landroid/widget/TextView;Ljava/lang/String;IILjava/lang/String;IILjava/lang/String;)V

    goto :goto_5

    :cond_7
    const/4 v5, 0x0

    .line 37
    invoke-virtual {v1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean$SubCommentBean;->getVip_level()I

    move-result v19

    .line 38
    invoke-virtual {v1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean$SubCommentBean;->getSvip_level()I

    move-result v20

    invoke-virtual {v1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean$SubCommentBean;->getReply_vip_level()I

    move-result v22

    .line 39
    invoke-virtual {v1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean$SubCommentBean;->getReply_svip_level()I

    move-result v23

    move-object/from16 v17, v0

    move-object/from16 v24, v3

    .line 40
    invoke-static/range {v17 .. v24}, Lcom/join/mgps/Util/i0;->v1(Landroid/widget/TextView;Ljava/lang/String;IILjava/lang/String;IILjava/lang/String;)V

    goto :goto_5

    :cond_8
    const/4 v5, 0x0

    .line 41
    invoke-virtual {v1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean$SubCommentBean;->getVip_level()I

    move-result v19

    .line 42
    invoke-virtual {v1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean$SubCommentBean;->getSvip_level()I

    move-result v20

    invoke-virtual {v1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean$SubCommentBean;->getReply_vip_level()I

    move-result v22

    .line 43
    invoke-virtual {v1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean$SubCommentBean;->getReply_svip_level()I

    move-result v23

    move-object/from16 v17, v0

    move-object/from16 v24, v3

    .line 44
    invoke-static/range {v17 .. v24}, Lcom/join/mgps/Util/i0;->v1(Landroid/widget/TextView;Ljava/lang/String;IILjava/lang/String;IILjava/lang/String;)V

    .line 45
    :goto_5
    invoke-virtual/range {v27 .. v27}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getPn()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v2, p0

    move/from16 v3, p4

    move-object v4, v8

    :try_start_2
    invoke-direct {v2, v14, v1, v0, v3}, Lcom/join/mgps/adapter/CommentDetailAdapter;->n(Landroid/view/View;Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean$SubCommentBean;II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_8

    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    const/4 v5, 0x0

    :goto_6
    move-object/from16 v2, p0

    move/from16 v3, p4

    move-object v4, v8

    .line 46
    :goto_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_8
    move-object/from16 v1, v16

    .line 47
    :goto_9
    invoke-virtual {v1, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_b

    :cond_9
    :goto_a
    move-object/from16 v2, p0

    move/from16 v3, p4

    move-object v4, v8

    move-object/from16 v1, v16

    const/4 v5, 0x0

    :goto_b
    add-int/lit8 v0, v9, 0x1

    move-object/from16 v9, p2

    move-object v5, v1

    move-object v8, v2

    move-object v6, v4

    move v4, v15

    move/from16 v15, v25

    move/from16 v14, v26

    move-object/from16 v7, v27

    move v2, v0

    goto/16 :goto_0

    :cond_a
    move-object v2, v8

    return-void
.end method

.method private n(Landroid/view/View;Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean$SubCommentBean;II)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/CommentDetailAdapter$c;

    invoke-direct {v0, p0, p4, p2, p3}, Lcom/join/mgps/adapter/CommentDetailAdapter$c;-><init>(Lcom/join/mgps/adapter/CommentDetailAdapter;ILcom/join/mgps/dto/CommentDetailBean$MainCommentBean$SubCommentBean;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private o(Landroid/view/View;Landroid/widget/TextView;Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/CommentDetailAdapter$b;

    invoke-direct {v0, p0, p3, p4, p2}, Lcom/join/mgps/adapter/CommentDetailAdapter$b;-><init>(Lcom/join/mgps/adapter/CommentDetailAdapter;Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;ILandroid/widget/TextView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private p(Landroid/view/View;Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;ILcom/join/mgps/customview/CopyTextView;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/CommentDetailAdapter$d;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/join/mgps/adapter/CommentDetailAdapter$d;-><init>(Lcom/join/mgps/adapter/CommentDetailAdapter;Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;ILcom/join/mgps/customview/CopyTextView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public c(I)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/CommentDetailAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/CommentDetailAdapter$j$a;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p1, Lcom/join/mgps/adapter/CommentDetailAdapter$j$a;->a:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getPraise_count()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 3
    iget-object v2, p1, Lcom/join/mgps/adapter/CommentDetailAdapter$j$a;->a:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setIs_praise(I)V

    .line 4
    iget-object p1, p1, Lcom/join/mgps/adapter/CommentDetailAdapter$j$a;->a:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v3, 0x1

    add-long/2addr v0, v3

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setPraise_count(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/adapter/CommentDetailAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method d(Ljava/lang/String;Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;IZ)Lcom/join/mgps/adapter/CommentDetailAdapter$j;
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/CommentDetailAdapter$j;

    sget-object v1, Lcom/join/mgps/adapter/CommentDetailAdapter$ViewType;->REPLY:Lcom/join/mgps/adapter/CommentDetailAdapter$ViewType;

    new-instance v2, Lcom/join/mgps/adapter/CommentDetailAdapter$j$b;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/join/mgps/adapter/CommentDetailAdapter$j$b;-><init>(Ljava/lang/String;Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;IZ)V

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/CommentDetailAdapter$j;-><init>(Lcom/join/mgps/adapter/CommentDetailAdapter$ViewType;Ljava/lang/Object;)V

    return-object v0
.end method

.method public e(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/CommentDetailAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/CommentDetailAdapter$j$a;

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p2, :cond_2

    if-eq p4, v2, :cond_1

    if-eq p4, v0, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    new-instance p2, Lcom/join/mgps/adapter/CommentDetailAdapter$g;

    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/CommentDetailAdapter$g;-><init>(Lcom/join/mgps/adapter/CommentDetailAdapter;)V

    .line 3
    iget-object v3, p0, Lcom/join/mgps/adapter/CommentDetailAdapter;->a:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0c0132

    invoke-virtual {v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v3, 0x7f0909eb

    .line 4
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    invoke-static {p2, v3}, Lcom/join/mgps/adapter/CommentDetailAdapter$g;->c(Lcom/join/mgps/adapter/CommentDetailAdapter$g;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    const v3, 0x7f091245

    .line 5
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {p2, v3}, Lcom/join/mgps/adapter/CommentDetailAdapter$g;->e(Lcom/join/mgps/adapter/CommentDetailAdapter$g;Lcom/facebook/drawee/view/SimpleDraweeView;)Lcom/facebook/drawee/view/SimpleDraweeView;

    const v3, 0x7f0908b8

    .line 6
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/customview/VipView;

    invoke-static {p2, v3}, Lcom/join/mgps/adapter/CommentDetailAdapter$g;->g(Lcom/join/mgps/adapter/CommentDetailAdapter$g;Lcom/join/mgps/customview/VipView;)Lcom/join/mgps/customview/VipView;

    const v3, 0x7f090bdf

    .line 7
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-static {p2, v3}, Lcom/join/mgps/adapter/CommentDetailAdapter$g;->i(Lcom/join/mgps/adapter/CommentDetailAdapter$g;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    const v3, 0x7f091248

    .line 8
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {p2, v3}, Lcom/join/mgps/adapter/CommentDetailAdapter$g;->k(Lcom/join/mgps/adapter/CommentDetailAdapter$g;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v3, 0x7f090ff4

    .line 9
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {p2, v3}, Lcom/join/mgps/adapter/CommentDetailAdapter$g;->m(Lcom/join/mgps/adapter/CommentDetailAdapter$g;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v3, 0x7f0902eb

    .line 10
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/customview/CopyTextView;

    invoke-static {p2, v3}, Lcom/join/mgps/adapter/CommentDetailAdapter$g;->o(Lcom/join/mgps/adapter/CommentDetailAdapter$g;Lcom/join/mgps/customview/CopyTextView;)Lcom/join/mgps/customview/CopyTextView;

    const v3, 0x7f0902f1

    .line 11
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/customview/CopyTextViewNew;

    invoke-static {p2, v3}, Lcom/join/mgps/adapter/CommentDetailAdapter$g;->q(Lcom/join/mgps/adapter/CommentDetailAdapter$g;Lcom/join/mgps/customview/CopyTextViewNew;)Lcom/join/mgps/customview/CopyTextViewNew;

    const v3, 0x7f090be0

    .line 12
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {p2, v3}, Lcom/join/mgps/adapter/CommentDetailAdapter$g;->s(Lcom/join/mgps/adapter/CommentDetailAdapter$g;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v3, 0x7f090781

    .line 13
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {p2, v3}, Lcom/join/mgps/adapter/CommentDetailAdapter$g;->b(Lcom/join/mgps/adapter/CommentDetailAdapter$g;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v3, 0x7f0908bf

    .line 14
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p2, Lcom/join/mgps/adapter/CommentDetailAdapter$g;->l:Landroid/view/View;

    .line 15
    invoke-virtual {v1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v5, v1

    move-object v1, p2

    move-object p2, v5

    goto :goto_0

    .line 16
    :cond_1
    new-instance p2, Lcom/join/mgps/adapter/CommentDetailAdapter$k;

    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/CommentDetailAdapter$k;-><init>(Lcom/join/mgps/adapter/CommentDetailAdapter;)V

    .line 17
    iget-object v3, p0, Lcom/join/mgps/adapter/CommentDetailAdapter;->a:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0c029e

    invoke-virtual {v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f09100f

    .line 18
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {p2, v4}, Lcom/join/mgps/adapter/CommentDetailAdapter$k;->a(Lcom/join/mgps/adapter/CommentDetailAdapter$k;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 19
    invoke-virtual {v3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object p2, v3

    goto :goto_0

    :cond_2
    if-eq p4, v2, :cond_4

    if-eq p4, v0, :cond_3

    goto :goto_0

    .line 20
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/adapter/CommentDetailAdapter$g;

    goto :goto_0

    .line 21
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/adapter/CommentDetailAdapter$k;

    :goto_0
    if-nez p3, :cond_5

    return-object p2

    .line 22
    :cond_5
    iget-object p3, p3, Lcom/join/mgps/adapter/CommentDetailAdapter$j$a;->a:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    if-eq p4, v0, :cond_6

    goto/16 :goto_4

    .line 23
    :cond_6
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getAdd_times()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "000"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 24
    invoke-static {v1}, Lcom/join/mgps/adapter/CommentDetailAdapter$g;->l(Lcom/join/mgps/adapter/CommentDetailAdapter$g;)Landroid/widget/TextView;

    move-result-object p4

    invoke-static {v3, v4}, Lcom/join/android/app/common/utils/c;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    invoke-static {v1}, Lcom/join/mgps/adapter/CommentDetailAdapter$g;->j(Lcom/join/mgps/adapter/CommentDetailAdapter$g;)Landroid/widget/TextView;

    move-result-object p4

    const/high16 v0, -0x1000000

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 26
    invoke-virtual {p3}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getVip_level()I

    move-result p4

    if-lez p4, :cond_7

    .line 27
    invoke-static {v1}, Lcom/join/mgps/adapter/CommentDetailAdapter$g;->j(Lcom/join/mgps/adapter/CommentDetailAdapter$g;)Landroid/widget/TextView;

    move-result-object p4

    iget-object v0, p0, Lcom/join/mgps/adapter/CommentDetailAdapter;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0603cf

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 28
    :cond_7
    invoke-virtual {p3}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getSvip_level()I

    move-result p4

    if-lez p4, :cond_8

    .line 29
    invoke-static {v1}, Lcom/join/mgps/adapter/CommentDetailAdapter$g;->j(Lcom/join/mgps/adapter/CommentDetailAdapter$g;)Landroid/widget/TextView;

    move-result-object p4

    iget-object v0, p0, Lcom/join/mgps/adapter/CommentDetailAdapter;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0603d0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 30
    :cond_8
    invoke-static {v1}, Lcom/join/mgps/adapter/CommentDetailAdapter$g;->f(Lcom/join/mgps/adapter/CommentDetailAdapter$g;)Lcom/join/mgps/customview/VipView;

    move-result-object p4

    invoke-virtual {p3}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getVip_level()I

    move-result v0

    invoke-virtual {p3}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getSvip_level()I

    move-result v3

    invoke-virtual {p4, v0, v3}, Lcom/join/mgps/customview/VipView;->setVipData(II)V

    .line 31
    invoke-virtual {p3}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getContent()Ljava/lang/String;

    move-result-object p4

    const-string v0, ":"

    .line 32
    invoke-virtual {p4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p4, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 33
    invoke-virtual {p4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    aget-object p4, p4, v2

    .line 34
    :cond_9
    invoke-static {v1}, Lcom/join/mgps/adapter/CommentDetailAdapter$g;->p(Lcom/join/mgps/adapter/CommentDetailAdapter$g;)Lcom/join/mgps/customview/CopyTextViewNew;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/join/mgps/customview/CopyTextViewNew;->setText(Ljava/lang/String;)V

    .line 35
    invoke-static {v1}, Lcom/join/mgps/adapter/CommentDetailAdapter$g;->r(Lcom/join/mgps/adapter/CommentDetailAdapter$g;)Landroid/widget/TextView;

    move-result-object p4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getPraise_count()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    invoke-virtual {p3}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getIs_praise()I

    move-result p4

    if-ne p4, v2, :cond_a

    .line 37
    invoke-static {v1}, Lcom/join/mgps/adapter/CommentDetailAdapter$g;->h(Lcom/join/mgps/adapter/CommentDetailAdapter$g;)Landroid/widget/ImageView;

    move-result-object p4

    const v0, 0x7f08075e

    invoke-virtual {p4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 38
    :cond_a
    invoke-static {v1}, Lcom/join/mgps/adapter/CommentDetailAdapter$g;->h(Lcom/join/mgps/adapter/CommentDetailAdapter$g;)Landroid/widget/ImageView;

    move-result-object p4

    const v0, 0x7f080c9c

    invoke-virtual {p4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 39
    :goto_1
    iget-object p4, p0, Lcom/join/mgps/adapter/CommentDetailAdapter;->a:Landroid/content/Context;

    invoke-virtual {p3}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getHead_portrait()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lcom/join/mgps/adapter/CommentDetailAdapter$g;->d(Lcom/join/mgps/adapter/CommentDetailAdapter$g;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v2

    invoke-static {p4, v0, v2}, Lcom/join/mgps/Util/UtilsMy;->E2(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/drawee/view/SimpleDraweeView;)V

    .line 40
    invoke-static {v1}, Lcom/join/mgps/adapter/CommentDetailAdapter$g;->d(Lcom/join/mgps/adapter/CommentDetailAdapter$g;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object p4

    new-instance v0, Lcom/join/mgps/adapter/CommentDetailAdapter$a;

    invoke-direct {v0, p0, p3}, Lcom/join/mgps/adapter/CommentDetailAdapter$a;-><init>(Lcom/join/mgps/adapter/CommentDetailAdapter;Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;)V

    invoke-virtual {p4, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    invoke-static {v1}, Lcom/join/mgps/adapter/CommentDetailAdapter$g;->j(Lcom/join/mgps/adapter/CommentDetailAdapter$g;)Landroid/widget/TextView;

    move-result-object p4

    invoke-virtual {p3}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getUser_name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    invoke-virtual {p3}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getRank()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    const/16 v0, 0x8

    const/4 v2, 0x0

    if-eqz p4, :cond_b

    .line 43
    invoke-static {v1}, Lcom/join/mgps/adapter/CommentDetailAdapter$g;->a(Lcom/join/mgps/adapter/CommentDetailAdapter$g;)Landroid/widget/TextView;

    move-result-object p4

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 44
    :cond_b
    invoke-static {v1}, Lcom/join/mgps/adapter/CommentDetailAdapter$g;->a(Lcom/join/mgps/adapter/CommentDetailAdapter$g;)Landroid/widget/TextView;

    move-result-object p4

    invoke-virtual {p4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 45
    invoke-static {v1}, Lcom/join/mgps/adapter/CommentDetailAdapter$g;->a(Lcom/join/mgps/adapter/CommentDetailAdapter$g;)Landroid/widget/TextView;

    move-result-object p4

    invoke-virtual {p3}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getRank()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    if-nez p1, :cond_c

    .line 46
    iget-object p4, v1, Lcom/join/mgps/adapter/CommentDetailAdapter$g;->l:Landroid/view/View;

    invoke-virtual {p4, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 47
    :cond_c
    iget-object p4, v1, Lcom/join/mgps/adapter/CommentDetailAdapter$g;->l:Landroid/view/View;

    invoke-virtual {p4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 48
    :goto_3
    invoke-static {v1}, Lcom/join/mgps/adapter/CommentDetailAdapter$g;->h(Lcom/join/mgps/adapter/CommentDetailAdapter$g;)Landroid/widget/ImageView;

    move-result-object p4

    invoke-static {v1}, Lcom/join/mgps/adapter/CommentDetailAdapter$g;->r(Lcom/join/mgps/adapter/CommentDetailAdapter$g;)Landroid/widget/TextView;

    move-result-object v0

    invoke-direct {p0, p4, v0, p3, p1}, Lcom/join/mgps/adapter/CommentDetailAdapter;->o(Landroid/view/View;Landroid/widget/TextView;Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;I)V

    .line 49
    invoke-static {v1}, Lcom/join/mgps/adapter/CommentDetailAdapter$g;->n(Lcom/join/mgps/adapter/CommentDetailAdapter$g;)Lcom/join/mgps/customview/CopyTextView;

    move-result-object p4

    invoke-direct {p0, p2, p3, p1, p4}, Lcom/join/mgps/adapter/CommentDetailAdapter;->p(Landroid/view/View;Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;ILcom/join/mgps/customview/CopyTextView;)V

    .line 50
    invoke-static {v1}, Lcom/join/mgps/adapter/CommentDetailAdapter$g;->p(Lcom/join/mgps/adapter/CommentDetailAdapter$g;)Lcom/join/mgps/customview/CopyTextViewNew;

    move-result-object p4

    invoke-static {v1}, Lcom/join/mgps/adapter/CommentDetailAdapter$g;->n(Lcom/join/mgps/adapter/CommentDetailAdapter$g;)Lcom/join/mgps/customview/CopyTextView;

    move-result-object v0

    invoke-direct {p0, p4, p3, p1, v0}, Lcom/join/mgps/adapter/CommentDetailAdapter;->p(Landroid/view/View;Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;ILcom/join/mgps/customview/CopyTextView;)V

    :goto_4
    return-object p2
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/CommentDetailAdapter$j;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentDetailAdapter;->b:Ljava/util/List;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentDetailAdapter;->b:Ljava/util/List;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentDetailAdapter;->b:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentDetailAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/CommentDetailAdapter$j;

    invoke-virtual {p1}, Lcom/join/mgps/adapter/CommentDetailAdapter$j;->a()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentDetailAdapter;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/CommentDetailAdapter$j;

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/adapter/CommentDetailAdapter$j;->b()Lcom/join/mgps/adapter/CommentDetailAdapter$ViewType;

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
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/CommentDetailAdapter;->getItemViewType(I)I

    move-result v0

    .line 2
    sget-object v1, Lcom/join/mgps/adapter/CommentDetailAdapter$ViewType;->COMMENT:Lcom/join/mgps/adapter/CommentDetailAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    .line 3
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/join/mgps/adapter/CommentDetailAdapter;->e(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 4
    :cond_0
    sget-object v1, Lcom/join/mgps/adapter/CommentDetailAdapter$ViewType;->TITLE:Lcom/join/mgps/adapter/CommentDetailAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/join/mgps/adapter/CommentDetailAdapter;->e(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 6
    :cond_1
    sget-object v1, Lcom/join/mgps/adapter/InformationAdapter$ViewType;->REPLY:Lcom/join/mgps/adapter/InformationAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/CommentDetailAdapter;->g(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_2
    :goto_0
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/adapter/CommentDetailAdapter$ViewType;->values()[Lcom/join/mgps/adapter/CommentDetailAdapter$ViewType;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public h()Lcom/join/mgps/adapter/CommentDetailAdapter$h;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentDetailAdapter;->c:Lcom/join/mgps/adapter/CommentDetailAdapter$h;

    return-object v0
.end method

.method public j(I)V
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/CommentDetailAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/CommentDetailAdapter$j$a;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p1, Lcom/join/mgps/adapter/CommentDetailAdapter$j$a;->a:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getPraise_count()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 3
    iget-object v2, p1, Lcom/join/mgps/adapter/CommentDetailAdapter$j$a;->a:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getIs_praise()I

    move-result v2

    const-string v3, ""

    const-wide/16 v4, 0x1

    const/4 v6, 0x1

    if-ne v2, v6, :cond_2

    .line 4
    iget-object v2, p1, Lcom/join/mgps/adapter/CommentDetailAdapter$j$a;->a:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setIs_praise(I)V

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-gez v2, :cond_1

    .line 5
    iget-object p1, p1, Lcom/join/mgps/adapter/CommentDetailAdapter$j$a;->a:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    const-string v0, "0"

    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setPraise_count(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p1, Lcom/join/mgps/adapter/CommentDetailAdapter$j$a;->a:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setPraise_count(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object v2, p1, Lcom/join/mgps/adapter/CommentDetailAdapter$j$a;->a:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    invoke-virtual {v2, v6}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setIs_praise(I)V

    .line 8
    iget-object p1, p1, Lcom/join/mgps/adapter/CommentDetailAdapter$j$a;->a:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-long/2addr v0, v4

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setPraise_count(Ljava/lang/String;)V

    .line 9
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/adapter/CommentDetailAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method k(Lcom/join/mgps/adapter/CommentDetailAdapter$j;Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/join/mgps/adapter/CommentDetailAdapter$j;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/CommentDetailAdapter$j$b;

    .line 2
    iput-boolean p2, p1, Lcom/join/mgps/adapter/CommentDetailAdapter$j$b;->g:Z
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

.method public l(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/CommentDetailAdapter$j;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentDetailAdapter;->b:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentDetailAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentDetailAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public m(Lcom/join/mgps/adapter/CommentDetailAdapter$h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/CommentDetailAdapter;->c:Lcom/join/mgps/adapter/CommentDetailAdapter$h;

    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public q(I)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/CommentDetailAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/CommentDetailAdapter$j$a;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p1, Lcom/join/mgps/adapter/CommentDetailAdapter$j$a;->a:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getPraise_count()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 3
    iget-object v2, p1, Lcom/join/mgps/adapter/CommentDetailAdapter$j$a;->a:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setIs_praise(I)V

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 4
    iget-object p1, p1, Lcom/join/mgps/adapter/CommentDetailAdapter$j$a;->a:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    const-string v0, "0"

    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setPraise_count(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p1, Lcom/join/mgps/adapter/CommentDetailAdapter$j$a;->a:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setPraise_count(Ljava/lang/String;)V

    .line 6
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/adapter/CommentDetailAdapter;->notifyDataSetChanged()V

    return-void
.end method
