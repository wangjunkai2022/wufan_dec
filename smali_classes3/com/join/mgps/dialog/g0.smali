.class public Lcom/join/mgps/dialog/g0;
.super Landroid/app/Dialog;
.source "DownloadPathSetDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dialog/g0$d;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/join/mgps/dto/Filepath;

.field private e:Lcom/join/mgps/dto/Filepath;

.field private f:Lcom/join/mgps/dialog/g0$d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/join/mgps/dialog/g0;->b:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/join/mgps/dialog/g0;->c:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lcom/join/mgps/dialog/g0;->a:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const-string p2, ""

    .line 6
    iput-object p2, p0, Lcom/join/mgps/dialog/g0;->b:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/join/mgps/dialog/g0;->c:Ljava/lang/String;

    .line 8
    iput-object p1, p0, Lcom/join/mgps/dialog/g0;->a:Landroid/content/Context;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    const-string p2, ""

    .line 10
    iput-object p2, p0, Lcom/join/mgps/dialog/g0;->b:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcom/join/mgps/dialog/g0;->c:Ljava/lang/String;

    .line 12
    iput-object p1, p0, Lcom/join/mgps/dialog/g0;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/dialog/g0;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/g0;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/dialog/g0;)Lcom/join/mgps/dto/Filepath;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/g0;->d:Lcom/join/mgps/dto/Filepath;

    return-object p0
.end method

.method static synthetic c(Lcom/join/mgps/dialog/g0;)Lcom/join/mgps/dialog/g0$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/g0;->f:Lcom/join/mgps/dialog/g0$d;

    return-object p0
.end method

.method static synthetic d(Lcom/join/mgps/dialog/g0;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/g0;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/join/mgps/dialog/g0;)Lcom/join/mgps/dto/Filepath;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/g0;->e:Lcom/join/mgps/dto/Filepath;

    return-object p0
.end method

.method static synthetic f(Lcom/join/mgps/dialog/g0;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/g0;->c:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public g(Lcom/join/mgps/dialog/g0$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/g0;->f:Lcom/join/mgps/dialog/g0$d;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    invoke-super/range {p0 .. p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f0c01c4

    .line 2
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    const v1, 0x7f090250

    .line 3
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    const v2, 0x7f09024f

    .line 4
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    const v3, 0x7f0909a9

    .line 5
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0909aa

    .line 6
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f090244

    .line 7
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f090b3a

    .line 8
    invoke-virtual {v0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    const v7, 0x7f090dd0

    .line 9
    invoke-virtual {v0, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f090dcf

    .line 10
    invoke-virtual {v0, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v9, 0x7f0909a6

    .line 11
    invoke-virtual {v0, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    const v10, 0x7f090dce

    .line 12
    invoke-virtual {v0, v10}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout;

    const/16 v11, 0x8

    .line 13
    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 14
    iget-object v12, v0, Lcom/join/mgps/dialog/g0;->a:Landroid/content/Context;

    invoke-static {v12}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object v12

    invoke-virtual {v12}, Lcom/join/mgps/pref/h;->g()Ljava/lang/String;

    move-result-object v12

    .line 15
    iget-object v13, v0, Lcom/join/mgps/dialog/g0;->a:Landroid/content/Context;

    invoke-static {v13}, Lcom/join/mgps/Util/q1;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v13

    if-eqz v13, :cond_6

    .line 16
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v15

    if-nez v15, :cond_0

    goto/16 :goto_2

    .line 17
    :cond_0
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/join/mgps/dto/Filepath;

    .line 18
    invoke-virtual {v13}, Lcom/join/mgps/dto/Filepath;->isIslocal()Z

    move-result v15

    const-string v14, "/\u603b"

    const-string v11, "\u53ef\u7528:"

    if-eqz v15, :cond_2

    .line 19
    iput-object v13, v0, Lcom/join/mgps/dialog/g0;->d:Lcom/join/mgps/dto/Filepath;

    .line 20
    invoke-virtual {v13}, Lcom/join/mgps/dto/Filepath;->getPathHome()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    const/4 v15, 0x1

    .line 21
    invoke-virtual {v1, v15}, Landroid/widget/CheckBox;->setChecked(Z)V

    const/4 v15, 0x0

    .line 22
    invoke-virtual {v2, v15}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 23
    :cond_1
    invoke-virtual {v13}, Lcom/join/mgps/dto/Filepath;->getPathHome()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    invoke-virtual {v13}, Lcom/join/mgps/dto/Filepath;->getPathHome()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v0, Lcom/join/mgps/dialog/g0;->b:Ljava/lang/String;

    .line 25
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/join/mgps/dto/Filepath;->getAvailable()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/join/mgps/dto/Filepath;->getAllsize()J

    move-result-wide v13

    invoke-static {v13, v14}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 26
    :cond_2
    iput-object v13, v0, Lcom/join/mgps/dialog/g0;->e:Lcom/join/mgps/dto/Filepath;

    .line 27
    invoke-virtual {v13}, Lcom/join/mgps/dto/Filepath;->getPathHome()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    const/4 v15, 0x0

    .line 28
    invoke-virtual {v1, v15}, Landroid/widget/CheckBox;->setChecked(Z)V

    const/4 v15, 0x1

    .line 29
    invoke-virtual {v2, v15}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_3
    const/4 v15, 0x0

    .line 30
    invoke-virtual {v10, v15}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 31
    invoke-virtual {v13}, Lcom/join/mgps/dto/Filepath;->getPathHome()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    invoke-virtual {v13}, Lcom/join/mgps/dto/Filepath;->getPathHome()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v0, Lcom/join/mgps/dialog/g0;->c:Ljava/lang/String;

    .line 33
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/join/mgps/dto/Filepath;->getAvailable()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/join/mgps/dto/Filepath;->getAllsize()J

    move-result-wide v13

    invoke-static {v13, v14}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    iget-object v11, v0, Lcom/join/mgps/dialog/g0;->c:Ljava/lang/String;

    const-string v13, "/Android/data"

    invoke-virtual {v11, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v11, 0x0

    .line 35
    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    :cond_4
    const/16 v11, 0x8

    .line 36
    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    const/16 v11, 0x8

    goto/16 :goto_0

    .line 37
    :cond_5
    new-instance v1, Lcom/join/mgps/dialog/g0$a;

    invoke-direct {v1, v0}, Lcom/join/mgps/dialog/g0$a;-><init>(Lcom/join/mgps/dialog/g0;)V

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    new-instance v1, Lcom/join/mgps/dialog/g0$b;

    invoke-direct {v1, v0}, Lcom/join/mgps/dialog/g0$b;-><init>(Lcom/join/mgps/dialog/g0;)V

    invoke-virtual {v9, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    new-instance v1, Lcom/join/mgps/dialog/g0$c;

    invoke-direct {v1, v0}, Lcom/join/mgps/dialog/g0$c;-><init>(Lcom/join/mgps/dialog/g0;)V

    invoke-virtual {v10, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_6
    :goto_2
    const/16 v1, 0x8

    .line 40
    invoke-virtual {v9, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const/4 v1, 0x0

    .line 41
    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 42
    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    const-string v2, "\u6ca1\u6709\u53ef\u9009\u4e0b\u8f7d\u4f4d\u7f6e"

    invoke-virtual {v5, v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method
