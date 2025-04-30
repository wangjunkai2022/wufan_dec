.class public Lcom/join/mgps/activity/SearchLabelActivity;
.super Landroid/app/Activity;
.source "SearchLabelActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/SearchLabelActivity$f;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c0069
.end annotation


# static fields
.field public static final n:I = 0x1


# instance fields
.field a:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field b:Landroid/widget/ListView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field c:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Landroid/widget/EditText;
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

.field g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/LabelBean;",
            ">;"
        }
    .end annotation
.end field

.field h:Lcom/join/mgps/activity/SearchLabelActivity$f;

.field i:Lcom/join/mgps/rpc/h;

.field j:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private k:Landroid/text/InputFilter;

.field l:Lcom/join/mgps/Util/b;
    .annotation build Lorg/androidannotations/annotations/Bean;
    .end annotation
.end field

.field m:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/join/mgps/activity/SearchLabelActivity;->a:I

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/SearchLabelActivity;->g:Ljava/util/List;

    .line 4
    new-instance v0, Lcom/join/mgps/activity/SearchLabelActivity$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/SearchLabelActivity$a;-><init>(Lcom/join/mgps/activity/SearchLabelActivity;)V

    iput-object v0, p0, Lcom/join/mgps/activity/SearchLabelActivity;->k:Landroid/text/InputFilter;

    return-void
.end method

.method private d()V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/SearchLabelActivity;->j()V

    const-string v0, ""

    .line 3
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/SearchLabelActivity;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/SearchLabelActivity;->i()V

    :goto_0
    return-void
.end method


