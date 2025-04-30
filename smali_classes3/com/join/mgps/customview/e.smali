.class public Lcom/join/mgps/customview/e;
.super Landroid/widget/PopupWindow;
.source "ForumExtFuncPopWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/e$d;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EBean;
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private final j:I

.field private final k:I

.field private final l:I

.field private final m:I

.field private final n:I

.field private o:I

.field p:Lcom/join/mgps/rpc/h;

.field private q:[Ljava/lang/Object;

.field private r:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

.field s:Lcom/join/mgps/customview/e$d;

.field private t:Lcom/join/mgps/dialog/p0;

.field private u:I

.field v:Z

.field w:Z

.field x:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/join/mgps/customview/e;->j:I

    const/4 v1, 0x1

    .line 3
    iput v1, p0, Lcom/join/mgps/customview/e;->k:I

    const/4 v1, 0x2

    .line 4
    iput v1, p0, Lcom/join/mgps/customview/e;->l:I

    const/4 v1, 0x3

    .line 5
    iput v1, p0, Lcom/join/mgps/customview/e;->m:I

    const/16 v1, 0x63

    .line 6
    iput v1, p0, Lcom/join/mgps/customview/e;->n:I

    .line 7
    iput v0, p0, Lcom/join/mgps/customview/e;->o:I

    .line 8
    iput-boolean v0, p0, Lcom/join/mgps/customview/e;->v:Z

    .line 9
    iput-boolean v0, p0, Lcom/join/mgps/customview/e;->w:Z

    .line 10
    iput-boolean v0, p0, Lcom/join/mgps/customview/e;->x:Z

    .line 11
    iput-object p1, p0, Lcom/join/mgps/customview/e;->a:Landroid/content/Context;

    .line 12
    invoke-static {}, Lcom/join/mgps/rpc/impl/f;->A0()Lcom/join/mgps/rpc/impl/f;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/customview/e;->p:Lcom/join/mgps/rpc/h;

    .line 13
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c03f5

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/join/mgps/customview/e;->c:Landroid/view/View;

    .line 15
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 16
    iget-object p1, p0, Lcom/join/mgps/customview/e;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070c83

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 17
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setWidth(I)V

    const/4 p1, -0x2

    .line 18
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 19
    invoke-direct {p0}, Lcom/join/mgps/customview/e;->o()V

    .line 20
    invoke-direct {p0}, Lcom/join/mgps/customview/e;->h()V

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/customview/e;)Lcom/join/mgps/dialog/p0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/e;->t:Lcom/join/mgps/dialog/p0;

    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/customview/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/customview/e;->g()V

    return-void
.end method

