.class public Lcom/switfpass/pay/utils/g;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Landroid/content/Intent;

.field public c:I

.field public d:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/switfpass/pay/utils/g;->c:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/switfpass/pay/utils/g;->c:I

    iput-object p1, p0, Lcom/switfpass/pay/utils/g;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/switfpass/pay/utils/g;->b:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Intent;ILandroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/switfpass/pay/utils/g;->c:I

    iput-object p1, p0, Lcom/switfpass/pay/utils/g;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/switfpass/pay/utils/g;->b:Landroid/content/Intent;

    iput p3, p0, Lcom/switfpass/pay/utils/g;->c:I

    iput-object p4, p0, Lcom/switfpass/pay/utils/g;->d:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public a()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/switfpass/pay/utils/g;->b:Landroid/content/Intent;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/switfpass/pay/utils/g;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/switfpass/pay/utils/g;->c:I

    return v0
.end method

.method public d(Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/switfpass/pay/utils/g;->b:Landroid/content/Intent;

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/switfpass/pay/utils/g;->a:Ljava/lang/String;

    return-void
.end method

.method public f(I)V
    .locals 0

    iput p1, p0, Lcom/switfpass/pay/utils/g;->c:I

    return-void
.end method
