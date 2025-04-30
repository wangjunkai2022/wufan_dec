.class public Lcom/join/mgps/activity/GameInformationActivityV2$n;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "GameInformationActivityV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/GameInformationActivityV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "n"
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/GameInformationActivityV2;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/GameInformationActivityV2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->a:Lcom/join/mgps/activity/GameInformationActivityV2;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->a:Lcom/join/mgps/activity/GameInformationActivityV2;

    iget-object v0, v0, Lcom/join/mgps/activity/GameInformationActivityV2;->x0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->a:Lcom/join/mgps/activity/GameInformationActivityV2;

    iget-object v0, v0, Lcom/join/mgps/activity/GameInformationActivityV2;->x0:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/GameInformationActivityV2$o;

    iget-object p1, p1, Lcom/join/mgps/activity/GameInformationActivityV2$o;->b:Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    invoke-virtual {p1}, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->vaule()I

    move-result p1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 6
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p2}, Lcom/join/mgps/activity/GameInformationActivityV2$n;->getItemViewType(I)I

    move-result v0

    .line 2
    sget-object v1, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->webview:Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    invoke-virtual {v1}, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->vaule()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 3
    iget-object p2, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->a:Lcom/join/mgps/activity/GameInformationActivityV2;

    iget-object v0, p2, Lcom/join/mgps/activity/GameInformationActivityV2;->v0:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/webkit/WebView;->getHeight()I

    return-void

    .line 5
    :cond_0
    check-cast p1, Lcom/join/mgps/activity/GameInformationActivityV2$t;

    iget-object p1, p1, Lcom/join/mgps/activity/GameInformationActivityV2$t;->a:Landroid/webkit/WebView;

    iput-object p1, p2, Lcom/join/mgps/activity/GameInformationActivityV2;->v0:Landroid/webkit/WebView;

    .line 6
    invoke-virtual {p1}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->a:Lcom/join/mgps/activity/GameInformationActivityV2;

    iget-object p1, p1, Lcom/join/mgps/activity/GameInformationActivityV2;->v0:Landroid/webkit/WebView;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->a:Lcom/join/mgps/activity/GameInformationActivityV2;

    iget-object p1, p1, Lcom/join/mgps/activity/GameInformationActivityV2;->v0:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->a:Lcom/join/mgps/activity/GameInformationActivityV2;

    iget-object p1, p1, Lcom/join/mgps/activity/GameInformationActivityV2;->v0:Landroid/webkit/WebView;

    new-instance v0, Landroid/webkit/WebChromeClient;

    invoke-direct {v0}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 10
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->a:Lcom/join/mgps/activity/GameInformationActivityV2;

    iget-object p1, p1, Lcom/join/mgps/activity/GameInformationActivityV2;->v0:Landroid/webkit/WebView;

    new-instance v0, Lcom/join/mgps/activity/GameInformationActivityV2$n$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameInformationActivityV2$n$a;-><init>(Lcom/join/mgps/activity/GameInformationActivityV2$n;)V

    const-string v1, "papa"

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->a:Lcom/join/mgps/activity/GameInformationActivityV2;

    iget-object v0, p1, Lcom/join/mgps/activity/GameInformationActivityV2;->v0:Landroid/webkit/WebView;

    invoke-static {p1}, Lcom/join/mgps/activity/GameInformationActivityV2;->J0(Lcom/join/mgps/activity/GameInformationActivityV2;)Lcom/join/mgps/dto/GameInformationBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameInformationBean;->getContent()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    const-string v1, "about:blank"

    const-string v3, "text/html"

    const-string v4, "utf-8"

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->a:Lcom/join/mgps/activity/GameInformationActivityV2;

    iget-object p1, p1, Lcom/join/mgps/activity/GameInformationActivityV2;->v0:Landroid/webkit/WebView;

    new-instance v0, Lcom/join/mgps/activity/GameInformationActivityV2$n$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameInformationActivityV2$n$b;-><init>(Lcom/join/mgps/activity/GameInformationActivityV2$n;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 13
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->a:Lcom/join/mgps/activity/GameInformationActivityV2;

    iget-object p1, p1, Lcom/join/mgps/activity/GameInformationActivityV2;->v0:Landroid/webkit/WebView;

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 14
    :cond_1
    sget-object v1, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->TITLE:Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    invoke-virtual {v1}, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->vaule()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->a:Lcom/join/mgps/activity/GameInformationActivityV2;

    check-cast p1, Lcom/join/mgps/activity/GameInformationActivityV2$s;

    invoke-virtual {v0, p2, p1}, Lcom/join/mgps/activity/GameInformationActivityV2;->X0(ILcom/join/mgps/activity/GameInformationActivityV2$s;)V

    goto/16 :goto_0

    .line 16
    :cond_2
    sget-object v1, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->commentTitle:Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    invoke-virtual {v1}, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->vaule()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 17
    check-cast p1, Lcom/join/mgps/activity/GameInformationActivityV2$m;

    .line 18
    iget-object p2, p1, Lcom/join/mgps/activity/GameInformationActivityV2$m;->a:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->a:Lcom/join/mgps/activity/GameInformationActivityV2;

    invoke-static {v1}, Lcom/join/mgps/activity/GameInformationActivityV2;->K0(Lcom/join/mgps/activity/GameInformationActivityV2;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\u6761"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    iget-object p1, p1, Lcom/join/mgps/activity/GameInformationActivityV2$m;->b:Landroid/widget/TextView;

    new-instance p2, Lcom/join/mgps/activity/GameInformationActivityV2$n$c;

    invoke-direct {p2, p0}, Lcom/join/mgps/activity/GameInformationActivityV2$n$c;-><init>(Lcom/join/mgps/activity/GameInformationActivityV2$n;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 20
    :cond_3
    sget-object v1, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->card:Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    invoke-virtual {v1}, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->vaule()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 21
    check-cast p1, Lcom/join/mgps/activity/GameInformationActivityV2$k;

    .line 22
    iget-object p2, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->a:Lcom/join/mgps/activity/GameInformationActivityV2;

    iget-object v0, p1, Lcom/join/mgps/activity/GameInformationActivityV2$k;->j:Landroid/widget/Button;

    iput-object v0, p2, Lcom/join/mgps/activity/GameInformationActivityV2;->u0:Landroid/widget/Button;

    .line 23
    invoke-static {p2}, Lcom/join/mgps/activity/GameInformationActivityV2;->L0(Lcom/join/mgps/activity/GameInformationActivityV2;)V

    .line 24
    iget-object p2, p1, Lcom/join/mgps/activity/GameInformationActivityV2$k;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->a:Lcom/join/mgps/activity/GameInformationActivityV2;

    invoke-static {v0}, Lcom/join/mgps/activity/GameInformationActivityV2;->F0(Lcom/join/mgps/activity/GameInformationActivityV2;)Lcom/join/mgps/dto/DetailResultBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getGame_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    iget-object p2, p1, Lcom/join/mgps/activity/GameInformationActivityV2$k;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->a:Lcom/join/mgps/activity/GameInformationActivityV2;

    invoke-static {v0}, Lcom/join/mgps/activity/GameInformationActivityV2;->F0(Lcom/join/mgps/activity/GameInformationActivityV2;)Lcom/join/mgps/dto/DetailResultBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getIco_remote()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 26
    iget-object p2, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->a:Lcom/join/mgps/activity/GameInformationActivityV2;

    invoke-static {p2}, Lcom/join/mgps/activity/GameInformationActivityV2;->F0(Lcom/join/mgps/activity/GameInformationActivityV2;)Lcom/join/mgps/dto/DetailResultBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/join/mgps/dto/DetailResultBean;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object p2

    iget-object v0, p1, Lcom/join/mgps/activity/GameInformationActivityV2$k;->h:Landroid/widget/TextView;

    invoke-static {p2, v0}, Lcom/join/mgps/Util/UtilsMy;->w2(Lcom/join/mgps/dto/TipNew;Landroid/widget/TextView;)V

    .line 27
    iget-object p2, p1, Lcom/join/mgps/activity/GameInformationActivityV2$k;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    new-instance v0, Lcom/join/mgps/activity/GameInformationActivityV2$n$d;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameInformationActivityV2$n$d;-><init>(Lcom/join/mgps/activity/GameInformationActivityV2$n;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    iget-object p2, p1, Lcom/join/mgps/activity/GameInformationActivityV2$k;->i:Landroid/widget/TextView;

    new-instance v0, Lcom/join/mgps/activity/GameInformationActivityV2$n$e;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameInformationActivityV2$n$e;-><init>(Lcom/join/mgps/activity/GameInformationActivityV2$n;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    iget-object p2, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->a:Lcom/join/mgps/activity/GameInformationActivityV2;

    iget-object p2, p2, Lcom/join/mgps/activity/GameInformationActivityV2;->u0:Landroid/widget/Button;

    new-instance v0, Lcom/join/mgps/activity/GameInformationActivityV2$n$f;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameInformationActivityV2$n$f;-><init>(Lcom/join/mgps/activity/GameInformationActivityV2$n;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    iget-object p2, p1, Lcom/join/mgps/activity/GameInformationActivityV2$k;->f:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->a:Lcom/join/mgps/activity/GameInformationActivityV2;

    invoke-static {v1}, Lcom/join/mgps/activity/GameInformationActivityV2;->F0(Lcom/join/mgps/activity/GameInformationActivityV2;)Lcom/join/mgps/dto/DetailResultBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getDown_count()I

    move-result v1

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u70ed\u5ea6"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    iget-object p2, p1, Lcom/join/mgps/activity/GameInformationActivityV2$k;->e:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->a:Lcom/join/mgps/activity/GameInformationActivityV2;

    invoke-static {v1}, Lcom/join/mgps/activity/GameInformationActivityV2;->F0(Lcom/join/mgps/activity/GameInformationActivityV2;)Lcom/join/mgps/dto/DetailResultBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getSize()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "M"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    iget-object p1, p1, Lcom/join/mgps/activity/GameInformationActivityV2$k;->g:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->a:Lcom/join/mgps/activity/GameInformationActivityV2;

    invoke-static {p2}, Lcom/join/mgps/activity/GameInformationActivityV2;->F0(Lcom/join/mgps/activity/GameInformationActivityV2;)Lcom/join/mgps/dto/DetailResultBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/join/mgps/dto/DetailResultBean;->getInfo()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 33
    :cond_4
    sget-object v1, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->COMMENT:Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    invoke-virtual {v1}, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->vaule()I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 34
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->a:Lcom/join/mgps/activity/GameInformationActivityV2;

    check-cast p1, Lcom/join/mgps/activity/GameInformationActivityV2$l;

    invoke-virtual {v0, p2, p1}, Lcom/join/mgps/activity/GameInformationActivityV2;->Y0(ILcom/join/mgps/activity/GameInformationActivityV2$l;)V

    goto/16 :goto_0

    .line 35
    :cond_5
    sget-object p2, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->REPLY:Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    invoke-virtual {p2}, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->vaule()I

    move-result p2

    if-ne v0, p2, :cond_6

    .line 36
    iget-object p2, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->a:Lcom/join/mgps/activity/GameInformationActivityV2;

    check-cast p1, Lcom/join/mgps/activity/GameInformationActivityV2$q;

    invoke-static {p2, v0, p1}, Lcom/join/mgps/activity/GameInformationActivityV2;->M0(Lcom/join/mgps/activity/GameInformationActivityV2;ILcom/join/mgps/activity/GameInformationActivityV2$q;)V

    goto/16 :goto_0

    .line 37
    :cond_6
    sget-object p2, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->webtitle:Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    invoke-virtual {p2}, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->vaule()I

    move-result p2

    if-ne v0, p2, :cond_7

    .line 38
    check-cast p1, Lcom/join/mgps/activity/GameInformationActivityV2$u;

    .line 39
    invoke-static {p1}, Lcom/join/mgps/activity/GameInformationActivityV2$u;->a(Lcom/join/mgps/activity/GameInformationActivityV2$u;)Landroid/widget/TextView;

    move-result-object p2

    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->a:Lcom/join/mgps/activity/GameInformationActivityV2;

    invoke-static {v0}, Lcom/join/mgps/activity/GameInformationActivityV2;->J0(Lcom/join/mgps/activity/GameInformationActivityV2;)Lcom/join/mgps/dto/GameInformationBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameInformationBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    invoke-static {p1}, Lcom/join/mgps/activity/GameInformationActivityV2$u;->b(Lcom/join/mgps/activity/GameInformationActivityV2$u;)Landroid/widget/TextView;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4f5c\u8005:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->a:Lcom/join/mgps/activity/GameInformationActivityV2;

    invoke-static {v1}, Lcom/join/mgps/activity/GameInformationActivityV2;->J0(Lcom/join/mgps/activity/GameInformationActivityV2;)Lcom/join/mgps/dto/GameInformationBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameInformationBean;->getAuthor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    invoke-static {p1}, Lcom/join/mgps/activity/GameInformationActivityV2$u;->c(Lcom/join/mgps/activity/GameInformationActivityV2$u;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->a:Lcom/join/mgps/activity/GameInformationActivityV2;

    invoke-static {p2}, Lcom/join/mgps/activity/GameInformationActivityV2;->J0(Lcom/join/mgps/activity/GameInformationActivityV2;)Lcom/join/mgps/dto/GameInformationBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/join/mgps/dto/GameInformationBean;->getRelease_time()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 42
    :cond_7
    sget-object p2, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->sendcomment:Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    invoke-virtual {p2}, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->vaule()I

    move-result p2

    if-ne v0, p2, :cond_9

    .line 43
    check-cast p1, Lcom/join/mgps/activity/GameInformationActivityV2$r;

    .line 44
    iget-object p2, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->a:Lcom/join/mgps/activity/GameInformationActivityV2;

    invoke-static {p1}, Lcom/join/mgps/activity/GameInformationActivityV2$r;->a(Lcom/join/mgps/activity/GameInformationActivityV2$r;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v0

    iput-object v0, p2, Lcom/join/mgps/activity/GameInformationActivityV2;->j:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 45
    invoke-static {p1}, Lcom/join/mgps/activity/GameInformationActivityV2$r;->a(Lcom/join/mgps/activity/GameInformationActivityV2$r;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object p2

    const v0, 0x7f080c9f

    invoke-virtual {p2, v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageResource(I)V

    .line 46
    iget-object p2, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->a:Lcom/join/mgps/activity/GameInformationActivityV2;

    invoke-static {p2}, Lcom/join/mgps/activity/GameInformationActivityV2;->G0(Lcom/join/mgps/activity/GameInformationActivityV2;)Lcom/join/mgps/dto/AccountBean;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 47
    iget-object p2, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->a:Lcom/join/mgps/activity/GameInformationActivityV2;

    invoke-static {p2}, Lcom/join/mgps/activity/GameInformationActivityV2;->E0(Lcom/join/mgps/activity/GameInformationActivityV2;)Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->a:Lcom/join/mgps/activity/GameInformationActivityV2;

    invoke-static {v0}, Lcom/join/mgps/activity/GameInformationActivityV2;->G0(Lcom/join/mgps/activity/GameInformationActivityV2;)Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getAvatarSrc()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/join/mgps/activity/GameInformationActivityV2$r;->a(Lcom/join/mgps/activity/GameInformationActivityV2$r;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lcom/join/mgps/Util/UtilsMy;->E2(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/drawee/view/SimpleDraweeView;)V

    .line 48
    :cond_8
    invoke-static {p1}, Lcom/join/mgps/activity/GameInformationActivityV2$r;->b(Lcom/join/mgps/activity/GameInformationActivityV2$r;)Landroid/widget/TextView;

    move-result-object p1

    new-instance p2, Lcom/join/mgps/activity/GameInformationActivityV2$n$g;

    invoke-direct {p2, p0}, Lcom/join/mgps/activity/GameInformationActivityV2$n$g;-><init>(Lcom/join/mgps/activity/GameInformationActivityV2$n;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->webview:Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    invoke-virtual {v0}, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->vaule()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 2
    new-instance p2, Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 3
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p1, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 4
    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    new-instance p1, Lcom/join/mgps/activity/GameInformationActivityV2$t;

    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->a:Lcom/join/mgps/activity/GameInformationActivityV2;

    invoke-direct {p1, v0, p2}, Lcom/join/mgps/activity/GameInformationActivityV2$t;-><init>(Lcom/join/mgps/activity/GameInformationActivityV2;Landroid/view/View;)V

    return-object p1

    .line 6
    :cond_0
    sget-object v0, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->TITLE:Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    invoke-virtual {v0}, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->vaule()I

    move-result v0

    const/4 v1, 0x0

    if-ne p2, v0, :cond_1

    .line 7
    iget-object p2, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->a:Lcom/join/mgps/activity/GameInformationActivityV2;

    iget-object p2, p2, Lcom/join/mgps/activity/GameInformationActivityV2;->s0:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c029e

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 8
    new-instance p2, Lcom/join/mgps/activity/GameInformationActivityV2$s;

    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->a:Lcom/join/mgps/activity/GameInformationActivityV2;

    invoke-direct {p2, v0, p1}, Lcom/join/mgps/activity/GameInformationActivityV2$s;-><init>(Lcom/join/mgps/activity/GameInformationActivityV2;Landroid/view/View;)V

    return-object p2

    .line 9
    :cond_1
    sget-object v0, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->commentTitle:Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    invoke-virtual {v0}, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->vaule()I

    move-result v0

    if-ne p2, v0, :cond_2

    .line 10
    iget-object p2, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->a:Lcom/join/mgps/activity/GameInformationActivityV2;

    invoke-static {p2}, Lcom/join/mgps/activity/GameInformationActivityV2;->E0(Lcom/join/mgps/activity/GameInformationActivityV2;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0248

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 11
    new-instance p2, Lcom/join/mgps/activity/GameInformationActivityV2$m;

    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->a:Lcom/join/mgps/activity/GameInformationActivityV2;

    invoke-direct {p2, v0, p1}, Lcom/join/mgps/activity/GameInformationActivityV2$m;-><init>(Lcom/join/mgps/activity/GameInformationActivityV2;Landroid/view/View;)V

    return-object p2

    .line 12
    :cond_2
    sget-object v0, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->card:Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    invoke-virtual {v0}, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->vaule()I

    move-result v0

    if-ne p2, v0, :cond_3

    .line 13
    iget-object p2, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->a:Lcom/join/mgps/activity/GameInformationActivityV2;

    invoke-static {p2}, Lcom/join/mgps/activity/GameInformationActivityV2;->E0(Lcom/join/mgps/activity/GameInformationActivityV2;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c029d

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 14
    new-instance p2, Lcom/join/mgps/activity/GameInformationActivityV2$k;

    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->a:Lcom/join/mgps/activity/GameInformationActivityV2;

    invoke-direct {p2, v0, p1}, Lcom/join/mgps/activity/GameInformationActivityV2$k;-><init>(Lcom/join/mgps/activity/GameInformationActivityV2;Landroid/view/View;)V

    return-object p2

    .line 15
    :cond_3
    sget-object v0, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->COMMENT:Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    invoke-virtual {v0}, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->vaule()I

    move-result v0

    if-ne p2, v0, :cond_4

    .line 16
    iget-object p2, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->a:Lcom/join/mgps/activity/GameInformationActivityV2;

    iget-object p2, p2, Lcom/join/mgps/activity/GameInformationActivityV2;->s0:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c029f

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 17
    new-instance p2, Lcom/join/mgps/activity/GameInformationActivityV2$l;

    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->a:Lcom/join/mgps/activity/GameInformationActivityV2;

    invoke-direct {p2, v0, p1}, Lcom/join/mgps/activity/GameInformationActivityV2$l;-><init>(Lcom/join/mgps/activity/GameInformationActivityV2;Landroid/view/View;)V

    return-object p2

    .line 18
    :cond_4
    sget-object v0, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->REPLY:Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    invoke-virtual {v0}, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->vaule()I

    move-result v0

    if-ne p2, v0, :cond_5

    .line 19
    iget-object p2, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->a:Lcom/join/mgps/activity/GameInformationActivityV2;

    iget-object p2, p2, Lcom/join/mgps/activity/GameInformationActivityV2;->s0:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0459

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 20
    new-instance p2, Lcom/join/mgps/activity/GameInformationActivityV2$q;

    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->a:Lcom/join/mgps/activity/GameInformationActivityV2;

    invoke-direct {p2, v0, p1}, Lcom/join/mgps/activity/GameInformationActivityV2$q;-><init>(Lcom/join/mgps/activity/GameInformationActivityV2;Landroid/view/View;)V

    return-object p2

    .line 21
    :cond_5
    sget-object v0, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->webtitle:Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    invoke-virtual {v0}, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->vaule()I

    move-result v0

    if-ne p2, v0, :cond_6

    .line 22
    iget-object p2, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->a:Lcom/join/mgps/activity/GameInformationActivityV2;

    iget-object p2, p2, Lcom/join/mgps/activity/GameInformationActivityV2;->s0:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c02a1

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 23
    new-instance p2, Lcom/join/mgps/activity/GameInformationActivityV2$u;

    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->a:Lcom/join/mgps/activity/GameInformationActivityV2;

    invoke-direct {p2, v0, p1}, Lcom/join/mgps/activity/GameInformationActivityV2$u;-><init>(Lcom/join/mgps/activity/GameInformationActivityV2;Landroid/view/View;)V

    return-object p2

    .line 24
    :cond_6
    sget-object v0, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->sendcomment:Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    invoke-virtual {v0}, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->vaule()I

    move-result v0

    if-ne p2, v0, :cond_7

    .line 25
    iget-object p2, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->a:Lcom/join/mgps/activity/GameInformationActivityV2;

    iget-object p2, p2, Lcom/join/mgps/activity/GameInformationActivityV2;->s0:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0249

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 26
    new-instance p2, Lcom/join/mgps/activity/GameInformationActivityV2$r;

    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->a:Lcom/join/mgps/activity/GameInformationActivityV2;

    invoke-direct {p2, v0, p1}, Lcom/join/mgps/activity/GameInformationActivityV2$r;-><init>(Lcom/join/mgps/activity/GameInformationActivityV2;Landroid/view/View;)V

    return-object p2

    :cond_7
    const/4 p1, 0x0

    return-object p1
.end method