# virtual methods
.method a()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/f;->A0()Lcom/join/mgps/rpc/impl/f;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/SearchLabelActivity;->i:Lcom/join/mgps/rpc/h;

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "postingLabelType"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/join/mgps/activity/SearchLabelActivity;->m:I

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/SearchLabelActivity;->d:Landroid/widget/EditText;

    new-array v1, v2, [Landroid/text/InputFilter;

    iget-object v3, p0, Lcom/join/mgps/activity/SearchLabelActivity;->k:Landroid/text/InputFilter;

    const/4 v4, 0x0

    aput-object v3, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/SearchLabelActivity;->d:Landroid/widget/EditText;

    new-instance v1, Lcom/join/mgps/activity/SearchLabelActivity$b;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/SearchLabelActivity$b;-><init>(Lcom/join/mgps/activity/SearchLabelActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/SearchLabelActivity;->d:Landroid/widget/EditText;

    new-instance v1, Lcom/join/mgps/activity/SearchLabelActivity$c;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/SearchLabelActivity$c;-><init>(Lcom/join/mgps/activity/SearchLabelActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/SearchLabelActivity;->c:Landroid/widget/ImageView;

    new-instance v1, Lcom/join/mgps/activity/SearchLabelActivity$d;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/SearchLabelActivity$d;-><init>(Lcom/join/mgps/activity/SearchLabelActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    new-instance v0, Lcom/join/mgps/activity/SearchLabelActivity$f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/join/mgps/activity/SearchLabelActivity$f;-><init>(Lcom/join/mgps/activity/SearchLabelActivity;Lcom/join/mgps/activity/SearchLabelActivity$a;)V

    iput-object v0, p0, Lcom/join/mgps/activity/SearchLabelActivity;->h:Lcom/join/mgps/activity/SearchLabelActivity$f;

    .line 8
    iget-object v1, p0, Lcom/join/mgps/activity/SearchLabelActivity;->b:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/SearchLabelActivity;->b:Landroid/widget/ListView;

    new-instance v1, Lcom/join/mgps/activity/SearchLabelActivity$e;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/SearchLabelActivity$e;-><init>(Lcom/join/mgps/activity/SearchLabelActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 10
    iget v0, p0, Lcom/join/mgps/activity/SearchLabelActivity;->a:I

    if-eq v0, v2, :cond_0

    .line 11
    invoke-direct {p0}, Lcom/join/mgps/activity/SearchLabelActivity;->d()V

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/SearchLabelActivity;->e()V

    :goto_0
    return-void
.end method

.method b()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method c(Ljava/lang/String;)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    iget v0, p0, Lcom/join/mgps/activity/SearchLabelActivity;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/SearchLabelActivity;->i:Lcom/join/mgps/rpc/h;

    invoke-interface {v0, p1}, Lcom/join/mgps/rpc/h;->d(Ljava/lang/String;)Lcom/join/mgps/dto/ResultResMainBean;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/SearchLabelActivity;->i:Lcom/join/mgps/rpc/h;

    iget-object v1, p0, Lcom/join/mgps/activity/SearchLabelActivity;->l:Lcom/join/mgps/Util/b;

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/join/mgps/activity/SearchLabelActivity;->m:I

    invoke-interface {v0, v1, p1, v2}, Lcom/join/mgps/rpc/h;->D(Ljava/lang/String;Ljava/lang/String;I)Lcom/join/mgps/dto/ResultResMainBean;

    move-result-object p1

    .line 4
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/SearchLabelActivity;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultResMainBean;->getError()I

    move-result v0

    if-nez v0, :cond_2

    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultResMainBean;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 7
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/SearchLabelActivity;->l(Ljava/util/List;)V

    goto :goto_1

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/SearchLabelActivity;->g:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_3

    const-string p1, "\u7f51\u7edc\u5f02\u5e38\uff0c\u8bf7\u91cd\u8bd5"

    .line 9
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/SearchLabelActivity;->k(Ljava/lang/String;)V

    goto :goto_1

    .line 10
    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/SearchLabelActivity;->l(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/SearchLabelActivity;->g:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_4

    .line 12
    invoke-virtual {p0}, Lcom/join/mgps/activity/SearchLabelActivity;->i()V

    :cond_4
    :goto_1
    return-void
.end method

.method e()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchLabelActivity;->b:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/SearchLabelActivity;->f:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/SearchLabelActivity;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method f()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method g()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/SearchLabelActivity;->d()V

    return-void
.end method

.method h()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->I2(Landroid/content/Context;)V

    return-void
.end method

.method i()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchLabelActivity;->b:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/SearchLabelActivity;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/SearchLabelActivity;->e:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method j()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchLabelActivity;->f:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/SearchLabelActivity;->e:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method k(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/SearchLabelActivity;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method l(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/LabelBean;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchLabelActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 3
    iget v0, p0, Lcom/join/mgps/activity/SearchLabelActivity;->a:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/SearchLabelActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/SearchLabelActivity;->j:Landroid/widget/TextView;

    const-string v3, "\u63a8\u8350\u8bdd\u9898"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/SearchLabelActivity;->j:Landroid/widget/TextView;

    const/high16 v3, 0x41700000    # 15.0f

    invoke-static {p0, v3}, Lcom/join/mgps/Util/b0;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v0, v3, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/SearchLabelActivity;->j:Landroid/widget/TextView;

    const/16 v3, 0x13

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/SearchLabelActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/SearchLabelActivity;->b:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_2

    :cond_1
    if-eqz p1, :cond_3

    .line 10
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_2

    goto :goto_1

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/SearchLabelActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/SearchLabelActivity;->b:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_2

    .line 13
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchLabelActivity;->j:Landroid/widget/TextView;

    const-string v3, "\u65e0\u5339\u914d\u7ed3\u679c"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/SearchLabelActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/SearchLabelActivity;->j:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/SearchLabelActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/SearchLabelActivity;->b:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 18
    :goto_2
    iget-object v0, p0, Lcom/join/mgps/activity/SearchLabelActivity;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/SearchLabelActivity;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/SearchLabelActivity;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_4

    .line 21
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ltz v0, :cond_4

    .line 22
    iget-object v0, p0, Lcom/join/mgps/activity/SearchLabelActivity;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 23
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/SearchLabelActivity;->h:Lcom/join/mgps/activity/SearchLabelActivity$f;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
