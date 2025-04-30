.class public Lcom/join/mgps/activity/HandShankMapKeyActivity;
.super Lcom/BaseActivity;
.source "HandShankMapKeyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c0048
.end annotation


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/ImageView;

.field private c:Z

.field d:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/activity/HandShankMapKeyActivity;->c:Z

    return-void
.end method

.method private F0(ILjava/lang/String;)Lcom/join/mgps/Util/IntentDateBean;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 3
    invoke-virtual {v0, p2}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    const-string p1, "NDS\u6e38\u620f\u624b\u67c4\u8bbe\u7f6e"

    .line 4
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/IntentDateBean;->setObject(Ljava/lang/Object;)V

    return-object v0
.end method

.method private G0(Z)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankMapKeyActivity;->b:Landroid/widget/ImageView;

    const v1, 0x7f08055e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankMapKeyActivity;->a:Landroid/widget/ImageView;

    const v1, 0x7f080561

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankMapKeyActivity;->b:Landroid/widget/ImageView;

    const v1, 0x7f080560

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankMapKeyActivity;->a:Landroid/widget/ImageView;

    const v1, 0x7f08055f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5
    :goto_0
    iget-boolean v0, p0, Lcom/join/mgps/activity/HandShankMapKeyActivity;->c:Z

    if-eq v0, p1, :cond_1

    .line 6
    iput-boolean p1, p0, Lcom/join/mgps/activity/HandShankMapKeyActivity;->c:Z

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Boolean;

    .line 7
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v1, v0}, Lcom/join/mgps/joystick/map/d;->l(I[Ljava/lang/Boolean;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method E0()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method afterView()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankMapKeyActivity;->e:Landroid/widget/TextView;

    const-string v1, "\u6620\u5c04\u6309\u952e"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankMapKeyActivity;->d:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    const v0, 0x7f090640

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/HandShankMapKeyActivity;->b:Landroid/widget/ImageView;

    const v0, 0x7f090b68

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/HandShankMapKeyActivity;->a:Landroid/widget/ImageView;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Boolean;

    .line 5
    invoke-static {v0, v1}, Lcom/join/mgps/joystick/map/d;->l(I[Ljava/lang/Boolean;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/join/mgps/activity/HandShankMapKeyActivity;->G0(Z)V

    const v0, 0x7f090869

    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09086a

    .line 7
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090489

    .line 8
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0905d1

    .line 9
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09048b

    .line 10
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090e2e

    .line 11
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090c76

    .line 12
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090a17

    .line 13
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090c75

    .line 14
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0912e1

    .line 15
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0905d2

    .line 16
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090ae2

    .line 17
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090bbd

    .line 18
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090ae2

    const v1, 0x7f090bbd

    if-eq p1, v1, :cond_c

    if-ne p1, v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const v0, 0x7f090869

    if-ne p1, v0, :cond_1

    .line 2
    iget-boolean p1, p0, Lcom/join/mgps/activity/HandShankMapKeyActivity;->c:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/join/mgps/activity/HandShankMapKeyActivity;->G0(Z)V

    goto/16 :goto_0

    :cond_1
    const v0, 0x7f09086a

    if-ne p1, v0, :cond_2

    .line 3
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/join/mgps/activity/HandShankCheckKeyActivity_;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_2
    const v0, 0x7f090489

    if-ne p1, v0, :cond_3

    .line 4
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/join/mgps/activity/HandShankFBAActivity_;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_3
    const v0, 0x7f0905d1

    if-ne p1, v0, :cond_4

    .line 5
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/join/mgps/activity/HandShankGBAActivity_;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_4
    const v0, 0x7f09048b

    if-ne p1, v0, :cond_5

    .line 6
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/join/mgps/activity/HandShankFCActivity_;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_5
    const v0, 0x7f090e2e

    if-ne p1, v0, :cond_6

    .line 7
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/join/mgps/activity/HandShankSFCActivity_;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_6
    const v0, 0x7f090c76

    if-ne p1, v0, :cond_7

    .line 8
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/join/mgps/activity/HandShankPSPActivity_;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_7
    const v0, 0x7f090a17

    if-ne p1, v0, :cond_8

    .line 9
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/join/mgps/activity/HandShankMDActivity_;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_8
    const v0, 0x7f090c75

    if-ne p1, v0, :cond_9

    .line 10
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/join/mgps/activity/HandShankPSActivity_;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_9
    const v0, 0x7f0912e1

    if-ne p1, v0, :cond_a

    .line 11
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/join/mgps/activity/HandShankWSCActivity_;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_a
    const v0, 0x7f0905d2

    if-ne p1, v0, :cond_b

    .line 12
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/join/mgps/activity/HandShankGBCActivity_;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_b
    :goto_0
    return-void

    :cond_c
    :goto_1
    const/4 v2, 0x0

    const/4 v3, 0x4

    if-ne p1, v1, :cond_d

    const-string p1, "http://h5.5fun.com/wf_shoubing.html"

    .line 13
    invoke-direct {p0, v3, p1}, Lcom/join/mgps/activity/HandShankMapKeyActivity;->F0(ILjava/lang/String;)Lcom/join/mgps/Util/IntentDateBean;

    move-result-object v2

    goto :goto_2

    :cond_d
    if-ne p1, v0, :cond_e

    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/join/mgps/rpc/g;->x:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/nds/index.html"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v3, p1}, Lcom/join/mgps/activity/HandShankMapKeyActivity;->F0(ILjava/lang/String;)Lcom/join/mgps/Util/IntentDateBean;

    move-result-object v2

    .line 15
    :cond_e
    :goto_2
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    invoke-virtual {p1, p0, v2}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    return-void
.end method
