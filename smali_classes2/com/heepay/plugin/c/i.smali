.class public Lcom/heepay/plugin/c/i;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/heepay/plugin/c/i;


# instance fields
.field private a:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/heepay/plugin/c/i;

    invoke-direct {v0}, Lcom/heepay/plugin/c/i;-><init>()V

    sput-object v0, Lcom/heepay/plugin/c/i;->b:Lcom/heepay/plugin/c/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/heepay/plugin/c/i;
    .locals 1

    sget-object v0, Lcom/heepay/plugin/c/i;->b:Lcom/heepay/plugin/c/i;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/heepay/plugin/c/i;->a:Landroid/widget/Toast;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/heepay/plugin/c/i;->a:Landroid/widget/Toast;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p2}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object p1, p0, Lcom/heepay/plugin/c/i;->a:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
