.class public Lcom/switfpass/pay/utils/l;
.super Landroid/app/Dialog;


# static fields
.field public static final A:I = 0xa

.field public static final B:I = 0xb

.field public static final C:I = 0xc

.field public static final p:I = 0x0

.field public static final q:I = 0x1

.field public static final r:I = 0x2

.field public static final s:I = 0x3

.field public static final t:I = 0x4

.field public static final u:I = 0x5

.field public static final v:I = 0x8

.field public static final w:I = 0x6

.field public static final x:I = 0x7

.field public static final y:I = 0x8

.field public static final z:I = 0x9


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/view/ViewGroup;

.field private i:Lcom/switfpass/pay/utils/i;

.field private j:Landroid/view/View;

.field private k:Landroid/view/View;

.field private l:Landroid/widget/EditText;

.field private m:Landroid/widget/LinearLayout;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/switfpass/pay/utils/i;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {}, Lcom/switfpass/pay/lib/Resourcemap;->getLayout_dialog_info()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/switfpass/pay/utils/l;->h:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0, p5}, Lcom/switfpass/pay/utils/l;->k(Ljava/lang/String;)V

    invoke-virtual {p0, p6}, Lcom/switfpass/pay/utils/l;->j(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/switfpass/pay/utils/l;->a:Landroid/content/Context;

    iput-object p7, p0, Lcom/switfpass/pay/utils/l;->i:Lcom/switfpass/pay/utils/i;

    invoke-direct {p0, p3, p4, p2}, Lcom/switfpass/pay/utils/l;->c(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, p2}, Lcom/switfpass/pay/utils/l;->b(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/switfpass/pay/utils/i;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 p4, 0x1

    invoke-virtual {p0, p4}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p4

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p4, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p4

    invoke-static {}, Lcom/switfpass/pay/lib/Resourcemap;->getLayout_dialog_info()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p4, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/switfpass/pay/utils/l;->h:Landroid/view/ViewGroup;

    invoke-virtual {p0, p4}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    iput-object p1, p0, Lcom/switfpass/pay/utils/l;->a:Landroid/content/Context;

    iput-object p6, p0, Lcom/switfpass/pay/utils/l;->i:Lcom/switfpass/pay/utils/i;

    invoke-direct {p0, p2, p3, p5}, Lcom/switfpass/pay/utils/l;->c(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, p5}, Lcom/switfpass/pay/utils/l;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/switfpass/pay/utils/l;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/switfpass/pay/utils/l;->a:Landroid/content/Context;

    return-object p0
.end method

.method private b(I)V
    .locals 2

    iget-object v0, p0, Lcom/switfpass/pay/utils/l;->g:Landroid/widget/TextView;

    new-instance v1, Lcom/switfpass/pay/utils/h1;

    invoke-direct {v1, p0, p1}, Lcom/switfpass/pay/utils/h1;-><init>(Lcom/switfpass/pay/utils/l;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/switfpass/pay/utils/l;->f:Landroid/widget/TextView;

    new-instance v1, Lcom/switfpass/pay/utils/i1;

    invoke-direct {v1, p0, p1}, Lcom/switfpass/pay/utils/i1;-><init>(Lcom/switfpass/pay/utils/l;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    invoke-static {}, Lcom/switfpass/pay/lib/Resourcemap;->getById_title()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/switfpass/pay/utils/l;->b:Landroid/widget/TextView;

    invoke-static {}, Lcom/switfpass/pay/lib/Resourcemap;->getById_content()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/switfpass/pay/utils/l;->c:Landroid/widget/TextView;

    invoke-static {}, Lcom/switfpass/pay/lib/Resourcemap;->getById_btnOk()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/switfpass/pay/utils/l;->f:Landroid/widget/TextView;

    invoke-static {}, Lcom/switfpass/pay/lib/Resourcemap;->getById_btnCancel()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/switfpass/pay/utils/l;->g:Landroid/widget/TextView;

    invoke-static {}, Lcom/switfpass/pay/lib/Resourcemap;->getById_line_img()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/switfpass/pay/utils/l;->j:Landroid/view/View;

    invoke-static {}, Lcom/switfpass/pay/lib/Resourcemap;->getById_et_content()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/switfpass/pay/utils/l;->l:Landroid/widget/EditText;

    invoke-static {}, Lcom/switfpass/pay/lib/Resourcemap;->getById_pay_lay_revers()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/switfpass/pay/utils/l;->m:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/switfpass/pay/lib/Resourcemap;->getById_pay_money()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/switfpass/pay/utils/l;->d:Landroid/widget/TextView;

    invoke-static {}, Lcom/switfpass/pay/lib/Resourcemap;->getById_pay_order_no()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/switfpass/pay/utils/l;->e:Landroid/widget/TextView;

    invoke-static {}, Lcom/switfpass/pay/lib/Resourcemap;->getById_pay_img()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/switfpass/pay/utils/l;->k:Landroid/view/View;

    const/4 v0, 0x3

    const v1, -0xffff01

    if-eq p3, v0, :cond_0

    const/4 v0, 0x4

    if-eq p3, v0, :cond_0

    const/4 v0, 0x0

    const/16 v1, 0x8

    packed-switch p3, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-object p3, p0, Lcom/switfpass/pay/utils/l;->f:Landroid/widget/TextView;

    const-string v0, "\u7ee7\u7eed\u652f\u4ed8"

    goto :goto_0

    :pswitch_1
    iget-object p3, p0, Lcom/switfpass/pay/utils/l;->g:Landroid/widget/TextView;

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p3, p0, Lcom/switfpass/pay/utils/l;->j:Landroid/view/View;

    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p3, p0, Lcom/switfpass/pay/utils/l;->f:Landroid/widget/TextView;

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p3, p0, Lcom/switfpass/pay/utils/l;->k:Landroid/view/View;

    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p3, p0, Lcom/switfpass/pay/utils/l;->m:Landroid/widget/LinearLayout;

    invoke-virtual {p3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    :pswitch_2
    iget-object p3, p0, Lcom/switfpass/pay/utils/l;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/switfpass/pay/utils/l;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p0, Lcom/switfpass/pay/utils/l;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/switfpass/pay/utils/l;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p0, Lcom/switfpass/pay/utils/l;->m:Landroid/widget/LinearLayout;

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p3, p0, Lcom/switfpass/pay/utils/l;->c:Landroid/widget/TextView;

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p3, p0, Lcom/switfpass/pay/utils/l;->f:Landroid/widget/TextView;

    const-string v0, "\u51b2\u6b63"

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p0, Lcom/switfpass/pay/utils/l;->g:Landroid/widget/TextView;

    const-string v0, "\u7ee7\u7eed\u67e5\u8be2"

    goto :goto_0

    :pswitch_3
    iget-object p3, p0, Lcom/switfpass/pay/utils/l;->l:Landroid/widget/EditText;

    invoke-virtual {p3, v0}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object p3, p0, Lcom/switfpass/pay/utils/l;->c:Landroid/widget/TextView;

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p3, p0, Lcom/switfpass/pay/utils/l;->g:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p3, p0, Lcom/switfpass/pay/utils/l;->j:Landroid/view/View;

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :pswitch_4
    iget-object p3, p0, Lcom/switfpass/pay/utils/l;->g:Landroid/widget/TextView;

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p3, p0, Lcom/switfpass/pay/utils/l;->j:Landroid/view/View;

    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p3, p0, Lcom/switfpass/pay/utils/l;->f:Landroid/widget/TextView;

    const-string v0, "\u786e\u5b9a"

    :goto_0
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    iget-object p3, p0, Lcom/switfpass/pay/utils/l;->f:Landroid/widget/TextView;

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    iget-object p3, p0, Lcom/switfpass/pay/utils/l;->b:Landroid/widget/TextView;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/switfpass/pay/utils/l;->c:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic d(Lcom/switfpass/pay/utils/l;)Lcom/switfpass/pay/utils/i;
    .locals 0

    iget-object p0, p0, Lcom/switfpass/pay/utils/l;->i:Lcom/switfpass/pay/utils/i;

    return-object p0
.end method

.method static synthetic e(Lcom/switfpass/pay/utils/l;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/switfpass/pay/utils/l;->l:Landroid/widget/EditText;

    return-object p0
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/switfpass/pay/utils/l;->o:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/switfpass/pay/utils/l;->n:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/switfpass/pay/utils/l;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/switfpass/pay/utils/l;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/switfpass/pay/utils/l;->o:Ljava/lang/String;

    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/switfpass/pay/utils/l;->n:Ljava/lang/String;

    return-void
.end method

.method public l(Lcom/switfpass/pay/utils/j;I)V
    .locals 0

    return-void
.end method

.method public m(Lcom/switfpass/pay/utils/k;)V
    .locals 0

    return-void
.end method

.method public n(Ljava/lang/Class;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/switfpass/pay/utils/l;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object p1, p0, Lcom/switfpass/pay/utils/l;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
