.class public Lcom/join/mgps/customview/p0;
.super Landroid/widget/PopupWindow;
.source "SpecialFilterPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/p0$c;,
        Lcom/join/mgps/customview/p0$d;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/View;

.field public c:Landroid/view/View;

.field d:Landroid/view/View;

.field e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field f:I

.field g:Lcom/join/mgps/customview/p0$c;

.field h:Landroid/view/View;

.field i:Landroid/widget/TextView;

.field j:Landroid/widget/TextView;

.field k:Landroid/widget/TextView;

.field l:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/customview/p0;->e:Ljava/util/Map;

    .line 3
    iput-object p1, p0, Lcom/join/mgps/customview/p0;->a:Landroid/content/Context;

    .line 4
    invoke-direct {p0}, Lcom/join/mgps/customview/p0;->i()V

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/customview/p0;->f()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;II)V
    .locals 1

    const/4 v0, 0x1

    .line 6
    invoke-direct {p0, p2, p3, p4, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 7
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lcom/join/mgps/customview/p0;->e:Ljava/util/Map;

    .line 8
    iput-object p1, p0, Lcom/join/mgps/customview/p0;->a:Landroid/content/Context;

    .line 9
    iput-object p2, p0, Lcom/join/mgps/customview/p0;->b:Landroid/view/View;

    .line 10
    invoke-direct {p0}, Lcom/join/mgps/customview/p0;->i()V

    return-void
.end method

.method public static synthetic a(Lcom/join/mgps/customview/p0;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/join/mgps/customview/p0;->g(Landroid/view/View;)V

    return-void
.end method

.method static synthetic b(Lcom/join/mgps/customview/p0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method private synthetic g(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/customview/p0;->dismiss()V

    return-void
.end method

.method private i()V
    .locals 1

    const v0, 0x7f1204c5

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 2
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 6
    new-instance v0, Lcom/join/mgps/customview/p0$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/customview/p0$a;-><init>(Lcom/join/mgps/customview/p0;)V

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private k(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/p0;->k:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/p0;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/p0;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/p0;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 5
    :pswitch_0
    iget-object p1, p0, Lcom/join/mgps/customview/p0;->l:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    const/16 p1, 0x37

    .line 6
    iput p1, p0, Lcom/join/mgps/customview/p0;->f:I

    goto :goto_0

    .line 7
    :pswitch_1
    iget-object p1, p0, Lcom/join/mgps/customview/p0;->k:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    const/16 p1, 0x36

    .line 8
    iput p1, p0, Lcom/join/mgps/customview/p0;->f:I

    goto :goto_0

    .line 9
    :pswitch_2
    iget-object p1, p0, Lcom/join/mgps/customview/p0;->i:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    const/16 p1, 0x35

    .line 10
    iput p1, p0, Lcom/join/mgps/customview/p0;->f:I

    goto :goto_0

    .line 11
    :pswitch_3
    iget-object p1, p0, Lcom/join/mgps/customview/p0;->j:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    const/16 p1, 0x34

    .line 12
    iput p1, p0, Lcom/join/mgps/customview/p0;->f:I

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x34
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method c()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/p0;->a:Landroid/content/Context;

    const v1, 0x7f01004d

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x96

    .line 3
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 4
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 5
    iget-object v2, p0, Lcom/join/mgps/customview/p0;->h:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/p0;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method d()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/p0;->a:Landroid/content/Context;

    const v1, 0x7f01004f

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3dcccccd    # 0.1f

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x96

    .line 3
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 4
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 5
    iget-object v2, p0, Lcom/join/mgps/customview/p0;->h:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/p0;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public dismiss()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/p0;->a:Landroid/content/Context;

    const v1, 0x7f01004f

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3dcccccd    # 0.1f

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x64

    .line 3
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 4
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 5
    iget-object v2, p0, Lcom/join/mgps/customview/p0;->h:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/p0;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 7
    new-instance v0, Lcom/join/mgps/customview/p0$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/customview/p0$b;-><init>(Lcom/join/mgps/customview/p0;)V

    invoke-virtual {v1, v0}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method public e()Lcom/join/mgps/customview/p0$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/p0;->g:Lcom/join/mgps/customview/p0$c;

    return-object v0
.end method

.method f()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/p0;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0545

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/customview/p0;->b:Landroid/view/View;

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    const/4 v0, -0x1

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    const/4 v0, -0x2

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 5
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->update()V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/p0;->e:Ljava/util/Map;

    const/16 v1, 0x35

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u91d1\u624b\u6307"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lcom/join/mgps/customview/p0;->e:Ljava/util/Map;

    const/16 v1, 0x34

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MOD"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lcom/join/mgps/customview/p0;->e:Ljava/util/Map;

    const/16 v1, 0x36

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u4e00\u952e\u6280\u80fd"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v0, p0, Lcom/join/mgps/customview/p0;->e:Ljava/util/Map;

    const/16 v1, 0x37

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u5feb\u901f\u901a\u5173"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v0, p0, Lcom/join/mgps/customview/p0;->b:Landroid/view/View;

    const v1, 0x7f09015b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/customview/p0;->d:Landroid/view/View;

    .line 11
    new-instance v1, Lcom/join/mgps/customview/o0;

    invoke-direct {v1, p0}, Lcom/join/mgps/customview/o0;-><init>(Lcom/join/mgps/customview/p0;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/customview/p0;->b:Landroid/view/View;

    const v1, 0x7f0904ba

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/customview/p0;->i:Landroid/widget/TextView;

    .line 13
    iget-object v0, p0, Lcom/join/mgps/customview/p0;->b:Landroid/view/View;

    const v1, 0x7f090a61

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/customview/p0;->j:Landroid/widget/TextView;

    .line 14
    iget-object v0, p0, Lcom/join/mgps/customview/p0;->b:Landroid/view/View;

    const v1, 0x7f090b6b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/customview/p0;->k:Landroid/widget/TextView;

    .line 15
    iget-object v0, p0, Lcom/join/mgps/customview/p0;->b:Landroid/view/View;

    const v1, 0x7f090484

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/customview/p0;->l:Landroid/widget/TextView;

    .line 16
    iget-object v0, p0, Lcom/join/mgps/customview/p0;->b:Landroid/view/View;

    const v1, 0x7f090881

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/customview/p0;->h:Landroid/view/View;

    .line 17
    iget-object v0, p0, Lcom/join/mgps/customview/p0;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iget-object v0, p0, Lcom/join/mgps/customview/p0;->j:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    iget-object v0, p0, Lcom/join/mgps/customview/p0;->k:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iget-object v0, p0, Lcom/join/mgps/customview/p0;->l:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public h(Lcom/join/mgps/customview/p0$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/p0;->g:Lcom/join/mgps/customview/p0$c;

    return-void
.end method

.method public j(Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/p0;->showAsDropDown(Landroid/view/View;)V

    .line 2
    iput p2, p0, Lcom/join/mgps/customview/p0;->f:I

    .line 3
    invoke-direct {p0, p2}, Lcom/join/mgps/customview/p0;->k(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const/16 p1, 0x36

    .line 2
    iput p1, p0, Lcom/join/mgps/customview/p0;->f:I

    goto :goto_0

    :sswitch_1
    const/16 p1, 0x34

    .line 3
    iput p1, p0, Lcom/join/mgps/customview/p0;->f:I

    goto :goto_0

    :sswitch_2
    const/16 p1, 0x35

    .line 4
    iput p1, p0, Lcom/join/mgps/customview/p0;->f:I

    goto :goto_0

    :sswitch_3
    const/16 p1, 0x37

    .line 5
    iput p1, p0, Lcom/join/mgps/customview/p0;->f:I

    .line 6
    :goto_0
    iget p1, p0, Lcom/join/mgps/customview/p0;->f:I

    invoke-direct {p0, p1}, Lcom/join/mgps/customview/p0;->k(I)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/customview/p0;->g:Lcom/join/mgps/customview/p0$c;

    iget v0, p0, Lcom/join/mgps/customview/p0;->f:I

    iget-object v1, p0, Lcom/join/mgps/customview/p0;->e:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/join/mgps/customview/p0$c;->a(ILjava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/customview/p0;->dismiss()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090484 -> :sswitch_3
        0x7f0904ba -> :sswitch_2
        0x7f090a61 -> :sswitch_1
        0x7f090b6b -> :sswitch_0
    .end sparse-switch
.end method

.method public showAsDropDown(Landroid/view/View;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/p0;->c:Landroid/view/View;

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ne v0, v1, :cond_0

    .line 3
    :try_start_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/customview/p0;->c:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 5
    iget-object v1, p0, Lcom/join/mgps/customview/p0;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v0

    .line 6
    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 8
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/customview/p0;->c()V

    return-void
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/p0;->c:Landroid/view/View;

    .line 2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method
