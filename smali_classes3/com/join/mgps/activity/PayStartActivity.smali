.class public Lcom/join/mgps/activity/PayStartActivity;
.super Lcom/BaseActivity;
.source "PayStartActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/PayStartActivity$d;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c0063
.end annotation


# instance fields
.field a:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field b:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field c:Lcom/join/mgps/customview/FlowLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h:Lcom/join/mgps/dto/PapayOrder;

.field i:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field j:Lcom/join/mgps/rpc/n;

.field k:Lcom/join/mgps/dto/AccountBean;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field l:Lcom/join/mgps/dto/IntentDataMain;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/join/mgps/activity/PayStartActivity$d;

.field private o:Landroid/widget/EditText;

.field private p:Lcom/join/mgps/dto/PayActivityBean;

.field q:Lcom/MApplication;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic E0(Lcom/join/mgps/activity/PayStartActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/PayStartActivity;->I0(Landroid/view/View;)V

    return-void
.end method

.method static synthetic F0(Lcom/join/mgps/activity/PayStartActivity;)Landroid/widget/EditText;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/PayStartActivity;->o:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic G0(Lcom/join/mgps/activity/PayStartActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/PayStartActivity;->T0(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic H0(Lcom/join/mgps/activity/PayStartActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/PayStartActivity;->K0()V

    return-void
.end method

.method private I0(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PayStartActivity;->c:Lcom/join/mgps/customview/FlowLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 2
    iget-object v3, p0, Lcom/join/mgps/activity/PayStartActivity;->c:Lcom/join/mgps/customview/FlowLayout;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Landroid/widget/Button;

    if-eqz v3, :cond_1

    .line 3
    iget-object v3, p0, Lcom/join/mgps/activity/PayStartActivity;->c:Lcom/join/mgps/customview/FlowLayout;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    if-ne v3, p1, :cond_0

    const/4 v4, 0x1

    .line 4
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setSelected(Z)V

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {v3, v1}, Landroid/widget/Button;->setSelected(Z)V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private K0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PayStartActivity;->o:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/PayStartActivity;->o:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    const-string v0, "input_method"

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/PayStartActivity;->o:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method private L0()V
    .locals 14

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/PayStartActivity;->m:Ljava/util/List;

    const/16 v1, 0xa

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/PayStartActivity;->m:Ljava/util/List;

    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/PayStartActivity;->m:Ljava/util/List;

    const/16 v1, 0x32

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/PayStartActivity;->m:Ljava/util/List;

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/PayStartActivity;->m:Ljava/util/List;

    const/16 v2, 0x12c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/PayStartActivity;->m:Ljava/util/List;

    const/16 v2, 0x1f4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/PayStartActivity;->m:Ljava/util/List;

    const/16 v2, 0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/PayStartActivity;->m:Ljava/util/List;

    const/16 v2, 0x7d0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance v0, Lcom/join/mgps/activity/PayStartActivity$d;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/PayStartActivity$d;-><init>(Lcom/join/mgps/activity/PayStartActivity;)V

    iput-object v0, p0, Lcom/join/mgps/activity/PayStartActivity;->n:Lcom/join/mgps/activity/PayStartActivity$d;

    .line 11
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    const/high16 v2, 0x41a00000    # 20.0f

    .line 13
    invoke-static {p0, v2}, Lcom/join/mgps/Util/b0;->a(Landroid/content/Context;F)I

    move-result v2

    .line 14
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v3, v2, 0x4

    sub-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x3

    const/high16 v3, 0x42200000    # 40.0f

    .line 15
    invoke-static {p0, v3}, Lcom/join/mgps/Util/b0;->a(Landroid/content/Context;F)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 16
    :goto_0
    iget-object v6, p0, Lcom/join/mgps/activity/PayStartActivity;->m:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const v7, -0xdb9c5

    const/high16 v8, 0x41400000    # 12.0f

    const/4 v9, 0x1

    if-ge v5, v6, :cond_1

    .line 17
    new-instance v6, Landroid/widget/Button;

    invoke-direct {v6, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const v10, 0x7f0809ed

    .line 18
    invoke-virtual {v6, v10}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 19
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/join/mgps/activity/PayStartActivity;->m:Ljava/util/List;

    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const v11, 0x7f110248

    invoke-virtual {p0, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 20
    iget-object v10, p0, Lcom/join/mgps/activity/PayStartActivity;->m:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v10, v1, :cond_0

    .line 21
    invoke-virtual {v6, v9}, Landroid/widget/Button;->setSelected(Z)V

    .line 22
    iget-object v10, p0, Lcom/join/mgps/activity/PayStartActivity;->h:Lcom/join/mgps/dto/PapayOrder;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lcom/join/mgps/activity/PayStartActivity;->m:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/join/mgps/dto/PapayOrder;->PRODUCT_NAME:Ljava/lang/String;

    .line 23
    iget-object v10, p0, Lcom/join/mgps/activity/PayStartActivity;->h:Lcom/join/mgps/dto/PapayOrder;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/join/mgps/activity/PayStartActivity;->m:Ljava/util/List;

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/join/mgps/dto/PapayOrder;->MONEY_AMOUNT:Ljava/lang/String;

    .line 24
    iget-object v10, p0, Lcom/join/mgps/activity/PayStartActivity;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f110257

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-array v9, v9, [Ljava/lang/Object;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "<font color = \'#f2463b\'>"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, p0, Lcom/join/mgps/activity/PayStartActivity;->m:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, "</font>"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v9, v4

    invoke-static {v11, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v9

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    :cond_0
    invoke-virtual {v6, v7}, Landroid/widget/Button;->setTextColor(I)V

    .line 26
    invoke-virtual {v6, v8}, Landroid/widget/Button;->setTextSize(F)V

    .line 27
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v0, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 28
    iput v2, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 29
    iput v2, v7, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 30
    invoke-virtual {v6, v4, v4, v4, v4}, Landroid/widget/Button;->setPadding(IIII)V

    .line 31
    invoke-virtual {v6, v7}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 32
    iget-object v7, p0, Lcom/join/mgps/activity/PayStartActivity;->n:Lcom/join/mgps/activity/PayStartActivity$d;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    iget-object v7, p0, Lcom/join/mgps/activity/PayStartActivity;->m:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 34
    iget-object v7, p0, Lcom/join/mgps/activity/PayStartActivity;->c:Lcom/join/mgps/customview/FlowLayout;

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 35
    :cond_1
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/join/mgps/activity/PayStartActivity;->o:Landroid/widget/EditText;

    .line 36
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 37
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 38
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 39
    iget-object v0, p0, Lcom/join/mgps/activity/PayStartActivity;->o:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    iget-object v0, p0, Lcom/join/mgps/activity/PayStartActivity;->o:Landroid/widget/EditText;

    const v1, 0x7f11024e

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 41
    iget-object v0, p0, Lcom/join/mgps/activity/PayStartActivity;->o:Landroid/widget/EditText;

    invoke-virtual {v0, v8}, Landroid/widget/EditText;->setTextSize(F)V

    .line 42
    iget-object v0, p0, Lcom/join/mgps/activity/PayStartActivity;->o:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 43
    iget-object v0, p0, Lcom/join/mgps/activity/PayStartActivity;->o:Landroid/widget/EditText;

    new-instance v2, Landroid/text/method/DigitsKeyListener;

    invoke-direct {v2, v4, v9}, Landroid/text/method/DigitsKeyListener;-><init>(ZZ)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 44
    iget-object v0, p0, Lcom/join/mgps/activity/PayStartActivity;->o:Landroid/widget/EditText;

    const v2, 0x7f0809ec

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 45
    iget-object v0, p0, Lcom/join/mgps/activity/PayStartActivity;->o:Landroid/widget/EditText;

    const v2, -0x636364

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 46
    iget-object v0, p0, Lcom/join/mgps/activity/PayStartActivity;->o:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setTextColor(I)V

    .line 47
    iget-object v0, p0, Lcom/join/mgps/activity/PayStartActivity;->o:Landroid/widget/EditText;

    new-instance v2, Lcom/join/mgps/activity/PayStartActivity$a;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/PayStartActivity$a;-><init>(Lcom/join/mgps/activity/PayStartActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 48
    iget-object v0, p0, Lcom/join/mgps/activity/PayStartActivity;->o:Landroid/widget/EditText;

    new-instance v2, Lcom/join/mgps/activity/PayStartActivity$b;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/PayStartActivity$b;-><init>(Lcom/join/mgps/activity/PayStartActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 49
    iget-object v0, p0, Lcom/join/mgps/activity/PayStartActivity;->o:Landroid/widget/EditText;

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setGravity(I)V

    .line 50
    iget-object v0, p0, Lcom/join/mgps/activity/PayStartActivity;->c:Lcom/join/mgps/customview/FlowLayout;

    iget-object v2, p0, Lcom/join/mgps/activity/PayStartActivity;->o:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 51
    iget-object v0, p0, Lcom/join/mgps/activity/PayStartActivity;->c:Lcom/join/mgps/customview/FlowLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x41200000    # 10.0f

    .line 52
    invoke-static {p0, v2}, Lcom/join/mgps/Util/b0;->a(Landroid/content/Context;F)I

    move-result v2

    neg-int v2, v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 53
    iget-object v2, p0, Lcom/join/mgps/activity/PayStartActivity;->c:Lcom/join/mgps/customview/FlowLayout;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    iget-object v0, p0, Lcom/join/mgps/activity/PayStartActivity;->f:Landroid/widget/TextView;

    const v2, 0x7f11024f

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "<font color = \'#f2463b\'>1</font>"

    aput-object v3, v1, v4

    aput-object v3, v1, v9

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private M0(I)Lcom/join/mgps/dto/PayActivityRebate;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PayStartActivity;->p:Lcom/join/mgps/dto/PayActivityBean;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/join/mgps/dto/PayActivityBean;->getRebate_list()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/PayStartActivity;->p:Lcom/join/mgps/dto/PayActivityBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/PayActivityBean;->getRebate_list()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/PayActivityRebate;

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_0

    invoke-virtual {v2}, Lcom/join/mgps/dto/PayActivityRebate;->getMin_money()I

    move-result v3

    if-gt v3, p1, :cond_0

    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/PayActivityRebate;

    return-object p1

    .line 7
    :cond_0
    invoke-virtual {v2}, Lcom/join/mgps/dto/PayActivityRebate;->getMin_money()I

    move-result v2

    if-lt p1, v2, :cond_1

    add-int/lit8 v2, v1, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/PayActivityRebate;

    invoke-virtual {v2}, Lcom/join/mgps/dto/PayActivityRebate;->getMin_money()I

    move-result v2

    if-ge p1, v2, :cond_1

    .line 8
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/PayActivityRebate;

    return-object p1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private Q0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PayStartActivity;->g:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/PayStartActivity;->g:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/PayStartActivity;->a:Landroid/widget/Button;

    const v1, 0x7f080076

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/PayStartActivity;->g:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/PayStartActivity;->a:Landroid/widget/Button;

    const v1, 0x7f080346

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method

.method private R0(Lcom/join/mgps/dto/PayActivityRebate;)V
    .locals 8

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PayStartActivity;->i:Landroid/widget/TextView;

    const v1, 0x7f11025e

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<h2>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/join/mgps/dto/PayActivityRebate;->getMin_money()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "</h2>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    aput-object v3, v2, v6

    const/4 v3, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/join/mgps/dto/PayActivityRebate;->getRebate_money()I

    move-result p1

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/PayStartActivity;->i:Landroid/widget/TextView;

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/PayStartActivity;->i:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private T0(Ljava/lang/String;)V
    .locals 9

    const-string v0, "</h2>"

    const-string v1, "<h2>"

    .line 1
    :try_start_0
    iget-object v2, p0, Lcom/join/mgps/activity/PayStartActivity;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f110257

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<font color = \'#f2463b\'>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "</font>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v2, p0, Lcom/join/mgps/activity/PayStartActivity;->h:Lcom/join/mgps/dto/PapayOrder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v5, 0x7f110248

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/join/mgps/dto/PapayOrder;->PRODUCT_NAME:Ljava/lang/String;

    .line 3
    iget-object v2, p0, Lcom/join/mgps/activity/PayStartActivity;->h:Lcom/join/mgps/dto/PapayOrder;

    iput-object p1, v2, Lcom/join/mgps/dto/PapayOrder;->MONEY_AMOUNT:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v2}, Lcom/join/mgps/activity/PayStartActivity;->M0(I)Lcom/join/mgps/dto/PayActivityRebate;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5
    iget-object v3, p0, Lcom/join/mgps/activity/PayStartActivity;->i:Landroid/widget/TextView;

    const v5, 0x7f11025e

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v6, v7

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/join/mgps/dto/PayActivityRebate;->getRebate_money()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v6, v4

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/PayStartActivity;->i:Landroid/widget/TextView;

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/PayStartActivity;->i:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private U0()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PayStartActivity;->c:Lcom/join/mgps/customview/FlowLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 2
    iget-object v3, p0, Lcom/join/mgps/activity/PayStartActivity;->c:Lcom/join/mgps/customview/FlowLayout;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Landroid/widget/Button;

    if-eqz v3, :cond_1

    .line 3
    iget-object v3, p0, Lcom/join/mgps/activity/PayStartActivity;->c:Lcom/join/mgps/customview/FlowLayout;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 4
    invoke-virtual {v3}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/join/mgps/activity/PayStartActivity;->M0(I)Lcom/join/mgps/dto/PayActivityRebate;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 5
    invoke-virtual {v3}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    .line 6
    invoke-virtual {v4}, Lcom/join/mgps/dto/PayActivityRebate;->getRebate_money()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float v4, v4, v5

    const v5, 0x7f110250

    .line 7
    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "%"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x1

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 8
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v5, 0x7f110248

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 9
    :goto_1
    invoke-virtual {v3}, Landroid/widget/Button;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 10
    invoke-virtual {v3}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/join/mgps/activity/PayStartActivity;->T0(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method J0()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/PayStartActivity;->Q0()V

    return-void
.end method

.method N0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lorg/springframework/util/LinkedMultiValueMap;

    invoke-direct {v0}, Lorg/springframework/util/LinkedMultiValueMap;-><init>()V

    const-string v1, "uid"

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v1, "token"

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/PayStartActivity;->j:Lcom/join/mgps/rpc/n;

    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/n;->g(Ljava/util/Map;)Lcom/join/mgps/dto/PapayVoucherResultMain;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/dto/PapayVoucherResultMain;->getError()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/join/mgps/dto/PapayVoucherResultMain;->getData()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/join/mgps/dto/PapayVoucherResultMain;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/PayActivityConfig;

    invoke-virtual {v1}, Lcom/join/mgps/dto/PayActivityConfig;->getConfig()Lcom/join/mgps/dto/PayActivityResult;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/join/mgps/dto/PapayVoucherResultMain;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/PayActivityConfig;

    invoke-virtual {v1}, Lcom/join/mgps/dto/PayActivityConfig;->getConfig()Lcom/join/mgps/dto/PayActivityResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/PayActivityResult;->getActivity()Lcom/join/mgps/dto/PayActivityBean;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dto/PapayVoucherResultMain;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/PayActivityConfig;

    invoke-virtual {v0}, Lcom/join/mgps/dto/PayActivityConfig;->getConfig()Lcom/join/mgps/dto/PayActivityResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/PayActivityResult;->getActivity()Lcom/join/mgps/dto/PayActivityBean;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/PayStartActivity;->p:Lcom/join/mgps/dto/PayActivityBean;

    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/activity/PayStartActivity;->S0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method O0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    const/4 v1, 0x4

    .line 2
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    const-string v1, "http://h5.5fun.com/wf_pay_service.html"

    .line 3
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    return-void
.end method

.method P0()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/PayStartActivity;->Q0()V

    return-void
.end method

.method S0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PayStartActivity;->p:Lcom/join/mgps/dto/PayActivityBean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/join/mgps/dto/PayActivityBean;->getRebate_list()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/activity/PayStartActivity;->p:Lcom/join/mgps/dto/PayActivityBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/PayActivityBean;->getRebate_list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/PayStartActivity;->p:Lcom/join/mgps/dto/PayActivityBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/PayActivityBean;->getRebate_list()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/activity/PayStartActivity$c;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/PayStartActivity$c;-><init>(Lcom/join/mgps/activity/PayStartActivity;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/activity/PayStartActivity;->U0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/PayStartActivity;->i:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method V0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PayStartActivity;->g:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/PayStartActivity;->h:Lcom/join/mgps/dto/PapayOrder;

    iget-object v0, v0, Lcom/join/mgps/dto/PapayOrder;->MONEY_AMOUNT:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-ltz v0, :cond_0

    .line 3
    invoke-static {p0}, Lcom/join/mgps/activity/PayNowActivity_;->j1(Landroid/content/Context;)Lcom/join/mgps/activity/PayNowActivity_$k;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/PayStartActivity;->h:Lcom/join/mgps/dto/PapayOrder;

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/PayNowActivity_$k;->c(Lcom/join/mgps/dto/PapayOrder;)Lcom/join/mgps/activity/PayNowActivity_$k;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const-string v1, "\u5145\u503c\u91d1\u989d\u4e0d\u5f97\u5c0f\u4e8e1\u5143"

    .line 4
    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const v1, 0x7f110266

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method afterview()V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/m;->h()Lcom/join/mgps/rpc/impl/m;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/PayStartActivity;->j:Lcom/join/mgps/rpc/n;

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/MApplication;

    iput-object v0, p0, Lcom/join/mgps/activity/PayStartActivity;->q:Lcom/MApplication;

    .line 3
    invoke-virtual {v0, p0}, Lcom/MApplication;->k(Landroid/app/Activity;)V

    .line 4
    new-instance v0, Lcom/join/mgps/dto/PapayOrder;

    invoke-direct {v0}, Lcom/join/mgps/dto/PapayOrder;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/PayStartActivity;->h:Lcom/join/mgps/dto/PapayOrder;

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/PayStartActivity;->b:Landroid/widget/TextView;

    const v1, 0x7f110249

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/PayStartActivity;->k:Lcom/join/mgps/dto/AccountBean;

    if-nez v0, :cond_0

    .line 7
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/PayStartActivity;->k:Lcom/join/mgps/dto/AccountBean;

    if-nez v0, :cond_0

    .line 8
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u4f60\u8fd8\u6ca1\u6709\u767b\u5f55,\u8bf7\u5148\u767b\u5f55"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    .line 9
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/IntentUtil;->goAccountCenterActivity(Landroid/content/Context;)V

    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/PayStartActivity;->h:Lcom/join/mgps/dto/PapayOrder;

    iget-object v1, p0, Lcom/join/mgps/activity/PayStartActivity;->k:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/join/mgps/dto/PapayOrder;->TOKEN:Ljava/lang/String;

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/PayStartActivity;->h:Lcom/join/mgps/dto/PapayOrder;

    iget-object v1, p0, Lcom/join/mgps/activity/PayStartActivity;->k:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v1

    iput v1, v0, Lcom/join/mgps/dto/PapayOrder;->PA_OPEN_UID:I

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/PayStartActivity;->h:Lcom/join/mgps/dto/PapayOrder;

    iget-object v1, p0, Lcom/join/mgps/activity/PayStartActivity;->k:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getAccount()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/join/mgps/dto/PapayOrder;->APP_USER_NAME:Ljava/lang/String;

    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/PayStartActivity;->g:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 14
    invoke-direct {p0}, Lcom/join/mgps/activity/PayStartActivity;->L0()V

    .line 15
    invoke-virtual {p0}, Lcom/join/mgps/activity/PayStartActivity;->N0()V

    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/PayStartActivity;->e:Landroid/widget/TextView;

    const v2, 0x7f110262

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<font color = \'#000000\'>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v5, 0x7f110215

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\uff1a</font>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method back_image()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/PayStartActivity;->c:Lcom/join/mgps/customview/FlowLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 4
    iput-object v1, p0, Lcom/join/mgps/activity/PayStartActivity;->c:Lcom/join/mgps/customview/FlowLayout;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/PayStartActivity;->m:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 7
    iput-object v1, p0, Lcom/join/mgps/activity/PayStartActivity;->m:Ljava/util/List;

    .line 8
    :cond_1
    iput-object v1, p0, Lcom/join/mgps/activity/PayStartActivity;->n:Lcom/join/mgps/activity/PayStartActivity$d;

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/PayStartActivity;->l:Lcom/join/mgps/dto/IntentDataMain;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 10
    invoke-virtual {p0, v0}, Landroid/app/Activity;->moveTaskToBack(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method
