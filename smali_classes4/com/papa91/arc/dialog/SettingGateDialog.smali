.class public Lcom/papa91/arc/dialog/SettingGateDialog;
.super Lcom/papa91/arc/dialog/SettingDialog;
.source "SettingGateDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/arc/dialog/SettingGateDialog$GateAdapter;
    }
.end annotation


# instance fields
.field private gateAdapter:Lcom/papa91/arc/dialog/SettingGateDialog$GateAdapter;

.field gv_list:Landroid/widget/GridView;

.field private loding_layout:Landroid/widget/LinearLayout;

.field mid:I

.field tipTwoDialog:Lcom/papa91/arc/dialog/TipTwoDialog;

.field tv_back_game:Landroid/widget/TextView;

.field tv_title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/arc/dialog/SettingDialog;-><init>(Landroid/content/Context;)V

    .line 2
    sget p1, Lorg/ppsspp/ppsspp/R$id;->gv_list:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/GridView;

    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingGateDialog;->gv_list:Landroid/widget/GridView;

    .line 3
    sget p1, Lorg/ppsspp/ppsspp/R$id;->tv_back_game:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingGateDialog;->tv_back_game:Landroid/widget/TextView;

    .line 4
    sget p1, Lorg/ppsspp/ppsspp/R$id;->tv_title:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingGateDialog;->tv_title:Landroid/widget/TextView;

    .line 5
    sget p1, Lorg/ppsspp/ppsspp/R$id;->loding_layout:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingGateDialog;->loding_layout:Landroid/widget/LinearLayout;

    .line 6
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingGateDialog;->tv_title:Landroid/widget/TextView;

    const-string v0, "\u9009\u62e9\u5173\u5361"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingGateDialog;->loding_layout:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/papa91/arc/dialog/SettingGateDialog$1;

    invoke-direct {v0, p0}, Lcom/papa91/arc/dialog/SettingGateDialog$1;-><init>(Lcom/papa91/arc/dialog/SettingGateDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 p1, 0x1

    new-array p1, p1, [Landroid/view/View;

    .line 8
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingGateDialog;->tv_back_game:Landroid/widget/TextView;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    invoke-virtual {p0, p1}, Lcom/papa91/arc/dialog/SettingDialog;->setOnListener([Landroid/view/View;)V

    .line 9
    invoke-direct {p0}, Lcom/papa91/arc/dialog/SettingGateDialog;->initData()V

    return-void
.end method

.method static synthetic access$000(Lcom/papa91/arc/dialog/SettingGateDialog;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/arc/dialog/SettingGateDialog;->loding_layout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$100(Lcom/papa91/arc/dialog/SettingGateDialog;)Lcom/papa91/arc/dialog/SettingGateDialog$GateAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/arc/dialog/SettingGateDialog;->gateAdapter:Lcom/papa91/arc/dialog/SettingGateDialog$GateAdapter;

    return-object p0
.end method

.method static synthetic access$200(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/papa91/arc/dialog/SettingGateDialog;->numberToChinese(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initData()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingGateDialog;->gateAdapter:Lcom/papa91/arc/dialog/SettingGateDialog$GateAdapter;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/papa91/arc/dialog/SettingGateDialog$GateAdapter;

    invoke-direct {v0, p0}, Lcom/papa91/arc/dialog/SettingGateDialog$GateAdapter;-><init>(Lcom/papa91/arc/dialog/SettingGateDialog;)V

    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingGateDialog;->gateAdapter:Lcom/papa91/arc/dialog/SettingGateDialog$GateAdapter;

    .line 3
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingGateDialog;->gv_list:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingGateDialog;->gateAdapter:Lcom/papa91/arc/dialog/SettingGateDialog$GateAdapter;

    new-instance v1, Lcom/papa91/arc/dialog/SettingGateDialog$2;

    invoke-direct {v1, p0}, Lcom/papa91/arc/dialog/SettingGateDialog$2;-><init>(Lcom/papa91/arc/dialog/SettingGateDialog;)V

    invoke-virtual {v0, v1}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->setItemClickListener(Lcom/papa91/arc/interfaces/IOnItemClickListener;)V

    return-void
.end method

.method private static numberToChinese(I)Ljava/lang/String;
    .locals 11

    const-string v0, "\u96f6"

    const-string v1, "\u4e00"

    const-string v2, "\u4e8c"

    const-string v3, "\u4e09"

    const-string v4, "\u56db"

    const-string v5, "\u4e94"

    const-string v6, "\u516d"

    const-string v7, "\u4e03"

    const-string v8, "\u516b"

    const-string v9, "\u4e5d"

    .line 1
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    const-string v2, "\u5341"

    const-string v3, "\u767e"

    const-string v4, "\u5343"

    const-string v5, "\u4e07"

    const-string v6, "\u5341"

    const-string v7, "\u767e"

    const-string v8, "\u5343"

    const-string v9, "\u4ebf"

    const-string v10, "\u5341"

    .line 2
    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v1

    if-gez p0, :cond_0

    const-string v2, "\u8d1f"

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    if-gez p0, :cond_1

    neg-int p0, p0

    .line 3
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v2, :cond_5

    sub-int v6, v2, v5

    .line 7
    aget-char v7, p0, v5

    add-int/lit8 v7, v7, -0x30

    if-eqz v7, :cond_2

    .line 8
    aget-object v7, v0, v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, -0x1

    aget-object v6, v1, v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 9
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aget-object v8, v0, v4

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 10
    rem-int/lit8 v7, v6, 0x4

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    .line 11
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, -0x1

    .line 12
    aget-object v6, v1, v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 13
    :cond_3
    aget-object v6, v0, v4

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 14
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    .line 1
    sget v0, Lorg/ppsspp/ppsspp/R$layout;->dialog_setting_gate:I

    return v0
.end method

.method public hideLoading()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingGateDialog;->loding_layout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/papa91/arc/dialog/SettingDialog;->onClick(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingGateDialog;->tv_back_game:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->dismiss()V

    .line 4
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->showAdVideo()V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/papa91/arc/dialog/SettingDialog;->show()V

    .line 2
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingGateDialog;->gateAdapter:Lcom/papa91/arc/dialog/SettingGateDialog$GateAdapter;

    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->getGateData()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->setDatas(Ljava/util/List;)V

    .line 3
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->loadAdVideo()V

    return-void
.end method

.method public showLoading()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingGateDialog;->loding_layout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public showPrompt(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/view/BaseDialog;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Lcom/papa91/arc/dialog/SettingGateDialog;->mid:I

    .line 3
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingGateDialog;->tipTwoDialog:Lcom/papa91/arc/dialog/TipTwoDialog;

    if-nez p1, :cond_1

    .line 4
    new-instance p1, Lcom/papa91/arc/dialog/TipTwoDialog;

    invoke-direct {p1, v0}, Lcom/papa91/arc/dialog/TipTwoDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingGateDialog;->tipTwoDialog:Lcom/papa91/arc/dialog/TipTwoDialog;

    .line 5
    new-instance v0, Lcom/papa91/arc/dialog/SettingGateDialog$3;

    invoke-direct {v0, p0}, Lcom/papa91/arc/dialog/SettingGateDialog$3;-><init>(Lcom/papa91/arc/dialog/SettingGateDialog;)V

    invoke-virtual {p1, v0}, Lcom/papa91/arc/dialog/TipTwoDialog;->setListener(Lcom/papa91/arc/dialog/TipTwoDialog$OnOptionsListener;)V

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingGateDialog;->tipTwoDialog:Lcom/papa91/arc/dialog/TipTwoDialog;

    const-string v0, "\u662f\u5426\u8bfb\u53d6\u6b64\u5173\u5361\uff1f"

    invoke-virtual {p1, v0}, Lcom/papa91/arc/dialog/TipTwoDialog;->setTipContent(Ljava/lang/CharSequence;)Lcom/papa91/arc/dialog/TipTwoDialog;

    .line 7
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingGateDialog;->tipTwoDialog:Lcom/papa91/arc/dialog/TipTwoDialog;

    invoke-virtual {p1}, Lcom/papa91/arc/view/BaseDialog;->show()V

    return-void
.end method