.method private g()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/e;->q:[Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lcom/join/mgps/customview/e;->u:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 3
    :pswitch_1
    invoke-virtual {p0}, Lcom/join/mgps/customview/e;->f()V

    goto :goto_0

    .line 4
    :pswitch_2
    invoke-virtual {p0}, Lcom/join/mgps/customview/e;->k()V

    goto :goto_0

    .line 5
    :pswitch_3
    invoke-virtual {p0}, Lcom/join/mgps/customview/e;->e()V

    goto :goto_0

    .line 6
    :pswitch_4
    invoke-virtual {p0}, Lcom/join/mgps/customview/e;->c()V

    goto :goto_0

    .line 7
    :pswitch_5
    invoke-virtual {p0}, Lcom/join/mgps/customview/e;->dismiss()V

    goto :goto_0

    .line 8
    :pswitch_6
    invoke-virtual {p0}, Lcom/join/mgps/customview/e;->d()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f090457
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/e;->c:Landroid/view/View;

    const v1, 0x7f09045f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/customview/e;->b:Landroid/view/View;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/e;->c:Landroid/view/View;

    const v1, 0x7f09045b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/customview/e;->d:Landroid/view/View;

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/e;->c:Landroid/view/View;

    const v1, 0x7f090457

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/customview/e;->e:Landroid/view/View;

    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/e;->c:Landroid/view/View;

    const v1, 0x7f09045d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/customview/e;->f:Landroid/view/View;

    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/e;->c:Landroid/view/View;

    const v1, 0x7f09045e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/customview/e;->g:Landroid/view/View;

    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/e;->c:Landroid/view/View;

    const v1, 0x7f09045a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/customview/e;->h:Landroid/view/View;

    .line 7
    iget-object v0, p0, Lcom/join/mgps/customview/e;->c:Landroid/view/View;

    const v1, 0x7f090459

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/customview/e;->i:Landroid/view/View;

    .line 8
    iget-object v0, p0, Lcom/join/mgps/customview/e;->b:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/customview/e;->d:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/customview/e;->e:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/customview/e;->f:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/customview/e;->g:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iget-object v0, p0, Lcom/join/mgps/customview/e;->h:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iget-object v0, p0, Lcom/join/mgps/customview/e;->i:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private o()V
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 5
    new-instance v0, Lcom/join/mgps/customview/e$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/customview/e$a;-><init>(Lcom/join/mgps/customview/e;)V

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private q()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/customview/e;->dismiss()V

    .line 2
    iget v0, p0, Lcom/join/mgps/customview/e;->u:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    return-void

    .line 3
    :pswitch_1
    iget-object v0, p0, Lcom/join/mgps/customview/e;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/join/mgps/customview/e;->r:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/i0;->H1(Landroid/content/Context;Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V

    return-void

    :pswitch_2
    const-string v0, "\u786e\u5b9a\u8981\u8bbe\u4e3a\u4e3e\u62a5\u5417\uff1f"

    goto :goto_0

    :pswitch_3
    const-string v0, "\u786e\u5b9a\u8981\u56de\u590d\u5417\uff1f"

    goto :goto_0

    .line 4
    :pswitch_4
    invoke-virtual {p0}, Lcom/join/mgps/customview/e;->e()V

    return-void

    :pswitch_5
    const-string v0, "\u786e\u5b9a\u8981\u5220\u9664\u5417\uff1f"

    goto :goto_0

    .line 5
    :pswitch_6
    iget-object v0, p0, Lcom/join/mgps/customview/e;->r:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getBest()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "\u786e\u5b9a\u8981\u53d6\u6d88\u7cbe\u534e\u5417\uff1f"

    goto :goto_0

    :cond_0
    const-string v0, "\u786e\u5b9a\u8981\u8bbe\u4e3a\u7cbe\u534e\u5417\uff1f"

    .line 6
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/customview/e;->a:Landroid/content/Context;

    if-nez v1, :cond_1

    return-void

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/customview/e;->t:Lcom/join/mgps/dialog/p0;

    if-nez v1, :cond_2

    .line 8
    new-instance v1, Lcom/join/mgps/dialog/p0;

    iget-object v2, p0, Lcom/join/mgps/customview/e;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/join/mgps/dialog/p0;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/join/mgps/customview/e;->t:Lcom/join/mgps/dialog/p0;

    .line 9
    :cond_2
    iget-object v1, p0, Lcom/join/mgps/customview/e;->t:Lcom/join/mgps/dialog/p0;

    const-string v2, "\u786e\u5b9a"

    invoke-virtual {v1, v2}, Lcom/join/mgps/dialog/p0;->f(Ljava/lang/String;)V

    .line 10
    iget-object v1, p0, Lcom/join/mgps/customview/e;->t:Lcom/join/mgps/dialog/p0;

    const-string v2, "\u53d6\u6d88"

    invoke-virtual {v1, v2}, Lcom/join/mgps/dialog/p0;->d(Ljava/lang/String;)V

    .line 11
    iget-object v1, p0, Lcom/join/mgps/customview/e;->t:Lcom/join/mgps/dialog/p0;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/join/mgps/dialog/p0;->b(I)V

    .line 12
    iget-object v1, p0, Lcom/join/mgps/customview/e;->t:Lcom/join/mgps/dialog/p0;

    invoke-virtual {v1, v0}, Lcom/join/mgps/dialog/p0;->g(Ljava/lang/String;)Lcom/join/mgps/dialog/p0;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/customview/e$b;

    invoke-direct {v1, p0}, Lcom/join/mgps/customview/e$b;-><init>(Lcom/join/mgps/customview/e;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/p0;->c(Landroid/view/View$OnClickListener;)Lcom/join/mgps/dialog/p0;

    .line 13
    iget-object v0, p0, Lcom/join/mgps/customview/e;->t:Lcom/join/mgps/dialog/p0;

    new-instance v1, Lcom/join/mgps/customview/e$c;

    invoke-direct {v1, p0}, Lcom/join/mgps/customview/e$c;-><init>(Lcom/join/mgps/customview/e;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/p0;->e(Landroid/view/View$OnClickListener;)Lcom/join/mgps/dialog/p0;

    .line 14
    iget-object v0, p0, Lcom/join/mgps/customview/e;->t:Lcom/join/mgps/dialog/p0;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 15
    iget-object v0, p0, Lcom/join/mgps/customview/e;->t:Lcom/join/mgps/dialog/p0;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f090457
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method c()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/e;->a:Landroid/content/Context;

    .line 2
    iget-object v1, p0, Lcom/join/mgps/customview/e;->r:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v1

    const/4 v2, 0x0

    .line 3
    :try_start_0
    invoke-static {v0, v1}, Lcom/join/mgps/Util/i0;->c0(Landroid/content/Context;I)Lcom/join/mgps/dto/ForumRequestBean$ForumPostsDeleteRequestBean;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 4
    iget-object v3, p0, Lcom/join/mgps/customview/e;->p:Lcom/join/mgps/rpc/h;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/i0;->c0(Landroid/content/Context;I)Lcom/join/mgps/dto/ForumRequestBean$ForumPostsDeleteRequestBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsDeleteRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/join/mgps/rpc/h;->q0(Ljava/util/Map;)Lcom/join/mgps/dto/ForumResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponse;->getError()I

    move-result v3

    if-nez v3, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/ForumData$ForumPostsDeleteData;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumData$ForumPostsDeleteData;->isResult()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/join/mgps/customview/e;->i(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 9
    :catch_0
    :try_start_1
    invoke-virtual {p0, v1, v2}, Lcom/join/mgps/customview/e;->i(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_1
    return-void

    .line 10
    :goto_2
    throw v0
.end method

.method d()V
    .locals 10
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/e;->w:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/customview/e;->w:Z

    .line 3
    iget-object v1, p0, Lcom/join/mgps/customview/e;->a:Landroid/content/Context;

    .line 4
    new-instance v2, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-direct {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;-><init>()V

    .line 5
    :try_start_0
    iget-object v3, p0, Lcom/join/mgps/customview/e;->r:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    if-eqz v3, :cond_1

    .line 6
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_0

    :catch_0
    move-exception v3

    .line 7
    invoke-virtual {v3}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    .line 8
    :cond_1
    :goto_0
    invoke-static {v1}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_e

    const v3, 0x7f110100

    .line 9
    :try_start_1
    invoke-static {v1}, Lcom/join/mgps/Util/i0;->Y0(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 10
    invoke-static {v1}, Lcom/join/mgps/Util/i0;->L0(Landroid/content/Context;)V

    const v0, 0x7f11010d

    .line 11
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/e;->r(Ljava/lang/String;)V

    .line 12
    iput-boolean v4, p0, Lcom/join/mgps/customview/e;->w:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    iput-boolean v4, p0, Lcom/join/mgps/customview/e;->w:Z

    return-void

    .line 14
    :cond_2
    :try_start_2
    invoke-static {v1}, Lcom/join/mgps/Util/i0;->T(Landroid/content/Context;)Lcom/join/mgps/dto/AccountBean;

    move-result-object v5

    .line 15
    new-instance v6, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v7

    invoke-virtual {v5}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v8

    const-string v9, ""

    invoke-direct {v6, v7, v5, v8, v9}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    .line 16
    iget-object v5, p0, Lcom/join/mgps/customview/e;->p:Lcom/join/mgps/rpc/h;

    invoke-virtual {v6}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/join/mgps/rpc/h;->r0(Ljava/util/Map;)Lcom/join/mgps/dto/ForumResponse;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 17
    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumResponse;->getError()I

    move-result v6

    if-eqz v6, :cond_4

    const/16 v0, 0x2bd

    if-eq v6, v0, :cond_3

    goto :goto_4

    :cond_3
    const v0, 0x7f11010c

    .line 18
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/e;->r(Ljava/lang/String;)V

    goto :goto_4

    .line 19
    :cond_4
    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/dto/ForumData$ForumPostsBestData;

    if-eqz v5, :cond_9

    .line 20
    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumData$ForumPostsBestData;->isResult()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 21
    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumData$ForumPostsBestData;->getBest()I

    move-result v5

    if-ne v5, v0, :cond_5

    const/4 v5, 0x1

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_6

    const v6, 0x7f110101

    .line 22
    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/join/mgps/customview/e;->r(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const v6, 0x7f110102

    .line 23
    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/join/mgps/customview/e;->r(Ljava/lang/String;)V

    :goto_2
    if-eqz v5, :cond_7

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    .line 24
    :goto_3
    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setBest(I)V

    goto :goto_4

    .line 25
    :cond_8
    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumData$ForumPostsBestData;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 26
    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumData$ForumPostsBestData;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/e;->r(Ljava/lang/String;)V

    goto :goto_4

    .line 27
    :cond_9
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/e;->r(Ljava/lang/String;)V

    goto :goto_4

    .line 28
    :cond_a
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/e;->r(Ljava/lang/String;)V

    .line 29
    :cond_b
    :goto_4
    iget-object v0, p0, Lcom/join/mgps/customview/e;->s:Lcom/join/mgps/customview/e$d;

    if-eqz v0, :cond_d

    .line 30
    invoke-interface {v0, v2}, Lcom/join/mgps/customview/e$d;->e(Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    .line 31
    :try_start_3
    iget-object v5, p0, Lcom/join/mgps/customview/e;->s:Lcom/join/mgps/customview/e$d;

    if-eqz v5, :cond_c

    .line 32
    invoke-interface {v5, v2}, Lcom/join/mgps/customview/e$d;->e(Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V

    .line 33
    :cond_c
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/join/mgps/customview/e;->r(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 35
    :cond_d
    :goto_5
    iput-boolean v4, p0, Lcom/join/mgps/customview/e;->w:Z

    goto :goto_7

    :goto_6
    iput-boolean v4, p0, Lcom/join/mgps/customview/e;->w:Z

    .line 36
    throw v0

    :cond_e
    const v0, 0x7f110206

    .line 37
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/e;->r(Ljava/lang/String;)V

    .line 38
    iput-boolean v4, p0, Lcom/join/mgps/customview/e;->w:Z

    :goto_7
    return-void
.end method

.method public dismiss()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/e;->s:Lcom/join/mgps/customview/e$d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/join/mgps/customview/e$d;->onCancel()V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/e;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 4
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 5
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 6
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method e()V
    .locals 9
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const-string v0, ""

    .line 1
    iget-object v1, p0, Lcom/join/mgps/customview/e;->a:Landroid/content/Context;

    .line 2
    new-instance v2, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-direct {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;-><init>()V

    .line 3
    :try_start_0
    iget-object v3, p0, Lcom/join/mgps/customview/e;->r:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception v3

    .line 5
    invoke-virtual {v3}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    .line 6
    :goto_0
    invoke-static {v1}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_a

    .line 7
    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    .line 8
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/join/mgps/Util/IntentUtil;->goLoginInteractive(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    :cond_1
    const/4 v3, 0x1

    .line 9
    iput-boolean v3, p0, Lcom/join/mgps/customview/e;->v:Z

    const v3, 0x7f110104

    .line 10
    :try_start_1
    invoke-static {v1}, Lcom/join/mgps/Util/i0;->Y0(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 11
    invoke-static {v1}, Lcom/join/mgps/Util/i0;->L0(Landroid/content/Context;)V

    const v0, 0x7f11010d

    .line 12
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/e;->r(Ljava/lang/String;)V

    .line 13
    iput-boolean v4, p0, Lcom/join/mgps/customview/e;->v:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    iput-boolean v4, p0, Lcom/join/mgps/customview/e;->v:Z

    return-void

    .line 15
    :cond_2
    :try_start_2
    invoke-static {v1}, Lcom/join/mgps/Util/i0;->T(Landroid/content/Context;)Lcom/join/mgps/dto/AccountBean;

    move-result-object v5

    .line 16
    new-instance v6, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v7

    invoke-virtual {v5}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v8

    invoke-direct {v6, v7, v5, v8, v0}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    .line 17
    invoke-static {v1}, Lcom/join/android/app/common/utils/j;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/android/app/common/utils/j;->y()I

    move-result v0

    .line 18
    invoke-static {v1}, Lcom/join/android/app/common/utils/j;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/j;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/android/app/common/utils/j;->z()Ljava/lang/String;

    move-result-object v5

    .line 19
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;->setApp_ver(Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lcom/join/mgps/customview/e;->p:Lcom/join/mgps/rpc/h;

    invoke-virtual {v6}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    move-result-object v5

    invoke-interface {v0, v5}, Lcom/join/mgps/rpc/h;->k0(Ljava/util/Map;)Lcom/join/mgps/dto/ForumResponse;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 21
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponse;->getError()I

    move-result v5

    if-eqz v5, :cond_4

    const/16 v0, 0x2bd

    if-eq v5, v0, :cond_3

    goto :goto_2

    :cond_3
    const v0, 0x7f11010c

    .line 22
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/e;->r(Ljava/lang/String;)V

    goto :goto_2

    .line 23
    :cond_4
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/ForumData$ForumPostsFavoritesData;

    if-eqz v0, :cond_6

    .line 24
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumData$ForumPostsFavoritesData;->isFavorites()Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setIs_favorite(Z)V

    .line 25
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumData$ForumPostsFavoritesData;->isFavorites()Z

    move-result v5

    if-eqz v5, :cond_5

    const v5, 0x7f110105

    .line 26
    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/join/mgps/customview/e;->r(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const v5, 0x7f110103

    .line 27
    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/join/mgps/customview/e;->r(Ljava/lang/String;)V

    .line 28
    :goto_1
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v5

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumData$ForumPostsFavoritesData;->isFavorites()Z

    move-result v0

    invoke-static {v5, v0}, Lcom/join/mgps/Util/i0;->f1(IZ)V

    goto :goto_2

    .line 29
    :cond_6
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/e;->r(Ljava/lang/String;)V

    goto :goto_2

    .line 30
    :cond_7
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/e;->r(Ljava/lang/String;)V

    .line 31
    :goto_2
    iget-object v0, p0, Lcom/join/mgps/customview/e;->s:Lcom/join/mgps/customview/e$d;

    if-eqz v0, :cond_9

    .line 32
    invoke-interface {v0, v2}, Lcom/join/mgps/customview/e$d;->d(Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    .line 33
    :try_start_3
    iget-object v5, p0, Lcom/join/mgps/customview/e;->s:Lcom/join/mgps/customview/e$d;

    if-eqz v5, :cond_8

    .line 34
    invoke-interface {v5, v2}, Lcom/join/mgps/customview/e$d;->d(Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V

    .line 35
    :cond_8
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/join/mgps/customview/e;->r(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 37
    :cond_9
    :goto_3
    iput-boolean v4, p0, Lcom/join/mgps/customview/e;->v:Z

    goto :goto_5

    :goto_4
    iput-boolean v4, p0, Lcom/join/mgps/customview/e;->v:Z

    .line 38
    throw v0

    :cond_a
    const v0, 0x7f110206

    .line 39
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/e;->r(Ljava/lang/String;)V

    .line 40
    iput-boolean v4, p0, Lcom/join/mgps/customview/e;->v:Z

    :goto_5
    return-void
.end method

.method f()V
    .locals 9
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/e;->x:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/customview/e;->x:Z

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/e;->a:Landroid/content/Context;

    .line 4
    new-instance v1, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-direct {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;-><init>()V

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/join/mgps/customview/e;->r:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v2

    .line 7
    invoke-virtual {v2}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    .line 8
    :cond_1
    :goto_0
    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_a

    const v2, 0x7f110106

    .line 9
    :try_start_1
    invoke-static {v0}, Lcom/join/mgps/Util/i0;->Y0(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 10
    invoke-static {v0}, Lcom/join/mgps/Util/i0;->L0(Landroid/content/Context;)V

    const v4, 0x7f11010d

    .line 11
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/join/mgps/customview/e;->r(Ljava/lang/String;)V

    .line 12
    iput-boolean v3, p0, Lcom/join/mgps/customview/e;->x:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    iput-boolean v3, p0, Lcom/join/mgps/customview/e;->x:Z

    return-void

    .line 14
    :cond_2
    :try_start_2
    invoke-static {v0}, Lcom/join/mgps/Util/i0;->T(Landroid/content/Context;)Lcom/join/mgps/dto/AccountBean;

    move-result-object v4

    .line 15
    new-instance v5, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v6

    invoke-virtual {v4}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v7

    const-string v8, ""

    invoke-direct {v5, v6, v4, v7, v8}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    .line 16
    iget-object v4, p0, Lcom/join/mgps/customview/e;->p:Lcom/join/mgps/rpc/h;

    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/join/mgps/rpc/h;->c(Ljava/util/Map;)Lcom/join/mgps/dto/ForumResponse;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 17
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumResponse;->getError()I

    move-result v5

    if-eqz v5, :cond_4

    const/16 v4, 0x2bd

    if-eq v5, v4, :cond_3

    goto :goto_1

    :cond_3
    const v4, 0x7f11010c

    .line 18
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/join/mgps/customview/e;->r(Ljava/lang/String;)V

    goto :goto_1

    .line 19
    :cond_4
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/ForumData$ForumPostsReportData;

    if-eqz v4, :cond_6

    .line 20
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumData$ForumPostsReportData;->isResult()Z

    move-result v4

    if-eqz v4, :cond_5

    const v4, 0x7f110107

    .line 21
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/join/mgps/customview/e;->r(Ljava/lang/String;)V

    goto :goto_1

    .line 22
    :cond_5
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/join/mgps/customview/e;->r(Ljava/lang/String;)V

    goto :goto_1

    .line 23
    :cond_6
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/join/mgps/customview/e;->r(Ljava/lang/String;)V

    goto :goto_1

    .line 24
    :cond_7
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/join/mgps/customview/e;->r(Ljava/lang/String;)V

    .line 25
    :goto_1
    iget-object v4, p0, Lcom/join/mgps/customview/e;->s:Lcom/join/mgps/customview/e$d;

    if-eqz v4, :cond_9

    .line 26
    invoke-interface {v4, v1}, Lcom/join/mgps/customview/e$d;->b(Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v4

    .line 27
    :try_start_3
    iget-object v5, p0, Lcom/join/mgps/customview/e;->s:Lcom/join/mgps/customview/e$d;

    if-eqz v5, :cond_8

    .line 28
    invoke-interface {v5, v1}, Lcom/join/mgps/customview/e$d;->b(Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V

    .line 29
    :cond_8
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/e;->r(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 31
    :cond_9
    :goto_2
    iput-boolean v3, p0, Lcom/join/mgps/customview/e;->x:Z

    goto :goto_4

    :goto_3
    iput-boolean v3, p0, Lcom/join/mgps/customview/e;->x:Z

    .line 32
    throw v0

    :cond_a
    const v1, 0x7f110206

    .line 33
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/e;->r(Ljava/lang/String;)V

    .line 34
    iput-boolean v3, p0, Lcom/join/mgps/customview/e;->x:Z

    :goto_4
    return-void
.end method

.method i(IZ)V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    if-eqz p2, :cond_0

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u5220\u9664\u6210\u529f"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u5220\u9664\u5931\u8d25"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/customview/e;->s:Lcom/join/mgps/customview/e$d;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0, p1, p2}, Lcom/join/mgps/customview/e$d;->c(IZ)V

    :cond_1
    return-void
.end method

.method j(Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/e;->d:Landroid/view/View;

    const v1, 0x7f09045c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_favorite()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "\u53d6\u6d88\u6536\u85cf"

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const-string v1, "\u6536\u85cf"

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/customview/e;->e:Landroid/view/View;

    const v1, 0x7f090458

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getBest()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const-string p1, "\u53d6\u6d88\u7cbe\u534e"

    .line 7
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    const-string p1, "\u7cbe\u534e"

    .line 8
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method k()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/e;->r:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/customview/e;->a:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 3
    invoke-static {v1, v0}, Lcom/join/mgps/Util/i0;->v0(Landroid/content/Context;Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/customview/e;->s:Lcom/join/mgps/customview/e$d;

    if-eqz v0, :cond_2

    .line 5
    iget-object v1, p0, Lcom/join/mgps/customview/e;->r:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/join/mgps/customview/e$d;->a(I)V

    :cond_2
    return-void
.end method

.method public l([Ljava/lang/Object;)I
    .locals 3

    const/4 v0, 0x7

    .line 1
    :try_start_0
    iput-object p1, p0, Lcom/join/mgps/customview/e;->q:[Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 2
    array-length v2, p1

    if-eqz v2, :cond_0

    .line 3
    aget-object p1, p1, v1

    check-cast p1, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    iput-object p1, p0, Lcom/join/mgps/customview/e;->r:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 4
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/e;->j(Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/e;->r:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    if-nez p1, :cond_1

    return v0

    .line 6
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getAuth()I

    move-result p1

    if-eqz p1, :cond_6

    const/4 v2, 0x1

    if-eq p1, v2, :cond_5

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_3

    const/16 v2, 0x63

    if-eq p1, v2, :cond_2

    .line 7
    iput v1, p0, Lcom/join/mgps/customview/e;->o:I

    goto :goto_0

    .line 8
    :cond_2
    iput v2, p0, Lcom/join/mgps/customview/e;->o:I

    goto :goto_0

    .line 9
    :cond_3
    iput v2, p0, Lcom/join/mgps/customview/e;->o:I

    goto :goto_0

    .line 10
    :cond_4
    iput v2, p0, Lcom/join/mgps/customview/e;->o:I

    goto :goto_0

    .line 11
    :cond_5
    iput v2, p0, Lcom/join/mgps/customview/e;->o:I

    goto :goto_0

    .line 12
    :cond_6
    iput v1, p0, Lcom/join/mgps/customview/e;->o:I

    .line 13
    :goto_0
    iget p1, p0, Lcom/join/mgps/customview/e;->o:I

    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/e;->n(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return v0
.end method

.method public m(Lcom/join/mgps/customview/e$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/e;->s:Lcom/join/mgps/customview/e$d;

    return-void
.end method

.method public n(I)I
    .locals 8

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/e;->o:I

    const/4 p1, 0x5

    new-array v0, p1, [Ljava/lang/Integer;

    const/4 v1, 0x0

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v3

    const/16 v5, 0x63

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x4

    aput-object v5, v0, v6

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 3
    iget v5, p0, Lcom/join/mgps/customview/e;->o:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iput v1, p0, Lcom/join/mgps/customview/e;->o:I

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/e;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/e;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/customview/e;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/customview/e;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/customview/e;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/customview/e;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/customview/e;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/customview/e;->f:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x6

    .line 13
    iget v7, p0, Lcom/join/mgps/customview/e;->o:I

    if-eqz v7, :cond_6

    if-eq v7, v4, :cond_5

    if-eq v7, v2, :cond_4

    if-eq v7, v3, :cond_1

    goto :goto_0

    .line 14
    :cond_1
    iget-object v2, p0, Lcom/join/mgps/customview/e;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 15
    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v2

    iget-object v3, p0, Lcom/join/mgps/customview/e;->r:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getUid()I

    move-result v3

    if-ne v2, v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    if-eqz v1, :cond_3

    .line 16
    iget-object v0, p0, Lcom/join/mgps/customview/e;->g:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_3
    :goto_0
    const/4 p1, 0x6

    goto :goto_2

    .line 17
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/customview/e;->e:Landroid/view/View;

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 18
    iget-object p1, p0, Lcom/join/mgps/customview/e;->g:Landroid/view/View;

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 19
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/customview/e;->e:Landroid/view/View;

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 20
    iget-object p1, p0, Lcom/join/mgps/customview/e;->h:Landroid/view/View;

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 21
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/customview/e;->e:Landroid/view/View;

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 22
    iget-object p1, p0, Lcom/join/mgps/customview/e;->h:Landroid/view/View;

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    const/4 p1, 0x4

    :goto_2
    return p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090459

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/customview/e;->dismiss()V

    .line 3
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iput p1, p0, Lcom/join/mgps/customview/e;->u:I

    .line 4
    invoke-direct {p0}, Lcom/join/mgps/customview/e;->q()V

    return-void
.end method

.method public varargs p(Landroid/view/View;[Ljava/lang/Object;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    .line 2
    invoke-virtual {p0, p2}, Lcom/join/mgps/customview/e;->l([Ljava/lang/Object;)I

    const p2, 0x7f1204c7

    .line 3
    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 4
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070c81

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    .line 5
    iget-object p2, p0, Lcom/join/mgps/customview/e;->a:Landroid/content/Context;

    check-cast p2, Landroid/app/Activity;

    const v0, 0x1020002

    invoke-virtual {p2, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/16 v0, 0x11

    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, p2, v0, v1, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 7
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    const v0, 0x3e99999a    # 0.3f

    .line 8
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 9
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method r(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method
