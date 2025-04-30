.class public final Lcom/join/mgps/activity/UploadActivity_;
.super Lcom/join/mgps/activity/UploadActivity;
.source "UploadActivity_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/UploadActivity_$t;
    }
.end annotation


# static fields
.field public static final u0:Ljava/lang/String; = "accountBean"


# instance fields
.field private final q0:Li3/c;

.field private final r0:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final s0:Landroid/content/IntentFilter;

.field private final t0:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/UploadActivity;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/UploadActivity_;->q0:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/UploadActivity_;->r0:Ljava/util/Map;

    .line 4
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/UploadActivity_;->s0:Landroid/content/IntentFilter;

    .line 5
    new-instance v0, Lcom/join/mgps/activity/UploadActivity_$k;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/UploadActivity_$k;-><init>(Lcom/join/mgps/activity/UploadActivity_;)V

    iput-object v0, p0, Lcom/join/mgps/activity/UploadActivity_;->t0:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic i1(Lcom/join/mgps/activity/UploadActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/UploadActivity;->b1()V

    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    new-instance p1, Lcom/join/mgps/pref/PrefDef_;

    invoke-direct {p1, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    sput-object p1, Lcom/join/mgps/activity/UploadActivity;->I:Lcom/join/mgps/pref/PrefDef_;

    .line 2
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/activity/UploadActivity_;->injectExtras_()V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/UploadActivity_;->s0:Landroid/content/IntentFilter;

    const-string v0, "upload"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method private injectExtras_()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "accountBean"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/AccountBean;

    iput-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->y:Lcom/join/mgps/dto/AccountBean;

    :cond_0
    return-void
.end method

.method static synthetic j1(Lcom/join/mgps/activity/UploadActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/UploadActivity;->Y0()V

    return-void
.end method

.method static synthetic k1(Lcom/join/mgps/activity/UploadActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/UploadActivity;->g1()V

    return-void
.end method

.method static synthetic l1(Lcom/join/mgps/activity/UploadActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/UploadActivity;->f1()V

    return-void
.end method

.method static synthetic m1(Lcom/join/mgps/activity/UploadActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/UploadActivity;->h1()V

    return-void
.end method

.method static synthetic n1(Lcom/join/mgps/activity/UploadActivity_;Landroid/content/Context;Lcom/papa/sim/statistic/UpLoadGameConfig;Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/join/mgps/activity/UploadActivity;->a1(Landroid/content/Context;Lcom/papa/sim/statistic/UpLoadGameConfig;Ljava/io/File;)V

    return-void
.end method

.method public static o1(Landroid/content/Context;)Lcom/join/mgps/activity/UploadActivity_$t;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/UploadActivity_$t;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/UploadActivity_$t;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static p1(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/UploadActivity_$t;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/UploadActivity_$t;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/UploadActivity_$t;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method


# virtual methods
.method Y0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/UploadActivity_$f;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/UploadActivity_$f;-><init>(Lcom/join/mgps/activity/UploadActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public a1(Landroid/content/Context;Lcom/papa/sim/statistic/UpLoadGameConfig;Ljava/io/File;)V
    .locals 10

    .line 1
    new-instance v9, Lcom/join/mgps/activity/UploadActivity_$j;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v9

    move-object v1, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/join/mgps/activity/UploadActivity_$j;-><init>(Lcom/join/mgps/activity/UploadActivity_;Ljava/lang/String;JLjava/lang/String;Landroid/content/Context;Lcom/papa/sim/statistic/UpLoadGameConfig;Ljava/io/File;)V

    invoke-static {v9}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method b1()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/UploadActivity_$e;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/UploadActivity_$e;-><init>(Lcom/join/mgps/activity/UploadActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method f1()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/UploadActivity_$h;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/UploadActivity_$h;-><init>(Lcom/join/mgps/activity/UploadActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method g1()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/UploadActivity_$g;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/UploadActivity_$g;-><init>(Lcom/join/mgps/activity/UploadActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public getBean(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity_;->r0:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method h1()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/UploadActivity_$i;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/UploadActivity_$i;-><init>(Lcom/join/mgps/activity/UploadActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method public internalFindViewById(I)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity_;->q0:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/UploadActivity_;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Lcom/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c05ce

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/UploadActivity_;->setContentView(I)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity_;->t0:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2
    invoke-super {p0}, Lcom/BaseActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity_;->t0:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/join/mgps/activity/UploadActivity_;->s0:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 12

    const v0, 0x7f090585

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->h:Landroid/widget/TextView;

    const v0, 0x7f090c19

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->i:Landroid/widget/TextView;

    const v0, 0x7f0904ac

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->o:Landroid/widget/TextView;

    const v0, 0x7f090559

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->p:Landroid/widget/TextView;

    const v0, 0x7f090719

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->q:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f09071a

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->r:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f09071b

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->s:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f09057f

    .line 8
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->w:Landroid/widget/EditText;

    const v0, 0x7f090550

    .line 9
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->x:Landroid/widget/EditText;

    const v0, 0x7f090869

    .line 10
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->z:Landroid/widget/ScrollView;

    const v0, 0x7f09086a

    .line 11
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->A:Landroid/widget/LinearLayout;

    const v0, 0x7f09086b

    .line 12
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->B:Landroid/widget/LinearLayout;

    const v0, 0x7f09086c

    .line 13
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->C:Landroid/widget/LinearLayout;

    const v0, 0x7f0903eb

    .line 14
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->D:Landroid/widget/TextView;

    const v0, 0x7f0903ea

    .line 15
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->E:Landroid/widget/TextView;

    const v0, 0x7f0903ec

    .line 16
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/UploadActivity;->F:Landroid/widget/TextView;

    const v0, 0x7f090587

    .line 17
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090c1a

    .line 18
    invoke-interface {p1, v1}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0904ad

    .line 19
    invoke-interface {p1, v2}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f09055c

    .line 20
    invoke-interface {p1, v3}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f090744

    .line 21
    invoke-interface {p1, v4}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f090131

    .line 22
    invoke-interface {p1, v5}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f091227

    .line 23
    invoke-interface {p1, v6}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f091225

    .line 24
    invoke-interface {p1, v7}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f090ef2

    .line 25
    invoke-interface {p1, v8}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v8

    const v9, 0x7f090cd5

    .line 26
    invoke-interface {p1, v9}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v9

    const v10, 0x7f0902f9

    .line 27
    invoke-interface {p1, v10}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v10

    const v11, 0x7f090d2c

    .line 28
    invoke-interface {p1, v11}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz v0, :cond_0

    .line 29
    new-instance v11, Lcom/join/mgps/activity/UploadActivity_$l;

    invoke-direct {v11, p0}, Lcom/join/mgps/activity/UploadActivity_$l;-><init>(Lcom/join/mgps/activity/UploadActivity_;)V

    invoke-virtual {v0, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    if-eqz v1, :cond_1

    .line 30
    new-instance v0, Lcom/join/mgps/activity/UploadActivity_$m;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/UploadActivity_$m;-><init>(Lcom/join/mgps/activity/UploadActivity_;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    if-eqz v2, :cond_2

    .line 31
    new-instance v0, Lcom/join/mgps/activity/UploadActivity_$n;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/UploadActivity_$n;-><init>(Lcom/join/mgps/activity/UploadActivity_;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    if-eqz v3, :cond_3

    .line 32
    new-instance v0, Lcom/join/mgps/activity/UploadActivity_$o;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/UploadActivity_$o;-><init>(Lcom/join/mgps/activity/UploadActivity_;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    if-eqz v4, :cond_4

    .line 33
    new-instance v0, Lcom/join/mgps/activity/UploadActivity_$p;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/UploadActivity_$p;-><init>(Lcom/join/mgps/activity/UploadActivity_;)V

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    if-eqz v5, :cond_5

    .line 34
    new-instance v0, Lcom/join/mgps/activity/UploadActivity_$q;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/UploadActivity_$q;-><init>(Lcom/join/mgps/activity/UploadActivity_;)V

    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    if-eqz v6, :cond_6

    .line 35
    new-instance v0, Lcom/join/mgps/activity/UploadActivity_$r;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/UploadActivity_$r;-><init>(Lcom/join/mgps/activity/UploadActivity_;)V

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    if-eqz v7, :cond_7

    .line 36
    new-instance v0, Lcom/join/mgps/activity/UploadActivity_$s;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/UploadActivity_$s;-><init>(Lcom/join/mgps/activity/UploadActivity_;)V

    invoke-virtual {v7, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    if-eqz v8, :cond_8

    .line 37
    new-instance v0, Lcom/join/mgps/activity/UploadActivity_$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/UploadActivity_$a;-><init>(Lcom/join/mgps/activity/UploadActivity_;)V

    invoke-virtual {v8, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    if-eqz v9, :cond_9

    .line 38
    new-instance v0, Lcom/join/mgps/activity/UploadActivity_$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/UploadActivity_$b;-><init>(Lcom/join/mgps/activity/UploadActivity_;)V

    invoke-virtual {v9, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    if-eqz v10, :cond_a

    .line 39
    new-instance v0, Lcom/join/mgps/activity/UploadActivity_$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/UploadActivity_$c;-><init>(Lcom/join/mgps/activity/UploadActivity_;)V

    invoke-virtual {v10, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_a
    if-eqz p1, :cond_b

    .line 40
    new-instance v0, Lcom/join/mgps/activity/UploadActivity_$d;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/UploadActivity_$d;-><init>(Lcom/join/mgps/activity/UploadActivity_;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    :cond_b
    invoke-virtual {p0}, Lcom/join/mgps/activity/UploadActivity;->afterView()V

    return-void
.end method

.method public putBean(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/UploadActivity_;->r0:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/UploadActivity_;->q0:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/UploadActivity_;->q0:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/UploadActivity_;->q0:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/UploadActivity_;->injectExtras_()V

    return-void
.end method
