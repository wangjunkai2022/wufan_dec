.class public Lcom/join/mgps/activity/CloudBackupsDetialActivity;
.super Lcom/BaseActivity;
.source "CloudBackupsDetialActivity.java"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c00e0
.end annotation


# instance fields
.field a:Lcom/join/mgps/dto/CloudBackupsCanUseBean;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field b:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field c:Landroid/widget/TextView;
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

.field g:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h:Lcom/join/mgps/rpc/b;

.field private i:Landroid/content/Context;

.field private j:Lcom/join/mgps/dto/AccountBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method E0()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    return-void
.end method

.method F0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CloudBackupsDetialActivity;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/activity/CloudRecodingActivity_;->H0(Landroid/content/Context;)Lcom/join/mgps/activity/CloudRecodingActivity_$b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/CloudRecodingActivity_$b;->b(Z)Lcom/join/mgps/activity/CloudRecodingActivity_$b;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/CloudBackupsDetialActivity;->a:Lcom/join/mgps/dto/CloudBackupsCanUseBean;

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/CloudRecodingActivity_$b;->a(Lcom/join/mgps/dto/CloudBackupsCanUseBean;)Lcom/join/mgps/activity/CloudRecodingActivity_$b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method

.method afterview()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/a;->b0()Lcom/join/mgps/rpc/b;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/CloudBackupsDetialActivity;->h:Lcom/join/mgps/rpc/b;

    .line 2
    iput-object p0, p0, Lcom/join/mgps/activity/CloudBackupsDetialActivity;->i:Landroid/content/Context;

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/CloudBackupsDetialActivity;->b:Landroid/widget/TextView;

    const-string v1, "\u5907\u4efd\u6570\u636e\u8be6\u60c5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/CloudBackupsDetialActivity;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/activity/CloudBackupsDetialActivity;->a:Lcom/join/mgps/dto/CloudBackupsCanUseBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CloudBackupsCanUseBean;->getBrand_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/CloudBackupsDetialActivity;->a:Lcom/join/mgps/dto/CloudBackupsCanUseBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CloudBackupsCanUseBean;->getAdd_time()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    .line 6
    new-instance v2, Ljava/sql/Date;

    invoke-direct {v2, v0, v1}, Ljava/sql/Date;-><init>(J)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/CloudBackupsDetialActivity;->d:Landroid/widget/TextView;

    const-string v1, "yyyy-MM.dd HH:mm"

    invoke-static {v2, v1}, Lcom/join/mgps/Util/x;->e(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

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
