.class public Lcom/join/mgps/activity/TagAddActivity;
.super Lcom/BaseFragmentActivity;
.source "TagAddActivity.java"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c0070
.end annotation


# instance fields
.field a:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field b:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field c:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field f:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field g:Lcom/join/mgps/customview/FlowLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h:Lcom/join/mgps/customview/FlowLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field i:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field j:Landroidx/core/widget/NestedScrollView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field k:Landroid/widget/EditText;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field l:Landroid/widget/ListView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field m:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/res/StringRes;
        resName = "net_excption"
    .end annotation
.end field

.field n:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/res/StringRes;
        resName = "connect_server_excption"
    .end annotation
.end field

.field o:Lcom/join/mgps/rpc/impl/h;

.field p:Ljava/lang/String;

.field q:Lcom/papa91/arc/adapter/SimpleBaseAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/papa91/arc/adapter/SimpleBaseAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field r:Landroid/os/Handler;

.field s:Lcom/join/mgps/dto/ListUserCustomGameTagBean;

.field t:Z

.field u:Lcom/join/mgps/dialog/x0;

.field v:Landroid/text/TextWatcher;

.field w:Ljava/lang/Runnable;

.field x:Landroidx/appcompat/app/AlertDialog$Builder;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/BaseFragmentActivity;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/join/mgps/activity/TagAddActivity;->p:Ljava/lang/String;

    .line 3
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/TagAddActivity;->r:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/join/mgps/activity/TagAddActivity;->t:Z

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/TagAddActivity;->u:Lcom/join/mgps/dialog/x0;

    .line 6
    new-instance v1, Lcom/join/mgps/activity/TagAddActivity$d;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/TagAddActivity$d;-><init>(Lcom/join/mgps/activity/TagAddActivity;)V

    iput-object v1, p0, Lcom/join/mgps/activity/TagAddActivity;->v:Landroid/text/TextWatcher;

    .line 7
    new-instance v1, Lcom/join/mgps/activity/TagAddActivity$e;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/TagAddActivity$e;-><init>(Lcom/join/mgps/activity/TagAddActivity;)V

    iput-object v1, p0, Lcom/join/mgps/activity/TagAddActivity;->w:Ljava/lang/Runnable;

    .line 8
    iput-object v0, p0, Lcom/join/mgps/activity/TagAddActivity;->x:Landroidx/appcompat/app/AlertDialog$Builder;

    return-void
.end method

.method static synthetic D0(Lcom/join/mgps/activity/TagAddActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/TagAddActivity;->Q0()V

    return-void
.end method

.method static synthetic E0(Lcom/join/mgps/activity/TagAddActivity;Lcom/join/mgps/dto/GameTagsBean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/TagAddActivity;->R0(Lcom/join/mgps/dto/GameTagsBean;)V

    return-void
.end method

.method private H0(Lcom/join/mgps/dto/GameTagsBean;Lcom/join/mgps/customview/FlowLayout;Z)V
    .locals 10

    const v0, 0x7f0c0356

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const v2, 0x7f091192

    .line 3
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f090800

    .line 4
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f09095b

    .line 5
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    .line 6
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p3, :cond_2

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameTagsBean;->isShowDelete()Z

    move-result v6

    const/16 v7, 0x8

    const-string v8, "#A4B5C7"

    const v9, 0x7f080b3d

    if-eqz v6, :cond_0

    .line 8
    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 9
    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 10
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameTagsBean;->getVoteFlag()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_1

    const v6, 0x7f080b41

    .line 12
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    const-string v4, "#555555"

    .line 13
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 14
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    const v4, 0x7f08056e

    .line 15
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 16
    new-instance v4, Lcom/join/mgps/activity/TagAddActivity$f;

    invoke-direct {v4, p0, p1}, Lcom/join/mgps/activity/TagAddActivity$f;-><init>(Lcom/join/mgps/activity/TagAddActivity;Lcom/join/mgps/dto/GameTagsBean;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 18
    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 19
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 20
    :goto_0
    new-instance v3, Lcom/join/mgps/activity/TagAddActivity$g;

    invoke-direct {v3, p0, p1}, Lcom/join/mgps/activity/TagAddActivity$g;-><init>(Lcom/join/mgps/activity/TagAddActivity;Lcom/join/mgps/dto/GameTagsBean;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_2

    .line 21
    :cond_2
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameTagsBean;->getTagType()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v6, 0x2

    if-eq v4, v6, :cond_4

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameTagsBean;->getTagType()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v6, 0x3

    if-ne v4, v6, :cond_3

    goto :goto_1

    .line 22
    :cond_3
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    const v4, 0x7f0805ad

    .line 23
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 24
    new-instance v4, Lcom/join/mgps/activity/TagAddActivity$h;

    invoke-direct {v4, p0, p1}, Lcom/join/mgps/activity/TagAddActivity$h;-><init>(Lcom/join/mgps/activity/TagAddActivity;Lcom/join/mgps/dto/GameTagsBean;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_4
    :goto_1
    const v4, 0x7f080579

    .line 25
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 26
    :goto_2
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameTagsBean;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    new-instance v2, Lcom/join/mgps/activity/TagAddActivity$i;

    invoke-direct {v2, p0, p3, p1}, Lcom/join/mgps/activity/TagAddActivity$i;-><init>(Lcom/join/mgps/activity/TagAddActivity;ZLcom/join/mgps/dto/GameTagsBean;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    invoke-virtual {p2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private Q0()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/TagAddActivity;->l:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    const/4 v5, 0x0

    .line 3
    iget-object v6, p0, Lcom/join/mgps/activity/TagAddActivity;->l:Landroid/widget/ListView;

    invoke-interface {v0, v3, v5, v6}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 4
    invoke-virtual {v5, v2, v2}, Landroid/view/View;->measure(II)V

    .line 5
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/TagAddActivity;->l:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/join/mgps/activity/TagAddActivity;->l:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v2

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    mul-int v2, v2, v0

    add-int/2addr v4, v2

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/TagAddActivity;->l:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private R0(Lcom/join/mgps/dto/GameTagsBean;)V
    .locals 3

    .line 1
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f12000c

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/join/mgps/activity/TagAddActivity;->x:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u662f\u5426\u8981\u5220\u9664\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameTagsBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\"\u6807\u7b7e"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/TagAddActivity;->x:Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v1, Lcom/join/mgps/activity/TagAddActivity$j;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/TagAddActivity$j;-><init>(Lcom/join/mgps/activity/TagAddActivity;Lcom/join/mgps/dto/GameTagsBean;)V

    const-string p1, "\u4ecd\u8981\u5220\u9664"

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/TagAddActivity;->x:Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v0, Lcom/join/mgps/activity/TagAddActivity$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/TagAddActivity$a;-><init>(Lcom/join/mgps/activity/TagAddActivity;)V

    const-string v1, "\u53d6\u6d88"

    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/TagAddActivity;->x:Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method


# virtual methods
.method F0(Ljava/lang/String;)V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/TagAddActivity;->N0()V

    .line 2
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/TagAddActivity;->S0()V

    .line 4
    new-instance v0, Lcom/join/mgps/dto/RequestModel;

    invoke-direct {v0, p0}, Lcom/join/mgps/dto/RequestModel;-><init>(Landroid/content/Context;)V

    .line 5
    new-instance v1, Lcom/join/mgps/dto/RequestAddUserCustomGameTag;

    invoke-direct {v1}, Lcom/join/mgps/dto/RequestAddUserCustomGameTag;-><init>()V

    .line 6
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/RequestAddUserCustomGameTag;->setTagName(Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/TagAddActivity;->f:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/RequestAddUserCustomGameTag;->setGameId(Ljava/lang/String;)V

    .line 8
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/RequestAddUserCustomGameTag;->setUid(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 10
    iget-object p1, p0, Lcom/join/mgps/activity/TagAddActivity;->o:Lcom/join/mgps/rpc/impl/h;

    invoke-virtual {v0}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/rpc/impl/h;->u(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 12
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "\u6807\u7b7e\u6dfb\u52a0\u6210\u529f"

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Lcom/join/mgps/activity/TagAddActivity;->G0()V

    .line 14
    invoke-virtual {p0}, Lcom/join/mgps/activity/TagAddActivity;->M0()V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 17
    :cond_1
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "\u6dfb\u52a0\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 18
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 19
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "\u6807\u7b7e\u6dfb\u52a0\u5931\u8d25"

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/TagAddActivity;->K0()V

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/TagAddActivity;->K0()V

    .line 21
    throw p1

    .line 22
    :cond_2
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "\u7f51\u7edc\u8fde\u63a5\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8fde\u63a5"

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method G0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/TagAddActivity;->k:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method I0(Lcom/join/mgps/dto/GameTagsBean;)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const-string v0, "\u81ea\u5b9a\u4e49\u6e38\u620f\u6807\u7b7e\u5220\u9664\u5931\u8d25"

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2
    :try_start_0
    new-instance v1, Lcom/join/mgps/dto/RequestModel;

    invoke-direct {v1}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 3
    invoke-virtual {v1, p0}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 4
    new-instance v2, Lcom/join/mgps/dto/RequestDeleteUserCustomGameTag;

    invoke-direct {v2}, Lcom/join/mgps/dto/RequestDeleteUserCustomGameTag;-><init>()V

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameTagsBean;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/join/mgps/dto/RequestDeleteUserCustomGameTag;->setTagId(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/TagAddActivity;->f:Ljava/lang/String;

    invoke-virtual {v2, p1}, Lcom/join/mgps/dto/RequestDeleteUserCustomGameTag;->setGameId(Ljava/lang/String;)V

    .line 7
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/join/mgps/dto/RequestDeleteUserCustomGameTag;->setUid(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/activity/TagAddActivity;->S0()V

    .line 10
    iget-object p1, p0, Lcom/join/mgps/activity/TagAddActivity;->o:Lcom/join/mgps/rpc/impl/h;

    invoke-virtual {v1}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/join/mgps/rpc/impl/h;->B(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    .line 12
    invoke-virtual {p0}, Lcom/join/mgps/activity/TagAddActivity;->M0()V

    .line 13
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v1, "\u81ea\u5b9a\u4e49\u6e38\u620f\u6807\u7b7e\u5220\u9664\u6210\u529f"

    invoke-virtual {p1, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 14
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 15
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v1

    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 16
    :cond_1
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 17
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 18
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/TagAddActivity;->K0()V

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/TagAddActivity;->K0()V

    .line 20
    throw p1

    .line 21
    :cond_2
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "\u7f51\u7edc\u8fde\u63a5\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8fde\u63a5"

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method J0(Lcom/join/mgps/dto/GameTagsBean;)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const-string v0, "\u5e38\u7528\u6807\u7b7e\u5220\u9664\u5931\u8d25"

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2
    :try_start_0
    new-instance v1, Lcom/join/mgps/dto/RequestModel;

    invoke-direct {v1}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 3
    invoke-virtual {v1, p0}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 4
    new-instance v2, Lcom/join/mgps/dto/RequestDeleteUserCustomTag;

    invoke-direct {v2}, Lcom/join/mgps/dto/RequestDeleteUserCustomTag;-><init>()V

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameTagsBean;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/join/mgps/dto/RequestDeleteUserCustomTag;->setTagId(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/TagAddActivity;->f:Ljava/lang/String;

    invoke-virtual {v2, p1}, Lcom/join/mgps/dto/RequestDeleteUserCustomTag;->setGameId(Ljava/lang/String;)V

    .line 7
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/join/mgps/dto/RequestDeleteUserCustomTag;->setUid(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/activity/TagAddActivity;->S0()V

    .line 10
    iget-object p1, p0, Lcom/join/mgps/activity/TagAddActivity;->o:Lcom/join/mgps/rpc/impl/h;

    invoke-virtual {v1}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/join/mgps/rpc/impl/h;->n(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    .line 12
    invoke-virtual {p0}, Lcom/join/mgps/activity/TagAddActivity;->M0()V

    .line 13
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v1, "\u5e38\u7528\u6807\u7b7e\u5220\u9664\u6210\u529f"

    invoke-virtual {p1, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 14
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 15
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v1

    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 16
    :cond_1
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 17
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 18
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/TagAddActivity;->K0()V

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/TagAddActivity;->K0()V

    .line 20
    throw p1

    .line 21
    :cond_2
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "\u7f51\u7edc\u8fde\u63a5\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8fde\u63a5"

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method K0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/TagAddActivity;->u:Lcom/join/mgps/dialog/x0;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method L0(Ljava/lang/String;)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    :try_start_0
    new-instance v1, Lcom/join/mgps/dto/RequestModel;

    invoke-direct {v1, p0}, Lcom/join/mgps/dto/RequestModel;-><init>(Landroid/content/Context;)V

    .line 4
    new-instance v2, Lcom/join/mgps/dto/RequestSearchUserCustomGameTag;

    invoke-direct {v2}, Lcom/join/mgps/dto/RequestSearchUserCustomGameTag;-><init>()V

    .line 5
    invoke-virtual {v2, p1}, Lcom/join/mgps/dto/RequestSearchUserCustomGameTag;->setSearchWord(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/TagAddActivity;->f:Ljava/lang/String;

    invoke-virtual {v2, p1}, Lcom/join/mgps/dto/RequestSearchUserCustomGameTag;->setGameId(Ljava/lang/String;)V

    .line 7
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/join/mgps/dto/RequestSearchUserCustomGameTag;->setUid(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/TagAddActivity;->o:Lcom/join/mgps/rpc/impl/h;

    invoke-virtual {v1}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/join/mgps/rpc/impl/h;->o(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/TagAddActivity;->V0(Ljava/util/List;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 13
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    iget-object v1, p0, Lcom/join/mgps/activity/TagAddActivity;->n:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/TagAddActivity;->V0(Ljava/util/List;)V

    goto :goto_1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/TagAddActivity;->V0(Ljava/util/List;)V

    .line 15
    throw p1

    .line 16
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/TagAddActivity;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method M0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    new-instance v0, Lcom/join/mgps/dto/RequestModel;

    invoke-direct {v0, p0}, Lcom/join/mgps/dto/RequestModel;-><init>(Landroid/content/Context;)V

    .line 3
    new-instance v1, Lcom/join/mgps/dto/RequestListUserCustomGameTagArgs;

    invoke-direct {v1}, Lcom/join/mgps/dto/RequestListUserCustomGameTagArgs;-><init>()V

    .line 4
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/RequestListUserCustomGameTagArgs;->setUid(Ljava/lang/String;)V

    .line 5
    iget-object v2, p0, Lcom/join/mgps/activity/TagAddActivity;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/RequestListUserCustomGameTagArgs;->setGameId(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/TagAddActivity;->o:Lcom/join/mgps/rpc/impl/h;

    invoke-virtual {v0}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/join/mgps/rpc/impl/h;->x(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/activity/TagAddActivity;->O0()V

    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/ListUserCustomGameTagBean;

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/TagAddActivity;->T0(Lcom/join/mgps/dto/ListUserCustomGameTagBean;)V

    goto :goto_1

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/TagAddActivity;->showLodingFailed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 12
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 13
    invoke-virtual {p0}, Lcom/join/mgps/activity/TagAddActivity;->showLodingFailed()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 14
    :goto_0
    throw v0

    .line 15
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/TagAddActivity;->showLodingFailed()V

    :goto_1
    return-void
.end method

.method N0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/TagAddActivity;->k:Landroid/widget/EditText;

    invoke-static {v0}, Ly1/a;->b(Landroid/view/View;)V

    const-string v0, "input_method"

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method O0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/TagAddActivity;->b:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/TagAddActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method P0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
        value = {
            0x7f09090f
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/TagAddActivity;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u8bf7\u8f93\u5165\u6e38\u620f\u65b0\u6807\u7b7e\uff01"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u60a8\u8fd8\u672a\u767b\u5f55\u8bf7\u5148\u767b\u5f55\u5e10\u53f7\uff01"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/TagAddActivity;->q:Lcom/papa91/arc/adapter/SimpleBaseAdapter;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->clear()V

    .line 6
    :cond_2
    invoke-direct {p0}, Lcom/join/mgps/activity/TagAddActivity;->Q0()V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/TagAddActivity;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/TagAddActivity;->F0(Ljava/lang/String;)V

    return-void
.end method

.method S0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/TagAddActivity;->u:Lcom/join/mgps/dialog/x0;

    invoke-virtual {v0}, Lcom/join/mgps/dialog/x0;->b()V

    return-void
.end method

.method T0(Lcom/join/mgps/dto/ListUserCustomGameTagBean;)V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iput-object p1, p0, Lcom/join/mgps/activity/TagAddActivity;->s:Lcom/join/mgps/dto/ListUserCustomGameTagBean;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/TagAddActivity;->h:Lcom/join/mgps/customview/FlowLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/TagAddActivity;->g:Lcom/join/mgps/customview/FlowLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/TagAddActivity;->j:Landroidx/core/widget/NestedScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/ListUserCustomGameTagBean;->getGameTags()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/dto/ListUserCustomGameTagBean;->getGameTags()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/GameTagsBean;

    .line 7
    invoke-virtual {v2}, Lcom/join/mgps/dto/GameTagsBean;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "7"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/join/mgps/dto/GameTagsBean;->getVoteFlag()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    iget-object v3, p0, Lcom/join/mgps/activity/TagAddActivity;->g:Lcom/join/mgps/customview/FlowLayout;

    invoke-direct {p0, v2, v3, v1}, Lcom/join/mgps/activity/TagAddActivity;->H0(Lcom/join/mgps/dto/GameTagsBean;Lcom/join/mgps/customview/FlowLayout;Z)V

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p1}, Lcom/join/mgps/dto/ListUserCustomGameTagBean;->getPersonalTags()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {p1}, Lcom/join/mgps/dto/ListUserCustomGameTagBean;->getPersonalTags()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/GameTagsBean;

    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/TagAddActivity;->h:Lcom/join/mgps/customview/FlowLayout;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/join/mgps/activity/TagAddActivity;->H0(Lcom/join/mgps/dto/GameTagsBean;Lcom/join/mgps/customview/FlowLayout;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    return-void
.end method

.method U0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
        value = {
            0x7f09116e
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u60a8\u8fd8\u672a\u767b\u5f55\u8bf7\u5148\u767b\u5f55\u5e10\u53f7\uff01"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/activity/TagReportActivity_;->U0(Landroid/content/Context;)Lcom/join/mgps/activity/TagReportActivity_$m;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/TagAddActivity;->s:Lcom/join/mgps/dto/ListUserCustomGameTagBean;

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/TagReportActivity_$m;->b(Lcom/join/mgps/dto/ListUserCustomGameTagBean;)Lcom/join/mgps/activity/TagReportActivity_$m;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/TagAddActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/TagReportActivity_$m;->a(Ljava/lang/String;)Lcom/join/mgps/activity/TagReportActivity_$m;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method

.method V0(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/TagAddActivity;->q:Lcom/papa91/arc/adapter/SimpleBaseAdapter;

    invoke-virtual {v0, p1}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->setDatas(Ljava/util/List;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/TagAddActivity;->Q0()V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/TagAddActivity;->q:Lcom/papa91/arc/adapter/SimpleBaseAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method accountChange(Landroid/content/Intent;)V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.android.app.mgsim.wufun.broadcast.account_status_uidchange"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/TagAddActivity;->M0()V

    return-void
.end method

.method afterViews()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/a0;->c0(Landroid/content/Context;)Lcom/join/mgps/Util/a0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/z;->x(Landroid/content/Context;)Lcom/join/mgps/dialog/x0;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/TagAddActivity;->u:Lcom/join/mgps/dialog/x0;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/TagAddActivity;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/activity/TagAddActivity;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/TagAddActivity;->d:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-static {v1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 4
    invoke-static {}, Lcom/join/mgps/rpc/impl/h;->L()Lcom/join/mgps/rpc/impl/h;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/TagAddActivity;->o:Lcom/join/mgps/rpc/impl/h;

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/TagAddActivity;->g:Lcom/join/mgps/customview/FlowLayout;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07110f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/FlowLayout;->setHorizontalDivider(I)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/TagAddActivity;->g:Lcom/join/mgps/customview/FlowLayout;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f071167

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/FlowLayout;->setVerticalDivider(I)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/TagAddActivity;->h:Lcom/join/mgps/customview/FlowLayout;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/FlowLayout;->setHorizontalDivider(I)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/TagAddActivity;->h:Lcom/join/mgps/customview/FlowLayout;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/FlowLayout;->setVerticalDivider(I)V

    .line 9
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/IntentUtil;->isLogined(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/join/mgps/activity/TagAddActivity;->t:Z

    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/activity/TagAddActivity;->showLoding()V

    .line 11
    invoke-virtual {p0}, Lcom/join/mgps/activity/TagAddActivity;->M0()V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/TagAddActivity;->k:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/join/mgps/activity/TagAddActivity;->v:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/TagAddActivity;->q:Lcom/papa91/arc/adapter/SimpleBaseAdapter;

    if-nez v0, :cond_0

    .line 14
    new-instance v0, Lcom/join/mgps/activity/TagAddActivity$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/TagAddActivity$b;-><init>(Lcom/join/mgps/activity/TagAddActivity;)V

    iput-object v0, p0, Lcom/join/mgps/activity/TagAddActivity;->q:Lcom/papa91/arc/adapter/SimpleBaseAdapter;

    .line 15
    iget-object v1, p0, Lcom/join/mgps/activity/TagAddActivity;->l:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 16
    invoke-direct {p0}, Lcom/join/mgps/activity/TagAddActivity;->Q0()V

    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/TagAddActivity;->q:Lcom/papa91/arc/adapter/SimpleBaseAdapter;

    new-instance v1, Lcom/join/mgps/activity/TagAddActivity$c;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/TagAddActivity$c;-><init>(Lcom/join/mgps/activity/TagAddActivity;)V

    invoke-virtual {v0, v1}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->setItemClickListener(Lcom/papa91/arc/interfaces/IOnItemClickListener;)V

    :cond_0
    return-void
.end method

.method back_image()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/TagAddActivity;->finish()V

    return-void
.end method

.method public finish()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/TagAddActivity;->r:Landroid/os/Handler;

    iget-object v1, p0, Lcom/join/mgps/activity/TagAddActivity;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseFragmentActivity;->onResume()V

    .line 2
    iget-boolean v0, p0, Lcom/join/mgps/activity/TagAddActivity;->t:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/IntentUtil;->isLogined(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/activity/TagAddActivity;->M0()V

    :cond_0
    return-void
.end method

.method relodingimag()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/TagAddActivity;->showLoding()V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/TagAddActivity;->M0()V

    return-void
.end method

.method setNetwork()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->I2(Landroid/content/Context;)V

    return-void
.end method

.method showLoding()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/TagAddActivity;->b:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/TagAddActivity;->c:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method showLodingFailed()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/TagAddActivity;->c:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/TagAddActivity;->b:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/TagAddActivity;->j:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
